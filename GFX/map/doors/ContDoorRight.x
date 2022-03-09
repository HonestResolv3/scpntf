xof 0303txt 0032
template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9e415a43-7ba6-4a73-8743-b73d47e88476>
 DWORD AnimTicksPerSecond;
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}


AnimTicksPerSecond {
 24;
}

Frame Scene_Root {
 

 FrameTransformMatrix {
  1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
 }

 Frame Scene_Root {
  

  FrameTransformMatrix {
   1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
  }

  Frame default {
   

   FrameTransformMatrix {
    1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
   }

   Mesh default {
    148;
    -4.436847;0.489645;-0.374113;,
    -3.237655;0.496103;-0.374113;,
    -3.965566;1.015964;-0.374113;,
    -4.436045;5.430776;-0.374113;,
    -3.965566;4.911596;-0.374113;,
    -3.240473;5.431457;-0.374113;,
    -3.237915;0.947653;-0.374113;,
    -1.423746;2.574989;-0.374113;,
    -0.789522;2.467020;-0.374113;,
    -3.240214;4.981335;-0.374113;,
    -1.423572;3.352633;-0.374113;,
    -0.789522;3.460540;-0.374113;,
    -4.437800;5.430776;-0.470826;,
    -3.240473;5.431457;-0.470826;,
    -4.437800;5.833282;-0.471332;,
    -0.381443;5.833742;-0.471332;,
    -0.380849;5.430776;-0.470826;,
    -0.381733;0.489408;-0.470826;,
    -4.436322;0.489679;-0.470826;,
    -0.380116;0.093031;-0.469770;,
    -4.436681;0.094246;-0.469770;,
    -3.965566;1.015964;-0.134061;,
    -1.423746;2.574821;-0.134061;,
    -3.965566;4.911596;-0.134061;,
    -1.423572;3.352633;-0.134061;,
    -3.240473;5.431457;-0.134061;,
    -3.240214;4.981335;-0.134061;,
    -0.789522;5.431457;-0.134061;,
    -0.789522;3.460540;-0.134061;,
    -3.237655;0.496103;-0.134061;,
    -0.789522;0.496103;-0.134061;,
    -3.237915;0.947653;-0.134061;,
    -0.789522;2.467020;-0.134061;,
    -3.965566;1.015964;-0.374113;,
    -3.965566;1.015964;-0.134061;,
    -3.965566;4.911596;-0.374113;,
    -3.965566;4.911596;-0.134061;,
    -1.423572;3.352633;-0.374113;,
    -1.423572;3.352633;-0.134061;,
    -1.423746;2.574989;-0.374113;,
    -1.423746;2.574821;-0.134061;,
    -3.965566;1.015964;-0.374113;,
    -3.965566;1.015964;-0.134061;,
    -3.240473;5.431457;-0.374113;,
    -3.240473;5.431457;-0.134061;,
    -0.789522;5.431457;-0.374113;,
    -0.789522;5.431457;-0.134061;,
    -0.789522;3.460540;-0.374113;,
    -0.789522;3.460540;-0.134061;,
    -0.789522;3.460540;-0.374113;,
    -0.789522;3.460540;-0.134061;,
    -3.240214;4.981335;-0.374113;,
    -3.240214;4.981335;-0.134061;,
    -3.237655;0.496103;-0.374113;,
    -3.237655;0.496103;-0.134061;,
    -3.237915;0.947653;-0.374113;,
    -3.237915;0.947653;-0.134061;,
    -0.789522;2.467020;-0.374113;,
    -0.789522;2.467020;-0.134061;,
    -0.789522;2.467020;-0.374113;,
    -0.789522;2.467020;-0.134061;,
    -0.789522;0.496103;-0.374113;,
    -0.789522;0.496103;-0.134061;,
    -0.383455;0.092955;-0.183737;,
    -0.381136;0.488853;-0.374113;,
    -0.381136;5.430095;-0.374113;,
    -0.383950;5.833081;-0.185438;,
    0.003325;0.094913;-0.183790;,
    0.003325;5.832155;-0.183790;,
    -0.381136;0.488853;-0.374113;,
    -0.381136;5.430095;-0.374113;,
    -0.789522;0.496103;-0.374113;,
    -0.789522;5.431457;-0.374113;,
    0.187335;5.832155;0.000000;,
    0.187335;0.094913;0.000000;,
    -4.436847;0.489645;0.374113;,
    -3.965566;1.015964;0.374113;,
    -3.237655;0.496103;0.374113;,
    -4.436045;5.430776;0.374113;,
    -3.240473;5.431457;0.374113;,
    -3.965566;4.911596;0.374113;,
    -3.240214;4.981335;0.374113;,
    -1.423572;3.352633;0.374113;,
    -0.789522;3.460540;0.374113;,
    -3.237915;0.947653;0.374113;,
    -1.423746;2.574989;0.374113;,
    -0.789522;2.467020;0.374113;,
    -0.380849;5.430776;0.470826;,
    -3.240473;5.431457;0.470826;,
    -0.381443;5.833742;0.471332;,
    -4.437800;5.430776;0.470826;,
    -4.437800;5.833282;0.471332;,
    -0.381733;0.489408;0.470826;,
    -0.380116;0.093031;0.469770;,
    -4.436322;0.489679;0.470826;,
    -4.436681;0.094246;0.469770;,
    -3.965566;1.015964;0.134061;,
    -3.965566;4.911596;0.134061;,
    -1.423746;2.574821;0.134061;,
    -1.423572;3.352633;0.134061;,
    -3.240473;5.431457;0.134061;,
    -0.789522;5.431457;0.134061;,
    -3.240214;4.981335;0.134061;,
    -0.789522;3.460540;0.134061;,
    -3.237655;0.496103;0.134061;,
    -3.237915;0.947653;0.134061;,
    -0.789522;0.496103;0.134061;,
    -0.789522;2.467020;0.134061;,
    -3.965566;1.015964;0.374113;,
    -3.965566;4.911596;0.374113;,
    -3.965566;1.015964;0.134061;,
    -3.965566;4.911596;0.134061;,
    -1.423572;3.352633;0.374113;,
    -1.423572;3.352633;0.134061;,
    -1.423746;2.574989;0.374113;,
    -1.423746;2.574821;0.134061;,
    -3.965566;1.015964;0.374113;,
    -3.965566;1.015964;0.134061;,
    -3.240473;5.431457;0.374113;,
    -0.789522;5.431457;0.374113;,
    -3.240473;5.431457;0.134061;,
    -0.789522;5.431457;0.134061;,
    -0.789522;3.460540;0.374113;,
    -0.789522;3.460540;0.134061;,
    -0.789522;3.460540;0.374113;,
    -3.240214;4.981335;0.374113;,
    -0.789522;3.460540;0.134061;,
    -3.240214;4.981335;0.134061;,
    -3.237655;0.496103;0.374113;,
    -3.237915;0.947653;0.374113;,
    -3.237655;0.496103;0.134061;,
    -3.237915;0.947653;0.134061;,
    -0.789522;2.467020;0.374113;,
    -0.789522;2.467020;0.134061;,
    -0.789522;2.467020;0.374113;,
    -0.789522;0.496103;0.374113;,
    -0.789522;2.467020;0.134061;,
    -0.789522;0.496103;0.134061;,
    -0.381136;0.488853;0.374113;,
    -0.383455;0.092955;0.183737;,
    -0.381136;5.430095;0.374113;,
    -0.383950;5.833081;0.185438;,
    0.003325;0.094913;0.183790;,
    0.003325;5.832155;0.183790;,
    -0.789522;5.431457;0.374113;,
    -0.381136;5.430095;0.374113;,
    -0.381136;0.488853;0.374113;,
    -0.789522;0.496103;0.374113;;
    140;
    3;0,2,1;,
    3;3,5,4;,
    3;1,2,6;,
    3;2,7,6;,
    3;6,7,8;,
    3;5,9,4;,
    3;4,9,10;,
    3;9,11,10;,
    3;8,7,11;,
    3;11,7,10;,
    3;12,14,13;,
    3;14,15,13;,
    3;15,16,13;,
    3;17,19,18;,
    3;19,20,18;,
    3;21,23,22;,
    3;23,24,22;,
    3;25,27,26;,
    3;27,28,26;,
    3;29,31,30;,
    3;31,32,30;,
    3;33,35,34;,
    3;35,36,34;,
    3;35,37,36;,
    3;37,38,36;,
    3;37,39,38;,
    3;39,40,38;,
    3;39,41,40;,
    3;41,42,40;,
    3;43,45,44;,
    3;45,46,44;,
    3;45,47,46;,
    3;47,48,46;,
    3;49,51,50;,
    3;51,52,50;,
    3;51,43,52;,
    3;43,44,52;,
    3;53,55,54;,
    3;55,56,54;,
    3;55,57,56;,
    3;57,58,56;,
    3;59,61,60;,
    3;61,62,60;,
    3;61,53,62;,
    3;53,54,62;,
    3;19,64,63;,
    3;65,15,66;,
    3;64,65,63;,
    3;65,66,63;,
    3;67,63,68;,
    3;63,66,68;,
    3;69,71,70;,
    3;71,8,70;,
    3;8,11,70;,
    3;70,11,72;,
    3;0,3,2;,
    3;3,4,2;,
    3;16,72,13;,
    3;72,5,13;,
    3;5,3,13;,
    3;3,12,13;,
    3;70,72,16;,
    3;15,65,16;,
    3;0,1,18;,
    3;18,1,17;,
    3;1,71,17;,
    3;71,69,17;,
    3;64,19,17;,
    3;73,74,68;,
    3;74,67,68;,
    3;75,77,76;,
    3;78,80,79;,
    3;79,80,81;,
    3;80,82,81;,
    3;81,82,83;,
    3;77,84,76;,
    3;76,84,85;,
    3;84,86,85;,
    3;83,82,86;,
    3;85,86,82;,
    3;87,89,88;,
    3;90,88,91;,
    3;89,91,88;,
    3;92,94,93;,
    3;94,95,93;,
    3;96,98,97;,
    3;98,99,97;,
    3;100,102,101;,
    3;102,103,101;,
    3;104,106,105;,
    3;106,107,105;,
    3;108,110,109;,
    3;110,111,109;,
    3;109,111,112;,
    3;111,113,112;,
    3;112,113,114;,
    3;113,115,114;,
    3;114,115,116;,
    3;115,117,116;,
    3;118,120,119;,
    3;120,121,119;,
    3;119,121,122;,
    3;121,123,122;,
    3;124,126,125;,
    3;126,127,125;,
    3;125,127,118;,
    3;127,120,118;,
    3;128,130,129;,
    3;130,131,129;,
    3;129,131,132;,
    3;131,133,132;,
    3;134,136,135;,
    3;136,137,135;,
    3;135,137,128;,
    3;137,130,128;,
    3;93,139,138;,
    3;140,141,89;,
    3;138,139,140;,
    3;139,141,140;,
    3;142,143,139;,
    3;143,141,139;,
    3;144,83,145;,
    3;145,83,146;,
    3;83,86,146;,
    3;86,147,146;,
    3;80,78,76;,
    3;78,75,76;,
    3;79,144,88;,
    3;144,87,88;,
    3;79,88,78;,
    3;88,90,78;,
    3;145,87,144;,
    3;89,87,140;,
    3;75,94,77;,
    3;147,77,92;,
    3;77,94,92;,
    3;147,92,146;,
    3;138,92,93;,
    3;73,143,74;,
    3;143,142,74;;

    MeshNormals {
     148;
     -0.002409;0.447265;-0.894398;,
     -0.001446;0.814207;-0.580573;,
     0.000000;0.000000;-1.000000;,
     0.000316;-0.554699;-0.832051;,
     0.000000;0.000000;-1.000000;,
     0.000201;-0.707107;-0.707107;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000402;-0.707547;-0.706666;,
     0.000180;-0.800848;-0.598868;,
     0.000000;-0.001258;-0.999999;,
     0.709179;0.000651;-0.705028;,
     0.407200;-0.817214;-0.407860;,
     0.302674;0.891136;-0.338030;,
     -0.001853;0.694033;-0.719941;,
     0.708068;-0.000537;-0.706144;,
     -0.000001;-0.002670;-0.999996;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;-0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     0.000000;0.000000;-1.000000;,
     1.000000;0.000000;0.000000;,
     1.000000;0.000000;0.000000;,
     0.866129;-0.499821;0.000000;,
     -0.026734;-0.999643;0.000000;,
     -0.768216;-0.640190;0.000000;,
     -0.947428;-0.319969;0.000000;,
     -0.947330;0.320258;0.000224;,
     -0.768145;0.640276;0.000224;,
     -0.522818;0.852444;0.000298;,
     -0.522798;0.852457;0.000000;,
     0.894633;-0.446802;0.000000;,
     0.447316;-0.894376;0.000000;,
     -0.447214;-0.894427;0.000000;,
     -0.894427;-0.447214;0.000000;,
     -1.000000;0.000000;0.000000;,
     -1.000000;0.000000;0.000000;,
     0.527282;0.849691;-0.000000;,
     0.527282;0.849691;-0.000000;,
     0.770463;0.637485;-0.000000;,
     0.947733;0.319066;-0.000000;,
     0.447111;0.894479;0.000000;,
     0.894221;0.447626;0.000000;,
     0.947993;-0.318290;0.000000;,
     0.770675;-0.637229;0.000000;,
     0.527281;-0.849691;0.000000;,
     0.527281;-0.849691;0.000000;,
     -1.000000;0.000000;0.000000;,
     -1.000000;0.000000;0.000000;,
     -0.894427;0.447214;0.000000;,
     -0.447214;0.894427;0.000000;,
     0.837308;-0.000125;-0.546732;,
     0.999982;0.001273;0.005901;,
     0.999953;0.001111;0.009663;,
     0.898965;0.001197;-0.438019;,
     0.382344;0.000000;-0.924020;,
     0.383359;-0.000080;-0.923600;,
     0.012586;0.708982;-0.705114;,
     -0.000807;-0.242127;-0.970244;,
     0.006180;0.695511;-0.718489;,
     -0.001130;-0.948585;-0.316521;,
     1.000000;0.000000;0.000000;,
     1.000000;0.000000;0.000000;,
     -0.002409;0.447265;0.894398;,
     0.000000;0.000000;1.000000;,
     -0.001446;0.814207;0.580573;,
     0.000316;-0.554699;0.832051;,
     0.000201;-0.707107;0.707107;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.407200;-0.817214;0.407860;,
     0.000180;-0.800848;0.598868;,
     0.709179;0.000651;0.705028;,
     0.000402;-0.707547;0.706666;,
     0.000000;-0.001258;0.999999;,
     0.302674;0.891136;0.338030;,
     0.708068;-0.000537;0.706144;,
     -0.001853;0.694033;0.719941;,
     -0.000001;-0.002670;0.999996;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;0.000000;1.000000;,
     0.000000;-0.000000;1.000000;,
     -0.000000;0.000000;1.000000;,
     -0.000000;0.000000;1.000000;,
     -0.000000;0.000000;1.000000;,
     -0.000000;0.000000;1.000000;,
     0.000000;-0.000000;1.000000;,
     0.000000;-0.000000;1.000000;,
     0.000000;-0.000000;1.000000;,
     0.000000;-0.000000;1.000000;,
     1.000000;-0.000000;0.000000;,
     0.866129;-0.499821;0.000000;,
     1.000000;0.000000;0.000000;,
     -0.026734;-0.999643;0.000000;,
     -0.768216;-0.640190;0.000000;,
     -0.947428;-0.319969;-0.000000;,
     -0.947330;0.320258;-0.000224;,
     -0.768145;0.640276;-0.000224;,
     -0.522818;0.852444;-0.000298;,
     -0.522798;0.852457;0.000000;,
     0.894633;-0.446802;0.000000;,
     -0.447214;-0.894427;0.000000;,
     0.447316;-0.894376;0.000000;,
     -0.894427;-0.447214;0.000000;,
     -1.000000;0.000000;0.000000;,
     -1.000000;0.000000;0.000000;,
     0.527282;0.849691;0.000000;,
     0.770463;0.637485;0.000000;,
     0.527282;0.849691;0.000000;,
     0.947733;0.319066;0.000000;,
     0.447111;0.894479;0.000000;,
     0.947993;-0.318290;0.000000;,
     0.894221;0.447626;0.000000;,
     0.770675;-0.637229;0.000000;,
     0.527281;-0.849691;0.000000;,
     0.527281;-0.849691;0.000000;,
     -1.000000;-0.000000;-0.000000;,
     -0.894427;0.447214;0.000000;,
     -1.000000;0.000000;0.000000;,
     -0.447214;0.894427;0.000000;,
     0.999982;0.001273;-0.005901;,
     0.837308;-0.000125;0.546732;,
     0.999953;0.001111;-0.009663;,
     0.898965;0.001197;0.438019;,
     0.382344;0.000000;0.924020;,
     0.383359;-0.000080;0.923600;,
     -0.001130;-0.948585;0.316521;,
     -0.001487;-0.445944;0.895060;,
     0.005622;0.316708;0.948506;,
     0.007844;0.882668;0.469931;;
     140;
     3;0,2,1;,
     3;3,5,4;,
     3;1,2,6;,
     3;2,7,6;,
     3;6,7,8;,
     3;5,9,4;,
     3;4,9,10;,
     3;9,11,10;,
     3;8,7,11;,
     3;11,7,10;,
     3;12,14,13;,
     3;14,15,13;,
     3;15,16,13;,
     3;17,19,18;,
     3;19,20,18;,
     3;21,23,22;,
     3;23,24,22;,
     3;25,27,26;,
     3;27,28,26;,
     3;29,31,30;,
     3;31,32,30;,
     3;33,35,34;,
     3;35,36,34;,
     3;35,37,36;,
     3;37,38,36;,
     3;37,39,38;,
     3;39,40,38;,
     3;39,41,40;,
     3;41,42,40;,
     3;43,45,44;,
     3;45,46,44;,
     3;45,47,46;,
     3;47,48,46;,
     3;49,51,50;,
     3;51,52,50;,
     3;51,43,52;,
     3;43,44,52;,
     3;53,55,54;,
     3;55,56,54;,
     3;55,57,56;,
     3;57,58,56;,
     3;59,61,60;,
     3;61,62,60;,
     3;61,53,62;,
     3;53,54,62;,
     3;19,64,63;,
     3;65,15,66;,
     3;64,65,63;,
     3;65,66,63;,
     3;67,63,68;,
     3;63,66,68;,
     3;69,71,70;,
     3;71,8,70;,
     3;8,11,70;,
     3;70,11,72;,
     3;0,3,2;,
     3;3,4,2;,
     3;16,72,13;,
     3;72,5,13;,
     3;5,3,13;,
     3;3,12,13;,
     3;70,72,16;,
     3;15,65,16;,
     3;0,1,18;,
     3;18,1,17;,
     3;1,71,17;,
     3;71,69,17;,
     3;64,19,17;,
     3;73,74,68;,
     3;74,67,68;,
     3;75,77,76;,
     3;78,80,79;,
     3;79,80,81;,
     3;80,82,81;,
     3;81,82,83;,
     3;77,84,76;,
     3;76,84,85;,
     3;84,86,85;,
     3;83,82,86;,
     3;85,86,82;,
     3;87,89,88;,
     3;90,88,91;,
     3;89,91,88;,
     3;92,94,93;,
     3;94,95,93;,
     3;96,98,97;,
     3;98,99,97;,
     3;100,102,101;,
     3;102,103,101;,
     3;104,106,105;,
     3;106,107,105;,
     3;108,110,109;,
     3;110,111,109;,
     3;109,111,112;,
     3;111,113,112;,
     3;112,113,114;,
     3;113,115,114;,
     3;114,115,116;,
     3;115,117,116;,
     3;118,120,119;,
     3;120,121,119;,
     3;119,121,122;,
     3;121,123,122;,
     3;124,126,125;,
     3;126,127,125;,
     3;125,127,118;,
     3;127,120,118;,
     3;128,130,129;,
     3;130,131,129;,
     3;129,131,132;,
     3;131,133,132;,
     3;134,136,135;,
     3;136,137,135;,
     3;135,137,128;,
     3;137,130,128;,
     3;93,139,138;,
     3;140,141,89;,
     3;138,139,140;,
     3;139,141,140;,
     3;142,143,139;,
     3;143,141,139;,
     3;144,83,145;,
     3;145,83,146;,
     3;83,86,146;,
     3;86,147,146;,
     3;80,78,76;,
     3;78,75,76;,
     3;79,144,88;,
     3;144,87,88;,
     3;79,88,78;,
     3;88,90,78;,
     3;145,87,144;,
     3;89,87,140;,
     3;75,94,77;,
     3;147,77,92;,
     3;77,94,92;,
     3;147,92,146;,
     3;138,92,93;,
     3;73,143,74;,
     3;143,142,74;;
    }

    MeshTextureCoords {
     148;
     0.440690;0.767201;,
     0.336680;0.767027;,
     0.400246;0.721231;,
     0.440462;0.336777;,
     0.400084;0.382393;,
     0.336765;0.336788;,
     0.336958;0.727203;,
     0.179096;0.585734;,
     0.123937;0.595152;,
     0.336991;0.376357;,
     0.179049;0.518096;,
     0.123895;0.508736;,
     0.439693;0.327518;,
     0.336432;0.327515;,
     0.439290;0.290950;,
     0.090451;0.290991;,
     0.089809;0.327614;,
     0.089911;0.776802;,
     0.439591;0.776255;,
     0.090316;0.812833;,
     0.439173;0.812201;,
     0.387094;0.695739;,
     0.197607;0.579530;,
     0.387094;0.405329;,
     0.197594;0.521546;,
     0.314188;0.345094;,
     0.314169;0.377937;,
     0.135355;0.345094;,
     0.135355;0.488901;,
     0.316523;0.758990;,
     0.134021;0.758990;,
     0.316542;0.725328;,
     0.134021;0.612063;,
     0.988584;0.927783;,
     0.988584;0.943617;,
     0.731615;0.927784;,
     0.731615;0.943618;,
     0.584085;0.927783;,
     0.584085;0.943618;,
     0.532789;0.927783;,
     0.532778;0.943618;,
     0.382372;0.927783;,
     0.382372;0.943618;,
     0.686074;0.875638;,
     0.686074;0.890928;,
     0.842189;0.875638;,
     0.842189;0.890928;,
     0.988373;0.875638;,
     0.988373;0.890928;,
     0.537597;0.875638;,
     0.537597;0.890928;,
     0.657403;0.875638;,
     0.657403;0.890928;,
     0.685765;0.901679;,
     0.685765;0.916948;,
     0.657044;0.901679;,
     0.657044;0.916948;,
     0.537464;0.901679;,
     0.537464;0.916948;,
     0.987490;0.901680;,
     0.987490;0.916948;,
     0.841482;0.901679;,
     0.841482;0.916948;,
     0.065718;0.812996;,
     0.082090;0.776852;,
     0.082090;0.327684;,
     0.065864;0.290895;,
     0.030517;0.812967;,
     0.030618;0.290816;,
     0.088924;0.767595;,
     0.088765;0.336945;,
     0.124345;0.767243;,
     0.124186;0.336872;,
     0.013891;0.290813;,
     0.013790;0.812964;,
     0.440690;0.767201;,
     0.400246;0.721231;,
     0.336680;0.767027;,
     0.440462;0.336777;,
     0.336765;0.336788;,
     0.400084;0.382393;,
     0.336991;0.376357;,
     0.179049;0.518096;,
     0.123895;0.508736;,
     0.336958;0.727203;,
     0.179096;0.585734;,
     0.123937;0.595152;,
     0.089809;0.327614;,
     0.336432;0.327515;,
     0.090451;0.290991;,
     0.439693;0.327518;,
     0.439290;0.290950;,
     0.089911;0.776802;,
     0.090316;0.812833;,
     0.439591;0.776255;,
     0.439173;0.812201;,
     0.387094;0.695739;,
     0.387094;0.405329;,
     0.197607;0.579530;,
     0.197594;0.521546;,
     0.314188;0.345094;,
     0.135355;0.345094;,
     0.314169;0.377937;,
     0.135355;0.488901;,
     0.316523;0.758990;,
     0.316542;0.725328;,
     0.134021;0.758990;,
     0.134021;0.612063;,
     0.988584;0.927783;,
     0.731615;0.927784;,
     0.988584;0.943617;,
     0.731615;0.943618;,
     0.584085;0.927783;,
     0.584085;0.943618;,
     0.532789;0.927783;,
     0.532778;0.943618;,
     0.382372;0.927783;,
     0.382372;0.943618;,
     0.686074;0.875638;,
     0.842189;0.875638;,
     0.686074;0.890928;,
     0.842189;0.890928;,
     0.988373;0.875638;,
     0.988373;0.890928;,
     0.537597;0.875638;,
     0.657403;0.875638;,
     0.537597;0.890928;,
     0.657403;0.890928;,
     0.685765;0.901679;,
     0.657044;0.901679;,
     0.685765;0.916948;,
     0.657044;0.916948;,
     0.537464;0.901679;,
     0.537464;0.916948;,
     0.987490;0.901680;,
     0.841482;0.901679;,
     0.987490;0.916948;,
     0.841482;0.916948;,
     0.082090;0.776852;,
     0.065718;0.812996;,
     0.082090;0.327684;,
     0.065864;0.290895;,
     0.030517;0.812967;,
     0.030618;0.290816;,
     0.124186;0.336872;,
     0.088765;0.336945;,
     0.088924;0.767595;,
     0.124345;0.767243;;
    }

    VertexDuplicationIndices {
     148;
     148;
     0,
     1,
     2,
     3,
     4,
     5,
     6,
     7,
     8,
     9,
     10,
     11,
     12,
     13,
     14,
     15,
     16,
     17,
     18,
     19,
     20,
     21,
     22,
     23,
     24,
     25,
     26,
     27,
     28,
     29,
     30,
     31,
     32,
     33,
     34,
     35,
     36,
     37,
     38,
     39,
     40,
     41,
     42,
     43,
     44,
     45,
     46,
     47,
     48,
     49,
     50,
     51,
     52,
     53,
     54,
     55,
     56,
     57,
     58,
     59,
     60,
     61,
     62,
     63,
     64,
     65,
     66,
     67,
     68,
     69,
     70,
     71,
     72,
     73,
     74,
     75,
     76,
     77,
     78,
     79,
     80,
     81,
     82,
     83,
     84,
     85,
     86,
     87,
     88,
     89,
     90,
     91,
     92,
     93,
     94,
     95,
     96,
     97,
     98,
     99,
     100,
     101,
     102,
     103,
     104,
     105,
     106,
     107,
     108,
     109,
     110,
     111,
     112,
     113,
     114,
     115,
     116,
     117,
     118,
     119,
     120,
     121,
     122,
     123,
     124,
     125,
     126,
     127,
     128,
     129,
     130,
     131,
     132,
     133,
     134,
     135,
     136,
     137,
     138,
     139,
     140,
     141,
     142,
     143,
     144,
     145,
     146,
     147;
    }

    MeshMaterialList {
     1;
     140;
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     0;

     Material Material01 {
      0.800000;0.800000;0.800000;1.000000;;
      0.000000;
      0.000000;0.000000;0.000000;;
      0.000000;0.000000;0.000000;;

      TextureFilename {
       "containment_doors.jpg";
      }
     }
    }

    XSkinMeshHeader {
     1;
     1;
     1;
    }

    SkinWeights {
     "default";
     148;
     0,
     1,
     2,
     3,
     4,
     5,
     6,
     7,
     8,
     9,
     10,
     11,
     12,
     13,
     14,
     15,
     16,
     17,
     18,
     19,
     20,
     21,
     22,
     23,
     24,
     25,
     26,
     27,
     28,
     29,
     30,
     31,
     32,
     33,
     34,
     35,
     36,
     37,
     38,
     39,
     40,
     41,
     42,
     43,
     44,
     45,
     46,
     47,
     48,
     49,
     50,
     51,
     52,
     53,
     54,
     55,
     56,
     57,
     58,
     59,
     60,
     61,
     62,
     63,
     64,
     65,
     66,
     67,
     68,
     69,
     70,
     71,
     72,
     73,
     74,
     75,
     76,
     77,
     78,
     79,
     80,
     81,
     82,
     83,
     84,
     85,
     86,
     87,
     88,
     89,
     90,
     91,
     92,
     93,
     94,
     95,
     96,
     97,
     98,
     99,
     100,
     101,
     102,
     103,
     104,
     105,
     106,
     107,
     108,
     109,
     110,
     111,
     112,
     113,
     114,
     115,
     116,
     117,
     118,
     119,
     120,
     121,
     122,
     123,
     124,
     125,
     126,
     127,
     128,
     129,
     130,
     131,
     132,
     133,
     134,
     135,
     136,
     137,
     138,
     139,
     140,
     141,
     142,
     143,
     144,
     145,
     146,
     147;
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000,
     1.000000;
     1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
    }
   }
  }
 }
}