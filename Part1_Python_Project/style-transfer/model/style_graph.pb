
C
X_inputsPlaceholder*
shape:*
dtype0
S
truncated_normal/shapeConst*%
valueB"	   	          *
dtype0
B
truncated_normal/meanConst*
valueB
 *    *
dtype0
D
truncated_normal/stddevConst*
valueB
 *ÍĖĖ=*
dtype0
}
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
seed2*
seedąĸå)*
T0*
dtype0
_
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0
M
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0
d
Variable
VariableV2*
	container *
shape:		 *
shared_name *
dtype0

Variable/AssignAssignVariabletruncated_normal*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
 
Conv2DConv2DX_inputsVariable/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
S
moments/mean/reduction_indicesConst*
valueB"      *
dtype0
b
moments/meanMeanConv2Dmoments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
;
moments/StopGradientStopGradientmoments/mean*
T0
U
moments/SquaredDifferenceSquaredDifferenceConv2Dmoments/StopGradient*
T0
W
"moments/variance/reduction_indicesConst*
dtype0*
valueB"      
}
moments/varianceMeanmoments/SquaredDifference"moments/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
6
zerosConst*
valueB *    *
dtype0
Z

Variable_1
VariableV2*
dtype0*
	container *
shape: *
shared_name 

Variable_1/AssignAssign
Variable_1zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
5
onesConst*
valueB *  ?*
dtype0
Z

Variable_2
VariableV2*
	container *
shape: *
shared_name *
dtype0
~
Variable_2/AssignAssign
Variable_2ones*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
)
subSubConv2Dmoments/mean*
T0
2
add/yConst*
valueB
 *o:*
dtype0
,
addAddmoments/varianceadd/y*
T0
2
pow/yConst*
valueB
 *   ?*
dtype0

powPowaddpow/y*
T0
%
truedivRealDivsubpow*
T0
-
mulMulVariable_2/readtruediv*
T0
+
add_1AddmulVariable_1/read*
T0

ReluReluadd_1*
T0
U
truncated_normal_1/shapeConst*%
valueB"          @   *
dtype0
D
truncated_normal_1/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_1/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
T0*
dtype0*
seed2*
seedąĸå)
e
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0
S
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0
f

Variable_3
VariableV2*
shared_name *
dtype0*
	container *
shape: @

Variable_3/AssignAssign
Variable_3truncated_normal_1*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
O
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3
 
Conv2D_1Conv2DReluVariable_3/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
U
 moments_1/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_1/meanMeanConv2D_1 moments_1/mean/reduction_indices*
T0*

Tidx0*
	keep_dims(
?
moments_1/StopGradientStopGradientmoments_1/mean*
T0
[
moments_1/SquaredDifferenceSquaredDifferenceConv2D_1moments_1/StopGradient*
T0
Y
$moments_1/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_1/varianceMeanmoments_1/SquaredDifference$moments_1/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
8
zeros_1Const*
valueB@*    *
dtype0
Z

Variable_4
VariableV2*
shape:@*
shared_name *
dtype0*
	container 

Variable_4/AssignAssign
Variable_4zeros_1*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
O
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4
7
ones_1Const*
valueB@*  ?*
dtype0
Z

Variable_5
VariableV2*
dtype0*
	container *
shape:@*
shared_name 

Variable_5/AssignAssign
Variable_5ones_1*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
O
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5
/
sub_1SubConv2D_1moments_1/mean*
T0
4
add_2/yConst*
valueB
 *o:*
dtype0
2
add_2Addmoments_1/varianceadd_2/y*
T0
4
pow_1/yConst*
valueB
 *   ?*
dtype0
%
pow_1Powadd_2pow_1/y*
T0
+
	truediv_1RealDivsub_1pow_1*
T0
1
mul_1MulVariable_5/read	truediv_1*
T0
-
add_3Addmul_1Variable_4/read*
T0

Relu_1Reluadd_3*
T0
U
truncated_normal_2/shapeConst*
dtype0*%
valueB"      @      
D
truncated_normal_2/meanConst*
dtype0*
valueB
 *    
F
truncated_normal_2/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
seed2*
seedąĸå)*
T0*
dtype0
e
truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0
S
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0
g

Variable_6
VariableV2*
dtype0*
	container *
shape:@*
shared_name 

Variable_6/AssignAssign
Variable_6truncated_normal_2*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
O
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6*
T0
Ē
Conv2D_2Conv2DRelu_1Variable_6/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0
U
 moments_2/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_2/meanMeanConv2D_2 moments_2/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_2/StopGradientStopGradientmoments_2/mean*
T0
[
moments_2/SquaredDifferenceSquaredDifferenceConv2D_2moments_2/StopGradient*
T0
Y
$moments_2/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_2/varianceMeanmoments_2/SquaredDifference$moments_2/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
9
zeros_2Const*
valueB*    *
dtype0
[

Variable_7
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_7/AssignAssign
Variable_7zeros_2*
_class
loc:@Variable_7*
validate_shape(*
use_locking(*
T0
O
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7
8
ones_2Const*
valueB*  ?*
dtype0
[

Variable_8
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_8/AssignAssign
Variable_8ones_2*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(
O
Variable_8/readIdentity
Variable_8*
T0*
_class
loc:@Variable_8
/
sub_2SubConv2D_2moments_2/mean*
T0
4
add_4/yConst*
valueB
 *o:*
dtype0
2
add_4Addmoments_2/varianceadd_4/y*
T0
4
pow_2/yConst*
valueB
 *   ?*
dtype0
%
pow_2Powadd_4pow_2/y*
T0
+
	truediv_2RealDivsub_2pow_2*
T0
1
mul_2MulVariable_8/read	truediv_2*
T0
-
add_5Addmul_2Variable_7/read*
T0

Relu_2Reluadd_5*
T0
U
truncated_normal_3/shapeConst*%
valueB"            *
dtype0
D
truncated_normal_3/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_3/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
seedąĸå)*
T0*
dtype0*
seed2
e
truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0
S
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0
h

Variable_9
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_9/AssignAssign
Variable_9truncated_normal_3*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
O
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9
Ē
Conv2D_3Conv2DRelu_2Variable_9/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
U
 moments_3/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_3/meanMeanConv2D_3 moments_3/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_3/StopGradientStopGradientmoments_3/mean*
T0
[
moments_3/SquaredDifferenceSquaredDifferenceConv2D_3moments_3/StopGradient*
T0
Y
$moments_3/variance/reduction_indicesConst*
dtype0*
valueB"      

moments_3/varianceMeanmoments_3/SquaredDifference$moments_3/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
9
zeros_3Const*
valueB*    *
dtype0
\
Variable_10
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_10/AssignAssignVariable_10zeros_3*
T0*
_class
loc:@Variable_10*
validate_shape(*
use_locking(
R
Variable_10/readIdentityVariable_10*
T0*
_class
loc:@Variable_10
8
ones_3Const*
dtype0*
valueB*  ?
\
Variable_11
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_11/AssignAssignVariable_11ones_3*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(
R
Variable_11/readIdentityVariable_11*
T0*
_class
loc:@Variable_11
/
sub_3SubConv2D_3moments_3/mean*
T0
4
add_6/yConst*
valueB
 *o:*
dtype0
2
add_6Addmoments_3/varianceadd_6/y*
T0
4
pow_3/yConst*
dtype0*
valueB
 *   ?
%
pow_3Powadd_6pow_3/y*
T0
+
	truediv_3RealDivsub_3pow_3*
T0
2
mul_3MulVariable_11/read	truediv_3*
T0
.
add_7Addmul_3Variable_10/read*
T0

Relu_3Reluadd_7*
T0
U
truncated_normal_4/shapeConst*
dtype0*%
valueB"            
D
truncated_normal_4/meanConst*
dtype0*
valueB
 *    
F
truncated_normal_4/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
dtype0*
seed2*
seedąĸå)*
T0
e
truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
T0
S
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
T0
i
Variable_12
VariableV2*
	container *
shape:*
shared_name *
dtype0

Variable_12/AssignAssignVariable_12truncated_normal_4*
_class
loc:@Variable_12*
validate_shape(*
use_locking(*
T0
R
Variable_12/readIdentityVariable_12*
T0*
_class
loc:@Variable_12
Ģ
Conv2D_4Conv2DRelu_3Variable_12/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
U
 moments_4/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_4/meanMeanConv2D_4 moments_4/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_4/StopGradientStopGradientmoments_4/mean*
T0
[
moments_4/SquaredDifferenceSquaredDifferenceConv2D_4moments_4/StopGradient*
T0
Y
$moments_4/variance/reduction_indicesConst*
dtype0*
valueB"      

moments_4/varianceMeanmoments_4/SquaredDifference$moments_4/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
9
zeros_4Const*
valueB*    *
dtype0
\
Variable_13
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_13/AssignAssignVariable_13zeros_4*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_13
R
Variable_13/readIdentityVariable_13*
T0*
_class
loc:@Variable_13
8
ones_4Const*
valueB*  ?*
dtype0
\
Variable_14
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_14/AssignAssignVariable_14ones_4*
_class
loc:@Variable_14*
validate_shape(*
use_locking(*
T0
R
Variable_14/readIdentityVariable_14*
T0*
_class
loc:@Variable_14
/
sub_4SubConv2D_4moments_4/mean*
T0
4
add_8/yConst*
valueB
 *o:*
dtype0
2
add_8Addmoments_4/varianceadd_8/y*
T0
4
pow_4/yConst*
valueB
 *   ?*
dtype0
%
pow_4Powadd_8pow_4/y*
T0
+
	truediv_4RealDivsub_4pow_4*
T0
2
mul_4MulVariable_14/read	truediv_4*
T0
.
add_9Addmul_4Variable_13/read*
T0
%
add_10AddRelu_2add_9*
T0
U
truncated_normal_5/shapeConst*%
valueB"            *
dtype0
D
truncated_normal_5/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_5/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_5/TruncatedNormalTruncatedNormaltruncated_normal_5/shape*
seedąĸå)*
T0*
dtype0*
seed2
e
truncated_normal_5/mulMul"truncated_normal_5/TruncatedNormaltruncated_normal_5/stddev*
T0
S
truncated_normal_5Addtruncated_normal_5/multruncated_normal_5/mean*
T0
i
Variable_15
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_15/AssignAssignVariable_15truncated_normal_5*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(
R
Variable_15/readIdentityVariable_15*
T0*
_class
loc:@Variable_15
Ģ
Conv2D_5Conv2Dadd_10Variable_15/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
U
 moments_5/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_5/meanMeanConv2D_5 moments_5/mean/reduction_indices*
T0*

Tidx0*
	keep_dims(
?
moments_5/StopGradientStopGradientmoments_5/mean*
T0
[
moments_5/SquaredDifferenceSquaredDifferenceConv2D_5moments_5/StopGradient*
T0
Y
$moments_5/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_5/varianceMeanmoments_5/SquaredDifference$moments_5/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
9
zeros_5Const*
valueB*    *
dtype0
\
Variable_16
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_16/AssignAssignVariable_16zeros_5*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_16
R
Variable_16/readIdentityVariable_16*
T0*
_class
loc:@Variable_16
8
ones_5Const*
valueB*  ?*
dtype0
\
Variable_17
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_17/AssignAssignVariable_17ones_5*
use_locking(*
T0*
_class
loc:@Variable_17*
validate_shape(
R
Variable_17/readIdentityVariable_17*
T0*
_class
loc:@Variable_17
/
sub_5SubConv2D_5moments_5/mean*
T0
5
add_11/yConst*
valueB
 *o:*
dtype0
4
add_11Addmoments_5/varianceadd_11/y*
T0
4
pow_5/yConst*
valueB
 *   ?*
dtype0
&
pow_5Powadd_11pow_5/y*
T0
+
	truediv_5RealDivsub_5pow_5*
T0
2
mul_5MulVariable_17/read	truediv_5*
T0
/
add_12Addmul_5Variable_16/read*
T0

Relu_4Reluadd_12*
T0
U
truncated_normal_6/shapeConst*%
valueB"            *
dtype0
D
truncated_normal_6/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_6/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_6/TruncatedNormalTruncatedNormaltruncated_normal_6/shape*
seed2*
seedąĸå)*
T0*
dtype0
e
truncated_normal_6/mulMul"truncated_normal_6/TruncatedNormaltruncated_normal_6/stddev*
T0
S
truncated_normal_6Addtruncated_normal_6/multruncated_normal_6/mean*
T0
i
Variable_18
VariableV2*
	container *
shape:*
shared_name *
dtype0

Variable_18/AssignAssignVariable_18truncated_normal_6*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(
R
Variable_18/readIdentityVariable_18*
T0*
_class
loc:@Variable_18
Ģ
Conv2D_6Conv2DRelu_4Variable_18/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
U
 moments_6/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_6/meanMeanConv2D_6 moments_6/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_6/StopGradientStopGradientmoments_6/mean*
T0
[
moments_6/SquaredDifferenceSquaredDifferenceConv2D_6moments_6/StopGradient*
T0
Y
$moments_6/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_6/varianceMeanmoments_6/SquaredDifference$moments_6/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
9
zeros_6Const*
valueB*    *
dtype0
\
Variable_19
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_19/AssignAssignVariable_19zeros_6*
use_locking(*
T0*
_class
loc:@Variable_19*
validate_shape(
R
Variable_19/readIdentityVariable_19*
_class
loc:@Variable_19*
T0
8
ones_6Const*
dtype0*
valueB*  ?
\
Variable_20
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_20/AssignAssignVariable_20ones_6*
_class
loc:@Variable_20*
validate_shape(*
use_locking(*
T0
R
Variable_20/readIdentityVariable_20*
T0*
_class
loc:@Variable_20
/
sub_6SubConv2D_6moments_6/mean*
T0
5
add_13/yConst*
valueB
 *o:*
dtype0
4
add_13Addmoments_6/varianceadd_13/y*
T0
4
pow_6/yConst*
valueB
 *   ?*
dtype0
&
pow_6Powadd_13pow_6/y*
T0
+
	truediv_6RealDivsub_6pow_6*
T0
2
mul_6MulVariable_20/read	truediv_6*
T0
/
add_14Addmul_6Variable_19/read*
T0
&
add_15Addadd_10add_14*
T0
U
truncated_normal_7/shapeConst*%
valueB"            *
dtype0
D
truncated_normal_7/meanConst*
dtype0*
valueB
 *    
F
truncated_normal_7/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_7/TruncatedNormalTruncatedNormaltruncated_normal_7/shape*
seedąĸå)*
T0*
dtype0*
seed2
e
truncated_normal_7/mulMul"truncated_normal_7/TruncatedNormaltruncated_normal_7/stddev*
T0
S
truncated_normal_7Addtruncated_normal_7/multruncated_normal_7/mean*
T0
i
Variable_21
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_21/AssignAssignVariable_21truncated_normal_7*
use_locking(*
T0*
_class
loc:@Variable_21*
validate_shape(
R
Variable_21/readIdentityVariable_21*
T0*
_class
loc:@Variable_21
Ģ
Conv2D_7Conv2Dadd_15Variable_21/read*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
U
 moments_7/mean/reduction_indicesConst*
dtype0*
valueB"      
h
moments_7/meanMeanConv2D_7 moments_7/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_7/StopGradientStopGradientmoments_7/mean*
T0
[
moments_7/SquaredDifferenceSquaredDifferenceConv2D_7moments_7/StopGradient*
T0
Y
$moments_7/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_7/varianceMeanmoments_7/SquaredDifference$moments_7/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
9
zeros_7Const*
valueB*    *
dtype0
\
Variable_22
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_22/AssignAssignVariable_22zeros_7*
use_locking(*
T0*
_class
loc:@Variable_22*
validate_shape(
R
Variable_22/readIdentityVariable_22*
T0*
_class
loc:@Variable_22
8
ones_7Const*
valueB*  ?*
dtype0
\
Variable_23
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_23/AssignAssignVariable_23ones_7*
use_locking(*
T0*
_class
loc:@Variable_23*
validate_shape(
R
Variable_23/readIdentityVariable_23*
T0*
_class
loc:@Variable_23
/
sub_7SubConv2D_7moments_7/mean*
T0
5
add_16/yConst*
valueB
 *o:*
dtype0
4
add_16Addmoments_7/varianceadd_16/y*
T0
4
pow_7/yConst*
valueB
 *   ?*
dtype0
&
pow_7Powadd_16pow_7/y*
T0
+
	truediv_7RealDivsub_7pow_7*
T0
2
mul_7MulVariable_23/read	truediv_7*
T0
/
add_17Addmul_7Variable_22/read*
T0

Relu_5Reluadd_17*
T0
U
truncated_normal_8/shapeConst*%
valueB"            *
dtype0
D
truncated_normal_8/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_8/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_8/TruncatedNormalTruncatedNormaltruncated_normal_8/shape*
T0*
dtype0*
seed2*
seedąĸå)
e
truncated_normal_8/mulMul"truncated_normal_8/TruncatedNormaltruncated_normal_8/stddev*
T0
S
truncated_normal_8Addtruncated_normal_8/multruncated_normal_8/mean*
T0
i
Variable_24
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_24/AssignAssignVariable_24truncated_normal_8*
T0*
_class
loc:@Variable_24*
validate_shape(*
use_locking(
R
Variable_24/readIdentityVariable_24*
T0*
_class
loc:@Variable_24
Ģ
Conv2D_8Conv2DRelu_5Variable_24/read*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
U
 moments_8/mean/reduction_indicesConst*
valueB"      *
dtype0
h
moments_8/meanMeanConv2D_8 moments_8/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_8/StopGradientStopGradientmoments_8/mean*
T0
[
moments_8/SquaredDifferenceSquaredDifferenceConv2D_8moments_8/StopGradient*
T0
Y
$moments_8/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_8/varianceMeanmoments_8/SquaredDifference$moments_8/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
9
zeros_8Const*
valueB*    *
dtype0
\
Variable_25
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_25/AssignAssignVariable_25zeros_8*
use_locking(*
T0*
_class
loc:@Variable_25*
validate_shape(
R
Variable_25/readIdentityVariable_25*
T0*
_class
loc:@Variable_25
8
ones_8Const*
valueB*  ?*
dtype0
\
Variable_26
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_26/AssignAssignVariable_26ones_8*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_26
R
Variable_26/readIdentityVariable_26*
T0*
_class
loc:@Variable_26
/
sub_8SubConv2D_8moments_8/mean*
T0
5
add_18/yConst*
valueB
 *o:*
dtype0
4
add_18Addmoments_8/varianceadd_18/y*
T0
4
pow_8/yConst*
valueB
 *   ?*
dtype0
&
pow_8Powadd_18pow_8/y*
T0
+
	truediv_8RealDivsub_8pow_8*
T0
2
mul_8MulVariable_26/read	truediv_8*
T0
/
add_19Addmul_8Variable_25/read*
T0
&
add_20Addadd_15add_19*
T0
U
truncated_normal_9/shapeConst*
dtype0*%
valueB"            
D
truncated_normal_9/meanConst*
dtype0*
valueB
 *    
F
truncated_normal_9/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

"truncated_normal_9/TruncatedNormalTruncatedNormaltruncated_normal_9/shape*
T0*
dtype0*
seed2*
seedąĸå)
e
truncated_normal_9/mulMul"truncated_normal_9/TruncatedNormaltruncated_normal_9/stddev*
T0
S
truncated_normal_9Addtruncated_normal_9/multruncated_normal_9/mean*
T0
i
Variable_27
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_27/AssignAssignVariable_27truncated_normal_9*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_27
R
Variable_27/readIdentityVariable_27*
T0*
_class
loc:@Variable_27
Ģ
Conv2D_9Conv2Dadd_20Variable_27/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
	dilations

U
 moments_9/mean/reduction_indicesConst*
dtype0*
valueB"      
h
moments_9/meanMeanConv2D_9 moments_9/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
?
moments_9/StopGradientStopGradientmoments_9/mean*
T0
[
moments_9/SquaredDifferenceSquaredDifferenceConv2D_9moments_9/StopGradient*
T0
Y
$moments_9/variance/reduction_indicesConst*
dtype0*
valueB"      

moments_9/varianceMeanmoments_9/SquaredDifference$moments_9/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
9
zeros_9Const*
dtype0*
valueB*    
\
Variable_28
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_28/AssignAssignVariable_28zeros_9*
T0*
_class
loc:@Variable_28*
validate_shape(*
use_locking(
R
Variable_28/readIdentityVariable_28*
T0*
_class
loc:@Variable_28
8
ones_9Const*
dtype0*
valueB*  ?
\
Variable_29
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_29/AssignAssignVariable_29ones_9*
use_locking(*
T0*
_class
loc:@Variable_29*
validate_shape(
R
Variable_29/readIdentityVariable_29*
T0*
_class
loc:@Variable_29
/
sub_9SubConv2D_9moments_9/mean*
T0
5
add_21/yConst*
valueB
 *o:*
dtype0
4
add_21Addmoments_9/varianceadd_21/y*
T0
4
pow_9/yConst*
valueB
 *   ?*
dtype0
&
pow_9Powadd_21pow_9/y*
T0
+
	truediv_9RealDivsub_9pow_9*
T0
2
mul_9MulVariable_29/read	truediv_9*
T0
/
add_22Addmul_9Variable_28/read*
T0

Relu_6Reluadd_22*
T0
V
truncated_normal_10/shapeConst*%
valueB"            *
dtype0
E
truncated_normal_10/meanConst*
valueB
 *    *
dtype0
G
truncated_normal_10/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

#truncated_normal_10/TruncatedNormalTruncatedNormaltruncated_normal_10/shape*
T0*
dtype0*
seed2*
seedąĸå)
h
truncated_normal_10/mulMul#truncated_normal_10/TruncatedNormaltruncated_normal_10/stddev*
T0
V
truncated_normal_10Addtruncated_normal_10/multruncated_normal_10/mean*
T0
i
Variable_30
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_30/AssignAssignVariable_30truncated_normal_10*
use_locking(*
T0*
_class
loc:@Variable_30*
validate_shape(
R
Variable_30/readIdentityVariable_30*
T0*
_class
loc:@Variable_30
Ī
	Conv2D_10Conv2DRelu_6Variable_30/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
V
!moments_10/mean/reduction_indicesConst*
valueB"      *
dtype0
k
moments_10/meanMean	Conv2D_10!moments_10/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
A
moments_10/StopGradientStopGradientmoments_10/mean*
T0
^
moments_10/SquaredDifferenceSquaredDifference	Conv2D_10moments_10/StopGradient*
T0
Z
%moments_10/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_10/varianceMeanmoments_10/SquaredDifference%moments_10/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
:
zeros_10Const*
valueB*    *
dtype0
\
Variable_31
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_31/AssignAssignVariable_31zeros_10*
use_locking(*
T0*
_class
loc:@Variable_31*
validate_shape(
R
Variable_31/readIdentityVariable_31*
T0*
_class
loc:@Variable_31
9
ones_10Const*
valueB*  ?*
dtype0
\
Variable_32
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_32/AssignAssignVariable_32ones_10*
_class
loc:@Variable_32*
validate_shape(*
use_locking(*
T0
R
Variable_32/readIdentityVariable_32*
T0*
_class
loc:@Variable_32
2
sub_10Sub	Conv2D_10moments_10/mean*
T0
5
add_23/yConst*
valueB
 *o:*
dtype0
5
add_23Addmoments_10/varianceadd_23/y*
T0
5
pow_10/yConst*
dtype0*
valueB
 *   ?
(
pow_10Powadd_23pow_10/y*
T0
.

truediv_10RealDivsub_10pow_10*
T0
4
mul_10MulVariable_32/read
truediv_10*
T0
0
add_24Addmul_10Variable_31/read*
T0
&
add_25Addadd_20add_24*
T0
V
truncated_normal_11/shapeConst*
dtype0*%
valueB"            
E
truncated_normal_11/meanConst*
valueB
 *    *
dtype0
G
truncated_normal_11/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

#truncated_normal_11/TruncatedNormalTruncatedNormaltruncated_normal_11/shape*
seedąĸå)*
T0*
dtype0*
seed2
h
truncated_normal_11/mulMul#truncated_normal_11/TruncatedNormaltruncated_normal_11/stddev*
T0
V
truncated_normal_11Addtruncated_normal_11/multruncated_normal_11/mean*
T0
i
Variable_33
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_33/AssignAssignVariable_33truncated_normal_11*
T0*
_class
loc:@Variable_33*
validate_shape(*
use_locking(
R
Variable_33/readIdentityVariable_33*
T0*
_class
loc:@Variable_33
Ī
	Conv2D_11Conv2Dadd_25Variable_33/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
V
!moments_11/mean/reduction_indicesConst*
valueB"      *
dtype0
k
moments_11/meanMean	Conv2D_11!moments_11/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
A
moments_11/StopGradientStopGradientmoments_11/mean*
T0
^
moments_11/SquaredDifferenceSquaredDifference	Conv2D_11moments_11/StopGradient*
T0
Z
%moments_11/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_11/varianceMeanmoments_11/SquaredDifference%moments_11/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
:
zeros_11Const*
valueB*    *
dtype0
\
Variable_34
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_34/AssignAssignVariable_34zeros_11*
use_locking(*
T0*
_class
loc:@Variable_34*
validate_shape(
R
Variable_34/readIdentityVariable_34*
T0*
_class
loc:@Variable_34
9
ones_11Const*
valueB*  ?*
dtype0
\
Variable_35
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_35/AssignAssignVariable_35ones_11*
T0*
_class
loc:@Variable_35*
validate_shape(*
use_locking(
R
Variable_35/readIdentityVariable_35*
T0*
_class
loc:@Variable_35
2
sub_11Sub	Conv2D_11moments_11/mean*
T0
5
add_26/yConst*
valueB
 *o:*
dtype0
5
add_26Addmoments_11/varianceadd_26/y*
T0
5
pow_11/yConst*
valueB
 *   ?*
dtype0
(
pow_11Powadd_26pow_11/y*
T0
.

truediv_11RealDivsub_11pow_11*
T0
4
mul_11MulVariable_35/read
truediv_11*
T0
0
add_27Addmul_11Variable_34/read*
T0

Relu_7Reluadd_27*
T0
V
truncated_normal_12/shapeConst*%
valueB"            *
dtype0
E
truncated_normal_12/meanConst*
valueB
 *    *
dtype0
G
truncated_normal_12/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

#truncated_normal_12/TruncatedNormalTruncatedNormaltruncated_normal_12/shape*
seedąĸå)*
T0*
dtype0*
seed2
h
truncated_normal_12/mulMul#truncated_normal_12/TruncatedNormaltruncated_normal_12/stddev*
T0
V
truncated_normal_12Addtruncated_normal_12/multruncated_normal_12/mean*
T0
i
Variable_36
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_36/AssignAssignVariable_36truncated_normal_12*
use_locking(*
T0*
_class
loc:@Variable_36*
validate_shape(
R
Variable_36/readIdentityVariable_36*
T0*
_class
loc:@Variable_36
Ī
	Conv2D_12Conv2DRelu_7Variable_36/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0
V
!moments_12/mean/reduction_indicesConst*
valueB"      *
dtype0
k
moments_12/meanMean	Conv2D_12!moments_12/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
A
moments_12/StopGradientStopGradientmoments_12/mean*
T0
^
moments_12/SquaredDifferenceSquaredDifference	Conv2D_12moments_12/StopGradient*
T0
Z
%moments_12/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_12/varianceMeanmoments_12/SquaredDifference%moments_12/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
:
zeros_12Const*
dtype0*
valueB*    
\
Variable_37
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_37/AssignAssignVariable_37zeros_12*
use_locking(*
T0*
_class
loc:@Variable_37*
validate_shape(
R
Variable_37/readIdentityVariable_37*
T0*
_class
loc:@Variable_37
9
ones_12Const*
dtype0*
valueB*  ?
\
Variable_38
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_38/AssignAssignVariable_38ones_12*
use_locking(*
T0*
_class
loc:@Variable_38*
validate_shape(
R
Variable_38/readIdentityVariable_38*
T0*
_class
loc:@Variable_38
2
sub_12Sub	Conv2D_12moments_12/mean*
T0
5
add_28/yConst*
valueB
 *o:*
dtype0
5
add_28Addmoments_12/varianceadd_28/y*
T0
5
pow_12/yConst*
valueB
 *   ?*
dtype0
(
pow_12Powadd_28pow_12/y*
T0
.

truediv_12RealDivsub_12pow_12*
T0
4
mul_12MulVariable_38/read
truediv_12*
T0
0
add_29Addmul_12Variable_37/read*
T0
&
add_30Addadd_25add_29*
T0
V
truncated_normal_13/shapeConst*%
valueB"      @      *
dtype0
E
truncated_normal_13/meanConst*
valueB
 *    *
dtype0
G
truncated_normal_13/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

#truncated_normal_13/TruncatedNormalTruncatedNormaltruncated_normal_13/shape*
dtype0*
seed2*
seedąĸå)*
T0
h
truncated_normal_13/mulMul#truncated_normal_13/TruncatedNormaltruncated_normal_13/stddev*
T0
V
truncated_normal_13Addtruncated_normal_13/multruncated_normal_13/mean*
T0
h
Variable_39
VariableV2*
shared_name *
dtype0*
	container *
shape:@

Variable_39/AssignAssignVariable_39truncated_normal_13*
use_locking(*
T0*
_class
loc:@Variable_39*
validate_shape(
R
Variable_39/readIdentityVariable_39*
T0*
_class
loc:@Variable_39
B
stackConst*%
valueB"         @   *
dtype0
ŋ
conv2d_transposeConv2DBackpropInputstackVariable_39/readadd_30*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides

V
!moments_13/mean/reduction_indicesConst*
valueB"      *
dtype0
r
moments_13/meanMeanconv2d_transpose!moments_13/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
A
moments_13/StopGradientStopGradientmoments_13/mean*
T0
e
moments_13/SquaredDifferenceSquaredDifferenceconv2d_transposemoments_13/StopGradient*
T0
Z
%moments_13/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_13/varianceMeanmoments_13/SquaredDifference%moments_13/variance/reduction_indices*
T0*

Tidx0*
	keep_dims(
9
zeros_13Const*
valueB@*    *
dtype0
[
Variable_40
VariableV2*
	container *
shape:@*
shared_name *
dtype0

Variable_40/AssignAssignVariable_40zeros_13*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_40
R
Variable_40/readIdentityVariable_40*
T0*
_class
loc:@Variable_40
8
ones_13Const*
valueB@*  ?*
dtype0
[
Variable_41
VariableV2*
shape:@*
shared_name *
dtype0*
	container 

Variable_41/AssignAssignVariable_41ones_13*
use_locking(*
T0*
_class
loc:@Variable_41*
validate_shape(
R
Variable_41/readIdentityVariable_41*
T0*
_class
loc:@Variable_41
9
sub_13Subconv2d_transposemoments_13/mean*
T0
5
add_31/yConst*
valueB
 *o:*
dtype0
5
add_31Addmoments_13/varianceadd_31/y*
T0
5
pow_13/yConst*
valueB
 *   ?*
dtype0
(
pow_13Powadd_31pow_13/y*
T0
.

truediv_13RealDivsub_13pow_13*
T0
4
mul_13MulVariable_41/read
truediv_13*
T0
0
add_32Addmul_13Variable_40/read*
T0

Relu_8Reluadd_32*
T0
V
truncated_normal_14/shapeConst*%
valueB"          @   *
dtype0
E
truncated_normal_14/meanConst*
valueB
 *    *
dtype0
G
truncated_normal_14/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

#truncated_normal_14/TruncatedNormalTruncatedNormaltruncated_normal_14/shape*
seed2*
seedąĸå)*
T0*
dtype0
h
truncated_normal_14/mulMul#truncated_normal_14/TruncatedNormaltruncated_normal_14/stddev*
T0
V
truncated_normal_14Addtruncated_normal_14/multruncated_normal_14/mean*
T0
g
Variable_42
VariableV2*
	container *
shape: @*
shared_name *
dtype0

Variable_42/AssignAssignVariable_42truncated_normal_14*
use_locking(*
T0*
_class
loc:@Variable_42*
validate_shape(
R
Variable_42/readIdentityVariable_42*
T0*
_class
loc:@Variable_42
D
stack_1Const*%
valueB"             *
dtype0
Ã
conv2d_transpose_1Conv2DBackpropInputstack_1Variable_42/readRelu_8*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
V
!moments_14/mean/reduction_indicesConst*
valueB"      *
dtype0
t
moments_14/meanMeanconv2d_transpose_1!moments_14/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0
A
moments_14/StopGradientStopGradientmoments_14/mean*
T0
g
moments_14/SquaredDifferenceSquaredDifferenceconv2d_transpose_1moments_14/StopGradient*
T0
Z
%moments_14/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_14/varianceMeanmoments_14/SquaredDifference%moments_14/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
9
zeros_14Const*
valueB *    *
dtype0
[
Variable_43
VariableV2*
shape: *
shared_name *
dtype0*
	container 

Variable_43/AssignAssignVariable_43zeros_14*
use_locking(*
T0*
_class
loc:@Variable_43*
validate_shape(
R
Variable_43/readIdentityVariable_43*
T0*
_class
loc:@Variable_43
8
ones_14Const*
dtype0*
valueB *  ?
[
Variable_44
VariableV2*
dtype0*
	container *
shape: *
shared_name 

Variable_44/AssignAssignVariable_44ones_14*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_44
R
Variable_44/readIdentityVariable_44*
T0*
_class
loc:@Variable_44
;
sub_14Subconv2d_transpose_1moments_14/mean*
T0
5
add_33/yConst*
valueB
 *o:*
dtype0
5
add_33Addmoments_14/varianceadd_33/y*
T0
5
pow_14/yConst*
dtype0*
valueB
 *   ?
(
pow_14Powadd_33pow_14/y*
T0
.

truediv_14RealDivsub_14pow_14*
T0
4
mul_14MulVariable_44/read
truediv_14*
T0
0
add_34Addmul_14Variable_43/read*
T0

Relu_9Reluadd_34*
T0
V
truncated_normal_15/shapeConst*%
valueB"	   	          *
dtype0
E
truncated_normal_15/meanConst*
valueB
 *    *
dtype0
G
truncated_normal_15/stddevConst*
valueB
 *ÍĖĖ=*
dtype0

#truncated_normal_15/TruncatedNormalTruncatedNormaltruncated_normal_15/shape*
dtype0*
seed2*
seedąĸå)*
T0
h
truncated_normal_15/mulMul#truncated_normal_15/TruncatedNormaltruncated_normal_15/stddev*
T0
V
truncated_normal_15Addtruncated_normal_15/multruncated_normal_15/mean*
T0
g
Variable_45
VariableV2*
shared_name *
dtype0*
	container *
shape:		 

Variable_45/AssignAssignVariable_45truncated_normal_15*
use_locking(*
T0*
_class
loc:@Variable_45*
validate_shape(
R
Variable_45/readIdentityVariable_45*
T0*
_class
loc:@Variable_45
Ī
	Conv2D_13Conv2DRelu_9Variable_45/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
V
!moments_15/mean/reduction_indicesConst*
dtype0*
valueB"      
k
moments_15/meanMean	Conv2D_13!moments_15/mean/reduction_indices*
T0*

Tidx0*
	keep_dims(
A
moments_15/StopGradientStopGradientmoments_15/mean*
T0
^
moments_15/SquaredDifferenceSquaredDifference	Conv2D_13moments_15/StopGradient*
T0
Z
%moments_15/variance/reduction_indicesConst*
valueB"      *
dtype0

moments_15/varianceMeanmoments_15/SquaredDifference%moments_15/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0
9
zeros_15Const*
valueB*    *
dtype0
[
Variable_46
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_46/AssignAssignVariable_46zeros_15*
T0*
_class
loc:@Variable_46*
validate_shape(*
use_locking(
R
Variable_46/readIdentityVariable_46*
T0*
_class
loc:@Variable_46
8
ones_15Const*
dtype0*
valueB*  ?
[
Variable_47
VariableV2*
	container *
shape:*
shared_name *
dtype0

Variable_47/AssignAssignVariable_47ones_15*
use_locking(*
T0*
_class
loc:@Variable_47*
validate_shape(
R
Variable_47/readIdentityVariable_47*
T0*
_class
loc:@Variable_47
2
sub_15Sub	Conv2D_13moments_15/mean*
T0
5
add_35/yConst*
dtype0*
valueB
 *o:
5
add_35Addmoments_15/varianceadd_35/y*
T0
5
pow_15/yConst*
valueB
 *   ?*
dtype0
(
pow_15Powadd_35pow_15/y*
T0
.

truediv_15RealDivsub_15pow_15*
T0
4
mul_15MulVariable_47/read
truediv_15*
T0
0
add_36Addmul_15Variable_46/read*
T0

TanhTanhadd_36*
T0
5
mul_16/yConst*
valueB
 *  C*
dtype0
&
mul_16MulTanhmul_16/y*
T0
5
add_37/yConst*
dtype0*
valueB
 *  ĸB
(
add_37Addmul_16add_37/y*
T0
A
strided_slice/stackConst*
valueB: *
dtype0
C
strided_slice/stack_1Const*
valueB:*
dtype0
C
strided_slice/stack_2Const*
valueB:*
dtype0
â
strided_sliceStridedSliceadd_37strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
*
outputIdentitystrided_slice*
T0
8

save/ConstConst*
valueB Bmodel*
dtype0
Š
save/SaveV2/tensor_namesConst*ų
valueïBė0BVariableB
Variable_1BVariable_10BVariable_11BVariable_12BVariable_13BVariable_14BVariable_15BVariable_16BVariable_17BVariable_18BVariable_19B
Variable_2BVariable_20BVariable_21BVariable_22BVariable_23BVariable_24BVariable_25BVariable_26BVariable_27BVariable_28BVariable_29B
Variable_3BVariable_30BVariable_31BVariable_32BVariable_33BVariable_34BVariable_35BVariable_36BVariable_37BVariable_38BVariable_39B
Variable_4BVariable_40BVariable_41BVariable_42BVariable_43BVariable_44BVariable_45BVariable_46BVariable_47B
Variable_5B
Variable_6B
Variable_7B
Variable_8B
Variable_9*
dtype0
§
save/SaveV2/shape_and_slicesConst*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ý
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1Variable_10Variable_11Variable_12Variable_13Variable_14Variable_15Variable_16Variable_17Variable_18Variable_19
Variable_2Variable_20Variable_21Variable_22Variable_23Variable_24Variable_25Variable_26Variable_27Variable_28Variable_29
Variable_3Variable_30Variable_31Variable_32Variable_33Variable_34Variable_35Variable_36Variable_37Variable_38Variable_39
Variable_4Variable_40Variable_41Variable_42Variable_43Variable_44Variable_45Variable_46Variable_47
Variable_5
Variable_6
Variable_7
Variable_8
Variable_9*>
dtypes4
220
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
ž
save/RestoreV2/tensor_namesConst"/device:CPU:0*ų
valueïBė0BVariableB
Variable_1BVariable_10BVariable_11BVariable_12BVariable_13BVariable_14BVariable_15BVariable_16BVariable_17BVariable_18BVariable_19B
Variable_2BVariable_20BVariable_21BVariable_22BVariable_23BVariable_24BVariable_25BVariable_26BVariable_27BVariable_28BVariable_29B
Variable_3BVariable_30BVariable_31BVariable_32BVariable_33BVariable_34BVariable_35BVariable_36BVariable_37BVariable_38BVariable_39B
Variable_4BVariable_40BVariable_41BVariable_42BVariable_43BVariable_44BVariable_45BVariable_46BVariable_47B
Variable_5B
Variable_6B
Variable_7B
Variable_8B
Variable_9*
dtype0
đ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ī
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*>
dtypes4
220
~
save/AssignAssignVariablesave/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable

save/Assign_1Assign
Variable_1save/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_2AssignVariable_10save/RestoreV2:2*
T0*
_class
loc:@Variable_10*
validate_shape(*
use_locking(

save/Assign_3AssignVariable_11save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(

save/Assign_4AssignVariable_12save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(

save/Assign_5AssignVariable_13save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(

save/Assign_6AssignVariable_14save/RestoreV2:6*
_class
loc:@Variable_14*
validate_shape(*
use_locking(*
T0

save/Assign_7AssignVariable_15save/RestoreV2:7*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_15

save/Assign_8AssignVariable_16save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_16*
validate_shape(

save/Assign_9AssignVariable_17save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_17*
validate_shape(

save/Assign_10AssignVariable_18save/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(

save/Assign_11AssignVariable_19save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_19*
validate_shape(

save/Assign_12Assign
Variable_2save/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(

save/Assign_13AssignVariable_20save/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable_20*
validate_shape(

save/Assign_14AssignVariable_21save/RestoreV2:14*
T0*
_class
loc:@Variable_21*
validate_shape(*
use_locking(

save/Assign_15AssignVariable_22save/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_22*
validate_shape(

save/Assign_16AssignVariable_23save/RestoreV2:16*
use_locking(*
T0*
_class
loc:@Variable_23*
validate_shape(

save/Assign_17AssignVariable_24save/RestoreV2:17*
T0*
_class
loc:@Variable_24*
validate_shape(*
use_locking(

save/Assign_18AssignVariable_25save/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_25*
validate_shape(

save/Assign_19AssignVariable_26save/RestoreV2:19*
use_locking(*
T0*
_class
loc:@Variable_26*
validate_shape(

save/Assign_20AssignVariable_27save/RestoreV2:20*
use_locking(*
T0*
_class
loc:@Variable_27*
validate_shape(

save/Assign_21AssignVariable_28save/RestoreV2:21*
use_locking(*
T0*
_class
loc:@Variable_28*
validate_shape(

save/Assign_22AssignVariable_29save/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Variable_29*
validate_shape(

save/Assign_23Assign
Variable_3save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(

save/Assign_24AssignVariable_30save/RestoreV2:24*
use_locking(*
T0*
_class
loc:@Variable_30*
validate_shape(

save/Assign_25AssignVariable_31save/RestoreV2:25*
use_locking(*
T0*
_class
loc:@Variable_31*
validate_shape(

save/Assign_26AssignVariable_32save/RestoreV2:26*
use_locking(*
T0*
_class
loc:@Variable_32*
validate_shape(

save/Assign_27AssignVariable_33save/RestoreV2:27*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_33

save/Assign_28AssignVariable_34save/RestoreV2:28*
T0*
_class
loc:@Variable_34*
validate_shape(*
use_locking(

save/Assign_29AssignVariable_35save/RestoreV2:29*
use_locking(*
T0*
_class
loc:@Variable_35*
validate_shape(

save/Assign_30AssignVariable_36save/RestoreV2:30*
use_locking(*
T0*
_class
loc:@Variable_36*
validate_shape(

save/Assign_31AssignVariable_37save/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable_37*
validate_shape(

save/Assign_32AssignVariable_38save/RestoreV2:32*
use_locking(*
T0*
_class
loc:@Variable_38*
validate_shape(

save/Assign_33AssignVariable_39save/RestoreV2:33*
use_locking(*
T0*
_class
loc:@Variable_39*
validate_shape(

save/Assign_34Assign
Variable_4save/RestoreV2:34*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(

save/Assign_35AssignVariable_40save/RestoreV2:35*
_class
loc:@Variable_40*
validate_shape(*
use_locking(*
T0

save/Assign_36AssignVariable_41save/RestoreV2:36*
T0*
_class
loc:@Variable_41*
validate_shape(*
use_locking(

save/Assign_37AssignVariable_42save/RestoreV2:37*
_class
loc:@Variable_42*
validate_shape(*
use_locking(*
T0

save/Assign_38AssignVariable_43save/RestoreV2:38*
use_locking(*
T0*
_class
loc:@Variable_43*
validate_shape(

save/Assign_39AssignVariable_44save/RestoreV2:39*
T0*
_class
loc:@Variable_44*
validate_shape(*
use_locking(

save/Assign_40AssignVariable_45save/RestoreV2:40*
use_locking(*
T0*
_class
loc:@Variable_45*
validate_shape(

save/Assign_41AssignVariable_46save/RestoreV2:41*
use_locking(*
T0*
_class
loc:@Variable_46*
validate_shape(

save/Assign_42AssignVariable_47save/RestoreV2:42*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_47

save/Assign_43Assign
Variable_5save/RestoreV2:43*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(

save/Assign_44Assign
Variable_6save/RestoreV2:44*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(

save/Assign_45Assign
Variable_7save/RestoreV2:45*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(

save/Assign_46Assign
Variable_8save/RestoreV2:46*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(

save/Assign_47Assign
Variable_9save/RestoreV2:47*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
ž
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"