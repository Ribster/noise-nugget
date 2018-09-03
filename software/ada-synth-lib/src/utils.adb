with Utils.Tan_Table; use Utils.Tan_Table;
--  with Ada.Float_Text_IO;

package body Utils is

   -------------------
   -- Sample_To_Int --
   -------------------

   function Sample_To_Int (S : Sample) return Int_T is
   begin
      return Int_T
        (Saturate (S)
         * Sample
           (Int_T'Last - 1));
   end Sample_To_Int;

   -------------------
   -- Int_To_Sample --
   -------------------

   function Int_To_Sample (I : Int_T) return Sample is
   begin
      return Sample (I) / Sample (Int_T'Last);
   end Int_To_Sample;


   --------------------
   -- Sample_To_UInt --
   --------------------

   function Sample_To_UInt (S : Sample) return UInt_T is
   begin
      return UInt_T
        (((Saturate (S / 4.0) + 1.0) / 2.0)
         * Sample
           (UInt_T'Last - 1));
   end Sample_To_UInt;

   ------------------
   -- Note_To_Freq --
   ------------------

   Notes_To_Freqs : constant array (Natural range <>) of Frequency :=
     (13.750000000000, 14.567617416382, 15.433853149414, 16.351598739624,
      17.323913574219, 18.354047775269, 19.445436477661, 20.601722717285,
      21.826765060425, 23.124650955200, 24.499713897705, 25.956542968750,
      27.500000000000, 29.135234832764, 30.867706298828, 32.703197479248,
      34.647827148438, 36.708095550537, 38.890872955322, 41.203445434570,
      43.653530120850, 46.249301910400, 48.999427795410, 51.913085937500,
      55.000000000000, 58.270469665527, 61.735412597656, 65.406394958496,
      69.295654296875, 73.416191101074, 77.781745910645, 82.406890869141,
      87.307060241699, 92.498603820801, 97.998855590820, 103.826171875000,
      110.000000000000, 116.540939331055, 123.470825195313, 130.812789916992,
      138.591308593750, 146.832382202148, 155.563491821289, 164.813781738281,
      174.614120483398, 184.997207641602, 195.997711181641, 207.652343750000,
      220.000000000000, 233.081878662109, 246.941650390625, 261.625579833984,
      277.182617187500, 293.664764404297, 311.126983642578, 329.627563476563,
      349.228240966797, 369.994415283203, 391.995422363281, 415.304687500000,
      440.000000000000, 466.163757324219, 493.883300781250, 523.251159667969,
      554.365234375000, 587.329528808594, 622.253967285156, 659.255126953125,
      698.456481933594, 739.988830566406, 783.990844726563, 830.609375000000,
      880.000000000000, 932.327514648438, 987.766601562500, 1046.502319335938,
      1108.730468750000, 1174.659057617188, 1244.507934570313,
      1318.510253906250, 1396.912963867188, 1479.977661132813,
      1567.981689453125, 1661.218750000000, 1760.000000000000,
      1864.655029296875, 1975.533203125000, 2093.004638671875,
      2217.460937500000, 2349.318115234375, 2489.015869140625,
      2637.020507812500, 2793.825927734375, 2959.955322265625,
      3135.963378906250, 3322.437500000000, 3520.000000000000,
      3729.310058593750, 3951.066406250000, 4186.009277343750,
      4434.921875000000, 4698.636230468750, 4978.031738281250,
      5274.041015625000, 5587.651855468750, 5919.910644531250,
      6271.926757812500, 6644.875000000000, 7040.000000000000,
      7458.620117187500, 7902.132812500000, 8372.018554687500,
      8869.843750000000, 9397.272460937500, 9956.063476562500,
      10548.082031250000, 11175.303710937500, 11839.821289062500,
      12543.853515625000, 13289.750000000000, 14080.000000000000,
      14917.240234375000, 15804.265625000000, 16744.037109375000,
      17739.687500000000, 18794.544921875000, 19912.126953125000,
      21096.164062500000, 22350.607421875000, 23679.642578125000,
      25087.707031250000, 26579.500000000000, 28160.000000000000,
      29834.480468750000, 31608.531250000000, 33488.074218750000,
      35479.375000000000, 37589.089843750000, 39824.253906250000,
      42192.328125000000, 44701.214843750000, 47359.285156250000,
      50175.414062500000, 53159.000000000000, 56320.000000000000,
      59668.960937500000, 63217.062500000000, 66976.148437500000,
      70958.750000000000, 75178.179687500000, 79648.507812500000,
      84384.656250000000, 89402.429687500000, 94718.570312500000,
      100350.828125000000, 106318.000000000000, 112640.000000000000,
      119337.921875000000, 126434.125000000000, 133952.296875000000,
      141917.500000000000, 150356.359375000000, 159297.015625000000,
      168769.312500000000, 178804.859375000000, 189437.140625000000,
      200701.656250000000, 212636.000000000000);

   function Note_To_Freq
     (N : Note_T; Rel_Pitch : Integer := 0) return Frequency
   is
   begin
      return Notes_To_Freqs ((Integer (N.Octave + 1) * 12)
                             + Scale_Degree_T'Pos (N.Scale_Degree)
                             + Rel_Pitch);
   end Note_To_Freq;

   ---------
   -- Sin --
   ---------

   type Mm is mod 2 ** 32;

   TABLE_SIZE      : constant := 1024;
   PI2             : constant := 6.283185307;
   ALPHA           : constant := Float (TABLE_SIZE) / PI2;

   pragma Style_Checks (Off);
   SINE_TABLE : constant array (Mm range 0 .. TABLE_SIZE - 1) of Float :=
     (
      0.0,  0.00613588,  0.0122715,  0.0184067,  0.0245412,  0.0306748,  0.0368072,  0.0429383
      ,  0.0490677,  0.0551952,  0.0613207,  0.0674439,  0.0735646,  0.0796824,  0.0857973,  0.091909
      ,  0.0980171,  0.104122,  0.110222,  0.116319,  0.122411,  0.128498,  0.134581,  0.140658
      ,  0.14673,  0.152797,  0.158858,  0.164913,  0.170962,  0.177004,  0.18304,  0.189069
      ,  0.19509,  0.201105,  0.207111,  0.21311,  0.219101,  0.225084,  0.231058,  0.237024
      ,  0.24298,  0.248928,  0.254866,  0.260794,  0.266713,  0.272621,  0.27852,  0.284408
      ,  0.290285,  0.296151,  0.302006,  0.30785,  0.313682,  0.319502,  0.32531,  0.331106
      ,  0.33689,  0.342661,  0.348419,  0.354164,  0.359895,  0.365613,  0.371317,  0.377007
      ,  0.382683,  0.388345,  0.393992,  0.399624,  0.405241,  0.410843,  0.41643,  0.422
      ,  0.427555,  0.433094,  0.438616,  0.444122,  0.449611,  0.455084,  0.460539,  0.465976
      ,  0.471397,  0.476799,  0.482184,  0.48755,  0.492898,  0.498228,  0.503538,  0.50883
      ,  0.514103,  0.519356,  0.52459,  0.529804,  0.534998,  0.540171,  0.545325,  0.550458
      ,  0.55557,  0.560662,  0.565732,  0.570781,  0.575808,  0.580814,  0.585798,  0.59076
      ,  0.595699,  0.600616,  0.605511,  0.610383,  0.615232,  0.620057,  0.624859,  0.629638
      ,  0.634393,  0.639124,  0.643832,  0.648514,  0.653173,  0.657807,  0.662416,  0.667
      ,  0.671559,  0.676093,  0.680601,  0.685084,  0.689541,  0.693971,  0.698376,  0.702755
      ,  0.707107,  0.711432,  0.715731,  0.720003,  0.724247,  0.728464,  0.732654,  0.736817
      ,  0.740951,  0.745058,  0.749136,  0.753187,  0.757209,  0.761202,  0.765167,  0.769103
      ,  0.77301,  0.776888,  0.780737,  0.784557,  0.788346,  0.792107,  0.795837,  0.799537
      ,  0.803208,  0.806848,  0.810457,  0.814036,  0.817585,  0.821103,  0.824589,  0.828045
      ,  0.83147,  0.834863,  0.838225,  0.841555,  0.844854,  0.84812,  0.851355,  0.854558
      ,  0.857729,  0.860867,  0.863973,  0.867046,  0.870087,  0.873095,  0.87607,  0.879012
      ,  0.881921,  0.884797,  0.88764,  0.890449,  0.893224,  0.895966,  0.898674,  0.901349
      ,  0.903989,  0.906596,  0.909168,  0.911706,  0.91421,  0.916679,  0.919114,  0.921514
      ,  0.92388,  0.92621,  0.928506,  0.930767,  0.932993,  0.935184,  0.937339,  0.939459
      ,  0.941544,  0.943593,  0.945607,  0.947586,  0.949528,  0.951435,  0.953306,  0.955141
      ,  0.95694,  0.958703,  0.960431,  0.962121,  0.963776,  0.965394,  0.966976,  0.968522
      ,  0.970031,  0.971504,  0.97294,  0.974339,  0.975702,  0.977028,  0.978317,  0.97957
      ,  0.980785,  0.981964,  0.983105,  0.98421,  0.985278,  0.986308,  0.987301,  0.988258
      ,  0.989177,  0.990058,  0.990903,  0.99171,  0.99248,  0.993212,  0.993907,  0.994565
      ,  0.995185,  0.995767,  0.996313,  0.99682,  0.99729,  0.997723,  0.998118,  0.998476
      ,  0.998795,  0.999078,  0.999322,  0.999529,  0.999699,  0.999831,  0.999925,  0.999981
      ,  1.0,  0.999981,  0.999925,  0.999831,  0.999699,  0.999529,  0.999322,  0.999078
      ,  0.998795,  0.998476,  0.998118,  0.997723,  0.99729,  0.99682,  0.996313,  0.995767
      ,  0.995185,  0.994565,  0.993907,  0.993212,  0.99248,  0.99171,  0.990903,  0.990058
      ,  0.989177,  0.988258,  0.987301,  0.986308,  0.985278,  0.98421,  0.983105,  0.981964
      ,  0.980785,  0.97957,  0.978317,  0.977028,  0.975702,  0.974339,  0.97294,  0.971504
      ,  0.970031,  0.968522,  0.966976,  0.965394,  0.963776,  0.962121,  0.960431,  0.958703
      ,  0.95694,  0.955141,  0.953306,  0.951435,  0.949528,  0.947586,  0.945607,  0.943593
      ,  0.941544,  0.939459,  0.937339,  0.935184,  0.932993,  0.930767,  0.928506,  0.92621
      ,  0.92388,  0.921514,  0.919114,  0.916679,  0.91421,  0.911706,  0.909168,  0.906596
      ,  0.903989,  0.901349,  0.898674,  0.895966,  0.893224,  0.890449,  0.88764,  0.884797
      ,  0.881921,  0.879012,  0.87607,  0.873095,  0.870087,  0.867046,  0.863973,  0.860867
      ,  0.857729,  0.854558,  0.851355,  0.84812,  0.844854,  0.841555,  0.838225,  0.834863
      ,  0.83147,  0.828045,  0.824589,  0.821103,  0.817585,  0.814036,  0.810457,  0.806848
      ,  0.803208,  0.799537,  0.795837,  0.792107,  0.788346,  0.784557,  0.780737,  0.776888
      ,  0.77301,  0.769103,  0.765167,  0.761202,  0.757209,  0.753187,  0.749136,  0.745058
      ,  0.740951,  0.736817,  0.732654,  0.728464,  0.724247,  0.720003,  0.715731,  0.711432
      ,  0.707107,  0.702755,  0.698376,  0.693971,  0.689541,  0.685084,  0.680601,  0.676093
      ,  0.671559,  0.667,  0.662416,  0.657807,  0.653173,  0.648514,  0.643832,  0.639124
      ,  0.634393,  0.629638,  0.624859,  0.620057,  0.615232,  0.610383,  0.605511,  0.600616
      ,  0.595699,  0.59076,  0.585798,  0.580814,  0.575808,  0.570781,  0.565732,  0.560662
      ,  0.55557,  0.550458,  0.545325,  0.540171,  0.534998,  0.529804,  0.52459,  0.519356
      ,  0.514103,  0.50883,  0.503538,  0.498228,  0.492898,  0.48755,  0.482184,  0.476799
      ,  0.471397,  0.465976,  0.460539,  0.455084,  0.449611,  0.444122,  0.438616,  0.433094
      ,  0.427555,  0.422,  0.41643,  0.410843,  0.405241,  0.399624,  0.393992,  0.388345
      ,  0.382683,  0.377007,  0.371317,  0.365613,  0.359895,  0.354164,  0.348419,  0.342661
      ,  0.33689,  0.331106,  0.32531,  0.319502,  0.313682,  0.30785,  0.302006,  0.296151
      ,  0.290285,  0.284408,  0.27852,  0.272621,  0.266713,  0.260794,  0.254866,  0.248928
      ,  0.24298,  0.237024,  0.231058,  0.225084,  0.219101,  0.21311,  0.207111,  0.201105
      ,  0.19509,  0.189069,  0.18304,  0.177004,  0.170962,  0.164913,  0.158858,  0.152797
      ,  0.14673,  0.140658,  0.134581,  0.128498,  0.122411,  0.116319,  0.110222,  0.104122
      ,  0.0980171,  0.091909,  0.0857973,  0.0796824,  0.0735646,  0.0674439,  0.0613207,  0.0551952
      ,  0.0490677,  0.0429383,  0.0368072,  0.0306748,  0.0245412,  0.0184067,  0.0122715,  0.00613588
      ,  1.22461e-16,  -0.00613588,  -0.0122715,  -0.0184067,  -0.0245412,  -0.0306748,  -0.0368072,  -0.0429383
      ,  -0.0490677,  -0.0551952,  -0.0613207,  -0.0674439,  -0.0735646,  -0.0796824,  -0.0857973,  -0.091909
      ,  -0.0980171,  -0.104122,  -0.110222,  -0.116319,  -0.122411,  -0.128498,  -0.134581,  -0.140658
      ,  -0.14673,  -0.152797,  -0.158858,  -0.164913,  -0.170962,  -0.177004,  -0.18304,  -0.189069
      ,  -0.19509,  -0.201105,  -0.207111,  -0.21311,  -0.219101,  -0.225084,  -0.231058,  -0.237024
      ,  -0.24298,  -0.248928,  -0.254866,  -0.260794,  -0.266713,  -0.272621,  -0.27852,  -0.284408
      ,  -0.290285,  -0.296151,  -0.302006,  -0.30785,  -0.313682,  -0.319502,  -0.32531,  -0.331106
      ,  -0.33689,  -0.342661,  -0.348419,  -0.354164,  -0.359895,  -0.365613,  -0.371317,  -0.377007
      ,  -0.382683,  -0.388345,  -0.393992,  -0.399624,  -0.405241,  -0.410843,  -0.41643,  -0.422
      ,  -0.427555,  -0.433094,  -0.438616,  -0.444122,  -0.449611,  -0.455084,  -0.460539,  -0.465976
      ,  -0.471397,  -0.476799,  -0.482184,  -0.48755,  -0.492898,  -0.498228,  -0.503538,  -0.50883
      ,  -0.514103,  -0.519356,  -0.52459,  -0.529804,  -0.534998,  -0.540171,  -0.545325,  -0.550458
      ,  -0.55557,  -0.560662,  -0.565732,  -0.570781,  -0.575808,  -0.580814,  -0.585798,  -0.59076
      ,  -0.595699,  -0.600616,  -0.605511,  -0.610383,  -0.615232,  -0.620057,  -0.624859,  -0.629638
      ,  -0.634393,  -0.639124,  -0.643832,  -0.648514,  -0.653173,  -0.657807,  -0.662416,  -0.667
      ,  -0.671559,  -0.676093,  -0.680601,  -0.685084,  -0.689541,  -0.693971,  -0.698376,  -0.702755
      ,  -0.707107,  -0.711432,  -0.715731,  -0.720003,  -0.724247,  -0.728464,  -0.732654,  -0.736817
      ,  -0.740951,  -0.745058,  -0.749136,  -0.753187,  -0.757209,  -0.761202,  -0.765167,  -0.769103
      ,  -0.77301,  -0.776888,  -0.780737,  -0.784557,  -0.788346,  -0.792107,  -0.795837,  -0.799537
      ,  -0.803208,  -0.806848,  -0.810457,  -0.814036,  -0.817585,  -0.821103,  -0.824589,  -0.828045
      ,  -0.83147,  -0.834863,  -0.838225,  -0.841555,  -0.844854,  -0.84812,  -0.851355,  -0.854558
      ,  -0.857729,  -0.860867,  -0.863973,  -0.867046,  -0.870087,  -0.873095,  -0.87607,  -0.879012
      ,  -0.881921,  -0.884797,  -0.88764,  -0.890449,  -0.893224,  -0.895966,  -0.898674,  -0.901349
      ,  -0.903989,  -0.906596,  -0.909168,  -0.911706,  -0.91421,  -0.916679,  -0.919114,  -0.921514
      ,  -0.92388,  -0.92621,  -0.928506,  -0.930767,  -0.932993,  -0.935184,  -0.937339,  -0.939459
      ,  -0.941544,  -0.943593,  -0.945607,  -0.947586,  -0.949528,  -0.951435,  -0.953306,  -0.955141
      ,  -0.95694,  -0.958703,  -0.960431,  -0.962121,  -0.963776,  -0.965394,  -0.966976,  -0.968522
      ,  -0.970031,  -0.971504,  -0.97294,  -0.974339,  -0.975702,  -0.977028,  -0.978317,  -0.97957
      ,  -0.980785,  -0.981964,  -0.983105,  -0.98421,  -0.985278,  -0.986308,  -0.987301,  -0.988258
      ,  -0.989177,  -0.990058,  -0.990903,  -0.99171,  -0.99248,  -0.993212,  -0.993907,  -0.994565
      ,  -0.995185,  -0.995767,  -0.996313,  -0.99682,  -0.99729,  -0.997723,  -0.998118,  -0.998476
      ,  -0.998795,  -0.999078,  -0.999322,  -0.999529,  -0.999699,  -0.999831,  -0.999925,  -0.999981
      ,  -1.0,  -0.999981,  -0.999925,  -0.999831,  -0.999699,  -0.999529,  -0.999322,  -0.999078
      ,  -0.998795,  -0.998476,  -0.998118,  -0.997723,  -0.99729,  -0.99682,  -0.996313,  -0.995767
      ,  -0.995185,  -0.994565,  -0.993907,  -0.993212,  -0.99248,  -0.99171,  -0.990903,  -0.990058
      ,  -0.989177,  -0.988258,  -0.987301,  -0.986308,  -0.985278,  -0.98421,  -0.983105,  -0.981964
      ,  -0.980785,  -0.97957,  -0.978317,  -0.977028,  -0.975702,  -0.974339,  -0.97294,  -0.971504
      ,  -0.970031,  -0.968522,  -0.966976,  -0.965394,  -0.963776,  -0.962121,  -0.960431,  -0.958703
      ,  -0.95694,  -0.955141,  -0.953306,  -0.951435,  -0.949528,  -0.947586,  -0.945607,  -0.943593
      ,  -0.941544,  -0.939459,  -0.937339,  -0.935184,  -0.932993,  -0.930767,  -0.928506,  -0.92621
      ,  -0.92388,  -0.921514,  -0.919114,  -0.916679,  -0.91421,  -0.911706,  -0.909168,  -0.906596
      ,  -0.903989,  -0.901349,  -0.898674,  -0.895966,  -0.893224,  -0.890449,  -0.88764,  -0.884797
      ,  -0.881921,  -0.879012,  -0.87607,  -0.873095,  -0.870087,  -0.867046,  -0.863973,  -0.860867
      ,  -0.857729,  -0.854558,  -0.851355,  -0.84812,  -0.844854,  -0.841555,  -0.838225,  -0.834863
      ,  -0.83147,  -0.828045,  -0.824589,  -0.821103,  -0.817585,  -0.814036,  -0.810457,  -0.806848
      ,  -0.803208,  -0.799537,  -0.795837,  -0.792107,  -0.788346,  -0.784557,  -0.780737,  -0.776888
      ,  -0.77301,  -0.769103,  -0.765167,  -0.761202,  -0.757209,  -0.753187,  -0.749136,  -0.745058
      ,  -0.740951,  -0.736817,  -0.732654,  -0.728464,  -0.724247,  -0.720003,  -0.715731,  -0.711432
      ,  -0.707107,  -0.702755,  -0.698376,  -0.693971,  -0.689541,  -0.685084,  -0.680601,  -0.676093
      ,  -0.671559,  -0.667,  -0.662416,  -0.657807,  -0.653173,  -0.648514,  -0.643832,  -0.639124
      ,  -0.634393,  -0.629638,  -0.624859,  -0.620057,  -0.615232,  -0.610383,  -0.605511,  -0.600616
      ,  -0.595699,  -0.59076,  -0.585798,  -0.580814,  -0.575808,  -0.570781,  -0.565732,  -0.560662
      ,  -0.55557,  -0.550458,  -0.545325,  -0.540171,  -0.534998,  -0.529804,  -0.52459,  -0.519356
      ,  -0.514103,  -0.50883,  -0.503538,  -0.498228,  -0.492898,  -0.48755,  -0.482184,  -0.476799
      ,  -0.471397,  -0.465976,  -0.460539,  -0.455084,  -0.449611,  -0.444122,  -0.438616,  -0.433094
      ,  -0.427555,  -0.422,  -0.41643,  -0.410843,  -0.405241,  -0.399624,  -0.393992,  -0.388345
      ,  -0.382683,  -0.377007,  -0.371317,  -0.365613,  -0.359895,  -0.354164,  -0.348419,  -0.342661
      ,  -0.33689,  -0.331106,  -0.32531,  -0.319502,  -0.313682,  -0.30785,  -0.302006,  -0.296151
      ,  -0.290285,  -0.284408,  -0.27852,  -0.272621,  -0.266713,  -0.260794,  -0.254866,  -0.248928
      ,  -0.24298,  -0.237024,  -0.231058,  -0.225084,  -0.219101,  -0.21311,  -0.207111,  -0.201105
      ,  -0.19509,  -0.189069,  -0.18304,  -0.177004,  -0.170962,  -0.164913,  -0.158858,  -0.152797
      ,  -0.14673,  -0.140658,  -0.134581,  -0.128498,  -0.122411,  -0.116319,  -0.110222,  -0.104122
      ,  -0.0980171,  -0.091909,  -0.0857973,  -0.0796824,  -0.0735646,  -0.0674439,  -0.0613207,  -0.0551952
      ,  -0.0490677,  -0.0429383,  -0.0368072,  -0.0306748,  -0.0245412,  -0.0184067,  -0.0122715,  -0.00613588);
   pragma Style_Checks (On);

   ---------
   -- Sin --
   ---------

   function Sin (N : Float) return Float is
   begin
      return SINE_TABLE (Mm (ALPHA * N) and (TABLE_SIZE - 1));
   end Sin;

   Tan_Fact : constant Float := 20_000.0 / Float (TAN_TABLE_SIZE);

   ----------------
   -- Filter_Tan --
   ----------------

   function Filter_Tan (Freq : Natural) return Float is
   begin
      return Utils.Tan_Table.TAN_TABLE (Natural (Float (Freq) / Tan_Fact));
   end Filter_Tan;

--  begin
--     Put_Line
--       (Standard_Error,
--        "TAN_TABLE : array (0 .. TAN_TABLE_SIZE - 1) of Float := (");
--     for I in 0 .. TAN_TABLE_SIZE - 1 loop
--        Utils.Tan_Table.TAN_TABLE (I) :=
--          Ada.Numerics.Elementary_Functions.Tan
--            ((Float (I) * Tan_Fact / SAMPLE_RATE) * Pi);
--        Put (Standard_Error, TAN_TABLE (I), 1, 10, 0);
--        Put (Standard_Error, ", ");
--     end loop;
--     Put (Standard_Error, ")");
--     New_Line (Standard_Error);

   --------------
   -- Note_Img --
   --------------

   function Note_Img (N : Note_T) return String is
      Octave_Img : constant String := N.Octave'Img;
      Scale_Img  : constant String := N.Scale_Degree'Img;
   begin
      return Scale_Img & Octave_Img (2 .. Octave_Img'Last);
   end Note_Img;

   ---------
   -- Img --
   ---------

   function Img (F : Float) return String
   is
      pragma Unreferenced (F);
      S : constant String := "burp...";
   begin
      --  Ada.Float_Text_IO.Put (S, F, 2, 0);
      return S;
   end Img;

end Utils;
