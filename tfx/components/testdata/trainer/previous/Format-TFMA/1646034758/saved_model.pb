,
йII
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
П
AsString

input"T

output"
Ttype:
2	
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
+
Ceil
x"T
y"T"
Ttype:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
Ў
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
К
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
м
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	"
offsetint 
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z



LogicalNot
x

y

#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
Г
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
Џ
SparseSegmentSum	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2	"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
Р
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
С
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
j

UpperBound
sorted_inputs"T
values"T
output"out_type"	
Ttype"
out_typetype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized

E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"eval*2.9.0-dev202202272v1.12.1-71946-ge47f923b3b18РЮ)

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 

'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
:*
dtype0*Н
valueГBАBcompanyBdropoff_census_tractBdropoff_community_areaBdropoff_latitudeBdropoff_longitudeBfareBpayment_typeBpickup_census_tractBpickup_community_areaBpickup_latitudeBpickup_longitudeBtipsB
trip_milesBtrip_secondsBtrip_start_dayBtrip_start_hourBtrip_start_monthBtrip_start_timestamp
i
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
й
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keys*
Tdense
 *ц
_output_shapesг
а:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::*
dense_shapes
 *

num_sparse*
ragged_split_types
 *
ragged_value_types
 *&
sparse_types
2									
Й
#transform_features_layer/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*ж
valueЬBЩ BТ/usr/local/google/home/jiyongjung/tfx-dev/t20220228/CS-lib-2022-02-28_102229/tfx/components/testdata/transform/transform_graph/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary
Й
%transform_features_layer/asset_path_1Const"/device:CPU:**
_output_shapes
: *
dtype0*д
valueЪBЧ BР/usr/local/google/home/jiyongjung/tfx-dev/t20220228/CS-lib-2022-02-28_102229/tfx/components/testdata/transform/transform_graph/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary
 
0transform_features_layer/StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_95078
Ђ
2transform_features_layer/StatefulPartitionedCall_1StatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_95084

transform_features_layer/ConstConst*
_output_shapes

:	*
dtype0*=
value4B2	"$ш^ЏТЋSЏТкNЏТ	IЏТADЏТїCЏТ@ЏТs>ЏТK=ЏТ

 transform_features_layer/Const_1Const*
_output_shapes

:	*
dtype0*=
value4B2	"$Лx'B['B:'BN'Bю'B1'BFЁ'BXЗ'Bxа'B

 transform_features_layer/Const_2Const*
_output_shapes

:	*
dtype0*=
value4B2	"$јeЏТPЏТXMЏТIЏТADЏТїCЏТй@ЏТ@ЏТе=ЏТ

 transform_features_layer/Const_3Const*
_output_shapes

:	*
dtype0*=
value4B2	"$w'B#'B:'Ba'Bю'BМ'BЇ'BЗ'Bўм'B
b
 transform_features_layer/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R?
k
 transform_features_layer/Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ
b
 transform_features_layer/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R5
b
 transform_features_layer/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R5
b
 transform_features_layer/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
k
 transform_features_layer/Const_9Const*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ
c
!transform_features_layer/Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R
c
!transform_features_layer/Const_11Const*
_output_shapes
: *
dtype0	*
value	B	 R
f
!transform_features_layer/Const_12Const*
_output_shapes
: *
dtype0*
valueB
 *#&I
f
!transform_features_layer/Const_13Const*
_output_shapes
: *
dtype0*
valueB
 */ъ@D
f
!transform_features_layer/Const_14Const*
_output_shapes
: *
dtype0*
valueB
 *ЯБЭB
f
!transform_features_layer/Const_15Const*
_output_shapes
: *
dtype0*
valueB
 * :A
f
!transform_features_layer/Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *!пB
f
!transform_features_layer/Const_17Const*
_output_shapes
: *
dtype0*
valueB
 *к2-@
Л
%transform_features_layer/asset_path_2Const"/device:CPU:**
_output_shapes
: *
dtype0*ж
valueЬBЩ BТ/usr/local/google/home/jiyongjung/tfx-dev/t20220228/CS-lib-2022-02-28_102229/tfx/components/testdata/transform/transform_graph/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary
Й
%transform_features_layer/asset_path_3Const"/device:CPU:**
_output_shapes
: *
dtype0*д
valueЪBЧ BР/usr/local/google/home/jiyongjung/tfx-dev/t20220228/CS-lib-2022-02-28_102229/tfx/components/testdata/transform/transform_graph/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary

!transform_features_layer/Const_18Const"/device:CPU:**
_output_shapes
: *
dtype0*Г
valueЉBІ B/usr/local/google/home/jiyongjung/tfx-dev/t20220228/CS-lib-2022-02-28_102229/tfx/components/testdata/transform/transform_graph/transform_fn/variables/variables

2transform_features_layer/StatefulPartitionedCall_2StatefulPartitionedCall%transform_features_layer/asset_path_12transform_features_layer/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_95114

2transform_features_layer/StatefulPartitionedCall_3StatefulPartitionedCall%transform_features_layer/asset_path_12transform_features_layer/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_95122
§
2transform_features_layer/StatefulPartitionedCall_4StatefulPartitionedCall#transform_features_layer/asset_path0transform_features_layer/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_95130
§
2transform_features_layer/StatefulPartitionedCall_5StatefulPartitionedCall#transform_features_layer/asset_path0transform_features_layer/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_95138
г
2transform_features_layer/StatefulPartitionedCall_6StatefulPartitionedCallParseExample/ParseExampleV2ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:36ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:37ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:38ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:39ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:40ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:41ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:42ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:43ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:44ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:45ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:46ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:47ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:48ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:49ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:50ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:51ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:52ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:53!transform_features_layer/Const_17!transform_features_layer/Const_16!transform_features_layer/Const_15!transform_features_layer/Const_14!transform_features_layer/Const_13!transform_features_layer/Const_12!transform_features_layer/Const_11!transform_features_layer/Const_102transform_features_layer/StatefulPartitionedCall_1 transform_features_layer/Const_9 transform_features_layer/Const_8 transform_features_layer/Const_7 transform_features_layer/Const_60transform_features_layer/StatefulPartitionedCall transform_features_layer/Const_5 transform_features_layer/Const_4 transform_features_layer/Const_3 transform_features_layer/Const_2 transform_features_layer/Const_1transform_features_layer/Const*U
TinN
L2J																																																					*
Tout
2														*
_output_shapes
џ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *!
fR
__inference_pruned_94928
C
SizeSizeinput_example_tensor*
T0*
_output_shapes
: 
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : 
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
S
rangeRangerange/startSizerange/delta*#
_output_shapes
:џџџџџџџџџ
L
ConstConst*
_output_shapes
: *
dtype0*
valueB B0.37.0
c
IdentityIdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:џџџџџџџџџ
d

Identity_1IdentityParseExample/ParseExampleV2:18*
T0*#
_output_shapes
:џџџџџџџџџ
[

Identity_2IdentityParseExample/ParseExampleV2:36*
T0	*
_output_shapes
:
g

Identity_3IdentityParseExample/ParseExampleV2:1*
T0	*'
_output_shapes
:џџџџџџџџџ
d

Identity_4IdentityParseExample/ParseExampleV2:19*
T0	*#
_output_shapes
:џџџџџџџџџ
[

Identity_5IdentityParseExample/ParseExampleV2:37*
T0	*
_output_shapes
:
g

Identity_6IdentityParseExample/ParseExampleV2:2*
T0	*'
_output_shapes
:џџџџџџџџџ
d

Identity_7IdentityParseExample/ParseExampleV2:20*
T0	*#
_output_shapes
:џџџџџџџџџ
[

Identity_8IdentityParseExample/ParseExampleV2:38*
T0	*
_output_shapes
:
g

Identity_9IdentityParseExample/ParseExampleV2:3*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_10IdentityParseExample/ParseExampleV2:21*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_11IdentityParseExample/ParseExampleV2:39*
T0	*
_output_shapes
:
h
Identity_12IdentityParseExample/ParseExampleV2:4*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_13IdentityParseExample/ParseExampleV2:22*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_14IdentityParseExample/ParseExampleV2:40*
T0	*
_output_shapes
:
h
Identity_15IdentityParseExample/ParseExampleV2:5*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_16IdentityParseExample/ParseExampleV2:23*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_17IdentityParseExample/ParseExampleV2:41*
T0	*
_output_shapes
:
h
Identity_18IdentityParseExample/ParseExampleV2:6*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_19IdentityParseExample/ParseExampleV2:24*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_20IdentityParseExample/ParseExampleV2:42*
T0	*
_output_shapes
:
h
Identity_21IdentityParseExample/ParseExampleV2:7*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_22IdentityParseExample/ParseExampleV2:25*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_23IdentityParseExample/ParseExampleV2:43*
T0	*
_output_shapes
:
h
Identity_24IdentityParseExample/ParseExampleV2:8*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_25IdentityParseExample/ParseExampleV2:26*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_26IdentityParseExample/ParseExampleV2:44*
T0	*
_output_shapes
:
h
Identity_27IdentityParseExample/ParseExampleV2:9*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_28IdentityParseExample/ParseExampleV2:27*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_29IdentityParseExample/ParseExampleV2:45*
T0	*
_output_shapes
:
i
Identity_30IdentityParseExample/ParseExampleV2:10*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_31IdentityParseExample/ParseExampleV2:28*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_32IdentityParseExample/ParseExampleV2:46*
T0	*
_output_shapes
:
i
Identity_33IdentityParseExample/ParseExampleV2:11*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_34IdentityParseExample/ParseExampleV2:29*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_35IdentityParseExample/ParseExampleV2:47*
T0	*
_output_shapes
:
i
Identity_36IdentityParseExample/ParseExampleV2:12*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_37IdentityParseExample/ParseExampleV2:30*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_38IdentityParseExample/ParseExampleV2:48*
T0	*
_output_shapes
:
i
Identity_39IdentityParseExample/ParseExampleV2:13*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_40IdentityParseExample/ParseExampleV2:31*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_41IdentityParseExample/ParseExampleV2:49*
T0	*
_output_shapes
:
i
Identity_42IdentityParseExample/ParseExampleV2:14*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_43IdentityParseExample/ParseExampleV2:32*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_44IdentityParseExample/ParseExampleV2:50*
T0	*
_output_shapes
:
i
Identity_45IdentityParseExample/ParseExampleV2:15*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_46IdentityParseExample/ParseExampleV2:33*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_47IdentityParseExample/ParseExampleV2:51*
T0	*
_output_shapes
:
i
Identity_48IdentityParseExample/ParseExampleV2:16*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_49IdentityParseExample/ParseExampleV2:34*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_50IdentityParseExample/ParseExampleV2:52*
T0	*
_output_shapes
:
i
Identity_51IdentityParseExample/ParseExampleV2:17*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_52IdentityParseExample/ParseExampleV2:35*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_53IdentityParseExample/ParseExampleV2:53*
T0	*
_output_shapes
:
|
Identity_54Identity5transform_features_layer/StatefulPartitionedCall_6:12*
T0*#
_output_shapes
:џџџџџџџџџ
{
Identity_55Identity4transform_features_layer/StatefulPartitionedCall_6:4*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_56Identity4transform_features_layer/StatefulPartitionedCall_6:3*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_57Identity5transform_features_layer/StatefulPartitionedCall_6:13*
T0*#
_output_shapes
:џџџџџџџџџ
y
Identity_58Identity2transform_features_layer/StatefulPartitionedCall_6*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_59Identity5transform_features_layer/StatefulPartitionedCall_6:11*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_60Identity5transform_features_layer/StatefulPartitionedCall_6:16*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_61Identity4transform_features_layer/StatefulPartitionedCall_6:6*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_62Identity4transform_features_layer/StatefulPartitionedCall_6:7*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_63Identity4transform_features_layer/StatefulPartitionedCall_6:9*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_64Identity4transform_features_layer/StatefulPartitionedCall_6:2*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_65Identity5transform_features_layer/StatefulPartitionedCall_6:15*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_66Identity5transform_features_layer/StatefulPartitionedCall_6:10*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_67Identity4transform_features_layer/StatefulPartitionedCall_6:1*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_68Identity4transform_features_layer/StatefulPartitionedCall_6:8*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_69Identity5transform_features_layer/StatefulPartitionedCall_6:14*
T0	*#
_output_shapes
:џџџџџџџџџ
{
Identity_70Identity4transform_features_layer/StatefulPartitionedCall_6:5*
T0*#
_output_shapes
:џџџџџџџџџ
|
Identity_71Identity5transform_features_layer/StatefulPartitionedCall_6:11*
T0	*#
_output_shapes
:џџџџџџџџџ

Cdnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
б
?dnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims
ExpandDimsIdentity_70Cdnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeShape?dnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims*
T0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
Bdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeHdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackJdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Ddnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Bdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceDdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
ў
<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeReshape?dnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDimsBdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Idnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
н
Ednn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims
ExpandDimsIdentity_54Idnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Е
@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeShapeEdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
д
Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeNdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Jdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1*
N*
T0*
_output_shapes
:

Bdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDimsHdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Kdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
с
Gdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims
ExpandDimsIdentity_57Kdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Й
Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapeShapeGdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims*
T0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
о
Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapePdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackRdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Ldnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shapePackJdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceLdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1*
N*
T0*
_output_shapes
:

Ddnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ReshapeReshapeGdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDimsJdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

6dnn/input_from_feature_columns/input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ј
1dnn/input_from_feature_columns/input_layer/concatConcatV2<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeBdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeDdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*
T0*'
_output_shapes
:џџџџџџџџџ
З
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0*
valueB"   d   
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *о%wО
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *о%w>
№
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
ў
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 

7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d

3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAddV27dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d
Й
dnn/hiddenlayer_0/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
shape
:d*)
shared_namednn/hiddenlayer_0/kernel

9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 

dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
 
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
:d*
dtype0*
valueBd*    
Џ
dnn/hiddenlayer_0/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
: *
dtype0*
shape:d*'
shared_namednn/hiddenlayer_0/bias
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 

dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:d*
dtype0

'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
А
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd
{
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:d*
dtype0

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
ќ
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *5
else_branch&R$
"dnn_zero_fraction_cond_false_95313*
output_shapes
: : : : : : *4
then_branch%R#
!dnn_zero_fraction_cond_true_95312
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
А
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values
Ї
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation

dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0*
valueB"d   F   
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *H`@О
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *H`@>
№
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
dtype0
ў
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 

7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF

3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAddV27dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF
Й
dnn/hiddenlayer_1/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
shape
:dF*)
shared_namednn/hiddenlayer_1/kernel

9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 

dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
dtype0
 
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
:F*
dtype0*
valueBF*    
Џ
dnn/hiddenlayer_1/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
shape:F*'
shared_namednn/hiddenlayer_1/bias
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 

dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:F*
dtype0

'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
dtype0

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџF
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:F*
dtype0

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџF
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџF
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_1_cond_false_95383*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_1_cond_true_95382
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values
Љ
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation

dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
:*
dtype0*
valueB"F   0   
Љ
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *йчfО
Љ
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *йчf>
№
Adnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0
ў
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: 

7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0

3dnn/hiddenlayer_2/kernel/Initializer/random_uniformAddV27dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0
Й
dnn/hiddenlayer_2/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
shape
:F0*)
shared_namednn/hiddenlayer_2/kernel

9dnn/hiddenlayer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel*
_output_shapes
: 

dnn/hiddenlayer_2/kernel/AssignAssignVariableOpdnn/hiddenlayer_2/kernel3dnn/hiddenlayer_2/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_2/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0
 
(dnn/hiddenlayer_2/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_2/bias*
_output_shapes
:0*
dtype0*
valueB0*    
Џ
dnn/hiddenlayer_2/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_2/bias*
_output_shapes
: *
dtype0*
shape:0*'
shared_namednn/hiddenlayer_2/bias
}
7dnn/hiddenlayer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias*
_output_shapes
: 

dnn/hiddenlayer_2/bias/AssignAssignVariableOpdnn/hiddenlayer_2/bias(dnn/hiddenlayer_2/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_2/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
_output_shapes
:0*
dtype0

'dnn/hiddenlayer_2/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0

dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Relu'dnn/hiddenlayer_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ0
{
(dnn/hiddenlayer_2/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
_output_shapes
:0*
dtype0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMul(dnn/hiddenlayer_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/hiddenlayer_2/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_2_cond_false_95453*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_2_cond_true_95452
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_2/fraction_of_zero_values
Љ
)dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_2/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_2/activation

dnn/hiddenlayer_2/activationHistogramSummary dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
:*
dtype0*
valueB"0   "   
Љ
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *О
Љ
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *>
№
Adnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
dtype0
ў
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: 

7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"

3dnn/hiddenlayer_3/kernel/Initializer/random_uniformAddV27dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"
Й
dnn/hiddenlayer_3/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
shape
:0"*)
shared_namednn/hiddenlayer_3/kernel

9dnn/hiddenlayer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel*
_output_shapes
: 

dnn/hiddenlayer_3/kernel/AssignAssignVariableOpdnn/hiddenlayer_3/kernel3dnn/hiddenlayer_3/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_3/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
dtype0
 
(dnn/hiddenlayer_3/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0*
valueB"*    
Џ
dnn/hiddenlayer_3/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_3/bias*
_output_shapes
: *
dtype0*
shape:"*'
shared_namednn/hiddenlayer_3/bias
}
7dnn/hiddenlayer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias*
_output_shapes
: 

dnn/hiddenlayer_3/bias/AssignAssignVariableOpdnn/hiddenlayer_3/bias(dnn/hiddenlayer_3/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_3/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0

'dnn/hiddenlayer_3/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
dtype0

dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Relu'dnn/hiddenlayer_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
{
(dnn/hiddenlayer_3/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMul(dnn/hiddenlayer_3/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_3/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_3/condStatelessIfdnn/zero_fraction_3/LessEqualdnn/hiddenlayer_3/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_3_cond_false_95523*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_3_cond_true_95522
h
!dnn/zero_fraction_3/cond/IdentityIdentitydnn/zero_fraction_3/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_1Identitydnn/zero_fraction_3/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_2Identitydnn/zero_fraction_3/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_3Identitydnn/zero_fraction_3/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_4Identitydnn/zero_fraction_3/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_5Identitydnn/zero_fraction_3/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Size!dnn/zero_fraction_3/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_3/fraction_of_zero_values
Љ
)dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_3/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_3/activation

dnn/hiddenlayer_3/activationHistogramSummary dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
Љ
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
:*
dtype0*
valueB""      

0dnn/logits/kernel/Initializer/random_uniform/minConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *їќгО

0dnn/logits/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *їќг>
л
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"*
dtype0
т
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
є
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
ш
,dnn/logits/kernel/Initializer/random_uniformAddV20dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
Є
dnn/logits/kernelVarHandleOp*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
shape
:"*"
shared_namednn/logits/kernel
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:"*
dtype0

!dnn/logits/bias/Initializer/zerosConst*"
_class
loc:@dnn/logits/bias*
_output_shapes
:*
dtype0*
valueB*    

dnn/logits/biasVarHandleOp*"
_class
loc:@dnn/logits/bias*
_output_shapes
: *
dtype0*
shape:* 
shared_namednn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:"*
dtype0

dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0

dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_4/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_4/condStatelessIfdnn/zero_fraction_4/LessEqualdnn/logits/BiasAdd*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_4_cond_false_95592*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_4_cond_true_95591
h
!dnn/zero_fraction_4/cond/IdentityIdentitydnn/zero_fraction_4/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_1Identitydnn/zero_fraction_4/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_2Identitydnn/zero_fraction_4/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_3Identitydnn/zero_fraction_4/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_4Identitydnn/zero_fraction_4/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_5Identitydnn/zero_fraction_4/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Size!dnn/zero_fraction_4/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
T0*
_output_shapes
: 

'dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values

"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn/logits/activation
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
д
Hlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
:*
dtype0*
valueB"ђ     
О
>linear/linear_model/company_xf/weights/Initializer/zeros/ConstConst*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
: *
dtype0*
valueB
 *    
Џ
8linear/linear_model/company_xf/weights/Initializer/zerosFillHlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensor>linear/linear_model/company_xf/weights/Initializer/zeros/Const*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
:	ђ
ф
&linear/linear_model/company_xf/weightsVarHandleOp*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
: *
dtype0*
shape:	ђ*7
shared_name(&linear/linear_model/company_xf/weights

Glinear/linear_model/company_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp&linear/linear_model/company_xf/weights*
_output_shapes
: 
А
-linear/linear_model/company_xf/weights/AssignAssignVariableOp&linear/linear_model/company_xf/weights8linear/linear_model/company_xf/weights/Initializer/zeros*
dtype0
Ђ
:linear/linear_model/company_xf/weights/Read/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
_output_shapes
:	ђ*
dtype0
к
Alinear/linear_model/dropoff_latitude_xf/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
ў
/linear/linear_model/dropoff_latitude_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*@
shared_name1/linear/linear_model/dropoff_latitude_xf/weights
Џ
Plinear/linear_model/dropoff_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/dropoff_latitude_xf/weights/AssignAssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightsAlinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0
м
Blinear/linear_model/dropoff_longitude_xf/weights/Initializer/zerosConst*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    

0linear/linear_model/dropoff_longitude_xf/weightsVarHandleOp*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*A
shared_name20linear/linear_model/dropoff_longitude_xf/weights
Б
Qlinear/linear_model/dropoff_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes
: 
Ю
7linear/linear_model/dropoff_longitude_xf/weights/AssignAssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightsBlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros*
dtype0
Е
Dlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0
о
Mlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorConst*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
:*
dtype0*
valueB"ђ     
Ш
Clinear/linear_model/payment_type_xf/weights/Initializer/zeros/ConstConst*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
: *
dtype0*
valueB
 *    
У
=linear/linear_model/payment_type_xf/weights/Initializer/zerosFillMlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorClinear/linear_model/payment_type_xf/weights/Initializer/zeros/Const*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
:	ђ
ѓ
+linear/linear_model/payment_type_xf/weightsVarHandleOp*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
: *
dtype0*
shape:	ђ*<
shared_name-+linear/linear_model/payment_type_xf/weights
Ї
Llinear/linear_model/payment_type_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
: 
П
2linear/linear_model/payment_type_xf/weights/AssignAssignVariableOp+linear/linear_model/payment_type_xf/weights=linear/linear_model/payment_type_xf/weights/Initializer/zeros*
dtype0
Ќ
?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
:	ђ*
dtype0
и
@linear/linear_model/pickup_latitude_xf/weights/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
ћ
.linear/linear_model/pickup_latitude_xf/weightsVarHandleOp*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*?
shared_name0.linear/linear_model/pickup_latitude_xf/weights
­
Olinear/linear_model/pickup_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes
: 
Ш
5linear/linear_model/pickup_latitude_xf/weights/AssignAssignVariableOp.linear/linear_model/pickup_latitude_xf/weights@linear/linear_model/pickup_latitude_xf/weights/Initializer/zeros*
dtype0
Б
Blinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0
к
Alinear/linear_model/pickup_longitude_xf/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
ў
/linear/linear_model/pickup_longitude_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*@
shared_name1/linear/linear_model/pickup_longitude_xf/weights
Џ
Plinear/linear_model/pickup_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/pickup_longitude_xf/weights/AssignAssignVariableOp/linear/linear_model/pickup_longitude_xf/weightsAlinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes

:
*
dtype0
ж
?linear/linear_model/trip_start_day_xf/weights/Initializer/zerosConst*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
_output_shapes

:*
dtype0*
valueB*    
ј
-linear/linear_model/trip_start_day_xf/weightsVarHandleOp*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-linear/linear_model/trip_start_day_xf/weights
Ћ
Nlinear/linear_model/trip_start_day_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes
: 
Х
4linear/linear_model/trip_start_day_xf/weights/AssignAssignVariableOp-linear/linear_model/trip_start_day_xf/weights?linear/linear_model/trip_start_day_xf/weights/Initializer/zeros*
dtype0
Џ
Alinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes

:*
dtype0
и
@linear/linear_model/trip_start_hour_xf/weights/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
_output_shapes

:*
dtype0*
valueB*    
ћ
.linear/linear_model/trip_start_hour_xf/weightsVarHandleOp*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.linear/linear_model/trip_start_hour_xf/weights
­
Olinear/linear_model/trip_start_hour_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes
: 
Ш
5linear/linear_model/trip_start_hour_xf/weights/AssignAssignVariableOp.linear/linear_model/trip_start_hour_xf/weights@linear/linear_model/trip_start_hour_xf/weights/Initializer/zeros*
dtype0
Б
Blinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes

:*
dtype0
к
Alinear/linear_model/trip_start_month_xf/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
_output_shapes

:*
dtype0*
valueB*    
ў
/linear/linear_model/trip_start_month_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/linear/linear_model/trip_start_month_xf/weights
Џ
Plinear/linear_model/trip_start_month_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/trip_start_month_xf/weights/AssignAssignVariableOp/linear/linear_model/trip_start_month_xf/weightsAlinear/linear_model/trip_start_month_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes

:*
dtype0
Д
2linear/linear_model/bias_weights/Initializer/zerosConst*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
:*
dtype0*
valueB*    
Э
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
: *
dtype0*
shape:*1
shared_name" linear/linear_model/bias_weights

Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 

'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0

4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
 
Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ѕ
Qlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims
ExpandDimsIdentity_58Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
А
elinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_valueCastelinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
е
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqualNotEqualQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDimsclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ё
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesWhere_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
р
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesGatherNdQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ѓ
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeShapeQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :ђ
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_bucketsCastTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
в
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zeroCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
­
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessLess]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Ф
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqualGreaterEqual]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Ї
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_range	LogicalOrKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
й
Llinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeShape]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
в
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/CastCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
І
Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_valuesFillLlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2SelectV2Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_rangeUlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_values]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ѓ
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastCastblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Є
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
І
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
І
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceStridedSliceSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Qlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ў
Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/xPackTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
к
Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1CastOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Ї
Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ш
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/IdentityIdentityOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ј
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
­
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceSliceVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/begin^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
З
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ProdProdYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
І
dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ѓ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Э
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2GatherV2Vlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesalinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Ш
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/xPackXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Prod\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshapeTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentity]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ю
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqualjlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
э
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/WhereWhere`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Д
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
в
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ReshapeReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Wherealinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ф
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
щ
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identity[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ђ
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/IdentityIdentityclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ў
{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Identitymlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
г
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
г
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      

ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
И
rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ћ
|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather&linear/linear_model/company_xf/weightsrlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*9
_class/
-+loc:@linear/linear_model/company_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0
§
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights*'
_output_shapes
:џџџџџџџџџ
Ю
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
П
klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Д
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ў
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Reshape}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
є
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ShapeShapeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
б
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_sliceStridedSliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shapeglinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Я
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stackPack[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Ь
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/TileTile]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_like	ZerosLikeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumSelectXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Tile^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_likeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ю
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Њ
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
З
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1SliceZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
о
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum*
T0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Г
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
И
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2Slice[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ё
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Џ
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concatConcatV2[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2ReshapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims
ExpandDimsIdentity_56^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
№
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqualZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDimsllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ћ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNdZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDimsglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShapeZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

ђ
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
п
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
С
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Б
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
б
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
в
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
у
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
э
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
м
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
м
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Д
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/dropoff_latitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ф
tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
І
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
ч
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
м
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
г
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims
ExpandDimsIdentity_55_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
К
olinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastolinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
ѓ
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqual[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDimsmlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ў
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNd[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDimshlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShape[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
 
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

є
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_bucketsCast^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
ц
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zeroCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/LessLessglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
т
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Х
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range	LogicalOrUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Less]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
э
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeShapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
ц
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/CastCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ф
_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesFillVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2SelectV2]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/CastCastllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
А
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
А
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Щ
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_sliceStridedSlice]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/Castdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
І
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ь
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/xPack^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ю
Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1CastYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Я
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ќ
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentityYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
В
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
е
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SliceSlice`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginhlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
е
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
А
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
­
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ѕ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
ц
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Prodflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
г
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualtlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/WhereWherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
О
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
№
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Whereklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentitymlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Й
wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Б
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowshlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Identitywlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
л
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
н
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
н
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Й
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Э
|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather0linear/linear_model/dropoff_longitude_xf/weights|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
т
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ш
ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1~linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
О
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Н
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Н
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shapeqlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ї
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
э
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stackPackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/TileTileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
о
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumSelectblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Tilehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1Cast`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Е
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
п
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ђ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1Shape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
_output_shapes
:
Е
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
р
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2Sliceelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
з
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
щ
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Reshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
џ
Vlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims
ExpandDimsIdentity_61Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Е
jlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_valueCastjlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
ф
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqualVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDimshlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ћ
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesWheredlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
я
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesGatherNdVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDimsclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
§
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeShapeVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :ђ
ъ
Wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_bucketsCastYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
м
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zeroCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
М
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessLessblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
г
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqualGreaterEqualblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesWlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Ж
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_range	LogicalOrPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
у
Qlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapeShapeblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
м
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/CastCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
Е
Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesFillQlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapePlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Ј
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2SelectV2Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_rangeZlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
§
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/CastCastglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Љ
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
А
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceStridedSliceXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/Cast_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ё
Vlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Н
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/xPackYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ф
Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1CastTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Л
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshapeSparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ђ
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/IdentityIdentityTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
­
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
С
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SliceSlice[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ј
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ц
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ProdProd^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ј
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
с
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
з
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/xPack]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Prodalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
П
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
§
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualolinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identityglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
ї
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/WhereWhereelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Й
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
с
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ReshapeReshape^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Whereflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ј
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
§
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identity`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ќ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/IdentityIdentityhlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Д
rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Identityrlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
ж
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      

~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
У
wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather+linear/linear_model/payment_type_xf/weightswlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*'
_output_shapes
:џџџџџџџџџ
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
г
plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Й
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ў
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ShapeShapeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ж
llinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ъ
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSlice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shapellinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stacknlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ђ
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
о
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stackPack`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
л
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/TileTileblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sumSelect]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Tileclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_likeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ј
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1Cast[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ы
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1Slice_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ш
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
И
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ь
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2Slice`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
І
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
У
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concatConcatV2`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
к
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2ReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims
ExpandDimsIdentity_63]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
И
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
э
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqualYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDimsklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ј
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNdYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDimsflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShapeYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

№
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Х
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
м
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
П
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
щ
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
О
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
П
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Є
Ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ц
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ъ
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Ч
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ј
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
А
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Э
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Я
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
э
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
р
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Ы
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
§
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
М
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
ъ
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
З
ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ї
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
й
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
л
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
л
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Џ
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Щ
zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ь
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/pickup_latitude_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
о
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
р
slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
М
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Й
olinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
љ
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
ч
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
ф
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ж
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
В
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
з
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ю
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum*
T0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
и
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Я
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
у
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims
ExpandDimsIdentity_66^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
№
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqualZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDimsllinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ћ
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNdZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDimsglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShapeZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

ђ
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
п
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
С
^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Б
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
б
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
в
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
у
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
э
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
м
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
м
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Д
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/pickup_longitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ф
tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
І
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
ч
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum*
T0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
м
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
г
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims
ExpandDimsIdentity_69\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
З
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCastllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
ъ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqualXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDimsjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ѕ
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNdXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDimselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShapeXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
ю
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_bucketsCast[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zeroCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Т
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessLessdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
й
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range	LogicalOrRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ч
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeShapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/CastCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
Л
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesFillSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
А
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2SelectV2Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/CastCastilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
К
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceStridedSliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/Castalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѓ
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
У
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/xPack[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
У
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
і
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentityVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
А
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Щ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SliceSlice]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Њ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ь
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ProdProd`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
щ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indiceshlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
н
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/xPack_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Prodclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Ч
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
ћ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/WhereWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
ч
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshape`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Wherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ж
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Identitytlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
и
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Њ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Ч
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ш
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather-linear/linear_model/trip_start_day_xf/weightsylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*'
_output_shapes
:џџџџџџџџџ
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
м
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Л
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ShapeShaperlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
є
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSlice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shapenlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Є
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
ф
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stackPackblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
с
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/TileTiledlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
в
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumSelect_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Tileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_likerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ќ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1Cast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
г
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ь
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1ShapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum*
T0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
К
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
д
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ј
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ы
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
р
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2ReshapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims
ExpandDimsIdentity_65]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
И
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
э
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqualYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDimsklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ј
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNdYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDimsflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShapeYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
№
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Х
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
м
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
П
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
щ
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
О
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
П
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Є
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ц
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ъ
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Ч
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ј
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
А
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Э
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Я
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
э
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
р
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Ы
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
§
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
М
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
ъ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
З
ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ї
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
й
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
л
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
л
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Џ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Щ
zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ь
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/trip_start_hour_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*'
_output_shapes
:џџџџџџџџџ
о
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
р
slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
М
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Й
olinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
љ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
ч
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
ф
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ж
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
з
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ю
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum*
T0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
и
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Я
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
у
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims
ExpandDimsIdentity_60^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
№
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqualZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDimsllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ћ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNdZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDimsglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
п
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
С
^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
б
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
в
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
у
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
э
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Д
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/trip_start_month_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ф
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
І
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
ч
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack*
T0
*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
м
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
г
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasAddN]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
N	*
T0*'
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
А
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
k
ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
strided_sliceStridedSliceReadVariableOpstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
N
	bias/tagsConst*
_output_shapes
: *
dtype0*
valueB
 Bbias
P
biasScalarSummary	bias/tagsstrided_slice*
T0*
_output_shapes
: 

,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
_output_shapes
:	ђ*
dtype0
`
zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 Rђ

.zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_1Const*
_output_shapes
: *
dtype0	*
value	B	 R


.zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_2Const*
_output_shapes
: *
dtype0	*
value	B	 R


.zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
:	ђ*
dtype0
b
zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value
B	 Rђ

.zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_4Const*
_output_shapes
: *
dtype0	*
value	B	 R


.zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_5Const*
_output_shapes
: *
dtype0	*
value	B	 R


.zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_6Const*
_output_shapes
: *
dtype0	*
value	B	 R

.zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_7Const*
_output_shapes
: *
dtype0	*
value	B	 R

.zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
і
zero_fraction/total_size/AddNAddNzero_fraction/total_size/Sizezero_fraction/total_size/Size_1zero_fraction/total_size/Size_2zero_fraction/total_size/Size_3zero_fraction/total_size/Size_4zero_fraction/total_size/Size_5zero_fraction/total_size/Size_6zero_fraction/total_size/Size_7zero_fraction/total_size/Size_8*
N	*
T0	*
_output_shapes
: 
`
zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
З
#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal&linear/linear_model/company_xf/weightszero_fraction/total_size/Size*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_96534*
output_shapes
: *A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_96533
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_1Equalzero_fraction/total_size/Size_1 zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
Ъ
%zero_fraction/total_zero/zero_count_1If zero_fraction/total_zero/Equal_1/linear/linear_model/dropoff_latitude_xf/weightszero_fraction/total_size/Size_1*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_1_false_96577*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_1_true_96576

.zero_fraction/total_zero/zero_count_1/IdentityIdentity%zero_fraction/total_zero/zero_count_1*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_2Equalzero_fraction/total_size/Size_2 zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
Ы
%zero_fraction/total_zero/zero_count_2If zero_fraction/total_zero/Equal_20linear/linear_model/dropoff_longitude_xf/weightszero_fraction/total_size/Size_2*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_2_false_96620*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_2_true_96619

.zero_fraction/total_zero/zero_count_2/IdentityIdentity%zero_fraction/total_zero/zero_count_2*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_3Equalzero_fraction/total_size/Size_3 zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
Ц
%zero_fraction/total_zero/zero_count_3If zero_fraction/total_zero/Equal_3+linear/linear_model/payment_type_xf/weightszero_fraction/total_size/Size_3*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_3_false_96663*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_3_true_96662

.zero_fraction/total_zero/zero_count_3/IdentityIdentity%zero_fraction/total_zero/zero_count_3*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_4Equalzero_fraction/total_size/Size_4 zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
Щ
%zero_fraction/total_zero/zero_count_4If zero_fraction/total_zero/Equal_4.linear/linear_model/pickup_latitude_xf/weightszero_fraction/total_size/Size_4*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_4_false_96706*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_4_true_96705

.zero_fraction/total_zero/zero_count_4/IdentityIdentity%zero_fraction/total_zero/zero_count_4*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_5Equalzero_fraction/total_size/Size_5 zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
Ъ
%zero_fraction/total_zero/zero_count_5If zero_fraction/total_zero/Equal_5/linear/linear_model/pickup_longitude_xf/weightszero_fraction/total_size/Size_5*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_5_false_96749*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_5_true_96748

.zero_fraction/total_zero/zero_count_5/IdentityIdentity%zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_6Equalzero_fraction/total_size/Size_6 zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
Ш
%zero_fraction/total_zero/zero_count_6If zero_fraction/total_zero/Equal_6-linear/linear_model/trip_start_day_xf/weightszero_fraction/total_size/Size_6*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_6_false_96792*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_6_true_96791

.zero_fraction/total_zero/zero_count_6/IdentityIdentity%zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_7Equalzero_fraction/total_size/Size_7 zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
Щ
%zero_fraction/total_zero/zero_count_7If zero_fraction/total_zero/Equal_7.linear/linear_model/trip_start_hour_xf/weightszero_fraction/total_size/Size_7*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_7_false_96835*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_7_true_96834

.zero_fraction/total_zero/zero_count_7/IdentityIdentity%zero_fraction/total_zero/zero_count_7*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 

 zero_fraction/total_zero/Equal_8Equalzero_fraction/total_size/Size_8 zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
Ъ
%zero_fraction/total_zero/zero_count_8If zero_fraction/total_zero/Equal_8/linear/linear_model/trip_start_month_xf/weightszero_fraction/total_size/Size_8*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_8_false_96878*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_8_true_96877

.zero_fraction/total_zero/zero_count_8/IdentityIdentity%zero_fraction/total_zero/zero_count_8*
T0*
_output_shapes
: 
§
zero_fraction/total_zero/AddNAddN,zero_fraction/total_zero/zero_count/Identity.zero_fraction/total_zero/zero_count_1/Identity.zero_fraction/total_zero/zero_count_2/Identity.zero_fraction/total_zero/zero_count_3/Identity.zero_fraction/total_zero/zero_count_4/Identity.zero_fraction/total_zero/zero_count_5/Identity.zero_fraction/total_zero/zero_count_6/Identity.zero_fraction/total_zero/zero_count_7/Identity.zero_fraction/total_zero/zero_count_8/Identity*
N	*
T0*
_output_shapes
: 
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/AddN*

DstT0*

SrcT0	*
_output_shapes
: 

zero_fraction/compute/truedivRealDivzero_fraction/total_zero/AddN"zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
T0*
_output_shapes
: 
v
fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*)
value B Bfraction_of_zero_weights

fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

zero_fraction_1/SizeSizeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
: *
out_type0	
a
zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
z
zero_fraction_1/LessEqual	LessEqualzero_fraction_1/Sizezero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

zero_fraction_1/condStatelessIfzero_fraction_1/LessEqualHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *3
else_branch$R"
 zero_fraction_1_cond_false_96928*
output_shapes
: *2
then_branch#R!
zero_fraction_1_cond_true_96927
`
zero_fraction_1/cond/IdentityIdentityzero_fraction_1/cond*
T0	*
_output_shapes
: 

&zero_fraction_1/counts_to_fraction/subSubzero_fraction_1/Sizezero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

'zero_fraction_1/counts_to_fraction/CastCast&zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
w
)zero_fraction_1/counts_to_fraction/Cast_1Castzero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Њ
*zero_fraction_1/counts_to_fraction/truedivRealDiv'zero_fraction_1/counts_to_fraction/Cast)zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_1/fractionIdentity*zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

#linear/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*/
value&B$ Blinear/fraction_of_zero_values

linear/fraction_of_zero_valuesScalarSummary#linear/fraction_of_zero_values/tagszero_fraction_1/fraction*
T0*
_output_shapes
: 
g
linear/activation/tagConst*
_output_shapes
: *
dtype0*"
valueB Blinear/activation

linear/activationHistogramSummarylinear/activation/tagHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: 

addAddV2dnn/logits/BiasAddHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
D
head/logits/ShapeShapeadd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
q
&head/predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
В
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
I
head/predictions/ShapeShapeadd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
K
head/predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_2
ExpandDimshead/predictions/range_1!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
m
head/predictions/AsStringAsStringhead/predictions/ExpandDims_2*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/Tile_1Tilehead/predictions/AsString!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
K
head/losses/logits/ShapeShapeadd*
T0*
_output_shapes
:
n
,head/losses/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
^
Vhead/losses/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Ghead/losses/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
l
!head/losses/labels/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/losses/labels/ExpandDims
ExpandDimsIdentity_71!head/losses/labels/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
n
,head/losses/labels/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
z
-head/losses/labels/assert_rank_at_least/ShapeShapehead/losses/labels/ExpandDims*
T0	*
_output_shapes
:
^
Vhead/losses/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Ghead/losses/labels/assert_rank_at_least/static_checks_determined_all_okNoOp

head/losses/labels/ShapeShapeaddH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes
:
К
&head/losses/labels/strided_slice/stackConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
Х
(head/losses/labels/strided_slice/stack_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
М
(head/losses/labels/strided_slice/stack_2ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:

 head/losses/labels/strided_sliceStridedSlicehead/losses/labels/Shape&head/losses/labels/strided_slice/stack(head/losses/labels/strided_slice/stack_1(head/losses/labels/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask
Ж
"head/losses/labels/concat/values_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
Њ
head/losses/labels/concat/axisConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
value	B : 
Й
head/losses/labels/concatConcatV2 head/losses/labels/strided_slice"head/losses/labels/concat/values_1head/losses/labels/concat/axis*
N*
T0*
_output_shapes
:
Б
head/losses/labels/Shape_1Shapehead/losses/labels/ExpandDimsH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*
_output_shapes
:

'head/losses/labels/assert_equal_1/EqualEqualhead/losses/labels/concathead/losses/labels/Shape_1*
T0*
_output_shapes
:
Л
'head/losses/labels/assert_equal_1/ConstConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 

%head/losses/labels/assert_equal_1/AllAll'head/losses/labels/assert_equal_1/Equal'head/losses/labels/assert_equal_1/Const*
_output_shapes
: 
П
.head/losses/labels/assert_equal_1/Assert/ConstConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
в
0head/losses/labels/assert_equal_1/Assert/Const_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
Щ
0head/losses/labels/assert_equal_1/Assert/Const_2ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
Ч
6head/losses/labels/assert_equal_1/Assert/Assert/data_0ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
и
6head/losses/labels/assert_equal_1/Assert/Assert/data_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
Я
6head/losses/labels/assert_equal_1/Assert/Assert/data_3ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
Я
/head/losses/labels/assert_equal_1/Assert/AssertAssert%head/losses/labels/assert_equal_1/All6head/losses/labels/assert_equal_1/Assert/Assert/data_06head/losses/labels/assert_equal_1/Assert/Assert/data_1head/losses/labels/concat6head/losses/labels/assert_equal_1/Assert/Assert/data_3head/losses/labels/Shape_1*
T	
2
ы
head/losses/labelsIdentityhead/losses/labels/ExpandDims0^head/losses/labels/assert_equal_1/Assert/AssertH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:џџџџџџџџџ
m
head/losses/CastCasthead/losses/labels*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
h
#head/losses/check_label_range/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Џ
9head/losses/check_label_range/assert_less_equal/LessEqual	LessEqualhead/losses/Cast#head/losses/check_label_range/Const*
T0*'
_output_shapes
:џџџџџџџџџ

5head/losses/check_label_range/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
Ф
3head/losses/check_label_range/assert_less_equal/AllAll9head/losses/check_label_range/assert_less_equal/LessEqual5head/losses/check_label_range/assert_less_equal/Const*
_output_shapes
: 

<head/losses/check_label_range/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 1
Њ
>head/losses/check_label_range/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

>head/losses/check_label_range/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = 
Ћ
>head/losses/check_label_range/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (head/losses/check_label_range/Const:0) = 
Ь
Bhead/losses/check_label_range/assert_less_equal/Assert/AssertGuardIf3head/losses/check_label_range/assert_less_equal/All3head/losses/check_label_range/assert_less_equal/Allhead/losses/Cast#head/losses/check_label_range/Const*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *a
else_branchRRP
Nhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_false_97032*
output_shapes
: *`
then_branchQRO
Mhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_true_97031
М
Khead/losses/check_label_range/assert_less_equal/Assert/AssertGuard/IdentityIdentityBhead/losses/check_label_range/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
|
7head/losses/check_label_range/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
з
Mhead/losses/check_label_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual7head/losses/check_label_range/assert_non_negative/Consthead/losses/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

Ihead/losses/check_label_range/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

Ghead/losses/check_label_range/assert_non_negative/assert_less_equal/AllAllMhead/losses/check_label_range/assert_non_negative/assert_less_equal/LessEqualIhead/losses/check_label_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 
Ї
Phead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*'
valueB BLabels must be >= 0.  
О
Rhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:
Ќ
Rhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = 

Vhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuardIfGhead/losses/check_label_range/assert_non_negative/assert_less_equal/AllGhead/losses/check_label_range/assert_non_negative/assert_less_equal/Allhead/losses/Cast*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *u
else_branchfRd
bhead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_97057*
output_shapes
: *t
then_brancheRc
ahead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_97056
ф
_head/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityVhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
І
&head/losses/check_label_range/IdentityIdentityhead/losses/CastL^head/losses/check_label_range/assert_less_equal/Assert/AssertGuard/Identity`^head/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
h
$head/losses/logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ

&head/losses/logistic_loss/GreaterEqualGreaterEqualadd$head/losses/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
 head/losses/logistic_loss/SelectSelect&head/losses/logistic_loss/GreaterEqualadd$head/losses/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
[
head/losses/logistic_loss/NegNegadd*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
"head/losses/logistic_loss/Select_1Select&head/losses/logistic_loss/GreaterEqualhead/losses/logistic_loss/Negadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/losses/logistic_loss/mulMuladd&head/losses/check_label_range/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

head/losses/logistic_loss/subSub head/losses/logistic_loss/Selecthead/losses/logistic_loss/mul*
T0*'
_output_shapes
:џџџџџџџџџ
z
head/losses/logistic_loss/ExpExp"head/losses/logistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
y
head/losses/logistic_loss/Log1pLog1phead/losses/logistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ

head/losses/logistic_lossAddV2head/losses/logistic_loss/subhead/losses/logistic_loss/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ
d
head/losses/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

head/losses/weighted_loss/MulMulhead/losses/logistic_losshead/losses/weighted_loss/Const*
T0*'
_output_shapes
:џџџџџџџџџ
r
!head/losses/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       

head/losses/weighted_loss/SumSumhead/losses/weighted_loss/Mul!head/losses/weighted_loss/Const_1*
T0*
_output_shapes
: 
n
&head/losses/weighted_loss/num_elementsSizehead/losses/weighted_loss/Mul*
T0*
_output_shapes
: 

+head/losses/weighted_loss/num_elements/CastCast&head/losses/weighted_loss/num_elements*

DstT0*

SrcT0*
_output_shapes
: 
`
head/losses/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 
g
%head/losses/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
g
%head/losses/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
А
head/losses/weighted_loss/rangeRange%head/losses/weighted_loss/range/starthead/losses/weighted_loss/Rank%head/losses/weighted_loss/range/delta*
_output_shapes
: 

head/losses/weighted_loss/Sum_1Sumhead/losses/weighted_loss/Sumhead/losses/weighted_loss/range*
T0*
_output_shapes
: 

head/losses/weighted_loss/valueDivNoNanhead/losses/weighted_loss/Sum_1+head/losses/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 

$head/metrics/total/Initializer/zerosConst*%
_class
loc:@head/metrics/total*
_output_shapes
: *
dtype0*
valueB
 *    

head/metrics/totalVarHandleOp*%
_class
loc:@head/metrics/total*
_output_shapes
: *
dtype0*
shape: *#
shared_namehead/metrics/total
u
3head/metrics/total/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total*
_output_shapes
: 
t
head/metrics/total/AssignAssignVariableOphead/metrics/total$head/metrics/total/Initializer/zeros*
dtype0
q
&head/metrics/total/Read/ReadVariableOpReadVariableOphead/metrics/total*
_output_shapes
: *
dtype0

$head/metrics/count/Initializer/zerosConst*%
_class
loc:@head/metrics/count*
_output_shapes
: *
dtype0*
valueB
 *    

head/metrics/countVarHandleOp*%
_class
loc:@head/metrics/count*
_output_shapes
: *
dtype0*
shape: *#
shared_namehead/metrics/count
u
3head/metrics/count/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count*
_output_shapes
: 
t
head/metrics/count/AssignAssignVariableOphead/metrics/count$head/metrics/count/Initializer/zeros*
dtype0
q
&head/metrics/count/Read/ReadVariableOpReadVariableOphead/metrics/count*
_output_shapes
: *
dtype0

&head/metrics/total_1/Initializer/zerosConst*'
_class
loc:@head/metrics/total_1*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/total_1VarHandleOp*'
_class
loc:@head/metrics/total_1*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_1
y
5head/metrics/total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_1*
_output_shapes
: 
z
head/metrics/total_1/AssignAssignVariableOphead/metrics/total_1&head/metrics/total_1/Initializer/zeros*
dtype0
u
(head/metrics/total_1/Read/ReadVariableOpReadVariableOphead/metrics/total_1*
_output_shapes
: *
dtype0

&head/metrics/count_1/Initializer/zerosConst*'
_class
loc:@head/metrics/count_1*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/count_1VarHandleOp*'
_class
loc:@head/metrics/count_1*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_1
y
5head/metrics/count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_1*
_output_shapes
: 
z
head/metrics/count_1/AssignAssignVariableOphead/metrics/count_1&head/metrics/count_1/Initializer/zeros*
dtype0
u
(head/metrics/count_1/Read/ReadVariableOpReadVariableOphead/metrics/count_1*
_output_shapes
: *
dtype0
Њ
-head/metrics/true_positives/Initializer/zerosConst*.
_class$
" loc:@head/metrics/true_positives*
_output_shapes
:*
dtype0*
valueB*    
О
head/metrics/true_positivesVarHandleOp*.
_class$
" loc:@head/metrics/true_positives*
_output_shapes
: *
dtype0*
shape:*,
shared_namehead/metrics/true_positives

<head/metrics/true_positives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives*
_output_shapes
: 

"head/metrics/true_positives/AssignAssignVariableOphead/metrics/true_positives-head/metrics/true_positives/Initializer/zeros*
dtype0

/head/metrics/true_positives/Read/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
Ќ
.head/metrics/false_positives/Initializer/zerosConst*/
_class%
#!loc:@head/metrics/false_positives*
_output_shapes
:*
dtype0*
valueB*    
С
head/metrics/false_positivesVarHandleOp*/
_class%
#!loc:@head/metrics/false_positives*
_output_shapes
: *
dtype0*
shape:*-
shared_namehead/metrics/false_positives

=head/metrics/false_positives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives*
_output_shapes
: 

#head/metrics/false_positives/AssignAssignVariableOphead/metrics/false_positives.head/metrics/false_positives/Initializer/zeros*
dtype0

0head/metrics/false_positives/Read/ReadVariableOpReadVariableOphead/metrics/false_positives*
_output_shapes
:*
dtype0
Ў
/head/metrics/true_positives_1/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_positives_1*
_output_shapes
:*
dtype0*
valueB*    
Ф
head/metrics/true_positives_1VarHandleOp*0
_class&
$"loc:@head/metrics/true_positives_1*
_output_shapes
: *
dtype0*
shape:*.
shared_namehead/metrics/true_positives_1

>head/metrics/true_positives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_1*
_output_shapes
: 

$head/metrics/true_positives_1/AssignAssignVariableOphead/metrics/true_positives_1/head/metrics/true_positives_1/Initializer/zeros*
dtype0

1head/metrics/true_positives_1/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
Ќ
.head/metrics/false_negatives/Initializer/zerosConst*/
_class%
#!loc:@head/metrics/false_negatives*
_output_shapes
:*
dtype0*
valueB*    
С
head/metrics/false_negativesVarHandleOp*/
_class%
#!loc:@head/metrics/false_negatives*
_output_shapes
: *
dtype0*
shape:*-
shared_namehead/metrics/false_negatives

=head/metrics/false_negatives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives*
_output_shapes
: 

#head/metrics/false_negatives/AssignAssignVariableOphead/metrics/false_negatives.head/metrics/false_negatives/Initializer/zeros*
dtype0

0head/metrics/false_negatives/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives*
_output_shapes
:*
dtype0

&head/metrics/total_2/Initializer/zerosConst*'
_class
loc:@head/metrics/total_2*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/total_2VarHandleOp*'
_class
loc:@head/metrics/total_2*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_2
y
5head/metrics/total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_2*
_output_shapes
: 
z
head/metrics/total_2/AssignAssignVariableOphead/metrics/total_2&head/metrics/total_2/Initializer/zeros*
dtype0
u
(head/metrics/total_2/Read/ReadVariableOpReadVariableOphead/metrics/total_2*
_output_shapes
: *
dtype0

&head/metrics/count_2/Initializer/zerosConst*'
_class
loc:@head/metrics/count_2*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/count_2VarHandleOp*'
_class
loc:@head/metrics/count_2*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_2
y
5head/metrics/count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_2*
_output_shapes
: 
z
head/metrics/count_2/AssignAssignVariableOphead/metrics/count_2&head/metrics/count_2/Initializer/zeros*
dtype0
u
(head/metrics/count_2/Read/ReadVariableOpReadVariableOphead/metrics/count_2*
_output_shapes
: *
dtype0

&head/metrics/total_3/Initializer/zerosConst*'
_class
loc:@head/metrics/total_3*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/total_3VarHandleOp*'
_class
loc:@head/metrics/total_3*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_3
y
5head/metrics/total_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_3*
_output_shapes
: 
z
head/metrics/total_3/AssignAssignVariableOphead/metrics/total_3&head/metrics/total_3/Initializer/zeros*
dtype0
u
(head/metrics/total_3/Read/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0

&head/metrics/count_3/Initializer/zerosConst*'
_class
loc:@head/metrics/count_3*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/count_3VarHandleOp*'
_class
loc:@head/metrics/count_3*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_3
y
5head/metrics/count_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_3*
_output_shapes
: 
z
head/metrics/count_3/AssignAssignVariableOphead/metrics/count_3&head/metrics/count_3/Initializer/zeros*
dtype0
u
(head/metrics/count_3/Read/ReadVariableOpReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0

&head/metrics/total_4/Initializer/zerosConst*'
_class
loc:@head/metrics/total_4*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/total_4VarHandleOp*'
_class
loc:@head/metrics/total_4*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_4
y
5head/metrics/total_4/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_4*
_output_shapes
: 
z
head/metrics/total_4/AssignAssignVariableOphead/metrics/total_4&head/metrics/total_4/Initializer/zeros*
dtype0
u
(head/metrics/total_4/Read/ReadVariableOpReadVariableOphead/metrics/total_4*
_output_shapes
: *
dtype0

&head/metrics/count_4/Initializer/zerosConst*'
_class
loc:@head/metrics/count_4*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
head/metrics/count_4VarHandleOp*'
_class
loc:@head/metrics/count_4*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_4
y
5head/metrics/count_4/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_4*
_output_shapes
: 
z
head/metrics/count_4/AssignAssignVariableOphead/metrics/count_4&head/metrics/count_4/Initializer/zeros*
dtype0
u
(head/metrics/count_4/Read/ReadVariableOpReadVariableOphead/metrics/count_4*
_output_shapes
: *
dtype0
А
/head/metrics/true_positives_2/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_positives_2*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Х
head/metrics/true_positives_2VarHandleOp*0
_class&
$"loc:@head/metrics/true_positives_2*
_output_shapes
: *
dtype0*
shape:Ш*.
shared_namehead/metrics/true_positives_2

>head/metrics/true_positives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_2*
_output_shapes
: 

$head/metrics/true_positives_2/AssignAssignVariableOphead/metrics/true_positives_2/head/metrics/true_positives_2/Initializer/zeros*
dtype0

1head/metrics/true_positives_2/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:Ш*
dtype0
Ќ
-head/metrics/true_negatives/Initializer/zerosConst*.
_class$
" loc:@head/metrics/true_negatives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
П
head/metrics/true_negativesVarHandleOp*.
_class$
" loc:@head/metrics/true_negatives*
_output_shapes
: *
dtype0*
shape:Ш*,
shared_namehead/metrics/true_negatives

<head/metrics/true_negatives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_negatives*
_output_shapes
: 

"head/metrics/true_negatives/AssignAssignVariableOphead/metrics/true_negatives-head/metrics/true_negatives/Initializer/zeros*
dtype0

/head/metrics/true_negatives/Read/ReadVariableOpReadVariableOphead/metrics/true_negatives*
_output_shapes	
:Ш*
dtype0
В
0head/metrics/false_positives_1/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Ш
head/metrics/false_positives_1VarHandleOp*1
_class'
%#loc:@head/metrics/false_positives_1*
_output_shapes
: *
dtype0*
shape:Ш*/
shared_name head/metrics/false_positives_1

?head/metrics/false_positives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives_1*
_output_shapes
: 

%head/metrics/false_positives_1/AssignAssignVariableOphead/metrics/false_positives_10head/metrics/false_positives_1/Initializer/zeros*
dtype0

2head/metrics/false_positives_1/Read/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0
В
0head/metrics/false_negatives_1/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_negatives_1*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Ш
head/metrics/false_negatives_1VarHandleOp*1
_class'
%#loc:@head/metrics/false_negatives_1*
_output_shapes
: *
dtype0*
shape:Ш*/
shared_name head/metrics/false_negatives_1

?head/metrics/false_negatives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives_1*
_output_shapes
: 

%head/metrics/false_negatives_1/AssignAssignVariableOphead/metrics/false_negatives_10head/metrics/false_negatives_1/Initializer/zeros*
dtype0

2head/metrics/false_negatives_1/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
_output_shapes	
:Ш*
dtype0
А
/head/metrics/true_positives_3/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Х
head/metrics/true_positives_3VarHandleOp*0
_class&
$"loc:@head/metrics/true_positives_3*
_output_shapes
: *
dtype0*
shape:Ш*.
shared_namehead/metrics/true_positives_3

>head/metrics/true_positives_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_3*
_output_shapes
: 

$head/metrics/true_positives_3/AssignAssignVariableOphead/metrics/true_positives_3/head/metrics/true_positives_3/Initializer/zeros*
dtype0

1head/metrics/true_positives_3/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
А
/head/metrics/true_negatives_1/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_negatives_1*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Х
head/metrics/true_negatives_1VarHandleOp*0
_class&
$"loc:@head/metrics/true_negatives_1*
_output_shapes
: *
dtype0*
shape:Ш*.
shared_namehead/metrics/true_negatives_1

>head/metrics/true_negatives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_negatives_1*
_output_shapes
: 

$head/metrics/true_negatives_1/AssignAssignVariableOphead/metrics/true_negatives_1/head/metrics/true_negatives_1/Initializer/zeros*
dtype0

1head/metrics/true_negatives_1/Read/ReadVariableOpReadVariableOphead/metrics/true_negatives_1*
_output_shapes	
:Ш*
dtype0
В
0head/metrics/false_positives_2/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_positives_2*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Ш
head/metrics/false_positives_2VarHandleOp*1
_class'
%#loc:@head/metrics/false_positives_2*
_output_shapes
: *
dtype0*
shape:Ш*/
shared_name head/metrics/false_positives_2

?head/metrics/false_positives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives_2*
_output_shapes
: 

%head/metrics/false_positives_2/AssignAssignVariableOphead/metrics/false_positives_20head/metrics/false_positives_2/Initializer/zeros*
dtype0

2head/metrics/false_positives_2/Read/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:Ш*
dtype0
В
0head/metrics/false_negatives_2/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_negatives_2*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Ш
head/metrics/false_negatives_2VarHandleOp*1
_class'
%#loc:@head/metrics/false_negatives_2*
_output_shapes
: *
dtype0*
shape:Ш*/
shared_name head/metrics/false_negatives_2

?head/metrics/false_negatives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives_2*
_output_shapes
: 

%head/metrics/false_negatives_2/AssignAssignVariableOphead/metrics/false_negatives_20head/metrics/false_negatives_2/Initializer/zeros*
dtype0

2head/metrics/false_negatives_2/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives_2*
_output_shapes	
:Ш*
dtype0
A
logits_1/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_1/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
T
Llogits_1/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_1/assert_rank_at_least/static_checks_determined_all_okNoOp
V
predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
Z
predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
l
!predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ѓ
predictions/two_class_logitsConcatV2predictions/zeros_likeadd!predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:џџџџџџџџџ
t
predictions/probabilitiesSoftmaxpredictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
j
predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

predictions/class_idsArgMaxpredictions/two_class_logitspredictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
e
predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

predictions/ExpandDims
ExpandDimspredictions/class_idspredictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
m
predictions/str_classesAsStringpredictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
D
predictions/ShapeShapeadd*
T0*
_output_shapes
:
i
predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
щ
predictions/strided_sliceStridedSlicepredictions/Shapepredictions/strided_slice/stack!predictions/strided_slice/stack_1!predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Y
predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Y
predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
Y
predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

predictions/rangeRangepredictions/range/startpredictions/range/limitpredictions/range/delta*
_output_shapes
:
^
predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

predictions/ExpandDims_1
ExpandDimspredictions/rangepredictions/ExpandDims_1/dim*
T0*
_output_shapes

:
^
predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

predictions/Tile/multiplesPackpredictions/strided_slicepredictions/Tile/multiples/1*
N*
T0*
_output_shapes
:

predictions/TileTilepredictions/ExpandDims_1predictions/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
F
predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
k
!predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
m
#predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
m
#predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ѓ
predictions/strided_slice_1StridedSlicepredictions/Shape_1!predictions/strided_slice_1/stack#predictions/strided_slice_1/stack_1#predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
[
predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
[
predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
[
predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :

predictions/range_1Rangepredictions/range_1/startpredictions/range_1/limitpredictions/range_1/delta*
_output_shapes
:
^
predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 

predictions/ExpandDims_2
ExpandDimspredictions/range_1predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
c
predictions/AsStringAsStringpredictions/ExpandDims_2*
T0*
_output_shapes

:
`
predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

predictions/Tile_1/multiplesPackpredictions/strided_slice_1predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:

predictions/Tile_1Tilepredictions/AsStringpredictions/Tile_1/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
A
logits_2/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_2/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
T
Llogits_2/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_2/assert_rank_at_least/static_checks_determined_all_okNoOp
`
labels/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
u
labels/ExpandDims
ExpandDimsIdentity_71labels/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
b
 labels/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
b
!labels/assert_rank_at_least/ShapeShapelabels/ExpandDims*
T0	*
_output_shapes
:
R
Jlabels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
C
;labels/assert_rank_at_least/static_checks_determined_all_okNoOp
}
labels/ShapeShapeadd<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes
:
Ђ
labels/strided_slice/stackConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
­
labels/strided_slice/stack_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Є
labels/strided_slice/stack_2Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
Ю
labels/strided_sliceStridedSlicelabels/Shapelabels/strided_slice/stacklabels/strided_slice/stack_1labels/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask

labels/concat/values_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:

labels/concat/axisConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
value	B : 

labels/concatConcatV2labels/strided_slicelabels/concat/values_1labels/concat/axis*
N*
T0*
_output_shapes
:

labels/Shape_1Shapelabels/ExpandDims<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*
_output_shapes
:
h
labels/assert_equal_1/EqualEquallabels/concatlabels/Shape_1*
T0*
_output_shapes
:
Ѓ
labels/assert_equal_1/ConstConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
r
labels/assert_equal_1/AllAlllabels/assert_equal_1/Equallabels/assert_equal_1/Const*
_output_shapes
: 
Ї
"labels/assert_equal_1/Assert/ConstConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
К
$labels/assert_equal_1/Assert/Const_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
Б
$labels/assert_equal_1/Assert/Const_2Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
Џ
*labels/assert_equal_1/Assert/Assert/data_0Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
Р
*labels/assert_equal_1/Assert/Assert/data_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
З
*labels/assert_equal_1/Assert/Assert/data_3Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
ћ
#labels/assert_equal_1/Assert/AssertAssertlabels/assert_equal_1/All*labels/assert_equal_1/Assert/Assert/data_0*labels/assert_equal_1/Assert/Assert/data_1labels/concat*labels/assert_equal_1/Assert/Assert/data_3labels/Shape_1*
T	
2
Л
labelsIdentitylabels/ExpandDims$^labels/assert_equal_1/Assert/Assert<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:џџџџџџџџџ
U
CastCastlabels*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
\
check_label_range/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

-check_label_range/assert_less_equal/LessEqual	LessEqualCastcheck_label_range/Const*
T0*'
_output_shapes
:џџџџџџџџџ
z
)check_label_range/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 
'check_label_range/assert_less_equal/AllAll-check_label_range/assert_less_equal/LessEqual)check_label_range/assert_less_equal/Const*
_output_shapes
: 

0check_label_range/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 1

2check_label_range/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

2check_label_range/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = 

2check_label_range/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*1
value(B& B y (check_label_range/Const:0) = 
ј
6check_label_range/assert_less_equal/Assert/AssertGuardIf'check_label_range/assert_less_equal/All'check_label_range/assert_less_equal/AllCastcheck_label_range/Const*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
Bcheck_label_range_assert_less_equal_Assert_AssertGuard_false_97258*
output_shapes
: *T
then_branchERC
Acheck_label_range_assert_less_equal_Assert_AssertGuard_true_97257
Є
?check_label_range/assert_less_equal/Assert/AssertGuard/IdentityIdentity6check_label_range/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
p
+check_label_range/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
Г
Acheck_label_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual+check_label_range/assert_non_negative/ConstCast*
T0*'
_output_shapes
:џџџџџџџџџ

=check_label_range/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
м
;check_label_range/assert_non_negative/assert_less_equal/AllAllAcheck_label_range/assert_non_negative/assert_less_equal/LessEqual=check_label_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 

Dcheck_label_range/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*'
valueB BLabels must be >= 0.  
В
Fcheck_label_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:

Fcheck_label_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = 
Т
Jcheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuardIf;check_label_range/assert_non_negative/assert_less_equal/All;check_label_range/assert_non_negative/assert_less_equal/AllCast*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *i
else_branchZRX
Vcheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_97283*
output_shapes
: *h
then_branchYRW
Ucheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_97282
Ь
Scheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityJcheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
і
check_label_range/IdentityIdentityCast@^check_label_range/assert_less_equal/Assert/AssertGuard/IdentityT^check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
\
logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
{
logistic_loss/GreaterEqualGreaterEqualaddlogistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

logistic_loss/SelectSelectlogistic_loss/GreaterEqualaddlogistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
O
logistic_loss/NegNegadd*
T0*'
_output_shapes
:џџџџџџџџџ

logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negadd*
T0*'
_output_shapes
:џџџџџџџџџ
k
logistic_loss/mulMuladdcheck_label_range/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
s
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0*'
_output_shapes
:џџџџџџџџџ
b
logistic_loss/ExpExplogistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
a
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
p
logistic_lossAddV2logistic_loss/sublogistic_loss/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ
M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
w
4broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
u
3broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
p
3broadcast_weights/assert_broadcastable/values/shapeShapelogistic_loss*
T0*
_output_shapes
:
t
2broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
J
Bbroadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ѓ
!broadcast_weights/ones_like/ShapeShapelogistic_lossC^broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Ћ
!broadcast_weights/ones_like/ConstConstC^broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?

broadcast_weights/ones_likeFill!broadcast_weights/ones_like/Shape!broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
q
broadcast_weightsMulCast_1/xbroadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
^
MulMullogistic_lossbroadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
9
SumSumMulConst_1*
T0*
_output_shapes
: 
P
AssignAddVariableOpAssignAddVariableOphead/metrics/totalSum*
dtype0
w
ReadVariableOp_1ReadVariableOphead/metrics/total^AssignAddVariableOp^Sum*
_output_shapes
: *
dtype0
X
Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
I
Sum_1Sumbroadcast_weightsConst_2*
T0*
_output_shapes
: 
j
AssignAddVariableOp_1AssignAddVariableOphead/metrics/countSum_1^AssignAddVariableOp*
dtype0

ReadVariableOp_2ReadVariableOphead/metrics/count^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0
g
Cast_2Castpredictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
d
EqualEqualcheck_label_range/IdentityCast_2*
T0*'
_output_shapes
:џџџџџџџџџ
V
Cast_3CastEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
M
Cast_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
y
6broadcast_weights_1/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_1/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
k
5broadcast_weights_1/assert_broadcastable/values/shapeShapeCast_3*
T0*
_output_shapes
:
v
4broadcast_weights_1/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_1/assert_broadcastable/static_scalar_check_successNoOp
 
#broadcast_weights_1/ones_like/ShapeShapeCast_3E^broadcast_weights_1/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_1/ones_like/ConstConstE^broadcast_weights_1/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_1/ones_likeFill#broadcast_weights_1/ones_like/Shape#broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
u
broadcast_weights_1MulCast_4/xbroadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
[
Mul_1MulCast_3broadcast_weights_1*
T0*'
_output_shapes
:џџџџџџџџџ
X
Const_3Const*
_output_shapes
:*
dtype0*
valueB"       
=
Sum_2SumMul_1Const_3*
T0*
_output_shapes
: 
V
AssignAddVariableOp_2AssignAddVariableOphead/metrics/total_1Sum_2*
dtype0
}
ReadVariableOp_3ReadVariableOphead/metrics/total_1^AssignAddVariableOp_2^Sum_2*
_output_shapes
: *
dtype0
X
Const_4Const*
_output_shapes
:*
dtype0*
valueB"       
K
Sum_3Sumbroadcast_weights_1Const_4*
T0*
_output_shapes
: 
n
AssignAddVariableOp_3AssignAddVariableOphead/metrics/count_1Sum_3^AssignAddVariableOp_2*
dtype0

ReadVariableOp_4ReadVariableOphead/metrics/count_1^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0
g
Cast_5Castpredictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
T
Const_5Const*
_output_shapes
:*
dtype0*
valueB*   ?
J
Cast_6/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
M
Cast_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
u
!assert_greater_equal/GreaterEqualGreaterEqualCast_5Cast_7/x*
T0*'
_output_shapes
:џџџџџџџџџ
k
assert_greater_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
v
assert_greater_equal/AllAll!assert_greater_equal/GreaterEqualassert_greater_equal/Const*
_output_shapes
: 
z
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0

#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
s
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = 
u
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_7/x:0) = 
 
'assert_greater_equal/Assert/AssertGuardIfassert_greater_equal/Allassert_greater_equal/AllCast_5Cast_7/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_97355*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_97354

0assert_greater_equal/Assert/AssertGuard/IdentityIdentity'assert_greater_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
M
Cast_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
l
assert_less_equal/LessEqual	LessEqualCast_5Cast_8/x*
T0*'
_output_shapes
:џџџџџџџџџ
h
assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
j
assert_less_equal/AllAllassert_less_equal/LessEqualassert_less_equal/Const*
_output_shapes
: 
w
assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1

 assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
p
 assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = 
r
 assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_8/x:0) = 

$assert_less_equal/Assert/AssertGuardIfassert_less_equal/Allassert_less_equal/AllCast_5Cast_8/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *C
else_branch4R2
0assert_less_equal_Assert_AssertGuard_false_97381*
output_shapes
: *B
then_branch3R1
/assert_less_equal_Assert_AssertGuard_true_97380

-assert_less_equal/Assert/AssertGuard/IdentityIdentity$assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
А
Cast_9/xConst1^assert_greater_equal/Assert/AssertGuard/Identity.^assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
;
ShapeShapeCast_5*
T0*
_output_shapes
:
_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Е
strided_slice_1StridedSliceShapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Б
strided_slice_2StridedSliceShapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
X
Prod/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
V
ProdProdstrided_slice_2Prod/reduction_indices*
T0*
_output_shapes
: 
F
onesConst*
_output_shapes
: *
dtype0*
value	B :
K
SelectV2SelectV2Cast_6/xProdones*
T0*
_output_shapes
: 
^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
[
ReshapeReshapeCast_5Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
l
Cast_10Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
`
	Reshape_1ReshapeCast_10Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
D
mul_2Mulstrided_slice_1Prod*
T0*
_output_shapes
: 
`
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
W
	Reshape_2ReshapeConst_5Reshape_2/shape*
T0*
_output_shapes

:
I
stack/0Const*
_output_shapes
: *
dtype0*
value	B :
K
stackPackstack/0mul_2*
N*
T0*
_output_shapes
:
P
TileTile	Reshape_2stack*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
[
Tile_1TileReshapeTile_1/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
R
GreaterGreaterTile_1Tile*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_2Tile	Reshape_1Tile_2/multiples*
T0
*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_2/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_2/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
k
5broadcast_weights_2/assert_broadcastable/values/shapeShapeCast_5*
T0*
_output_shapes
:
v
4broadcast_weights_2/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_2/assert_broadcastable/static_scalar_check_successNoOp
 
#broadcast_weights_2/ones_like/ShapeShapeCast_5E^broadcast_weights_2/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_2/ones_like/ConstConstE^broadcast_weights_2/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_2/ones_likeFill#broadcast_weights_2/ones_like/Shape#broadcast_weights_2/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
u
broadcast_weights_2MulCast_9/xbroadcast_weights_2/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
S
Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
_
Reshape_3/shapePackReshape_3/shape/0mul_2*
N*
T0*
_output_shapes
:
l
	Reshape_3Reshapebroadcast_weights_2Reshape_3/shape*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_3Tile	Reshape_3Tile_3/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
I

LogicalNot
LogicalNotTile_2*'
_output_shapes
:џџџџџџџџџ
R

LogicalAnd
LogicalAndTile_2Greater*'
_output_shapes
:џџџџџџџџџ
\
Cast_11Cast
LogicalAnd*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
O
mul_3MulCast_11Tile_3*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_4/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_4Summul_3Sum_4/reduction_indices*
T0*
_output_shapes
:
]
AssignAddVariableOp_4AssignAddVariableOphead/metrics/true_positivesSum_4*
dtype0

ReadVariableOp_5ReadVariableOphead/metrics/true_positives^AssignAddVariableOp_4*
_output_shapes
:*
dtype0
X
LogicalAnd_1
LogicalAnd
LogicalNotGreater*'
_output_shapes
:џџџџџџџџџ
^
Cast_12CastLogicalAnd_1*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
O
mul_4MulCast_12Tile_3*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_5/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_5Summul_4Sum_5/reduction_indices*
T0*
_output_shapes
:
^
AssignAddVariableOp_5AssignAddVariableOphead/metrics/false_positivesSum_5*
dtype0

ReadVariableOp_6ReadVariableOphead/metrics/false_positives^AssignAddVariableOp_5*
_output_shapes
:*
dtype0
B

group_depsNoOp^AssignAddVariableOp_4^AssignAddVariableOp_5
h
Cast_13Castpredictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
T
Const_6Const*
_output_shapes
:*
dtype0*
valueB*   ?
K
	Cast_14/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
N
	Cast_15/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
y
#assert_greater_equal_1/GreaterEqualGreaterEqualCast_13	Cast_15/x*
T0*'
_output_shapes
:џџџџџџџџџ
m
assert_greater_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
|
assert_greater_equal_1/AllAll#assert_greater_equal_1/GreaterEqualassert_greater_equal_1/Const*
_output_shapes
: 
|
#assert_greater_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0

%assert_greater_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
v
%assert_greater_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_13:0) = 
x
%assert_greater_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_15/x:0) = 
Ќ
)assert_greater_equal_1/Assert/AssertGuardIfassert_greater_equal_1/Allassert_greater_equal_1/AllCast_13	Cast_15/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *H
else_branch9R7
5assert_greater_equal_1_Assert_AssertGuard_false_97466*
output_shapes
: *G
then_branch8R6
4assert_greater_equal_1_Assert_AssertGuard_true_97465

2assert_greater_equal_1/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_16/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
p
assert_less_equal_1/LessEqual	LessEqualCast_13	Cast_16/x*
T0*'
_output_shapes
:џџџџџџџџџ
j
assert_less_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
p
assert_less_equal_1/AllAllassert_less_equal_1/LessEqualassert_less_equal_1/Const*
_output_shapes
: 
y
 assert_less_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1

"assert_less_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
s
"assert_less_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_13:0) = 
u
"assert_less_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_16/x:0) = 

&assert_less_equal_1/Assert/AssertGuardIfassert_less_equal_1/Allassert_less_equal_1/AllCast_13	Cast_16/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *E
else_branch6R4
2assert_less_equal_1_Assert_AssertGuard_false_97492*
output_shapes
: *D
then_branch5R3
1assert_less_equal_1_Assert_AssertGuard_true_97491

/assert_less_equal_1/Assert/AssertGuard/IdentityIdentity&assert_less_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
Е
	Cast_17/xConst3^assert_greater_equal_1/Assert/AssertGuard/Identity0^assert_less_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
>
Shape_1ShapeCast_13*
T0*
_output_shapes
:
_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
З
strided_slice_3StridedSliceShape_1strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Г
strided_slice_4StridedSliceShape_1strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
Z
Prod_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
Z
Prod_1Prodstrided_slice_4Prod_1/reduction_indices*
T0*
_output_shapes
: 
H
ones_1Const*
_output_shapes
: *
dtype0*
value	B :
R

SelectV2_1SelectV2	Cast_14/xProd_1ones_1*
T0*
_output_shapes
: 
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
`
	Reshape_4ReshapeCast_13Reshape_4/shape*
T0*'
_output_shapes
:џџџџџџџџџ
l
Cast_18Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
`
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
`
	Reshape_5ReshapeCast_18Reshape_5/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
F
mul_5Mulstrided_slice_3Prod_1*
T0*
_output_shapes
: 
`
Reshape_6/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
W
	Reshape_6ReshapeConst_6Reshape_6/shape*
T0*
_output_shapes

:
K
	stack_1/0Const*
_output_shapes
: *
dtype0*
value	B :
O
stack_1Pack	stack_1/0mul_5*
N*
T0*
_output_shapes
:
T
Tile_4Tile	Reshape_6stack_1*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_5/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_5Tile	Reshape_4Tile_5/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Greater_1GreaterTile_5Tile_4*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_6/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_6Tile	Reshape_5Tile_6/multiples*
T0
*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_3/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_3/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
l
5broadcast_weights_3/assert_broadcastable/values/shapeShapeCast_13*
T0*
_output_shapes
:
v
4broadcast_weights_3/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_3/assert_broadcastable/static_scalar_check_successNoOp
Ё
#broadcast_weights_3/ones_like/ShapeShapeCast_13E^broadcast_weights_3/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_3/ones_like/ConstConstE^broadcast_weights_3/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_3/ones_likeFill#broadcast_weights_3/ones_like/Shape#broadcast_weights_3/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
v
broadcast_weights_3Mul	Cast_17/xbroadcast_weights_3/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
S
Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
_
Reshape_7/shapePackReshape_7/shape/0mul_5*
N*
T0*
_output_shapes
:
l
	Reshape_7Reshapebroadcast_weights_3Reshape_7/shape*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_7/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_7Tile	Reshape_7Tile_7/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
N
LogicalNot_1
LogicalNot	Greater_1*'
_output_shapes
:џџџџџџџџџ
V
LogicalAnd_2
LogicalAndTile_6	Greater_1*'
_output_shapes
:џџџџџџџџџ
^
Cast_19CastLogicalAnd_2*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
O
mul_6MulCast_19Tile_7*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_6/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_6Summul_6Sum_6/reduction_indices*
T0*
_output_shapes
:
_
AssignAddVariableOp_6AssignAddVariableOphead/metrics/true_positives_1Sum_6*
dtype0

ReadVariableOp_7ReadVariableOphead/metrics/true_positives_1^AssignAddVariableOp_6*
_output_shapes
:*
dtype0
Y
LogicalAnd_3
LogicalAndTile_6LogicalNot_1*'
_output_shapes
:џџџџџџџџџ
^
Cast_20CastLogicalAnd_3*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
O
mul_7MulCast_20Tile_7*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_7/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_7Summul_7Sum_7/reduction_indices*
T0*
_output_shapes
:
^
AssignAddVariableOp_7AssignAddVariableOphead/metrics/false_negativesSum_7*
dtype0

ReadVariableOp_8ReadVariableOphead/metrics/false_negatives^AssignAddVariableOp_7*
_output_shapes
:*
dtype0
D
group_deps_1NoOp^AssignAddVariableOp_6^AssignAddVariableOp_7
A
logits_3/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_3/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
T
Llogits_3/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_3/assert_rank_at_least/static_checks_determined_all_okNoOp
X
predictions_1/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
\
predictions_1/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
n
#predictions_1/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Љ
predictions_1/two_class_logitsConcatV2predictions_1/zeros_likeadd#predictions_1/two_class_logits/axis*
N*
T0*'
_output_shapes
:џџџџџџџџџ
`
broadcast_weights_4/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
y
6broadcast_weights_4/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_4/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
{
5broadcast_weights_4/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_4/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_4/assert_broadcastable/static_scalar_check_successNoOp
А
#broadcast_weights_4/ones_like/ShapeShapepredictions_1/logisticE^broadcast_weights_4/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_4/ones_like/ConstConstE^broadcast_weights_4/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_4/ones_likeFill#broadcast_weights_4/ones_like/Shape#broadcast_weights_4/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_4Mulbroadcast_weights_4/weightsbroadcast_weights_4/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_5/assert_broadcastable/weights/shapeShapebroadcast_weights_4*
T0*
_output_shapes
:
w
5broadcast_weights_5/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :
{
5broadcast_weights_5/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_5/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
4broadcast_weights_5/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
Щ
2broadcast_weights_5/assert_broadcastable/is_scalarEqual4broadcast_weights_5/assert_broadcastable/is_scalar/x5broadcast_weights_5/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
й
7broadcast_weights_5/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_5/assert_broadcastable/is_scalar2broadcast_weights_5/assert_broadcastable/is_scalar4broadcast_weights_5/assert_broadcastable/values/rank5broadcast_weights_5/assert_broadcastable/weights/rank5broadcast_weights_5/assert_broadcastable/values/shape6broadcast_weights_5/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *V
else_branchGRE
Cbroadcast_weights_5_assert_broadcastable_is_valid_shape_false_97587*
output_shapes
: *U
then_branchFRD
Bbroadcast_weights_5_assert_broadcastable_is_valid_shape_true_97586
І
@broadcast_weights_5/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_5/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

.broadcast_weights_5/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

0broadcast_weights_5/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

0broadcast_weights_5/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_4:0
~
0broadcast_weights_5/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

0broadcast_weights_5/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0
{
0broadcast_weights_5/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Љ
4broadcast_weights_5/assert_broadcastable/AssertGuardIf@broadcast_weights_5/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_5/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_5/assert_broadcastable/weights/shape5broadcast_weights_5/assert_broadcastable/values/shape2broadcast_weights_5/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@broadcast_weights_5_assert_broadcastable_AssertGuard_false_97637*
output_shapes
: *R
then_branchCRA
?broadcast_weights_5_assert_broadcastable_AssertGuard_true_97636
 
=broadcast_weights_5/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_5/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
Љ
#broadcast_weights_5/ones_like/ShapeShapepredictions_1/logistic>^broadcast_weights_5/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Ј
#broadcast_weights_5/ones_like/ConstConst>^broadcast_weights_5/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_5/ones_likeFill#broadcast_weights_5/ones_like/Shape#broadcast_weights_5/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_5Mulbroadcast_weights_4broadcast_weights_5/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
k
Mul_8Mulpredictions_1/logisticbroadcast_weights_5*
T0*'
_output_shapes
:џџџџџџџџџ
X
Const_7Const*
_output_shapes
:*
dtype0*
valueB"       
=
Sum_8SumMul_8Const_7*
T0*
_output_shapes
: 
V
AssignAddVariableOp_8AssignAddVariableOphead/metrics/total_2Sum_8*
dtype0
}
ReadVariableOp_9ReadVariableOphead/metrics/total_2^AssignAddVariableOp_8^Sum_8*
_output_shapes
: *
dtype0
X
Const_8Const*
_output_shapes
:*
dtype0*
valueB"       
K
Sum_9Sumbroadcast_weights_5Const_8*
T0*
_output_shapes
: 
n
AssignAddVariableOp_9AssignAddVariableOphead/metrics/count_2Sum_9^AssignAddVariableOp_8*
dtype0

ReadVariableOp_10ReadVariableOphead/metrics/count_2^AssignAddVariableOp_8^AssignAddVariableOp_9*
_output_shapes
: *
dtype0
`
broadcast_weights_6/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
y
6broadcast_weights_6/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_6/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

5broadcast_weights_6/assert_broadcastable/values/shapeShapecheck_label_range/Identity*
T0*
_output_shapes
:
v
4broadcast_weights_6/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_6/assert_broadcastable/static_scalar_check_successNoOp
Д
#broadcast_weights_6/ones_like/ShapeShapecheck_label_range/IdentityE^broadcast_weights_6/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_6/ones_like/ConstConstE^broadcast_weights_6/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_6/ones_likeFill#broadcast_weights_6/ones_like/Shape#broadcast_weights_6/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_6Mulbroadcast_weights_6/weightsbroadcast_weights_6/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_7/assert_broadcastable/weights/shapeShapebroadcast_weights_6*
T0*
_output_shapes
:
w
5broadcast_weights_7/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :

5broadcast_weights_7/assert_broadcastable/values/shapeShapecheck_label_range/Identity*
T0*
_output_shapes
:
v
4broadcast_weights_7/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
4broadcast_weights_7/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
Щ
2broadcast_weights_7/assert_broadcastable/is_scalarEqual4broadcast_weights_7/assert_broadcastable/is_scalar/x5broadcast_weights_7/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
й
7broadcast_weights_7/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_7/assert_broadcastable/is_scalar2broadcast_weights_7/assert_broadcastable/is_scalar4broadcast_weights_7/assert_broadcastable/values/rank5broadcast_weights_7/assert_broadcastable/weights/rank5broadcast_weights_7/assert_broadcastable/values/shape6broadcast_weights_7/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *V
else_branchGRE
Cbroadcast_weights_7_assert_broadcastable_is_valid_shape_false_97685*
output_shapes
: *U
then_branchFRD
Bbroadcast_weights_7_assert_broadcastable_is_valid_shape_true_97684
І
@broadcast_weights_7/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_7/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

.broadcast_weights_7/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

0broadcast_weights_7/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

0broadcast_weights_7/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_6:0
~
0broadcast_weights_7/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

0broadcast_weights_7/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*-
value$B" Bcheck_label_range/Identity:0
{
0broadcast_weights_7/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Љ
4broadcast_weights_7/assert_broadcastable/AssertGuardIf@broadcast_weights_7/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_7/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_7/assert_broadcastable/weights/shape5broadcast_weights_7/assert_broadcastable/values/shape2broadcast_weights_7/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@broadcast_weights_7_assert_broadcastable_AssertGuard_false_97735*
output_shapes
: *R
then_branchCRA
?broadcast_weights_7_assert_broadcastable_AssertGuard_true_97734
 
=broadcast_weights_7/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_7/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
­
#broadcast_weights_7/ones_like/ShapeShapecheck_label_range/Identity>^broadcast_weights_7/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Ј
#broadcast_weights_7/ones_like/ConstConst>^broadcast_weights_7/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_7/ones_likeFill#broadcast_weights_7/ones_like/Shape#broadcast_weights_7/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_7Mulbroadcast_weights_6broadcast_weights_7/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
o
Mul_9Mulcheck_label_range/Identitybroadcast_weights_7*
T0*'
_output_shapes
:џџџџџџџџџ
X
Const_9Const*
_output_shapes
:*
dtype0*
valueB"       
>
Sum_10SumMul_9Const_9*
T0*
_output_shapes
: 
X
AssignAddVariableOp_10AssignAddVariableOphead/metrics/total_3Sum_10*
dtype0

ReadVariableOp_11ReadVariableOphead/metrics/total_3^AssignAddVariableOp_10^Sum_10*
_output_shapes
: *
dtype0
Y
Const_10Const*
_output_shapes
:*
dtype0*
valueB"       
M
Sum_11Sumbroadcast_weights_7Const_10*
T0*
_output_shapes
: 
q
AssignAddVariableOp_11AssignAddVariableOphead/metrics/count_3Sum_11^AssignAddVariableOp_10*
dtype0

ReadVariableOp_12ReadVariableOphead/metrics/count_3^AssignAddVariableOp_10^AssignAddVariableOp_11*
_output_shapes
: *
dtype0

NoOpNoOp
^
ReadVariableOp_13ReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
_
sub/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
R
subSubReadVariableOp_13sub/ReadVariableOp*
T0*
_output_shapes
: 
c
Maximum/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
P
MaximumMaximumMaximum/ReadVariableOpsub*
T0*
_output_shapes
: 
`
broadcast_weights_8/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
y
6broadcast_weights_8/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_8/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
{
5broadcast_weights_8/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_8/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_8/assert_broadcastable/static_scalar_check_successNoOp
А
#broadcast_weights_8/ones_like/ShapeShapepredictions_1/logisticE^broadcast_weights_8/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_8/ones_like/ConstConstE^broadcast_weights_8/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_8/ones_likeFill#broadcast_weights_8/ones_like/Shape#broadcast_weights_8/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_8Mulbroadcast_weights_8/weightsbroadcast_weights_8/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
ї
Const_11Const*
_output_shapes	
:Ш*
dtype0*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?
K
	Cast_21/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
N
	Cast_22/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

#assert_greater_equal_2/GreaterEqualGreaterEqualpredictions_1/logistic	Cast_22/x*
T0*'
_output_shapes
:џџџџџџџџџ
m
assert_greater_equal_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
|
assert_greater_equal_2/AllAll#assert_greater_equal_2/GreaterEqualassert_greater_equal_2/Const*
_output_shapes
: 
|
#assert_greater_equal_2/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0

%assert_greater_equal_2/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:

%assert_greater_equal_2/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
x
%assert_greater_equal_2/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_22/x:0) = 
Л
)assert_greater_equal_2/Assert/AssertGuardIfassert_greater_equal_2/Allassert_greater_equal_2/Allpredictions_1/logistic	Cast_22/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *H
else_branch9R7
5assert_greater_equal_2_Assert_AssertGuard_false_97792*
output_shapes
: *G
then_branch8R6
4assert_greater_equal_2_Assert_AssertGuard_true_97791

2assert_greater_equal_2/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_2/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_23/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

assert_less_equal_2/LessEqual	LessEqualpredictions_1/logistic	Cast_23/x*
T0*'
_output_shapes
:џџџџџџџџџ
j
assert_less_equal_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
p
assert_less_equal_2/AllAllassert_less_equal_2/LessEqualassert_less_equal_2/Const*
_output_shapes
: 
y
 assert_less_equal_2/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1

"assert_less_equal_2/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

"assert_less_equal_2/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
u
"assert_less_equal_2/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_23/x:0) = 
Ќ
&assert_less_equal_2/Assert/AssertGuardIfassert_less_equal_2/Allassert_less_equal_2/Allpredictions_1/logistic	Cast_23/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *E
else_branch6R4
2assert_less_equal_2_Assert_AssertGuard_false_97818*
output_shapes
: *D
then_branch5R3
1assert_less_equal_2_Assert_AssertGuard_true_97817

/assert_less_equal_2/Assert/AssertGuard/IdentityIdentity&assert_less_equal_2/Assert/AssertGuard*
T0
*
_output_shapes
: 
y
6broadcast_weights_9/assert_broadcastable/weights/shapeShapebroadcast_weights_8*
T0*
_output_shapes
:
w
5broadcast_weights_9/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :
{
5broadcast_weights_9/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_9/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
4broadcast_weights_9/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
Щ
2broadcast_weights_9/assert_broadcastable/is_scalarEqual4broadcast_weights_9/assert_broadcastable/is_scalar/x5broadcast_weights_9/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
й
7broadcast_weights_9/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_9/assert_broadcastable/is_scalar2broadcast_weights_9/assert_broadcastable/is_scalar4broadcast_weights_9/assert_broadcastable/values/rank5broadcast_weights_9/assert_broadcastable/weights/rank5broadcast_weights_9/assert_broadcastable/values/shape6broadcast_weights_9/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *V
else_branchGRE
Cbroadcast_weights_9_assert_broadcastable_is_valid_shape_false_97842*
output_shapes
: *U
then_branchFRD
Bbroadcast_weights_9_assert_broadcastable_is_valid_shape_true_97841
І
@broadcast_weights_9/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_9/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

.broadcast_weights_9/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

0broadcast_weights_9/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

0broadcast_weights_9/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_8:0
~
0broadcast_weights_9/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

0broadcast_weights_9/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0
{
0broadcast_weights_9/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Љ
4broadcast_weights_9/assert_broadcastable/AssertGuardIf@broadcast_weights_9/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_9/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_9/assert_broadcastable/weights/shape5broadcast_weights_9/assert_broadcastable/values/shape2broadcast_weights_9/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@broadcast_weights_9_assert_broadcastable_AssertGuard_false_97892*
output_shapes
: *R
then_branchCRA
?broadcast_weights_9_assert_broadcastable_AssertGuard_true_97891
 
=broadcast_weights_9/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_9/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
Љ
#broadcast_weights_9/ones_like/ShapeShapepredictions_1/logistic>^broadcast_weights_9/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Ј
#broadcast_weights_9/ones_like/ConstConst>^broadcast_weights_9/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ё
broadcast_weights_9/ones_likeFill#broadcast_weights_9/ones_like/Shape#broadcast_weights_9/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_9Mulbroadcast_weights_8broadcast_weights_9/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
b
Reshape_8/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
h
	Reshape_8Reshapebroadcast_weights_9Reshape_8/shape*
T0*#
_output_shapes
:џџџџџџџџџ
M
Mul_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
P
Mul_10Mul	Reshape_8Mul_10/y*
T0*#
_output_shapes
:џџџџџџџџџ
\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

clip_by_value/MinimumMinimumpredictions_1/logisticclip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ
T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
r
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ
l
Cast_24Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
Y
Cast_25CastCast_24*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
b
Reshape_9/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
\
	Reshape_9ReshapeCast_25Reshape_9/shape*
T0*#
_output_shapes
:џџџџџџџџџ
c
Reshape_10/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
d

Reshape_10Reshapeclip_by_valueReshape_10/shape*
T0*#
_output_shapes
:џџџџџџџџџ
N
Mul_11Mul	Reshape_9Mul_10*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
N
sub_1Subsub_1/x	Reshape_9*
T0*#
_output_shapes
:џџџџџџџџџ
J
Mul_12Mulsub_1Mul_10*
T0*#
_output_shapes
:џџџџџџџџџ
M
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *  GC
Q
mul_13Mul
Reshape_10mul_13/y*
T0*#
_output_shapes
:џџџџџџџџџ
B
CeilCeilmul_13*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
I
sub_2SubCeilsub_2/y*
T0*#
_output_shapes
:џџџџџџџџџ
A
ReluRelusub_2*
T0*#
_output_shapes
:џџџџџџџџџ
R
Cast_26CastRelu*

DstT0*

SrcT0*#
_output_shapes
:џџџџџџџџџ
b
UnsortedSegmentSum/num_segmentsConst*
_output_shapes
: *
dtype0*
value
B :Ш

UnsortedSegmentSumUnsortedSegmentSumMul_11Cast_26UnsortedSegmentSum/num_segments*
T0*
Tindices0*
_output_shapes	
:Ш
d
!UnsortedSegmentSum_1/num_segmentsConst*
_output_shapes
: *
dtype0*
value
B :Ш

UnsortedSegmentSum_1UnsortedSegmentSumMul_12Cast_26!UnsortedSegmentSum_1/num_segments*
T0*
Tindices0*
_output_shapes	
:Ш
M
Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 
f
CumsumCumsumUnsortedSegmentSumCumsum/axis*
T0*
_output_shapes	
:Ш*
reverse(
O
Cumsum_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
l
Cumsum_1CumsumUnsortedSegmentSum_1Cumsum_1/axis*
T0*
_output_shapes	
:Ш*
reverse(
R
Const_12Const*
_output_shapes
:*
dtype0*
valueB: 
@
Sum_12SumMul_11Const_12*
T0*
_output_shapes
: 
R
Const_13Const*
_output_shapes
:*
dtype0*
valueB: 
@
Sum_13SumMul_12Const_13*
T0*
_output_shapes
: 
a
AssignAddVariableOp_12AssignAddVariableOphead/metrics/true_positives_2Cumsum*
dtype0

ReadVariableOp_14ReadVariableOphead/metrics/true_positives_2^AssignAddVariableOp_12*
_output_shapes	
:Ш*
dtype0
d
AssignAddVariableOp_13AssignAddVariableOphead/metrics/false_positives_1Cumsum_1*
dtype0

ReadVariableOp_15ReadVariableOphead/metrics/false_positives_1^AssignAddVariableOp_13*
_output_shapes	
:Ш*
dtype0
D
sub_3SubSum_13Cumsum_1*
T0*
_output_shapes	
:Ш
^
AssignAddVariableOp_14AssignAddVariableOphead/metrics/true_negativessub_3*
dtype0

ReadVariableOp_16ReadVariableOphead/metrics/true_negatives^AssignAddVariableOp_14*
_output_shapes	
:Ш*
dtype0
B
sub_4SubSum_12Cumsum*
T0*
_output_shapes	
:Ш
a
AssignAddVariableOp_15AssignAddVariableOphead/metrics/false_negatives_1sub_4*
dtype0

ReadVariableOp_17ReadVariableOphead/metrics/false_negatives_1^AssignAddVariableOp_15*
_output_shapes	
:Ш*
dtype0
x
group_deps_2NoOp^AssignAddVariableOp_12^AssignAddVariableOp_13^AssignAddVariableOp_14^AssignAddVariableOp_15
a
broadcast_weights_10/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
z
7broadcast_weights_10/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
x
6broadcast_weights_10/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
|
6broadcast_weights_10/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
w
5broadcast_weights_10/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
M
Ebroadcast_weights_10/assert_broadcastable/static_scalar_check_successNoOp
В
$broadcast_weights_10/ones_like/ShapeShapepredictions_1/logisticF^broadcast_weights_10/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Б
$broadcast_weights_10/ones_like/ConstConstF^broadcast_weights_10/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Є
broadcast_weights_10/ones_likeFill$broadcast_weights_10/ones_like/Shape$broadcast_weights_10/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_10Mulbroadcast_weights_10/weightsbroadcast_weights_10/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
ї
Const_14Const*
_output_shapes	
:Ш*
dtype0*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?
K
	Cast_27/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
N
	Cast_28/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

#assert_greater_equal_3/GreaterEqualGreaterEqualpredictions_1/logistic	Cast_28/x*
T0*'
_output_shapes
:џџџџџџџџџ
m
assert_greater_equal_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
|
assert_greater_equal_3/AllAll#assert_greater_equal_3/GreaterEqualassert_greater_equal_3/Const*
_output_shapes
: 
|
#assert_greater_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0

%assert_greater_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:

%assert_greater_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
x
%assert_greater_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_28/x:0) = 
Л
)assert_greater_equal_3/Assert/AssertGuardIfassert_greater_equal_3/Allassert_greater_equal_3/Allpredictions_1/logistic	Cast_28/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *H
else_branch9R7
5assert_greater_equal_3_Assert_AssertGuard_false_97980*
output_shapes
: *G
then_branch8R6
4assert_greater_equal_3_Assert_AssertGuard_true_97979

2assert_greater_equal_3/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

assert_less_equal_3/LessEqual	LessEqualpredictions_1/logistic	Cast_29/x*
T0*'
_output_shapes
:џџџџџџџџџ
j
assert_less_equal_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
p
assert_less_equal_3/AllAllassert_less_equal_3/LessEqualassert_less_equal_3/Const*
_output_shapes
: 
y
 assert_less_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1

"assert_less_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

"assert_less_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
u
"assert_less_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_29/x:0) = 
Ќ
&assert_less_equal_3/Assert/AssertGuardIfassert_less_equal_3/Allassert_less_equal_3/Allpredictions_1/logistic	Cast_29/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *E
else_branch6R4
2assert_less_equal_3_Assert_AssertGuard_false_98006*
output_shapes
: *D
then_branch5R3
1assert_less_equal_3_Assert_AssertGuard_true_98005

/assert_less_equal_3/Assert/AssertGuard/IdentityIdentity&assert_less_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
{
7broadcast_weights_11/assert_broadcastable/weights/shapeShapebroadcast_weights_10*
T0*
_output_shapes
:
x
6broadcast_weights_11/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :
|
6broadcast_weights_11/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
w
5broadcast_weights_11/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
w
5broadcast_weights_11/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ь
3broadcast_weights_11/assert_broadcastable/is_scalarEqual5broadcast_weights_11/assert_broadcastable/is_scalar/x6broadcast_weights_11/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
т
8broadcast_weights_11/assert_broadcastable/is_valid_shapeStatelessIf3broadcast_weights_11/assert_broadcastable/is_scalar3broadcast_weights_11/assert_broadcastable/is_scalar5broadcast_weights_11/assert_broadcastable/values/rank6broadcast_weights_11/assert_broadcastable/weights/rank6broadcast_weights_11/assert_broadcastable/values/shape7broadcast_weights_11/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *W
else_branchHRF
Dbroadcast_weights_11_assert_broadcastable_is_valid_shape_false_98030*
output_shapes
: *V
then_branchGRE
Cbroadcast_weights_11_assert_broadcastable_is_valid_shape_true_98029
Ј
Abroadcast_weights_11/assert_broadcastable/is_valid_shape/IdentityIdentity8broadcast_weights_11/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

/broadcast_weights_11/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

1broadcast_weights_11/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

1broadcast_weights_11/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*'
valueB Bbroadcast_weights_10:0

1broadcast_weights_11/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

1broadcast_weights_11/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0
|
1broadcast_weights_11/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Б
5broadcast_weights_11/assert_broadcastable/AssertGuardIfAbroadcast_weights_11/assert_broadcastable/is_valid_shape/IdentityAbroadcast_weights_11/assert_broadcastable/is_valid_shape/Identity7broadcast_weights_11/assert_broadcastable/weights/shape6broadcast_weights_11/assert_broadcastable/values/shape3broadcast_weights_11/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *T
else_branchERC
Abroadcast_weights_11_assert_broadcastable_AssertGuard_false_98080*
output_shapes
: *S
then_branchDRB
@broadcast_weights_11_assert_broadcastable_AssertGuard_true_98079
Ђ
>broadcast_weights_11/assert_broadcastable/AssertGuard/IdentityIdentity5broadcast_weights_11/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
Ћ
$broadcast_weights_11/ones_like/ShapeShapepredictions_1/logistic?^broadcast_weights_11/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Њ
$broadcast_weights_11/ones_like/ConstConst?^broadcast_weights_11/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Є
broadcast_weights_11/ones_likeFill$broadcast_weights_11/ones_like/Shape$broadcast_weights_11/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_11Mulbroadcast_weights_10broadcast_weights_11/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
c
Reshape_11/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
k

Reshape_11Reshapebroadcast_weights_11Reshape_11/shape*
T0*#
_output_shapes
:џџџџџџџџџ
M
Mul_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Mul_14Mul
Reshape_11Mul_14/y*
T0*#
_output_shapes
:џџџџџџџџџ
^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

clip_by_value_1/MinimumMinimumpredictions_1/logisticclip_by_value_1/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ
V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
x
clip_by_value_1Maximumclip_by_value_1/Minimumclip_by_value_1/y*
T0*'
_output_shapes
:џџџџџџџџџ
l
Cast_30Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
Y
Cast_31CastCast_30*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
c
Reshape_12/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
^

Reshape_12ReshapeCast_31Reshape_12/shape*
T0*#
_output_shapes
:џџџџџџџџџ
c
Reshape_13/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
f

Reshape_13Reshapeclip_by_value_1Reshape_13/shape*
T0*#
_output_shapes
:џџџџџџџџџ
O
Mul_15Mul
Reshape_12Mul_14*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
O
sub_5Subsub_5/x
Reshape_12*
T0*#
_output_shapes
:џџџџџџџџџ
J
Mul_16Mulsub_5Mul_14*
T0*#
_output_shapes
:џџџџџџџџџ
M
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 *  GC
Q
mul_17Mul
Reshape_13mul_17/y*
T0*#
_output_shapes
:џџџџџџџџџ
D
Ceil_1Ceilmul_17*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
K
sub_6SubCeil_1sub_6/y*
T0*#
_output_shapes
:џџџџџџџџџ
C
Relu_1Relusub_6*
T0*#
_output_shapes
:џџџџџџџџџ
T
Cast_32CastRelu_1*

DstT0*

SrcT0*#
_output_shapes
:џџџџџџџџџ
d
!UnsortedSegmentSum_2/num_segmentsConst*
_output_shapes
: *
dtype0*
value
B :Ш

UnsortedSegmentSum_2UnsortedSegmentSumMul_15Cast_32!UnsortedSegmentSum_2/num_segments*
T0*
Tindices0*
_output_shapes	
:Ш
d
!UnsortedSegmentSum_3/num_segmentsConst*
_output_shapes
: *
dtype0*
value
B :Ш

UnsortedSegmentSum_3UnsortedSegmentSumMul_16Cast_32!UnsortedSegmentSum_3/num_segments*
T0*
Tindices0*
_output_shapes	
:Ш
O
Cumsum_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
l
Cumsum_2CumsumUnsortedSegmentSum_2Cumsum_2/axis*
T0*
_output_shapes	
:Ш*
reverse(
O
Cumsum_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
l
Cumsum_3CumsumUnsortedSegmentSum_3Cumsum_3/axis*
T0*
_output_shapes	
:Ш*
reverse(
R
Const_15Const*
_output_shapes
:*
dtype0*
valueB: 
@
Sum_14SumMul_15Const_15*
T0*
_output_shapes
: 
R
Const_16Const*
_output_shapes
:*
dtype0*
valueB: 
@
Sum_15SumMul_16Const_16*
T0*
_output_shapes
: 
c
AssignAddVariableOp_16AssignAddVariableOphead/metrics/true_positives_3Cumsum_2*
dtype0

ReadVariableOp_18ReadVariableOphead/metrics/true_positives_3^AssignAddVariableOp_16*
_output_shapes	
:Ш*
dtype0
d
AssignAddVariableOp_17AssignAddVariableOphead/metrics/false_positives_2Cumsum_3*
dtype0

ReadVariableOp_19ReadVariableOphead/metrics/false_positives_2^AssignAddVariableOp_17*
_output_shapes	
:Ш*
dtype0
D
sub_7SubSum_15Cumsum_3*
T0*
_output_shapes	
:Ш
`
AssignAddVariableOp_18AssignAddVariableOphead/metrics/true_negatives_1sub_7*
dtype0

ReadVariableOp_20ReadVariableOphead/metrics/true_negatives_1^AssignAddVariableOp_18*
_output_shapes	
:Ш*
dtype0
D
sub_8SubSum_14Cumsum_2*
T0*
_output_shapes	
:Ш
a
AssignAddVariableOp_19AssignAddVariableOphead/metrics/false_negatives_2sub_8*
dtype0

ReadVariableOp_21ReadVariableOphead/metrics/false_negatives_2^AssignAddVariableOp_19*
_output_shapes	
:Ш*
dtype0
x
group_deps_3NoOp^AssignAddVariableOp_16^AssignAddVariableOp_17^AssignAddVariableOp_18^AssignAddVariableOp_19
d
div_no_nan/ReadVariableOpReadVariableOphead/metrics/total*
_output_shapes
: *
dtype0
f
div_no_nan/ReadVariableOp_1ReadVariableOphead/metrics/count*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_72Identity
div_no_nan*
T0*
_output_shapes
: 
h
div_no_nan_1/ReadVariableOpReadVariableOphead/metrics/total_1*
_output_shapes
: *
dtype0
j
div_no_nan_1/ReadVariableOp_1ReadVariableOphead/metrics/count_1*
_output_shapes
: *
dtype0
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_73Identitydiv_no_nan_1*
T0*
_output_shapes
: 
l
Add_1/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
o
Add_1/ReadVariableOp_1ReadVariableOphead/metrics/false_positives*
_output_shapes
:*
dtype0
a
Add_1AddV2Add_1/ReadVariableOpAdd_1/ReadVariableOp_1*
T0*
_output_shapes
:
s
div_no_nan_2/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
a
div_no_nan_2DivNoNandiv_no_nan_2/ReadVariableOpAdd_1*
T0*
_output_shapes
:
_
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
М
strided_slice_5StridedSlicediv_no_nan_2strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
I
Identity_74Identitystrided_slice_5*
T0*
_output_shapes
: 
n
Add_2/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
o
Add_2/ReadVariableOp_1ReadVariableOphead/metrics/false_negatives*
_output_shapes
:*
dtype0
a
Add_2AddV2Add_2/ReadVariableOpAdd_2/ReadVariableOp_1*
T0*
_output_shapes
:
u
div_no_nan_3/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
a
div_no_nan_3DivNoNandiv_no_nan_3/ReadVariableOpAdd_2*
T0*
_output_shapes
:
_
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
М
strided_slice_6StridedSlicediv_no_nan_3strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
I
Identity_75Identitystrided_slice_6*
T0*
_output_shapes
: 
h
div_no_nan_4/ReadVariableOpReadVariableOphead/metrics/total_2*
_output_shapes
: *
dtype0
j
div_no_nan_4/ReadVariableOp_1ReadVariableOphead/metrics/count_2*
_output_shapes
: *
dtype0
u
div_no_nan_4DivNoNandiv_no_nan_4/ReadVariableOpdiv_no_nan_4/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_76Identitydiv_no_nan_4*
T0*
_output_shapes
: 
h
div_no_nan_5/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
j
div_no_nan_5/ReadVariableOp_1ReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
u
div_no_nan_5DivNoNandiv_no_nan_5/ReadVariableOpdiv_no_nan_5/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_77Identitydiv_no_nan_5*
T0*
_output_shapes
: 
h
div_no_nan_6/ReadVariableOpReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
_
div_no_nan_6DivNoNanMaximumdiv_no_nan_6/ReadVariableOp*
T0*
_output_shapes
: 
F
Identity_78Identitydiv_no_nan_6*
T0*
_output_shapes
: 
o
Add_3/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:Ш*
dtype0
r
Add_3/ReadVariableOp_1ReadVariableOphead/metrics/false_negatives_1*
_output_shapes	
:Ш*
dtype0
b
Add_3AddV2Add_3/ReadVariableOpAdd_3/ReadVariableOp_1*
T0*
_output_shapes	
:Ш
v
div_no_nan_7/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:Ш*
dtype0
b
div_no_nan_7DivNoNandiv_no_nan_7/ReadVariableOpAdd_3*
T0*
_output_shapes	
:Ш
p
Add_4/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0
o
Add_4/ReadVariableOp_1ReadVariableOphead/metrics/true_negatives*
_output_shapes	
:Ш*
dtype0
b
Add_4AddV2Add_4/ReadVariableOpAdd_4/ReadVariableOp_1*
T0*
_output_shapes	
:Ш
w
div_no_nan_8/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0
b
div_no_nan_8DivNoNandiv_no_nan_8/ReadVariableOpAdd_4*
T0*
_output_shapes	
:Ш
_
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
a
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Л
strided_slice_7StridedSlicediv_no_nan_7strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Й
strided_slice_8StridedSlicediv_no_nan_7strided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
V
add_5AddV2strided_slice_7strided_slice_8*
T0*
_output_shapes	
:Ч
N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
J
truedivRealDivadd_5	truediv/y*
T0*
_output_shapes	
:Ч
_
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
a
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Л
strided_slice_9StridedSlicediv_no_nan_8strided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Н
strided_slice_10StridedSlicediv_no_nan_8strided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
U
sub_9Substrided_slice_9strided_slice_10*
T0*
_output_shapes	
:Ч
C
Mul_18Mulsub_9truediv*
T0*
_output_shapes	
:Ч
R
Const_17Const*
_output_shapes
:*
dtype0*
valueB: 
=
aucSumMul_18Const_17*
T0*
_output_shapes
: 
=
Identity_79Identityauc*
T0*
_output_shapes
: 
l
ReadVariableOp_22ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ф
strided_slice_11StridedSliceReadVariableOp_22strided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
l
ReadVariableOp_23ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_12StridedSliceReadVariableOp_23strided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
W
sub_10Substrided_slice_11strided_slice_12*
T0*
_output_shapes	
:Ч
o
Add_6/ReadVariableOpReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
r
Add_6/ReadVariableOp_1ReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:Ш*
dtype0
b
Add_6AddV2Add_6/ReadVariableOpAdd_6/ReadVariableOp_1*
T0*
_output_shapes	
:Ш
`
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
strided_slice_13StridedSliceAdd_6strided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
strided_slice_14StridedSliceAdd_6strided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
W
sub_11Substrided_slice_13strided_slice_14*
T0*
_output_shapes	
:Ч
P
Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
O
	Maximum_1Maximumsub_11Maximum_1/y*
T0*
_output_shapes	
:Ч
O

prec_slopeDivNoNansub_10	Maximum_1*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_24ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_15StridedSliceReadVariableOp_24strided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
`
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
strided_slice_16StridedSliceAdd_6strided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
Q
Mul_19Mul
prec_slopestrided_slice_16*
T0*
_output_shapes	
:Ч
M
sub_12Substrided_slice_15Mul_19*
T0*
_output_shapes	
:Ч
`
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
strided_slice_17StridedSliceAdd_6strided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
P
Greater_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_2Greaterstrided_slice_17Greater_2/y*
T0*
_output_shapes	
:Ч
`
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
strided_slice_18StridedSliceAdd_6strided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
P
Greater_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_3Greaterstrided_slice_18Greater_3/y*
T0*
_output_shapes	
:Ч
M
LogicalAnd_4
LogicalAnd	Greater_2	Greater_3*
_output_shapes	
:Ч
`
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
strided_slice_19StridedSliceAdd_6strided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
strided_slice_20StridedSliceAdd_6strided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
P
Maximum_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Maximum_2Maximumstrided_slice_20Maximum_2/y*
T0*
_output_shapes	
:Ч
d
recall_relative_ratioDivNoNanstrided_slice_19	Maximum_2*
T0*
_output_shapes	
:Ч
`
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ж
strided_slice_21StridedSliceAdd_6strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
j
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ч
T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
i
	ones_likeFillones_like/Shape/shape_as_tensorones_like/Const*
T0*
_output_shapes	
:Ч
l

SelectV2_2SelectV2LogicalAnd_4recall_relative_ratio	ones_like*
T0*
_output_shapes	
:Ч
<
LogLog
SelectV2_2*
T0*
_output_shapes	
:Ч
@
mul_20Mulsub_12Log*
T0*
_output_shapes	
:Ч
D
add_7AddV2sub_10mul_20*
T0*
_output_shapes	
:Ч
F
mul_21Mul
prec_slopeadd_7*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_25ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_22StridedSliceReadVariableOp_25strided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
m
ReadVariableOp_26ReadVariableOphead/metrics/false_negatives_2*
_output_shapes	
:Ш*
dtype0
`
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_23StridedSliceReadVariableOp_26strided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
X
add_8AddV2strided_slice_22strided_slice_23*
T0*
_output_shapes	
:Ч
P
Maximum_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
N
	Maximum_3Maximumadd_8Maximum_3/y*
T0*
_output_shapes	
:Ч
U
pr_auc_incrementDivNoNanmul_21	Maximum_3*
T0*
_output_shapes	
:Ч
R
Const_18Const*
_output_shapes
:*
dtype0*
valueB: 
V
interpolate_pr_aucSumpr_auc_incrementConst_18*
T0*
_output_shapes
: 
L
Identity_80Identityinterpolate_pr_auc*
T0*
_output_shapes
: 
f
div_no_nan_9/ReadVariableOpReadVariableOphead/metrics/total*
_output_shapes
: *
dtype0
h
div_no_nan_9/ReadVariableOp_1ReadVariableOphead/metrics/count*
_output_shapes
: *
dtype0
u
div_no_nan_9DivNoNandiv_no_nan_9/ReadVariableOpdiv_no_nan_9/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_81Identitydiv_no_nan_9*
T0*
_output_shapes
: 
i
div_no_nan_10/ReadVariableOpReadVariableOphead/metrics/total_1*
_output_shapes
: *
dtype0
k
div_no_nan_10/ReadVariableOp_1ReadVariableOphead/metrics/count_1*
_output_shapes
: *
dtype0
x
div_no_nan_10DivNoNandiv_no_nan_10/ReadVariableOpdiv_no_nan_10/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_82Identitydiv_no_nan_10*
T0*
_output_shapes
: 
l
Add_9/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
o
Add_9/ReadVariableOp_1ReadVariableOphead/metrics/false_positives*
_output_shapes
:*
dtype0
a
Add_9AddV2Add_9/ReadVariableOpAdd_9/ReadVariableOp_1*
T0*
_output_shapes
:
t
div_no_nan_11/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
c
div_no_nan_11DivNoNandiv_no_nan_11/ReadVariableOpAdd_9*
T0*
_output_shapes
:
`
strided_slice_24/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_24/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_24/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
С
strided_slice_24StridedSlicediv_no_nan_11strided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
J
Identity_83Identitystrided_slice_24*
T0*
_output_shapes
: 
o
Add_10/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
p
Add_10/ReadVariableOp_1ReadVariableOphead/metrics/false_negatives*
_output_shapes
:*
dtype0
d
Add_10AddV2Add_10/ReadVariableOpAdd_10/ReadVariableOp_1*
T0*
_output_shapes
:
v
div_no_nan_12/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
d
div_no_nan_12DivNoNandiv_no_nan_12/ReadVariableOpAdd_10*
T0*
_output_shapes
:
`
strided_slice_25/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_25/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_25/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
С
strided_slice_25StridedSlicediv_no_nan_12strided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
J
Identity_84Identitystrided_slice_25*
T0*
_output_shapes
: 
i
div_no_nan_13/ReadVariableOpReadVariableOphead/metrics/total_2*
_output_shapes
: *
dtype0
k
div_no_nan_13/ReadVariableOp_1ReadVariableOphead/metrics/count_2*
_output_shapes
: *
dtype0
x
div_no_nan_13DivNoNandiv_no_nan_13/ReadVariableOpdiv_no_nan_13/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_85Identitydiv_no_nan_13*
T0*
_output_shapes
: 
i
div_no_nan_14/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
k
div_no_nan_14/ReadVariableOp_1ReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
x
div_no_nan_14DivNoNandiv_no_nan_14/ReadVariableOpdiv_no_nan_14/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_86Identitydiv_no_nan_14*
T0*
_output_shapes
: 
i
div_no_nan_15/ReadVariableOpReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
a
div_no_nan_15DivNoNanMaximumdiv_no_nan_15/ReadVariableOp*
T0*
_output_shapes
: 
G
Identity_87Identitydiv_no_nan_15*
T0*
_output_shapes
: 
p
Add_11/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:Ш*
dtype0
s
Add_11/ReadVariableOp_1ReadVariableOphead/metrics/false_negatives_1*
_output_shapes	
:Ш*
dtype0
e
Add_11AddV2Add_11/ReadVariableOpAdd_11/ReadVariableOp_1*
T0*
_output_shapes	
:Ш
w
div_no_nan_16/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:Ш*
dtype0
e
div_no_nan_16DivNoNandiv_no_nan_16/ReadVariableOpAdd_11*
T0*
_output_shapes	
:Ш
q
Add_12/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0
p
Add_12/ReadVariableOp_1ReadVariableOphead/metrics/true_negatives*
_output_shapes	
:Ш*
dtype0
e
Add_12AddV2Add_12/ReadVariableOpAdd_12/ReadVariableOp_1*
T0*
_output_shapes	
:Ш
x
div_no_nan_17/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0
e
div_no_nan_17DivNoNandiv_no_nan_17/ReadVariableOpAdd_12*
T0*
_output_shapes	
:Ш
`
strided_slice_26/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_26/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_26/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Р
strided_slice_26StridedSlicediv_no_nan_16strided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_27/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_27/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_27/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
О
strided_slice_27StridedSlicediv_no_nan_16strided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
Y
add_13AddV2strided_slice_26strided_slice_27*
T0*
_output_shapes	
:Ч
P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
O
	truediv_1RealDivadd_13truediv_1/y*
T0*
_output_shapes	
:Ч
`
strided_slice_28/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_28/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_28/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Р
strided_slice_28StridedSlicediv_no_nan_17strided_slice_28/stackstrided_slice_28/stack_1strided_slice_28/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_29/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_29/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_29/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
О
strided_slice_29StridedSlicediv_no_nan_17strided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
W
sub_13Substrided_slice_28strided_slice_29*
T0*
_output_shapes	
:Ч
F
Mul_22Mulsub_13	truediv_1*
T0*
_output_shapes	
:Ч
R
Const_19Const*
_output_shapes
:*
dtype0*
valueB: 
?
auc_1SumMul_22Const_19*
T0*
_output_shapes
: 
?
Identity_88Identityauc_1*
T0*
_output_shapes
: 
l
ReadVariableOp_27ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_30/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_30/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_30/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ф
strided_slice_30StridedSliceReadVariableOp_27strided_slice_30/stackstrided_slice_30/stack_1strided_slice_30/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
l
ReadVariableOp_28ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_31/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_31/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_31/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_31StridedSliceReadVariableOp_28strided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
W
sub_14Substrided_slice_30strided_slice_31*
T0*
_output_shapes	
:Ч
p
Add_14/ReadVariableOpReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
s
Add_14/ReadVariableOp_1ReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:Ш*
dtype0
e
Add_14AddV2Add_14/ReadVariableOpAdd_14/ReadVariableOp_1*
T0*
_output_shapes	
:Ш
`
strided_slice_32/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_32/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_32/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Й
strided_slice_32StridedSliceAdd_14strided_slice_32/stackstrided_slice_32/stack_1strided_slice_32/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_33/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_33/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_33/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
З
strided_slice_33StridedSliceAdd_14strided_slice_33/stackstrided_slice_33/stack_1strided_slice_33/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
W
sub_15Substrided_slice_32strided_slice_33*
T0*
_output_shapes	
:Ч
P
Maximum_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
O
	Maximum_4Maximumsub_15Maximum_4/y*
T0*
_output_shapes	
:Ч
Q
prec_slope_1DivNoNansub_14	Maximum_4*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_29ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_34/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_34/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_34/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_34StridedSliceReadVariableOp_29strided_slice_34/stackstrided_slice_34/stack_1strided_slice_34/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
`
strided_slice_35/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_35/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_35/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
З
strided_slice_35StridedSliceAdd_14strided_slice_35/stackstrided_slice_35/stack_1strided_slice_35/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
S
Mul_23Mulprec_slope_1strided_slice_35*
T0*
_output_shapes	
:Ч
M
sub_16Substrided_slice_34Mul_23*
T0*
_output_shapes	
:Ч
`
strided_slice_36/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_36/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_36/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Й
strided_slice_36StridedSliceAdd_14strided_slice_36/stackstrided_slice_36/stack_1strided_slice_36/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
P
Greater_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_4Greaterstrided_slice_36Greater_4/y*
T0*
_output_shapes	
:Ч
`
strided_slice_37/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_37/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_37/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
З
strided_slice_37StridedSliceAdd_14strided_slice_37/stackstrided_slice_37/stack_1strided_slice_37/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
P
Greater_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_5Greaterstrided_slice_37Greater_5/y*
T0*
_output_shapes	
:Ч
M
LogicalAnd_5
LogicalAnd	Greater_4	Greater_5*
_output_shapes	
:Ч
`
strided_slice_38/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_38/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
b
strided_slice_38/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Й
strided_slice_38StridedSliceAdd_14strided_slice_38/stackstrided_slice_38/stack_1strided_slice_38/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
`
strided_slice_39/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_39/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_39/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
З
strided_slice_39StridedSliceAdd_14strided_slice_39/stackstrided_slice_39/stack_1strided_slice_39/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
P
Maximum_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Maximum_5Maximumstrided_slice_39Maximum_5/y*
T0*
_output_shapes	
:Ч
f
recall_relative_ratio_1DivNoNanstrided_slice_38	Maximum_5*
T0*
_output_shapes	
:Ч
`
strided_slice_40/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_40/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_40/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
З
strided_slice_40StridedSliceAdd_14strided_slice_40/stackstrided_slice_40/stack_1strided_slice_40/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
l
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ч
V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
o
ones_like_1Fill!ones_like_1/Shape/shape_as_tensorones_like_1/Const*
T0*
_output_shapes	
:Ч
p

SelectV2_3SelectV2LogicalAnd_5recall_relative_ratio_1ones_like_1*
T0*
_output_shapes	
:Ч
>
Log_1Log
SelectV2_3*
T0*
_output_shapes	
:Ч
B
mul_24Mulsub_16Log_1*
T0*
_output_shapes	
:Ч
E
add_15AddV2sub_14mul_24*
T0*
_output_shapes	
:Ч
I
mul_25Mulprec_slope_1add_15*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_30ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_41/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_41/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_41/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_41StridedSliceReadVariableOp_30strided_slice_41/stackstrided_slice_41/stack_1strided_slice_41/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
m
ReadVariableOp_31ReadVariableOphead/metrics/false_negatives_2*
_output_shapes	
:Ш*
dtype0
`
strided_slice_42/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_42/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_42/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
strided_slice_42StridedSliceReadVariableOp_31strided_slice_42/stackstrided_slice_42/stack_1strided_slice_42/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
Y
add_16AddV2strided_slice_41strided_slice_42*
T0*
_output_shapes	
:Ч
P
Maximum_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
O
	Maximum_6Maximumadd_16Maximum_6/y*
T0*
_output_shapes	
:Ч
W
pr_auc_increment_1DivNoNanmul_25	Maximum_6*
T0*
_output_shapes	
:Ч
R
Const_20Const*
_output_shapes
:*
dtype0*
valueB: 
Z
interpolate_pr_auc_1Sumpr_auc_increment_1Const_20*
T0*
_output_shapes
: 
N
Identity_89Identityinterpolate_pr_auc_1*
T0*
_output_shapes
: 
l
metric_op_wrapperConst^AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
n
metric_op_wrapper_1Const^AssignAddVariableOp_3*
_output_shapes
: *
dtype0*
valueB 
c
metric_op_wrapper_2Const^group_deps*
_output_shapes
: *
dtype0*
valueB 
e
metric_op_wrapper_3Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB 
n
metric_op_wrapper_4Const^AssignAddVariableOp_9*
_output_shapes
: *
dtype0*
valueB 
o
metric_op_wrapper_5Const^AssignAddVariableOp_11*
_output_shapes
: *
dtype0*
valueB 
]
metric_op_wrapper_6Const^NoOp*
_output_shapes
: *
dtype0*
valueB 
e
metric_op_wrapper_7Const^group_deps_2*
_output_shapes
: *
dtype0*
valueB 
e
metric_op_wrapper_8Const^group_deps_3*
_output_shapes
: *
dtype0*
valueB 
Ъ
initNoOp^head/metrics/count/Assign^head/metrics/count_1/Assign^head/metrics/count_2/Assign^head/metrics/count_3/Assign$^head/metrics/false_negatives/Assign&^head/metrics/false_negatives_1/Assign&^head/metrics/false_negatives_2/Assign$^head/metrics/false_positives/Assign&^head/metrics/false_positives_1/Assign&^head/metrics/false_positives_2/Assign^head/metrics/total/Assign^head/metrics/total_1/Assign^head/metrics/total_2/Assign^head/metrics/total_3/Assign#^head/metrics/true_negatives/Assign%^head/metrics/true_negatives_1/Assign#^head/metrics/true_positives/Assign%^head/metrics/true_positives_1/Assign%^head/metrics/true_positives_2/Assign%^head/metrics/true_positives_3/Assign
ы
init_all_tablesNoOp3^transform_features_layer/StatefulPartitionedCall_23^transform_features_layer/StatefulPartitionedCall_33^transform_features_layer/StatefulPartitionedCall_43^transform_features_layer/StatefulPartitionedCall_5

init_1NoOp
6
group_deps_4NoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Е
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*й
valueЯBЬBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
џ	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp*dnn/hiddenlayer_2/bias/Read/ReadVariableOp,dnn/hiddenlayer_2/kernel/Read/ReadVariableOp*dnn/hiddenlayer_3/bias/Read/ReadVariableOp,dnn/hiddenlayer_3/kernel/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp:linear/linear_model/company_xf/weights/Read/ReadVariableOpClinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpDlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpBlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpClinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpAlinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpBlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpClinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp"/device:CPU:0*#
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
И
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*й
valueЯBЬBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
a
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
c
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
a
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
c
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpdnn/logits/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0	*
_output_shapes
:
X
save/AssignVariableOp_10AssignVariableOpglobal_stepsave/Identity_11*
dtype0	
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
m
save/AssignVariableOp_11AssignVariableOp linear/linear_model/bias_weightssave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
s
save/AssignVariableOp_12AssignVariableOp&linear/linear_model/company_xf/weightssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
|
save/AssignVariableOp_13AssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightssave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
}
save/AssignVariableOp_14AssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
x
save/AssignVariableOp_15AssignVariableOp+linear/linear_model/payment_type_xf/weightssave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
{
save/AssignVariableOp_16AssignVariableOp.linear/linear_model/pickup_latitude_xf/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
|
save/AssignVariableOp_17AssignVariableOp/linear/linear_model/pickup_longitude_xf/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
z
save/AssignVariableOp_18AssignVariableOp-linear/linear_model/trip_start_day_xf/weightssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
{
save/AssignVariableOp_19AssignVariableOp.linear/linear_model/trip_start_hour_xf/weightssave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
|
save/AssignVariableOp_20AssignVariableOp/linear/linear_model/trip_start_month_xf/weightssave/Identity_21*
dtype0
Х
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shardЏМ
в
z
zero_fraction_cond_false_967597
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

џ
a
0zero_fraction_total_zero_zero_count_8_true_96877
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
Д
Ъ
1zero_fraction_total_zero_zero_count_2_false_96620_
Mzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights:
(
$cast_zero_fraction_total_size_size_2	
mulЊ
zero_fraction/ReadVariableOpReadVariableOpMzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights*
_output_shapes

:
*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96630*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96629e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_2*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
В
Щ
1zero_fraction_total_zero_zero_count_5_false_96749^
Lzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights:
(
$cast_zero_fraction_total_size_size_5	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights*
_output_shapes

:
*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96759*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96758e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_5*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
р
ф
@broadcast_weights_7_assert_broadcastable_AssertGuard_false_97735K
Gassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_7_assert_broadcastable_weights_shape@
<assert_broadcast_weights_7_assert_broadcastable_values_shape=
9assert_broadcast_weights_7_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.\
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=c
Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_6:0[
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=j
Assert/data_5Const*
_output_shapes
: *
dtype0*-
value$B" Bcheck_label_range/Identity:0X
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=Ы
AssertAssertGassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_7_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_7_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_7_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityGassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
т
н
#dnn_zero_fraction_3_cond_true_955221
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ":- )
'
_output_shapes
:џџџџџџџџџ"
ы
b
zero_fraction_cond_true_967157
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

в
z
zero_fraction_cond_false_968887
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
Д

Bbroadcast_weights_5_assert_broadcastable_is_valid_shape_true_975868
4broadcast_weights_5_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_5_assert_broadcastable_is_scalar
"j
2broadcast_weights_5_assert_broadcastable_is_scalar4broadcast_weights_5_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
Й

5assert_greater_equal_1_Assert_AssertGuard_false_97466%
!assert_assert_greater_equal_1_all

assert_cast_13
assert_cast_15_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:^
Assert/data_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_13:0) = `
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_15/x:0) = м
AssertAssert!assert_assert_greater_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_13Assert/data_4:output:0assert_cast_15_x*
T

2*
_output_shapes
 a
IdentityIdentity!assert_assert_greater_equal_1_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
в
ю
$dnn_zero_fraction_1_cond_false_953831
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџFw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџFd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :ъша
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџF:- )
'
_output_shapes
:џџџџџџџџџF
Л
ў
$has_valid_nonscalar_shape_true_97692U
Qhas_invalid_dims_expanddims_broadcast_weights_7_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_7_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_7_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:
0has_invalid_dims/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      b
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :Б
has_invalid_dims/ones_likeFill9has_invalid_dims/ones_like/Shape/shape_as_tensor:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_7_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: T
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
Ъ
е
?broadcast_weights_9_assert_broadcastable_AssertGuard_true_97891M
Iidentity_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityIidentity_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
І
О
__inference_<lambda>_94412!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
Д

Bbroadcast_weights_9_assert_broadcastable_is_valid_shape_true_978418
4broadcast_weights_9_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_9_assert_broadcastable_is_scalar
"j
2broadcast_weights_9_assert_broadcastable_is_scalar4broadcast_weights_9_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
А
Ш
1zero_fraction_total_zero_zero_count_7_false_96835]
Kzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights:(
$cast_zero_fraction_total_size_size_7	
mulЈ
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96845*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96844e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_7*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
в
z
zero_fraction_cond_false_968457
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
ј
Ћ
Acheck_label_range_assert_less_equal_Assert_AssertGuard_true_972574
0identity_check_label_range_assert_less_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 n
IdentityIdentity0identity_check_label_range_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 

Н
/zero_fraction_total_zero_zero_count_false_96534V
Czero_fraction_readvariableop_linear_linear_model_company_xf_weights:	ђ&
"cast_zero_fraction_total_size_size	
mulЁ
zero_fraction/ReadVariableOpReadVariableOpCzero_fraction_readvariableop_linear_linear_model_company_xf_weights*
_output_shapes
:	ђ*
dtype0U
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 Rђ_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96544*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96543e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: `
CastCast"cast_zero_fraction_total_size_size*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
џ
a
0zero_fraction_total_zero_zero_count_3_true_96662
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 


ю
Nhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_false_97032>
:assert_head_losses_check_label_range_assert_less_equal_all

assert_head_losses_cast.
*assert_head_losses_check_label_range_const
identity
m
Assert/data_0Const*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 1y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:g
Assert/data_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = z
Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (head/losses/check_label_range/Const:0) = 
AssertAssert:assert_head_losses_check_label_range_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_head_losses_castAssert/data_4:output:0*assert_head_losses_check_label_range_const*
T

2*
_output_shapes
 z
IdentityIdentity:assert_head_losses_check_label_range_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
Д

Bbroadcast_weights_7_assert_broadcastable_is_valid_shape_true_976848
4broadcast_weights_7_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_7_assert_broadcastable_is_scalar
"j
2broadcast_weights_7_assert_broadcastable_is_scalar4broadcast_weights_7_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
Ї
Т
__inference__initializer_94418!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџG
ConstConst*
_output_shapes
: *
dtype0*
value	B :u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
Ї
Т
__inference__initializer_95054!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџG
ConstConst*
_output_shapes
: *
dtype0*
value	B :u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 

,
__inference__destroyer_94406
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 

n
__inference__traced_save_95071
file_prefix
savev2_const_18

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Г
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const_18"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
б
Ј
 zero_fraction_1_cond_false_96928c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    г
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
В
Щ
1zero_fraction_total_zero_zero_count_1_false_96577^
Lzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights:
(
$cast_zero_fraction_total_size_size_1	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights*
_output_shapes

:
*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96587*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96586e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_1*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
Ћ

3assert_greater_equal_Assert_AssertGuard_false_97355#
assert_assert_greater_equal_all

assert_cast_5
assert_cast_7_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:]
Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = _
Assert/data_4Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_7/x:0) = и
AssertAssertassert_assert_greater_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_5Assert/data_4:output:0assert_cast_7_x*
T

2*
_output_shapes
 _
IdentityIdentityassert_assert_greater_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
б

4assert_greater_equal_3_Assert_AssertGuard_true_97979'
#identity_assert_greater_equal_3_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 a
IdentityIdentity#identity_assert_greater_equal_3_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 

У
Mhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_true_97031@
<identity_head_losses_check_label_range_assert_less_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 z
IdentityIdentity<identity_head_losses_check_label_range_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
р
л
!dnn_zero_fraction_cond_true_953121
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџdw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџdd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџd:- )
'
_output_shapes
:џџџџџџџџџd

Ѕ
%has_valid_nonscalar_shape_false_97595
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
у
:
__inference__creator_94402
identityЂ
hash_table

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nameћјhash_table_tf.Tensor(b'/usr/local/google/home/jiyongjung/tfx-dev/t20220228/output/test_do_with_module_file/transformed_graph/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary', shape=(), dtype=string)_-2_-1_load_94360_94398*
use_node_name_sharing(*
value_dtype0	S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
т
н
#dnn_zero_fraction_2_cond_true_954521
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ0:- )
'
_output_shapes
:џџџџџџџџџ0
џ
a
0zero_fraction_total_zero_zero_count_5_true_96748
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
Ъ
е
?broadcast_weights_7_assert_broadcastable_AssertGuard_true_97734M
Iidentity_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityIidentity_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
в
z
zero_fraction_cond_false_966307
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

џ
a
0zero_fraction_total_zero_zero_count_7_true_96834
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
к
Ђ
2assert_less_equal_2_Assert_AssertGuard_false_97818"
assert_assert_less_equal_2_all
!
assert_predictions_1_logistic
assert_cast_23_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:m
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = `
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_23/x:0) = ш
AssertAssertassert_assert_less_equal_2_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_23_x*
T

2*
_output_shapes
 ^
IdentityIdentityassert_assert_less_equal_2_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
џ
a
0zero_fraction_total_zero_zero_count_2_true_96619
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
С
ь
Cbroadcast_weights_7_assert_broadcastable_is_valid_shape_false_97685
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_weights_rank*
T0*
_output_shapes
: Д
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_97693*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_97692s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
Э
з
@broadcast_weights_11_assert_broadcastable_AssertGuard_true_98079N
Jidentity_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityJidentity_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
с
:
__inference__creator_94378
identityЂ
hash_tableў

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nameљіhash_table_tf.Tensor(b'/usr/local/google/home/jiyongjung/tfx-dev/t20220228/output/test_do_with_module_file/transformed_graph/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary', shape=(), dtype=string)_-2_-1_load_94360_94374*
use_node_name_sharing(*
value_dtype0	S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
в
ю
$dnn_zero_fraction_2_cond_false_954531
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :ъша
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ0:- )
'
_output_shapes
:џџџџџџџџџ0
І
О
__inference_<lambda>_94444!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
џ
a
0zero_fraction_total_zero_zero_count_4_true_96705
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
П

$has_valid_nonscalar_shape_true_98037V
Rhas_invalid_dims_expanddims_broadcast_weights_11_assert_broadcastable_values_shapeY
Uhas_invalid_dims_expanddims_1_broadcast_weights_11_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџа
has_invalid_dims/ExpandDims
ExpandDimsRhas_invalid_dims_expanddims_broadcast_weights_11_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:
0has_invalid_dims/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      b
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :Б
has_invalid_dims/ones_likeFill9has_invalid_dims/ones_like/Shape/shape_as_tensor:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџз
has_invalid_dims/ExpandDims_1
ExpandDimsUhas_invalid_dims_expanddims_1_broadcast_weights_11_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: T
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
у
:
__inference__creator_94387
identityЂ
hash_table

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nameћјhash_table_tf.Tensor(b'/usr/local/google/home/jiyongjung/tfx-dev/t20220228/output/test_do_with_module_file/transformed_graph/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary', shape=(), dtype=string)_-2_-1_load_94360_94383*
use_node_name_sharing(*
value_dtype0	S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
ы
b
zero_fraction_cond_true_966297
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:


,
__inference__destroyer_95042
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 

,
__inference__destroyer_94397
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 


0assert_less_equal_Assert_AssertGuard_false_97381 
assert_assert_less_equal_all

assert_cast_5
assert_cast_8_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:]
Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = _
Assert/data_4Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_8/x:0) = е
AssertAssertassert_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_5Assert/data_4:output:0assert_cast_8_x*
T

2*
_output_shapes
 \
IdentityIdentityassert_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
Ш

1assert_less_equal_1_Assert_AssertGuard_true_97491$
 identity_assert_less_equal_1_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 ^
IdentityIdentity identity_assert_less_equal_1_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
Ч
И
(__inference_restored_function_body_95122)
%transform_features_layer_asset_path_16
2transform_features_layer_statefulpartitionedcall_1
identityЂStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCall%transform_features_layer_asset_path_12transform_features_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__initializer_94432^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
­

2assert_less_equal_1_Assert_AssertGuard_false_97492"
assert_assert_less_equal_1_all

assert_cast_13
assert_cast_16_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:^
Assert/data_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_13:0) = `
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_16/x:0) = й
AssertAssertassert_assert_less_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_13Assert/data_4:output:0assert_cast_16_x*
T

2*
_output_shapes
 ^
IdentityIdentityassert_assert_less_equal_1_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
ы
b
zero_fraction_cond_true_968877
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
Ш
G
!__inference__traced_restore_94426
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ѓ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
П
Д
(__inference_restored_function_body_95138'
#transform_features_layer_asset_path4
0transform_features_layer_statefulpartitionedcall
identityЂStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCall#transform_features_layer_asset_path0transform_features_layer_statefulpartitionedcall*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__initializer_94438^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
а
ь
"dnn_zero_fraction_cond_false_953131
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџdw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџdd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :ъша
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџd:- )
'
_output_shapes
:џџџџџџџџџd
ъ

zero_fraction_1_cond_true_96927c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    г
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
я
b
zero_fraction_cond_true_966727
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	ђd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes
:	ђ:% !

_output_shapes
:	ђ
н
d
__inference__identity_94373
x	
x_1	
x_2	
identity	

identity_1	

identity_2	I
IdentityIdentityx*
T0	*'
_output_shapes
:џџџџџџџџџI

Identity_1Identityx_1*
T0	*#
_output_shapes
:џџџџџџџџџ@

Identity_2Identityx_2*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџ:џџџџџџџџџ::J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex:FB
#
_output_shapes
:џџџџџџџџџ

_user_specified_namex:=9

_output_shapes
:

_user_specified_namex
Ї
Т
__inference__initializer_94438!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџG
ConstConst*
_output_shapes
: *
dtype0*
value	B :u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
в
ю
$dnn_zero_fraction_3_cond_false_955231
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :ъша
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ":- )
'
_output_shapes
:џџџџџџџџџ"
н
d
__inference__identity_94452
x	
x_1
x_2	
identity	

identity_1

identity_2	I
IdentityIdentityx*
T0	*'
_output_shapes
:џџџџџџџџџI

Identity_1Identityx_1*
T0*#
_output_shapes
:џџџџџџџџџ@

Identity_2Identityx_2*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџ:џџџџџџџџџ::J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex:FB
#
_output_shapes
:џџџџџџџџџ

_user_specified_namex:=9

_output_shapes
:

_user_specified_namex
ч
щ
Abroadcast_weights_11_assert_broadcastable_AssertGuard_false_98080L
Hassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity
B
>assert_broadcast_weights_11_assert_broadcastable_weights_shapeA
=assert_broadcast_weights_11_assert_broadcastable_values_shape>
:assert_broadcast_weights_11_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.\
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=d
Assert/data_2Const*
_output_shapes
: *
dtype0*'
valueB Bbroadcast_weights_10:0[
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=f
Assert/data_5Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0X
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=Я
AssertAssertHassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0>assert_broadcast_weights_11_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0=assert_broadcast_weights_11_assert_broadcastable_values_shapeAssert/data_7:output:0:assert_broadcast_weights_11_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityHassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
в
z
zero_fraction_cond_false_968027
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
§
_
.zero_fraction_total_zero_zero_count_true_96533
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
­
Ц
1zero_fraction_total_zero_zero_count_3_false_96663[
Hzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights:	ђ(
$cast_zero_fraction_total_size_size_3	
mulІ
zero_fraction/ReadVariableOpReadVariableOpHzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights*
_output_shapes
:	ђ*
dtype0U
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 Rђ_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96673*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96672e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_3*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
ы
b
zero_fraction_cond_true_967587
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

ц
Ј
5assert_greater_equal_2_Assert_AssertGuard_false_97792%
!assert_assert_greater_equal_2_all
!
assert_predictions_1_logistic
assert_cast_22_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:m
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = `
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_22/x:0) = ы
AssertAssert!assert_assert_greater_equal_2_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_22_x*
T

2*
_output_shapes
 a
IdentityIdentity!assert_assert_greater_equal_2_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
І
О
__inference_<lambda>_94393!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
Ъ
е
?broadcast_weights_5_assert_broadcastable_AssertGuard_true_97636M
Iidentity_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityIidentity_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
џ
a
0zero_fraction_total_zero_zero_count_1_true_96576
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 

,
__inference__destroyer_94382
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
А
Ш
1zero_fraction_total_zero_zero_count_4_false_96706]
Kzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights:
(
$cast_zero_fraction_total_size_size_4	
mulЈ
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights*
_output_shapes

:
*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96716*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96715e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_4*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 

Ѕ
%has_valid_nonscalar_shape_false_97693
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
П
Д
(__inference_restored_function_body_95130'
#transform_features_layer_asset_path4
0transform_features_layer_statefulpartitionedcall
identityЂStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCall#transform_features_layer_asset_path0transform_features_layer_statefulpartitionedcall*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__initializer_95054^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
І
О
__inference_<lambda>_95048!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
м
ф
@broadcast_weights_9_assert_broadcastable_AssertGuard_false_97892K
Gassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_9_assert_broadcastable_weights_shape@
<assert_broadcast_weights_9_assert_broadcastable_values_shape=
9assert_broadcast_weights_9_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.\
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=c
Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_8:0[
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=f
Assert/data_5Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0X
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=Ы
AssertAssertGassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_9_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_9_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_9_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityGassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
ы
b
zero_fraction_cond_true_968447
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
к
й
#dnn_zero_fraction_4_cond_true_95591-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
џ
a
0zero_fraction_total_zero_zero_count_6_true_96791
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
І
и
ahead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_97056T
Pidentity_head_losses_check_label_range_assert_non_negative_assert_less_equal_all

placeholder
identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityPidentity_head_losses_check_label_range_assert_non_negative_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
	
О
Bcheck_label_range_assert_less_equal_Assert_AssertGuard_false_972582
.assert_check_label_range_assert_less_equal_all

assert_cast"
assert_check_label_range_const
identity
m
Assert/data_0Const*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 1y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:[
Assert/data_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = n
Assert/data_4Const*
_output_shapes
: *
dtype0*1
value(B& B y (check_label_range/Const:0) = є
AssertAssert.assert_check_label_range_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_castAssert/data_4:output:0assert_check_label_range_const*
T

2*
_output_shapes
 n
IdentityIdentity.assert_check_label_range_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
м
ф
@broadcast_weights_5_assert_broadcastable_AssertGuard_false_97637K
Gassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_5_assert_broadcastable_weights_shape@
<assert_broadcast_weights_5_assert_broadcastable_values_shape=
9assert_broadcast_weights_5_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.\
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=c
Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_4:0[
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=f
Assert/data_5Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0X
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=Ы
AssertAssertGassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_5_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_5_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_5_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityGassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
Ъ
ъ
$dnn_zero_fraction_4_cond_false_95592-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :ъша
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
С
ь
Cbroadcast_weights_5_assert_broadcastable_is_valid_shape_false_97587
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_weights_rank*
T0*
_output_shapes
: Д
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_97595*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_97594s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
ЭV
Ј
#__inference_signature_wrapper_95038

inputs	
inputs_1
	inputs_10
	inputs_11	
	inputs_12	
	inputs_13
	inputs_14	
	inputs_15	
	inputs_16
	inputs_17	
	inputs_18	
	inputs_19
inputs_2	
	inputs_20	
	inputs_21	
	inputs_22	
	inputs_23	
	inputs_24	
	inputs_25	
	inputs_26	
	inputs_27	
	inputs_28
	inputs_29	
inputs_3	
	inputs_30	
	inputs_31
	inputs_32	
	inputs_33	
	inputs_34
	inputs_35	
	inputs_36	
	inputs_37
	inputs_38	
	inputs_39	
inputs_4	
	inputs_40	
	inputs_41	
	inputs_42	
	inputs_43	
	inputs_44	
	inputs_45	
	inputs_46	
	inputs_47	
	inputs_48	
	inputs_49	
inputs_5	
	inputs_50	
	inputs_51	
	inputs_52	
	inputs_53	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5	
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9	

unknown_10	

unknown_11	

unknown_12

unknown_13	

unknown_14	

unknown_15

unknown_16

unknown_17

unknown_18
identity	

identity_1	

identity_2	

identity_3	

identity_4	

identity_5

identity_6	

identity_7	

identity_8	

identity_9	
identity_10	
identity_11	
identity_12
identity_13
identity_14	
identity_15	
identity_16	ЂStatefulPartitionedCallЧ

StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*U
TinN
L2J																																																					*
Tout
2														*џ
_output_shapesь
щ::џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *!
fR
__inference_pruned_94928`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
:m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџm

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџm

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџm

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџm

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*#
_output_shapes
:џџџџџџџџџb

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0	*
_output_shapes
:m

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџm

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџm

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџo
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџo
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџo
Identity_12Identity!StatefulPartitionedCall:output:12^NoOp*
T0*#
_output_shapes
:џџџџџџџџџo
Identity_13Identity!StatefulPartitionedCall:output:13^NoOp*
T0*#
_output_shapes
:џџџџџџџџџo
Identity_14Identity!StatefulPartitionedCall:output:14^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџo
Identity_15Identity!StatefulPartitionedCall:output:15^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџo
Identity_16Identity!StatefulPartitionedCall:output:16^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*­
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ:::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ:::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ: : : : : : : : : : : : : : : : :	:	:	:	22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_1:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_10:EA

_output_shapes
:
#
_user_specified_name	inputs_11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_12:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_13:EA

_output_shapes
:
#
_user_specified_name	inputs_14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_15:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_16:E	A

_output_shapes
:
#
_user_specified_name	inputs_17:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_18:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_19:D@

_output_shapes
:
"
_user_specified_name
inputs_2:EA

_output_shapes
:
#
_user_specified_name	inputs_20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_21:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_22:EA

_output_shapes
:
#
_user_specified_name	inputs_23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_24:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_25:EA

_output_shapes
:
#
_user_specified_name	inputs_26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_27:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_28:EA

_output_shapes
:
#
_user_specified_name	inputs_29:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_3:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_30:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_31:EA

_output_shapes
:
#
_user_specified_name	inputs_32:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_33:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_34:EA

_output_shapes
:
#
_user_specified_name	inputs_35:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_36:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_37:E A

_output_shapes
:
#
_user_specified_name	inputs_38:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_39:M"I
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_4:N#J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_40:E$A

_output_shapes
:
#
_user_specified_name	inputs_41:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_42:N&J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_43:E'A

_output_shapes
:
#
_user_specified_name	inputs_44:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_45:N)J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_46:E*A

_output_shapes
:
#
_user_specified_name	inputs_47:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_48:N,J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_49:D-@

_output_shapes
:
"
_user_specified_name
inputs_5:E.A

_output_shapes
:
#
_user_specified_name	inputs_50:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_51:N0J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_52:E1A

_output_shapes
:
#
_user_specified_name	inputs_53:Q2M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_6:M3I
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_7:D4@

_output_shapes
:
"
_user_specified_name
inputs_8:Q5M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_9:6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :$F 

_output_shapes

:	:$G 

_output_shapes

:	:$H 

_output_shapes

:	:$I 

_output_shapes

:	

Ѕ
%has_valid_nonscalar_shape_false_98038
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
м
U
(__inference_restored_function_body_95078
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *#
fR
__inference__creator_94387^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
В
Щ
1zero_fraction_total_zero_zero_count_8_false_96878^
Lzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights:(
$cast_zero_fraction_total_size_size_8	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96888*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96887e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_8*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
ж
z
zero_fraction_cond_false_965447
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes
:	ђd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	ђ:% !

_output_shapes
:	ђ
Л
ў
$has_valid_nonscalar_shape_true_97594U
Qhas_invalid_dims_expanddims_broadcast_weights_5_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_5_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_5_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:
0has_invalid_dims/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      b
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :Б
has_invalid_dims/ones_likeFill9has_invalid_dims/ones_like/Shape/shape_as_tensor:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_5_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: T
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
м
U
(__inference_restored_function_body_95084
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *#
fR
__inference__creator_94378^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
б

4assert_greater_equal_2_Assert_AssertGuard_true_97791'
#identity_assert_greater_equal_2_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 a
IdentityIdentity#identity_assert_greater_equal_2_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
Ш

1assert_less_equal_3_Assert_AssertGuard_true_98005$
 identity_assert_less_equal_3_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 ^
IdentityIdentity identity_assert_less_equal_3_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
Т

/assert_less_equal_Assert_AssertGuard_true_97380"
identity_assert_less_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 \
IdentityIdentityidentity_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
Ч
И
(__inference_restored_function_body_95114)
%transform_features_layer_asset_path_16
2transform_features_layer_statefulpartitionedcall_1
identityЂStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCall%transform_features_layer_asset_path_12transform_features_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__initializer_94418^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
в
z
zero_fraction_cond_false_965877
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

У
ц
bhead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_97057R
Nassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_all

assert_head_losses_cast
identity
d
Assert/data_0Const*
_output_shapes
: *
dtype0*'
valueB BLabels must be >= 0.  y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:g
Assert/data_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = ц
AssertAssertNassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_head_losses_cast*
T
2*
_output_shapes
 
IdentityIdentityNassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
сџ
Ќ
__inference_pruned_94928

inputs	
inputs_1
inputs_2	
inputs_3	
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10
	inputs_11	
	inputs_12	
	inputs_13
	inputs_14	
	inputs_15	
	inputs_16
	inputs_17	
	inputs_18	
	inputs_19
	inputs_20	
	inputs_21	
	inputs_22	
	inputs_23	
	inputs_24	
	inputs_25	
	inputs_26	
	inputs_27	
	inputs_28
	inputs_29	
	inputs_30	
	inputs_31
	inputs_32	
	inputs_33	
	inputs_34
	inputs_35	
	inputs_36	
	inputs_37
	inputs_38	
	inputs_39	
	inputs_40	
	inputs_41	
	inputs_42	
	inputs_43	
	inputs_44	
	inputs_45	
	inputs_46	
	inputs_47	
	inputs_48	
	inputs_49	
	inputs_50	
	inputs_51	
	inputs_52	
	inputs_53	0
,scale_to_z_score_mean_and_var_identity_input2
.scale_to_z_score_mean_and_var_identity_1_input2
.scale_to_z_score_1_mean_and_var_identity_input4
0scale_to_z_score_1_mean_and_var_identity_1_input2
.scale_to_z_score_2_mean_and_var_identity_input4
0scale_to_z_score_2_mean_and_var_identity_1_input:
6compute_and_apply_vocabulary_vocabulary_identity_input	<
8compute_and_apply_vocabulary_vocabulary_identity_1_input	c
_compute_and_apply_vocabulary_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_table_handled
`compute_and_apply_vocabulary_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_default_value	2
.compute_and_apply_vocabulary_apply_vocab_sub_x	<
8compute_and_apply_vocabulary_1_vocabulary_identity_input	>
:compute_and_apply_vocabulary_1_vocabulary_identity_1_input	e
acompute_and_apply_vocabulary_1_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_table_handlef
bcompute_and_apply_vocabulary_1_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_default_value	4
0compute_and_apply_vocabulary_1_apply_vocab_sub_x	&
"bucketize_quantiles_identity_input(
$bucketize_1_quantiles_identity_input(
$bucketize_2_quantiles_identity_input(
$bucketize_3_quantiles_identity_input
identity	

identity_1	

identity_2	

identity_3	

identity_4	

identity_5

identity_6	

identity_7	

identity_8	

identity_9	
identity_10	
identity_11	
identity_12
identity_13
identity_14	
identity_15	
identity_16	Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:џџџџџџџџџH
inputs_2_copyIdentityinputs_2*
T0	*
_output_shapes
:_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
strided_slice_4StridedSliceinputs_2_copy:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_61/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_61/dense_shapePackstrided_slice_4:output:0&SparseTensor_61/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:Q
inputs_1_copyIdentityinputs_1*
T0*#
_output_shapes
:џџџџџџџџџ^
SparseToDense_4/default_valueConst*
_output_shapes
: *
dtype0*
valueB B о
SparseToDense_4SparseToDenseinputs_copy:output:0$SparseTensor_61/dense_shape:output:0inputs_1_copy:output:0&SparseToDense_4/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_4SqueezeSparseToDense_4:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
ѕ
Tcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV2acompute_and_apply_vocabulary_1_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_table_handleSqueeze_4:output:0bcompute_and_apply_vocabulary_1_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*
_output_shapes
:Б
?compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/NotEqualNotEqual]compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2:values:0bcompute_and_apply_vocabulary_1_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*
_output_shapes
:Ј
Bcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/hash_bucketStringToHashBucketFastSqueeze_4:output:0*#
_output_shapes
:џџџџџџџџџ*
num_buckets
Й
Rcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV2acompute_and_apply_vocabulary_1_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_table_handleU^compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: 
:compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/AddAddV2Kcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/hash_bucket:output:0Ycompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	*#
_output_shapes
:џџџџџџџџџв
?compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/SelectV2SelectV2Ccompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/NotEqual:z:0]compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2:values:0>compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/Add:z:0*
T0	*
_output_shapes
:W
inputs_18_copyIdentity	inputs_18*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_20_copyIdentity	inputs_20*
T0	*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_3StridedSliceinputs_20_copy:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_60/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_60/dense_shapePackstrided_slice_3:output:0&SparseTensor_60/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_19_copyIdentity	inputs_19*
T0*#
_output_shapes
:џџџџџџџџџ^
SparseToDense_3/default_valueConst*
_output_shapes
: *
dtype0*
valueB B т
SparseToDense_3SparseToDenseinputs_18_copy:output:0$SparseTensor_60/dense_shape:output:0inputs_19_copy:output:0&SparseToDense_3/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_3SqueezeSparseToDense_3:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
я
Rcompute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV2_compute_and_apply_vocabulary_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_table_handleSqueeze_3:output:0`compute_and_apply_vocabulary_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*
_output_shapes
:Г
Pcompute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV2_compute_and_apply_vocabulary_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_table_handleS^compute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: 
NoOpNoOpS^compute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2Q^compute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Size/LookupTableSizeV2U^compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2S^compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/None_Size/LookupTableSizeV2*"
_acd_function_control_output(*
_output_shapes
 
IdentityIdentityHcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/SelectV2:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџU
inputs_3_copyIdentityinputs_3*
T0	*'
_output_shapes
:џџџџџџџџџH
inputs_5_copyIdentityinputs_5*
T0	*
_output_shapes
:`
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_slice_13StridedSliceinputs_5_copy:output:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_70/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_70/dense_shapePackstrided_slice_13:output:0&SparseTensor_70/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:Q
inputs_4_copyIdentityinputs_4*
T0	*#
_output_shapes
:џџџџџџџџџ`
SparseToDense_13/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R т
SparseToDense_13SparseToDenseinputs_3_copy:output:0$SparseTensor_70/dense_shape:output:0inputs_4_copy:output:0'SparseToDense_13/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_13SqueezeSparseToDense_13:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
`

Identity_1IdentitySqueeze_13:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџU
inputs_6_copyIdentityinputs_6*
T0	*'
_output_shapes
:џџџџџџџџџH
inputs_8_copyIdentityinputs_8*
T0	*
_output_shapes
:`
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_slice_15StridedSliceinputs_8_copy:output:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_72/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_72/dense_shapePackstrided_slice_15:output:0&SparseTensor_72/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:Q
inputs_7_copyIdentityinputs_7*
T0	*#
_output_shapes
:џџџџџџџџџ`
SparseToDense_15/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R т
SparseToDense_15SparseToDenseinputs_6_copy:output:0$SparseTensor_72/dense_shape:output:0inputs_7_copy:output:0'SparseToDense_15/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_15SqueezeSparseToDense_15:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
`

Identity_2IdentitySqueeze_15:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџy
bucketize_2/quantiles/IdentityIdentity$bucketize_2_quantiles_identity_input*
T0*
_output_shapes

:	
8bucketize_2/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџЮ
2bucketize_2/apply_buckets/assign_buckets/Reshape_1Reshape'bucketize_2/quantiles/Identity:output:0Abucketize_2/apply_buckets/assign_buckets/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
:bucketize_2/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
>bucketize_2/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	
<bucketize_2/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
>bucketize_2/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>bucketize_2/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
6bucketize_2/apply_buckets/assign_buckets/strided_sliceStridedSliceGbucketize_2/apply_buckets/assign_buckets/Shape/shape_as_tensor:output:0Ebucketize_2/apply_buckets/assign_buckets/strided_slice/stack:output:0Gbucketize_2/apply_buckets/assign_buckets/strided_slice/stack_1:output:0Gbucketize_2/apply_buckets/assign_buckets/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
8bucketize_2/apply_buckets/assign_buckets/Reshape_2/shapePackCbucketize_2/apply_buckets/assign_buckets/Reshape_2/shape/0:output:0?bucketize_2/apply_buckets/assign_buckets/strided_slice:output:0*
N*
T0*
_output_shapes
:ц
2bucketize_2/apply_buckets/assign_buckets/Reshape_2Reshape;bucketize_2/apply_buckets/assign_buckets/Reshape_1:output:0Abucketize_2/apply_buckets/assign_buckets/Reshape_2/shape:output:0*
T0*
_output_shapes

:	
:bucketize_2/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџU
inputs_9_copyIdentityinputs_9*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_11_copyIdentity	inputs_11*
T0	*
_output_shapes
:_
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_7StridedSliceinputs_11_copy:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_64/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_64/dense_shapePackstrided_slice_7:output:0&SparseTensor_64/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_10_copyIdentity	inputs_10*
T0*#
_output_shapes
:џџџџџџџџџb
SparseToDense_7/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    с
SparseToDense_7SparseToDenseinputs_9_copy:output:0$SparseTensor_64/dense_shape:output:0inputs_10_copy:output:0&SparseToDense_7/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_7SqueezeSparseToDense_7:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

6bucketize_2/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџО
0bucketize_2/apply_buckets/assign_buckets/ReshapeReshapeSqueeze_7:output:0?bucketize_2/apply_buckets/assign_buckets/Reshape/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ
0bucketize_2/apply_buckets/assign_buckets/Shape_1Shape9bucketize_2/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:
>bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
@bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
@bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ј
8bucketize_2/apply_buckets/assign_buckets/strided_slice_1StridedSlice9bucketize_2/apply_buckets/assign_buckets/Shape_1:output:0Gbucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack:output:0Ibucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_1:output:0Ibucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskі
8bucketize_2/apply_buckets/assign_buckets/Reshape_3/shapePackCbucketize_2/apply_buckets/assign_buckets/Reshape_3/shape/0:output:0Abucketize_2/apply_buckets/assign_buckets/strided_slice_1:output:0*
N*
T0*
_output_shapes
:і
2bucketize_2/apply_buckets/assign_buckets/Reshape_3Reshape9bucketize_2/apply_buckets/assign_buckets/Reshape:output:0Abucketize_2/apply_buckets/assign_buckets/Reshape_3/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
3bucketize_2/apply_buckets/assign_buckets/UpperBound
UpperBound;bucketize_2/apply_buckets/assign_buckets/Reshape_2:output:0;bucketize_2/apply_buckets/assign_buckets/Reshape_3:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
0bucketize_2/apply_buckets/assign_buckets/Shape_2Shape9bucketize_2/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:ф
2bucketize_2/apply_buckets/assign_buckets/Reshape_4Reshape<bucketize_2/apply_buckets/assign_buckets/UpperBound:output:09bucketize_2/apply_buckets/assign_buckets/Shape_2:output:0*
T0	*#
_output_shapes
:џџџџџџџџџr
0bucketize_2/apply_buckets/assign_buckets/Shape_3ShapeSqueeze_7:output:0*
T0*
_output_shapes
:у
2bucketize_2/apply_buckets/assign_buckets/Reshape_5Reshape;bucketize_2/apply_buckets/assign_buckets/Reshape_4:output:09bucketize_2/apply_buckets/assign_buckets/Shape_3:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_3Identity;bucketize_2/apply_buckets/assign_buckets/Reshape_5:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџy
bucketize_3/quantiles/IdentityIdentity$bucketize_3_quantiles_identity_input*
T0*
_output_shapes

:	
8bucketize_3/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџЮ
2bucketize_3/apply_buckets/assign_buckets/Reshape_1Reshape'bucketize_3/quantiles/Identity:output:0Abucketize_3/apply_buckets/assign_buckets/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
:bucketize_3/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
>bucketize_3/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	
<bucketize_3/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
>bucketize_3/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>bucketize_3/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
6bucketize_3/apply_buckets/assign_buckets/strided_sliceStridedSliceGbucketize_3/apply_buckets/assign_buckets/Shape/shape_as_tensor:output:0Ebucketize_3/apply_buckets/assign_buckets/strided_slice/stack:output:0Gbucketize_3/apply_buckets/assign_buckets/strided_slice/stack_1:output:0Gbucketize_3/apply_buckets/assign_buckets/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
8bucketize_3/apply_buckets/assign_buckets/Reshape_2/shapePackCbucketize_3/apply_buckets/assign_buckets/Reshape_2/shape/0:output:0?bucketize_3/apply_buckets/assign_buckets/strided_slice:output:0*
N*
T0*
_output_shapes
:ц
2bucketize_3/apply_buckets/assign_buckets/Reshape_2Reshape;bucketize_3/apply_buckets/assign_buckets/Reshape_1:output:0Abucketize_3/apply_buckets/assign_buckets/Reshape_2/shape:output:0*
T0*
_output_shapes

:	
:bucketize_3/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџW
inputs_12_copyIdentity	inputs_12*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_14_copyIdentity	inputs_14*
T0	*
_output_shapes
:_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_8StridedSliceinputs_14_copy:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_65/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_65/dense_shapePackstrided_slice_8:output:0&SparseTensor_65/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_13_copyIdentity	inputs_13*
T0*#
_output_shapes
:џџџџџџџџџb
SparseToDense_8/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    т
SparseToDense_8SparseToDenseinputs_12_copy:output:0$SparseTensor_65/dense_shape:output:0inputs_13_copy:output:0&SparseToDense_8/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_8SqueezeSparseToDense_8:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

6bucketize_3/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџО
0bucketize_3/apply_buckets/assign_buckets/ReshapeReshapeSqueeze_8:output:0?bucketize_3/apply_buckets/assign_buckets/Reshape/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ
0bucketize_3/apply_buckets/assign_buckets/Shape_1Shape9bucketize_3/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:
>bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
@bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
@bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ј
8bucketize_3/apply_buckets/assign_buckets/strided_slice_1StridedSlice9bucketize_3/apply_buckets/assign_buckets/Shape_1:output:0Gbucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack:output:0Ibucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_1:output:0Ibucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskі
8bucketize_3/apply_buckets/assign_buckets/Reshape_3/shapePackCbucketize_3/apply_buckets/assign_buckets/Reshape_3/shape/0:output:0Abucketize_3/apply_buckets/assign_buckets/strided_slice_1:output:0*
N*
T0*
_output_shapes
:і
2bucketize_3/apply_buckets/assign_buckets/Reshape_3Reshape9bucketize_3/apply_buckets/assign_buckets/Reshape:output:0Abucketize_3/apply_buckets/assign_buckets/Reshape_3/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
3bucketize_3/apply_buckets/assign_buckets/UpperBound
UpperBound;bucketize_3/apply_buckets/assign_buckets/Reshape_2:output:0;bucketize_3/apply_buckets/assign_buckets/Reshape_3:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
0bucketize_3/apply_buckets/assign_buckets/Shape_2Shape9bucketize_3/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:ф
2bucketize_3/apply_buckets/assign_buckets/Reshape_4Reshape<bucketize_3/apply_buckets/assign_buckets/UpperBound:output:09bucketize_3/apply_buckets/assign_buckets/Shape_2:output:0*
T0	*#
_output_shapes
:џџџџџџџџџr
0bucketize_3/apply_buckets/assign_buckets/Shape_3ShapeSqueeze_8:output:0*
T0*
_output_shapes
:у
2bucketize_3/apply_buckets/assign_buckets/Reshape_5Reshape;bucketize_3/apply_buckets/assign_buckets/Reshape_4:output:09bucketize_3/apply_buckets/assign_buckets/Shape_3:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_4Identity;bucketize_3/apply_buckets/assign_buckets/Reshape_5:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџW
inputs_15_copyIdentity	inputs_15*
T0	*'
_output_shapes
:џџџџџџџџџS
inputs_16_copyIdentity	inputs_16*
T0*#
_output_shapes
:џџџџџџџџџJ
inputs_17_copyIdentity	inputs_17*
T0	*
_output_shapes
:Ш
PartitionedCall_1PartitionedCallinputs_15_copy:output:0inputs_16_copy:output:0inputs_17_copy:output:0*
Tin
2		*
Tout
2		*
_collective_manager_ids
 * 
_output_shapes
:::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *$
fR
__inference__identity_94452_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
strided_slice_1StridedSlicePartitionedCall_1:output:2strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
shrink_axis_mask_
SparseTensor_57/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_57/dense_shapePackstrided_slice_1:output:0&SparseTensor_57/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:b
SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ш
SparseToDense_1SparseToDensePartitionedCall_1:output:0$SparseTensor_57/dense_shape:output:0PartitionedCall_1:output:1&SparseToDense_1/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_1SqueezeSparseToDense_1:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

(scale_to_z_score_1/mean_and_var/IdentityIdentity.scale_to_z_score_1_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_1/subSubSqueeze_1:output:01scale_to_z_score_1/mean_and_var/Identity:output:0*
T0*#
_output_shapes
:џџџџџџџџџt
scale_to_z_score_1/zeros_like	ZerosLikescale_to_z_score_1/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ
*scale_to_z_score_1/mean_and_var/Identity_1Identity0scale_to_z_score_1_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_1/SqrtSqrt3scale_to_z_score_1/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: b
scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_z_score_1/NotEqualNotEqualscale_to_z_score_1/Sqrt:y:0&scale_to_z_score_1/NotEqual/y:output:0*
T0*
_output_shapes
: p
scale_to_z_score_1/CastCastscale_to_z_score_1/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_1/addAddV2!scale_to_z_score_1/zeros_like:y:0scale_to_z_score_1/Cast:y:0*
T0*#
_output_shapes
:џџџџџџџџџz
scale_to_z_score_1/Cast_1Castscale_to_z_score_1/add:z:0*

DstT0
*

SrcT0*#
_output_shapes
:џџџџџџџџџ
scale_to_z_score_1/truedivRealDivscale_to_z_score_1/sub:z:0scale_to_z_score_1/Sqrt:y:0*
T0*#
_output_shapes
:џџџџџџџџџА
scale_to_z_score_1/SelectV2SelectV2scale_to_z_score_1/Cast_1:y:0scale_to_z_score_1/truediv:z:0scale_to_z_score_1/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџq

Identity_5Identity$scale_to_z_score_1/SelectV2:output:0^NoOp*
T0*#
_output_shapes
:џџџџџџџџџЋ
=compute_and_apply_vocabulary/apply_vocab/None_Lookup/NotEqualNotEqual[compute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2:values:0`compute_and_apply_vocabulary_apply_vocab_none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*
_output_shapes
:І
@compute_and_apply_vocabulary/apply_vocab/None_Lookup/hash_bucketStringToHashBucketFastSqueeze_3:output:0*#
_output_shapes
:џџџџџџџџџ*
num_buckets

8compute_and_apply_vocabulary/apply_vocab/None_Lookup/AddAddV2Icompute_and_apply_vocabulary/apply_vocab/None_Lookup/hash_bucket:output:0Wcompute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	*#
_output_shapes
:џџџџџџџџџЪ
=compute_and_apply_vocabulary/apply_vocab/None_Lookup/SelectV2SelectV2Acompute_and_apply_vocabulary/apply_vocab/None_Lookup/NotEqual:z:0[compute_and_apply_vocabulary/apply_vocab/None_Lookup/None_Lookup/LookupTableFindV2:values:0<compute_and_apply_vocabulary/apply_vocab/None_Lookup/Add:z:0*
T0	*
_output_shapes
:

Identity_6IdentityFcompute_and_apply_vocabulary/apply_vocab/None_Lookup/SelectV2:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџW
inputs_21_copyIdentity	inputs_21*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_23_copyIdentity	inputs_23*
T0	*
_output_shapes
:`
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_slice_12StridedSliceinputs_23_copy:output:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_69/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_69/dense_shapePackstrided_slice_12:output:0&SparseTensor_69/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_22_copyIdentity	inputs_22*
T0	*#
_output_shapes
:џџџџџџџџџ`
SparseToDense_12/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ф
SparseToDense_12SparseToDenseinputs_21_copy:output:0$SparseTensor_69/dense_shape:output:0inputs_22_copy:output:0'SparseToDense_12/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_12SqueezeSparseToDense_12:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
`

Identity_7IdentitySqueeze_12:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџW
inputs_24_copyIdentity	inputs_24*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_26_copyIdentity	inputs_26*
T0	*
_output_shapes
:`
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_slice_14StridedSliceinputs_26_copy:output:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_71/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_71/dense_shapePackstrided_slice_14:output:0&SparseTensor_71/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_25_copyIdentity	inputs_25*
T0	*#
_output_shapes
:џџџџџџџџџ`
SparseToDense_14/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ф
SparseToDense_14SparseToDenseinputs_24_copy:output:0$SparseTensor_71/dense_shape:output:0inputs_25_copy:output:0'SparseToDense_14/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_14SqueezeSparseToDense_14:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
`

Identity_8IdentitySqueeze_14:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџu
bucketize/quantiles/IdentityIdentity"bucketize_quantiles_identity_input*
T0*
_output_shapes

:	
6bucketize/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџШ
0bucketize/apply_buckets/assign_buckets/Reshape_1Reshape%bucketize/quantiles/Identity:output:0?bucketize/apply_buckets/assign_buckets/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
8bucketize/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
<bucketize/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	
:bucketize/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
<bucketize/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<bucketize/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
4bucketize/apply_buckets/assign_buckets/strided_sliceStridedSliceEbucketize/apply_buckets/assign_buckets/Shape/shape_as_tensor:output:0Cbucketize/apply_buckets/assign_buckets/strided_slice/stack:output:0Ebucketize/apply_buckets/assign_buckets/strided_slice/stack_1:output:0Ebucketize/apply_buckets/assign_buckets/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskю
6bucketize/apply_buckets/assign_buckets/Reshape_2/shapePackAbucketize/apply_buckets/assign_buckets/Reshape_2/shape/0:output:0=bucketize/apply_buckets/assign_buckets/strided_slice:output:0*
N*
T0*
_output_shapes
:р
0bucketize/apply_buckets/assign_buckets/Reshape_2Reshape9bucketize/apply_buckets/assign_buckets/Reshape_1:output:0?bucketize/apply_buckets/assign_buckets/Reshape_2/shape:output:0*
T0*
_output_shapes

:	
8bucketize/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџW
inputs_27_copyIdentity	inputs_27*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_29_copyIdentity	inputs_29*
T0	*
_output_shapes
:_
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_5StridedSliceinputs_29_copy:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_62/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_62/dense_shapePackstrided_slice_5:output:0&SparseTensor_62/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_28_copyIdentity	inputs_28*
T0*#
_output_shapes
:џџџџџџџџџb
SparseToDense_5/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    т
SparseToDense_5SparseToDenseinputs_27_copy:output:0$SparseTensor_62/dense_shape:output:0inputs_28_copy:output:0&SparseToDense_5/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_5SqueezeSparseToDense_5:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

4bucketize/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџК
.bucketize/apply_buckets/assign_buckets/ReshapeReshapeSqueeze_5:output:0=bucketize/apply_buckets/assign_buckets/Reshape/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ
.bucketize/apply_buckets/assign_buckets/Shape_1Shape7bucketize/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:
<bucketize/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
>bucketize/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>bucketize/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6bucketize/apply_buckets/assign_buckets/strided_slice_1StridedSlice7bucketize/apply_buckets/assign_buckets/Shape_1:output:0Ebucketize/apply_buckets/assign_buckets/strided_slice_1/stack:output:0Gbucketize/apply_buckets/assign_buckets/strided_slice_1/stack_1:output:0Gbucketize/apply_buckets/assign_buckets/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask№
6bucketize/apply_buckets/assign_buckets/Reshape_3/shapePackAbucketize/apply_buckets/assign_buckets/Reshape_3/shape/0:output:0?bucketize/apply_buckets/assign_buckets/strided_slice_1:output:0*
N*
T0*
_output_shapes
:№
0bucketize/apply_buckets/assign_buckets/Reshape_3Reshape7bucketize/apply_buckets/assign_buckets/Reshape:output:0?bucketize/apply_buckets/assign_buckets/Reshape_3/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
1bucketize/apply_buckets/assign_buckets/UpperBound
UpperBound9bucketize/apply_buckets/assign_buckets/Reshape_2:output:09bucketize/apply_buckets/assign_buckets/Reshape_3:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
.bucketize/apply_buckets/assign_buckets/Shape_2Shape7bucketize/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:о
0bucketize/apply_buckets/assign_buckets/Reshape_4Reshape:bucketize/apply_buckets/assign_buckets/UpperBound:output:07bucketize/apply_buckets/assign_buckets/Shape_2:output:0*
T0	*#
_output_shapes
:џџџџџџџџџp
.bucketize/apply_buckets/assign_buckets/Shape_3ShapeSqueeze_5:output:0*
T0*
_output_shapes
:н
0bucketize/apply_buckets/assign_buckets/Reshape_5Reshape9bucketize/apply_buckets/assign_buckets/Reshape_4:output:07bucketize/apply_buckets/assign_buckets/Shape_3:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_9Identity9bucketize/apply_buckets/assign_buckets/Reshape_5:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџy
bucketize_1/quantiles/IdentityIdentity$bucketize_1_quantiles_identity_input*
T0*
_output_shapes

:	
8bucketize_1/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџЮ
2bucketize_1/apply_buckets/assign_buckets/Reshape_1Reshape'bucketize_1/quantiles/Identity:output:0Abucketize_1/apply_buckets/assign_buckets/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
:bucketize_1/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
>bucketize_1/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	
<bucketize_1/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
>bucketize_1/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>bucketize_1/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
6bucketize_1/apply_buckets/assign_buckets/strided_sliceStridedSliceGbucketize_1/apply_buckets/assign_buckets/Shape/shape_as_tensor:output:0Ebucketize_1/apply_buckets/assign_buckets/strided_slice/stack:output:0Gbucketize_1/apply_buckets/assign_buckets/strided_slice/stack_1:output:0Gbucketize_1/apply_buckets/assign_buckets/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
8bucketize_1/apply_buckets/assign_buckets/Reshape_2/shapePackCbucketize_1/apply_buckets/assign_buckets/Reshape_2/shape/0:output:0?bucketize_1/apply_buckets/assign_buckets/strided_slice:output:0*
N*
T0*
_output_shapes
:ц
2bucketize_1/apply_buckets/assign_buckets/Reshape_2Reshape;bucketize_1/apply_buckets/assign_buckets/Reshape_1:output:0Abucketize_1/apply_buckets/assign_buckets/Reshape_2/shape:output:0*
T0*
_output_shapes

:	
:bucketize_1/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџW
inputs_30_copyIdentity	inputs_30*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_32_copyIdentity	inputs_32*
T0	*
_output_shapes
:_
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_6StridedSliceinputs_32_copy:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_63/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_63/dense_shapePackstrided_slice_6:output:0&SparseTensor_63/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_31_copyIdentity	inputs_31*
T0*#
_output_shapes
:џџџџџџџџџb
SparseToDense_6/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    т
SparseToDense_6SparseToDenseinputs_30_copy:output:0$SparseTensor_63/dense_shape:output:0inputs_31_copy:output:0&SparseToDense_6/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_6SqueezeSparseToDense_6:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

6bucketize_1/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџО
0bucketize_1/apply_buckets/assign_buckets/ReshapeReshapeSqueeze_6:output:0?bucketize_1/apply_buckets/assign_buckets/Reshape/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ
0bucketize_1/apply_buckets/assign_buckets/Shape_1Shape9bucketize_1/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:
>bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
@bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
@bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ј
8bucketize_1/apply_buckets/assign_buckets/strided_slice_1StridedSlice9bucketize_1/apply_buckets/assign_buckets/Shape_1:output:0Gbucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack:output:0Ibucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_1:output:0Ibucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskі
8bucketize_1/apply_buckets/assign_buckets/Reshape_3/shapePackCbucketize_1/apply_buckets/assign_buckets/Reshape_3/shape/0:output:0Abucketize_1/apply_buckets/assign_buckets/strided_slice_1:output:0*
N*
T0*
_output_shapes
:і
2bucketize_1/apply_buckets/assign_buckets/Reshape_3Reshape9bucketize_1/apply_buckets/assign_buckets/Reshape:output:0Abucketize_1/apply_buckets/assign_buckets/Reshape_3/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
3bucketize_1/apply_buckets/assign_buckets/UpperBound
UpperBound;bucketize_1/apply_buckets/assign_buckets/Reshape_2:output:0;bucketize_1/apply_buckets/assign_buckets/Reshape_3:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
0bucketize_1/apply_buckets/assign_buckets/Shape_2Shape9bucketize_1/apply_buckets/assign_buckets/Reshape:output:0*
T0*
_output_shapes
:ф
2bucketize_1/apply_buckets/assign_buckets/Reshape_4Reshape<bucketize_1/apply_buckets/assign_buckets/UpperBound:output:09bucketize_1/apply_buckets/assign_buckets/Shape_2:output:0*
T0	*#
_output_shapes
:џџџџџџџџџr
0bucketize_1/apply_buckets/assign_buckets/Shape_3ShapeSqueeze_6:output:0*
T0*
_output_shapes
:у
2bucketize_1/apply_buckets/assign_buckets/Reshape_5Reshape;bucketize_1/apply_buckets/assign_buckets/Reshape_4:output:09bucketize_1/apply_buckets/assign_buckets/Shape_3:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Identity_10Identity;bucketize_1/apply_buckets/assign_buckets/Reshape_5:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџ`
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_slice_16StridedSliceinputs_17_copy:output:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_73/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_73/dense_shapePackstrided_slice_16:output:0&SparseTensor_73/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:c
SparseToDense_16/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ф
SparseToDense_16SparseToDenseinputs_15_copy:output:0$SparseTensor_73/dense_shape:output:0inputs_16_copy:output:0'SparseToDense_16/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_16SqueezeSparseToDense_16:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
Q
IsNanIsNanSqueeze_16:output:0*
T0*#
_output_shapes
:џџџџџџџџџZ

zeros_like	ZerosLikeSqueeze_16:output:0*
T0*#
_output_shapes
:џџџџџџџџџY
CastCastzeros_like:y:0*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџW
inputs_33_copyIdentity	inputs_33*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_35_copyIdentity	inputs_35*
T0	*
_output_shapes
:`
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_slice_17StridedSliceinputs_35_copy:output:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_74/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_74/dense_shapePackstrided_slice_17:output:0&SparseTensor_74/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_34_copyIdentity	inputs_34*
T0*#
_output_shapes
:џџџџџџџџџc
SparseToDense_17/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ф
SparseToDense_17SparseToDenseinputs_33_copy:output:0$SparseTensor_74/dense_shape:output:0inputs_34_copy:output:0'SparseToDense_17/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_17SqueezeSparseToDense_17:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>]
MulMulSqueeze_16:output:0Const:output:0*
T0*#
_output_shapes
:џџџџџџџџџ^
GreaterGreaterSqueeze_17:output:0Mul:z:0*
T0*#
_output_shapes
:џџџџџџџџџX
Cast_1CastGreater:z:0*

DstT0	*

SrcT0
*#
_output_shapes
:џџџџџџџџџ_
SelectSelect	IsNan:y:0Cast:y:0
Cast_1:y:0*
T0	*#
_output_shapes
:џџџџџџџџџ]
Identity_11IdentitySelect:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџW
inputs_36_copyIdentity	inputs_36*
T0	*'
_output_shapes
:џџџџџџџџџS
inputs_37_copyIdentity	inputs_37*
T0*#
_output_shapes
:џџџџџџџџџJ
inputs_38_copyIdentity	inputs_38*
T0	*
_output_shapes
:Ц
PartitionedCallPartitionedCallinputs_36_copy:output:0inputs_37_copy:output:0inputs_38_copy:output:0*
Tin
2		*
Tout
2		*
_collective_manager_ids
 * 
_output_shapes
:::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *$
fR
__inference__identity_94452]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
strided_sliceStridedSlicePartitionedCall:output:2strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
shrink_axis_mask_
SparseTensor_55/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_55/dense_shapePackstrided_slice:output:0&SparseTensor_55/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:`
SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    р
SparseToDenseSparseToDensePartitionedCall:output:0$SparseTensor_55/dense_shape:output:0PartitionedCall:output:1$SparseToDense/default_value:output:0*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџn
SqueezeSqueezeSparseToDense:dense:0*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

&scale_to_z_score/mean_and_var/IdentityIdentity,scale_to_z_score_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score/subSubSqueeze:output:0/scale_to_z_score/mean_and_var/Identity:output:0*
T0*#
_output_shapes
:џџџџџџџџџp
scale_to_z_score/zeros_like	ZerosLikescale_to_z_score/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ
(scale_to_z_score/mean_and_var/Identity_1Identity.scale_to_z_score_mean_and_var_identity_1_input*
T0*
_output_shapes
: q
scale_to_z_score/SqrtSqrt1scale_to_z_score/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: `
scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_z_score/NotEqualNotEqualscale_to_z_score/Sqrt:y:0$scale_to_z_score/NotEqual/y:output:0*
T0*
_output_shapes
: l
scale_to_z_score/CastCastscale_to_z_score/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score/addAddV2scale_to_z_score/zeros_like:y:0scale_to_z_score/Cast:y:0*
T0*#
_output_shapes
:џџџџџџџџџv
scale_to_z_score/Cast_1Castscale_to_z_score/add:z:0*

DstT0
*

SrcT0*#
_output_shapes
:џџџџџџџџџ
scale_to_z_score/truedivRealDivscale_to_z_score/sub:z:0scale_to_z_score/Sqrt:y:0*
T0*#
_output_shapes
:џџџџџџџџџЈ
scale_to_z_score/SelectV2SelectV2scale_to_z_score/Cast_1:y:0scale_to_z_score/truediv:z:0scale_to_z_score/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџp
Identity_12Identity"scale_to_z_score/SelectV2:output:0^NoOp*
T0*#
_output_shapes
:џџџџџџџџџW
inputs_39_copyIdentity	inputs_39*
T0	*'
_output_shapes
:џџџџџџџџџS
inputs_40_copyIdentity	inputs_40*
T0	*#
_output_shapes
:џџџџџџџџџJ
inputs_41_copyIdentity	inputs_41*
T0	*
_output_shapes
:Ш
PartitionedCall_2PartitionedCallinputs_39_copy:output:0inputs_40_copy:output:0inputs_41_copy:output:0*
Tin
2			*
Tout
2			*
_collective_manager_ids
 * 
_output_shapes
:::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *$
fR
__inference__identity_94373_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
strided_slice_2StridedSlicePartitionedCall_2:output:2strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
shrink_axis_mask_
SparseTensor_59/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_59/dense_shapePackstrided_slice_2:output:0&SparseTensor_59/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:_
SparseToDense_2/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ш
SparseToDense_2SparseToDensePartitionedCall_2:output:0$SparseTensor_59/dense_shape:output:0PartitionedCall_2:output:1&SparseToDense_2/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_2SqueezeSparseToDense_2:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
p
scale_to_z_score_2/CastCastSqueeze_2:output:0*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
(scale_to_z_score_2/mean_and_var/IdentityIdentity.scale_to_z_score_2_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_2/subSubscale_to_z_score_2/Cast:y:01scale_to_z_score_2/mean_and_var/Identity:output:0*
T0*#
_output_shapes
:џџџџџџџџџt
scale_to_z_score_2/zeros_like	ZerosLikescale_to_z_score_2/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ
*scale_to_z_score_2/mean_and_var/Identity_1Identity0scale_to_z_score_2_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_2/SqrtSqrt3scale_to_z_score_2/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: b
scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_z_score_2/NotEqualNotEqualscale_to_z_score_2/Sqrt:y:0&scale_to_z_score_2/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_2/Cast_1Castscale_to_z_score_2/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_2/addAddV2!scale_to_z_score_2/zeros_like:y:0scale_to_z_score_2/Cast_1:y:0*
T0*#
_output_shapes
:џџџџџџџџџz
scale_to_z_score_2/Cast_2Castscale_to_z_score_2/add:z:0*

DstT0
*

SrcT0*#
_output_shapes
:џџџџџџџџџ
scale_to_z_score_2/truedivRealDivscale_to_z_score_2/sub:z:0scale_to_z_score_2/Sqrt:y:0*
T0*#
_output_shapes
:џџџџџџџџџА
scale_to_z_score_2/SelectV2SelectV2scale_to_z_score_2/Cast_2:y:0scale_to_z_score_2/truediv:z:0scale_to_z_score_2/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџr
Identity_13Identity$scale_to_z_score_2/SelectV2:output:0^NoOp*
T0*#
_output_shapes
:џџџџџџџџџW
inputs_42_copyIdentity	inputs_42*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_44_copyIdentity	inputs_44*
T0	*
_output_shapes
:`
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_slice_10StridedSliceinputs_44_copy:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_67/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_67/dense_shapePackstrided_slice_10:output:0&SparseTensor_67/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_43_copyIdentity	inputs_43*
T0	*#
_output_shapes
:џџџџџџџџџ`
SparseToDense_10/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ф
SparseToDense_10SparseToDenseinputs_42_copy:output:0$SparseTensor_67/dense_shape:output:0inputs_43_copy:output:0'SparseToDense_10/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_10SqueezeSparseToDense_10:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
a
Identity_14IdentitySqueeze_10:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџW
inputs_45_copyIdentity	inputs_45*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_47_copyIdentity	inputs_47*
T0	*
_output_shapes
:_
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_9StridedSliceinputs_47_copy:output:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_66/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_66/dense_shapePackstrided_slice_9:output:0&SparseTensor_66/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_46_copyIdentity	inputs_46*
T0	*#
_output_shapes
:џџџџџџџџџ_
SparseToDense_9/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R т
SparseToDense_9SparseToDenseinputs_45_copy:output:0$SparseTensor_66/dense_shape:output:0inputs_46_copy:output:0&SparseToDense_9/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџr
	Squeeze_9SqueezeSparseToDense_9:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
`
Identity_15IdentitySqueeze_9:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџW
inputs_48_copyIdentity	inputs_48*
T0	*'
_output_shapes
:џџџџџџџџџJ
inputs_50_copyIdentity	inputs_50*
T0	*
_output_shapes
:`
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_slice_11StridedSliceinputs_50_copy:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask_
SparseTensor_68/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
SparseTensor_68/dense_shapePackstrided_slice_11:output:0&SparseTensor_68/dense_shape/1:output:0*
N*
T0	*
_output_shapes
:S
inputs_49_copyIdentity	inputs_49*
T0	*#
_output_shapes
:џџџџџџџџџ`
SparseToDense_11/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ф
SparseToDense_11SparseToDenseinputs_48_copy:output:0$SparseTensor_68/dense_shape:output:0inputs_49_copy:output:0'SparseToDense_11/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџt

Squeeze_11SqueezeSparseToDense_11:dense:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
a
Identity_16IdentitySqueeze_11:output:0^NoOp*
T0	*#
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*­
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ::џџџџџџџџџ:џџџџџџџџџ:: : : : : : : : : : : : : : : : :	:	:	:	:- )
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-	)
'
_output_shapes
:џџџџџџџџџ:)
%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ:)%
#
_output_shapes
:џџџџџџџџџ:  

_output_shapes
::-!)
'
_output_shapes
:џџџџџџџџџ:)"%
#
_output_shapes
:џџџџџџџџџ: #

_output_shapes
::-$)
'
_output_shapes
:џџџџџџџџџ:)%%
#
_output_shapes
:џџџџџџџџџ: &

_output_shapes
::-')
'
_output_shapes
:џџџџџџџџџ:)(%
#
_output_shapes
:џџџџџџџџџ: )

_output_shapes
::-*)
'
_output_shapes
:џџџџџџџџџ:)+%
#
_output_shapes
:џџџџџџџџџ: ,

_output_shapes
::--)
'
_output_shapes
:џџџџџџџџџ:).%
#
_output_shapes
:џџџџџџџџџ: /

_output_shapes
::-0)
'
_output_shapes
:џџџџџџџџџ:)1%
#
_output_shapes
:џџџџџџџџџ: 2

_output_shapes
::-3)
'
_output_shapes
:џџџџџџџџџ:)4%
#
_output_shapes
:џџџџџџџџџ: 5

_output_shapes
::6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :$F 

_output_shapes

:	:$G 

_output_shapes

:	:$H 

_output_shapes

:	:$I 

_output_shapes

:	
Л
ў
$has_valid_nonscalar_shape_true_97849U
Qhas_invalid_dims_expanddims_broadcast_weights_9_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_9_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_9_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:
0has_invalid_dims/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      b
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :Б
has_invalid_dims/ones_likeFill9has_invalid_dims/ones_like/Shape/shape_as_tensor:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_9_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: T
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 

Р
Ucheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_97282H
Didentity_check_label_range_assert_non_negative_assert_less_equal_all

placeholder
identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityDidentity_check_label_range_assert_non_negative_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Ы

2assert_greater_equal_Assert_AssertGuard_true_97354%
!identity_assert_greater_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 _
IdentityIdentity!identity_assert_greater_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
ц
Ј
5assert_greater_equal_3_Assert_AssertGuard_false_97980%
!assert_assert_greater_equal_3_all
!
assert_predictions_1_logistic
assert_cast_28_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:m
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = `
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_28/x:0) = ы
AssertAssert!assert_assert_greater_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_28_x*
T

2*
_output_shapes
 a
IdentityIdentity!assert_assert_greater_equal_3_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
к
Ђ
2assert_less_equal_3_Assert_AssertGuard_false_98006"
assert_assert_less_equal_3_all
!
assert_predictions_1_logistic
assert_cast_29_x
identity
f
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:m
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = `
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_29/x:0) = ш
AssertAssertassert_assert_less_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_29_x*
T

2*
_output_shapes
 ^
IdentityIdentityassert_assert_less_equal_3_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 

Ѕ
%has_valid_nonscalar_shape_false_97850
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
Ш

1assert_less_equal_2_Assert_AssertGuard_true_97817$
 identity_assert_less_equal_2_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 ^
IdentityIdentity identity_assert_less_equal_2_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
ы
b
zero_fraction_cond_true_968017
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
б

4assert_greater_equal_1_Assert_AssertGuard_true_97465'
#identity_assert_greater_equal_1_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 a
IdentityIdentity#identity_assert_greater_equal_1_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: 
я
Т
Vcheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_97283F
Bassert_check_label_range_assert_non_negative_assert_less_equal_all

assert_cast
identity
d
Assert/data_0Const*
_output_shapes
: *
dtype0*'
valueB BLabels must be >= 0.  y
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:[
Assert/data_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = Ю
AssertAssertBassert_check_label_range_assert_non_negative_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast*
T
2*
_output_shapes
 
IdentityIdentityBassert_check_label_range_assert_non_negative_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
т
н
#dnn_zero_fraction_1_cond_true_953821
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџFw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџFd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :ъшв
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :ъшШ
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :ъшЯ"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџF:- )
'
_output_shapes
:џџџџџџџџџF
ж
z
zero_fraction_cond_false_966737
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes
:	ђd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	ђ:% !

_output_shapes
:	ђ
я
b
zero_fraction_cond_true_965437
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	ђd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes
:	ђ:% !

_output_shapes
:	ђ
в
z
zero_fraction_cond_false_967167
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

Ў
Ч
1zero_fraction_total_zero_zero_count_6_false_96792\
Jzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights:(
$cast_zero_fraction_total_size_size_6	
mulЇ
zero_fraction/ReadVariableOpReadVariableOpJzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: х
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_96802*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_96801e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_6*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
Ъ
ё
Dbroadcast_weights_11_assert_broadcastable_is_valid_shape_false_98030
placeholder
`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_values_ranka
]has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_weights_rankT
Phas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_values_shapeU
Qhas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_values_rank]has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_weights_rank*
T0*
_output_shapes
: Ж
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Phas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_values_shapeQhas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_98038*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_98037s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
ы
b
zero_fraction_cond_true_965867
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

Й

Cbroadcast_weights_11_assert_broadcastable_is_valid_shape_true_980299
5broadcast_weights_11_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_37
3broadcast_weights_11_assert_broadcastable_is_scalar
"l
3broadcast_weights_11_assert_broadcastable_is_scalar5broadcast_weights_11_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
Ї
Т
__inference__initializer_94432!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityЂ,text_file_init/InitializeTableFromTextFileV2ѓ
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџG
ConstConst*
_output_shapes
: *
dtype0*
value	B :u
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*"
_acd_function_control_output(*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
С
ь
Cbroadcast_weights_9_assert_broadcastable_is_valid_shape_false_97842
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_weights_rank*
T0*
_output_shapes
: Д
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_97850*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_97849s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
с
:
__inference__creator_94365
identityЂ
hash_tableў

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nameљіhash_table_tf.Tensor(b'/usr/local/google/home/jiyongjung/tfx-dev/t20220228/output/test_do_with_module_file/transformed_graph/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary', shape=(), dtype=string)_-2_-1_load_94360_94361*
use_node_name_sharing(*
value_dtype0	S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Й
asset_filepathsЅ
Ђ
%transform_features_layer/asset_path:0
'transform_features_layer/asset_path_1:0
'transform_features_layer/asset_path_2:0
'transform_features_layer/asset_path_3:0"v
'evaluation_only/label_graph/example_refK*I
G
)type.googleapis.com/tensorflow.TensorInfo
range:0џџџџџџџџџ"
(evaluation_only/label_graph/features/keyхт
$Bytes$company
$Bytes$dropoff_census_tract
$Bytes$dropoff_community_area
$Bytes$dropoff_latitude
$Bytes$dropoff_longitude
$Bytes$fare
$Bytes$payment_type
$Bytes$pickup_census_tract
$Bytes$pickup_community_area
$Bytes$pickup_latitude
$Bytes$pickup_longitude
$Bytes$tips
$Bytes$trip_miles
$Bytes$trip_seconds
$Bytes$trip_start_day
$Bytes$trip_start_hour
$Bytes$trip_start_month
$Bytes$trip_start_timestamp
$Bytes$trip_miles_xf
$Bytes$dropoff_longitude_xf
$Bytes$dropoff_latitude_xf
$Bytes$trip_seconds_xf
$Bytes$company_xf
$Bytes$tips_xf
$Bytes$trip_start_month_xf
$Bytes$payment_type_xf
$Bytes$pickup_census_tract_xf
$Bytes$pickup_latitude_xf
 $Bytes$dropoff_community_area_xf
$Bytes$trip_start_hour_xf
$Bytes$pickup_longitude_xf
$Bytes$dropoff_census_tract_xf
$Bytes$pickup_community_area_xf
$Bytes$trip_start_day_xf
$Bytes$fare_xf"ь(
)evaluation_only/label_graph/features/nodeО(*Л(
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:0ParseExample/ParseExampleV2:36
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:37
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:38
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:39
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:40
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:41
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:42
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:43
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:44
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:45
Ў
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:46
Ў
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:47
Ў
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:48
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:49
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:50
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:51
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:52
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:53
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:12џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:4	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:3	џџџџџџџџџ
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:13џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:0	џџџџџџџџџ
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:11	џџџџџџџџџ
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:16	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:6	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:7	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:9	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:2	џџџџџџџџџ
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:15	џџџџџџџџџ
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:10	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:1	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:8	џџџџџџџџџ
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:14	џџџџџџџџџ
t
)type.googleapis.com/tensorflow.TensorInfoG
4transform_features_layer/StatefulPartitionedCall_6:5џџџџџџџџџ"=
&evaluation_only/label_graph/labels/key
$Bytes$__labels"Є
'evaluation_only/label_graph/labels/nodey*w
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform_features_layer/StatefulPartitionedCall_6:11	џџџџџџџџџ"3
%evaluation_only/metadata/tfma_version

0.37.0"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"П
local_variablesЋЈ

head/metrics/count_3:0head/metrics/count_3/Assign*head/metrics/count_3/Read/ReadVariableOp:0(2(head/metrics/count_3/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_1:0%head/metrics/false_negatives_1/Assign4head/metrics/false_negatives_1/Read/ReadVariableOp:0(22head/metrics/false_negatives_1/Initializer/zeros:0@H
­
head/metrics/true_negatives:0"head/metrics/true_negatives/Assign1head/metrics/true_negatives/Read/ReadVariableOp:0(2/head/metrics/true_negatives/Initializer/zeros:0@H
Й
 head/metrics/false_positives_2:0%head/metrics/false_positives_2/Assign4head/metrics/false_positives_2/Read/ReadVariableOp:0(22head/metrics/false_positives_2/Initializer/zeros:0@H

head/metrics/count:0head/metrics/count/Assign(head/metrics/count/Read/ReadVariableOp:0(2&head/metrics/count/Initializer/zeros:0@H
­
head/metrics/true_positives:0"head/metrics/true_positives/Assign1head/metrics/true_positives/Read/ReadVariableOp:0(2/head/metrics/true_positives/Initializer/zeros:0@H

head/metrics/count_1:0head/metrics/count_1/Assign*head/metrics/count_1/Read/ReadVariableOp:0(2(head/metrics/count_1/Initializer/zeros:0@H
Б
head/metrics/false_negatives:0#head/metrics/false_negatives/Assign2head/metrics/false_negatives/Read/ReadVariableOp:0(20head/metrics/false_negatives/Initializer/zeros:0@H

head/metrics/total_2:0head/metrics/total_2/Assign*head/metrics/total_2/Read/ReadVariableOp:0(2(head/metrics/total_2/Initializer/zeros:0@H
Й
 head/metrics/false_positives_1:0%head/metrics/false_positives_1/Assign4head/metrics/false_positives_1/Read/ReadVariableOp:0(22head/metrics/false_positives_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_2:0$head/metrics/true_positives_2/Assign3head/metrics/true_positives_2/Read/ReadVariableOp:0(21head/metrics/true_positives_2/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_2:0%head/metrics/false_negatives_2/Assign4head/metrics/false_negatives_2/Read/ReadVariableOp:0(22head/metrics/false_negatives_2/Initializer/zeros:0@H

head/metrics/total_3:0head/metrics/total_3/Assign*head/metrics/total_3/Read/ReadVariableOp:0(2(head/metrics/total_3/Initializer/zeros:0@H
Е
head/metrics/true_negatives_1:0$head/metrics/true_negatives_1/Assign3head/metrics/true_negatives_1/Read/ReadVariableOp:0(21head/metrics/true_negatives_1/Initializer/zeros:0@H
Б
head/metrics/false_positives:0#head/metrics/false_positives/Assign2head/metrics/false_positives/Read/ReadVariableOp:0(20head/metrics/false_positives/Initializer/zeros:0@H

head/metrics/total_1:0head/metrics/total_1/Assign*head/metrics/total_1/Read/ReadVariableOp:0(2(head/metrics/total_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_1:0$head/metrics/true_positives_1/Assign3head/metrics/true_positives_1/Read/ReadVariableOp:0(21head/metrics/true_positives_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_3:0$head/metrics/true_positives_3/Assign3head/metrics/true_positives_3/Read/ReadVariableOp:0(21head/metrics/true_positives_3/Initializer/zeros:0@H

head/metrics/count_2:0head/metrics/count_2/Assign*head/metrics/count_2/Read/ReadVariableOp:0(2(head/metrics/count_2/Initializer/zeros:0@H

head/metrics/total:0head/metrics/total/Assign(head/metrics/total/Read/ReadVariableOp:0(2&head/metrics/total/Initializer/zeros:0@H"Р
metric_variablesЋЈ

head/metrics/count_3:0head/metrics/count_3/Assign*head/metrics/count_3/Read/ReadVariableOp:0(2(head/metrics/count_3/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_1:0%head/metrics/false_negatives_1/Assign4head/metrics/false_negatives_1/Read/ReadVariableOp:0(22head/metrics/false_negatives_1/Initializer/zeros:0@H
­
head/metrics/true_negatives:0"head/metrics/true_negatives/Assign1head/metrics/true_negatives/Read/ReadVariableOp:0(2/head/metrics/true_negatives/Initializer/zeros:0@H
Й
 head/metrics/false_positives_2:0%head/metrics/false_positives_2/Assign4head/metrics/false_positives_2/Read/ReadVariableOp:0(22head/metrics/false_positives_2/Initializer/zeros:0@H

head/metrics/count:0head/metrics/count/Assign(head/metrics/count/Read/ReadVariableOp:0(2&head/metrics/count/Initializer/zeros:0@H
­
head/metrics/true_positives:0"head/metrics/true_positives/Assign1head/metrics/true_positives/Read/ReadVariableOp:0(2/head/metrics/true_positives/Initializer/zeros:0@H

head/metrics/count_1:0head/metrics/count_1/Assign*head/metrics/count_1/Read/ReadVariableOp:0(2(head/metrics/count_1/Initializer/zeros:0@H
Б
head/metrics/false_negatives:0#head/metrics/false_negatives/Assign2head/metrics/false_negatives/Read/ReadVariableOp:0(20head/metrics/false_negatives/Initializer/zeros:0@H

head/metrics/total_2:0head/metrics/total_2/Assign*head/metrics/total_2/Read/ReadVariableOp:0(2(head/metrics/total_2/Initializer/zeros:0@H
Й
 head/metrics/false_positives_1:0%head/metrics/false_positives_1/Assign4head/metrics/false_positives_1/Read/ReadVariableOp:0(22head/metrics/false_positives_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_2:0$head/metrics/true_positives_2/Assign3head/metrics/true_positives_2/Read/ReadVariableOp:0(21head/metrics/true_positives_2/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_2:0%head/metrics/false_negatives_2/Assign4head/metrics/false_negatives_2/Read/ReadVariableOp:0(22head/metrics/false_negatives_2/Initializer/zeros:0@H

head/metrics/total_3:0head/metrics/total_3/Assign*head/metrics/total_3/Read/ReadVariableOp:0(2(head/metrics/total_3/Initializer/zeros:0@H
Е
head/metrics/true_negatives_1:0$head/metrics/true_negatives_1/Assign3head/metrics/true_negatives_1/Read/ReadVariableOp:0(21head/metrics/true_negatives_1/Initializer/zeros:0@H
Б
head/metrics/false_positives:0#head/metrics/false_positives/Assign2head/metrics/false_positives/Read/ReadVariableOp:0(20head/metrics/false_positives/Initializer/zeros:0@H

head/metrics/total_1:0head/metrics/total_1/Assign*head/metrics/total_1/Read/ReadVariableOp:0(2(head/metrics/total_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_1:0$head/metrics/true_positives_1/Assign3head/metrics/true_positives_1/Read/ReadVariableOp:0(21head/metrics/true_positives_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_3:0$head/metrics/true_positives_3/Assign3head/metrics/true_positives_3/Read/ReadVariableOp:0(21head/metrics/true_positives_3/Initializer/zeros:0@H

head/metrics/count_2:0head/metrics/count_2/Assign*head/metrics/count_2/Read/ReadVariableOp:0(2(head/metrics/count_2/Initializer/zeros:0@H

head/metrics/total:0head/metrics/total/Assign(head/metrics/total/Read/ReadVariableOp:0(2&head/metrics/total/Initializer/zeros:0@H"Ь
saved_model_assetsЕ*В

+type.googleapis.com/tensorflow.AssetFileDefZ
'
%transform_features_layer/asset_path:0/vocab_compute_and_apply_vocabulary_1_vocabulary

+type.googleapis.com/tensorflow.AssetFileDefZ
)
'transform_features_layer/asset_path_1:0-vocab_compute_and_apply_vocabulary_vocabulary

+type.googleapis.com/tensorflow.AssetFileDef\
)
'transform_features_layer/asset_path_2:0/vocab_compute_and_apply_vocabulary_1_vocabulary

+type.googleapis.com/tensorflow.AssetFileDefZ
)
'transform_features_layer/asset_path_3:0-vocab_compute_and_apply_vocabulary_vocabulary"'
saved_model_main_op

group_deps_4"п
	summariesб
Ю
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
+dnn/hiddenlayer_2/fraction_of_zero_values:0
dnn/hiddenlayer_2/activation:0
+dnn/hiddenlayer_3/fraction_of_zero_values:0
dnn/hiddenlayer_3/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0
bias:0
fraction_of_zero_weights:0
 linear/fraction_of_zero_values:0
linear/activation:0"ё
table_initializerл
и
4transform_features_layer/StatefulPartitionedCall_2:0
4transform_features_layer/StatefulPartitionedCall_3:0
4transform_features_layer/StatefulPartitionedCall_4:0
4transform_features_layer/StatefulPartitionedCall_5:0"Ћ
trainable_variables
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
з
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
џ
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
ы
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
ѓ
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
П
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08" 
	variables §
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
з
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
џ
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
ы
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
ѓ
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
П
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08*Т2
evalЙ2

features/companyџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:0ParseExample/ParseExampleV2:36
^
features/company_xfG
4transform_features_layer/StatefulPartitionedCall_6:0	џџџџџџџџџ
 
features/dropoff_census_tract	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:37
k
 features/dropoff_census_tract_xfG
4transform_features_layer/StatefulPartitionedCall_6:1	џџџџџџџџџ
Ђ
features/dropoff_community_area	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:38
m
"features/dropoff_community_area_xfG
4transform_features_layer/StatefulPartitionedCall_6:2	џџџџџџџџџ

features/dropoff_latitudeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:39
g
features/dropoff_latitude_xfG
4transform_features_layer/StatefulPartitionedCall_6:3	џџџџџџџџџ

features/dropoff_longitudeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:40
h
features/dropoff_longitude_xfG
4transform_features_layer/StatefulPartitionedCall_6:4	џџџџџџџџџ

features/fareџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:41
[
features/fare_xfG
4transform_features_layer/StatefulPartitionedCall_6:5џџџџџџџџџ

features/payment_typeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:42
c
features/payment_type_xfG
4transform_features_layer/StatefulPartitionedCall_6:6	џџџџџџџџџ

features/pickup_census_tract	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:43
j
features/pickup_census_tract_xfG
4transform_features_layer/StatefulPartitionedCall_6:7	џџџџџџџџџ
Ё
features/pickup_community_area	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:44
l
!features/pickup_community_area_xfG
4transform_features_layer/StatefulPartitionedCall_6:8	џџџџџџџџџ

features/pickup_latitudeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:45
f
features/pickup_latitude_xfG
4transform_features_layer/StatefulPartitionedCall_6:9	џџџџџџџџџ

features/pickup_longitudeџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:46
h
features/pickup_longitude_xfH
5transform_features_layer/StatefulPartitionedCall_6:10	џџџџџџџџџ

features/tipsџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:47
\
features/tips_xfH
5transform_features_layer/StatefulPartitionedCall_6:11	џџџџџџџџџ

features/trip_milesџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:48
b
features/trip_miles_xfH
5transform_features_layer/StatefulPartitionedCall_6:12џџџџџџџџџ

features/trip_seconds	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:49
d
features/trip_seconds_xfH
5transform_features_layer/StatefulPartitionedCall_6:13џџџџџџџџџ

features/trip_start_day	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:50
f
features/trip_start_day_xfH
5transform_features_layer/StatefulPartitionedCall_6:14	џџџџџџџџџ

features/trip_start_hour	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:51
g
features/trip_start_hour_xfH
5transform_features_layer/StatefulPartitionedCall_6:15	џџџџџџџџџ

features/trip_start_month	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:52
h
features/trip_start_month_xfH
5transform_features_layer/StatefulPartitionedCall_6:16	џџџџџџџџџ
Ђ
features/trip_start_timestamp	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:53
(

input_refs
range:0џџџџџџџџџ
<
inputs/examples)
input_example_tensor:0џџџџџџџџџ
R
labelsH
5transform_features_layer/StatefulPartitionedCall_6:11	џџџџџџџџџ

tfma/version
Const:0 /
loss'
!head/losses/weighted_loss/value:0 ;
metrics/accuracy/update_op
metric_op_wrapper_1:0 -
metrics/accuracy/value
Identity_82:0 D
#metrics/accuracy_baseline/update_op
metric_op_wrapper_6:0 6
metrics/accuracy_baseline/value
Identity_87:0 6
metrics/auc/update_op
metric_op_wrapper_7:0 (
metrics/auc/value
Identity_88:0 G
&metrics/auc_precision_recall/update_op
metric_op_wrapper_8:0 9
"metrics/auc_precision_recall/value
Identity_89:0 =
metrics/average_loss/update_op
metric_op_wrapper:0 1
metrics/average_loss/value
Identity_81:0 =
metrics/label/mean/update_op
metric_op_wrapper_5:0 /
metrics/label/mean/value
Identity_86:0 <
metrics/precision/update_op
metric_op_wrapper_2:0 .
metrics/precision/value
Identity_83:0 B
!metrics/prediction/mean/update_op
metric_op_wrapper_4:0 4
metrics/prediction/mean/value
Identity_85:0 9
metrics/recall/update_op
metric_op_wrapper_3:0 +
metrics/recall/value
Identity_84:0 K
predictions/all_class_ids.
head/predictions/Tile:0џџџџџџџџџK
predictions/all_classes0
head/predictions/Tile_1:0џџџџџџџџџM
predictions/class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџL
predictions/classes5
head/predictions/str_classes:0џџџџџџџџџJ
predictions/logistic2
head/predictions/logistic:0џџџџџџџџџ2
predictions/logits
add:0џџџџџџџџџT
predictions/probabilities7
 head/predictions/probabilities:0џџџџџџџџџtensorflow/supervised/eval