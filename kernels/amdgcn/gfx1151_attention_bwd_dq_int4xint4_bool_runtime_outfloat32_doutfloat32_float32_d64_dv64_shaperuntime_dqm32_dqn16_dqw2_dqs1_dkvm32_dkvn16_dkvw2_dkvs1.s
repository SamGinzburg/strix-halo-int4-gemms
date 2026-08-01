	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b64 s[46:47], s[0:1], 0x78
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v92, 5, v0
	v_and_b32_e32 v81, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x110, v0
	s_load_b128 s[40:43], s[0:1], 0x38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v60, 2, v92
	v_or_b32_e32 v61, 4, v92
	v_or_b32_e32 v62, 6, v92
	v_or_b32_e32 v63, 8, v92
	v_or_b32_e32 v64, 10, v92
	v_or_b32_e32 v65, 12, v92
	v_or_b32_e32 v66, 14, v92
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v95, 0, v20
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v97, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s50, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[46:47], null, s46, v92, v[81:82]
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s54, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[47:48], null, s46, 6, v[46:47]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s54, v60
	v_or_b32_e32 v3, s54, v61
	v_or_b32_e32 v4, s54, v62
	v_or_b32_e32 v5, s54, v63
	v_or_b32_e32 v6, s54, v64
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v67, s46, 1, v46
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s54, v66
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v68, s46, 2, v46
	v_lshl_add_u32 v69, s46, 3, v46
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[48:49], null, s46, 10, v[46:47]
	v_mad_u64_u32 v[49:50], null, s46, 12, v[46:47]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[50:51], null, s46, 14, v[46:47]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s5
	s_xor_b32 s5, s3, s28
	s_mul_i32 s6, s2, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s7, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s29
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s7, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s9, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s19, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s19, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s28, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s46, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s54, v92
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	v_or_b32_e32 v10, 18, v1
	v_or_b32_e32 v11, 20, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v12, 22, v1
	v_or_b32_e32 v13, 24, v1
	v_or_b32_e32 v14, 26, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v15, 28, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s5, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s5, s6
	s_sub_i32 s3, s4, s8
	s_add_i32 s4, s5, 1
	s_sub_i32 s7, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s4, s4, s5
	s_cselect_b32 s3, s7, s3
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s3, s5, s4
	.loc	1 123 19 is_stmt 0              ; attention_backward.py:123:19
	s_abs_i32 s48, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s54, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s52, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s54, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s49, s52
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s54, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s49
	s_sub_i32 s55, 0, s49
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s54, 4
	s_or_b32 s8, s54, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v7, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s54, 6
	s_or_b32 s3, s54, 7
	s_or_b32 s10, s54, 8
	s_or_b32 s12, s54, 9
	s_or_b32 s13, s54, 10
	s_or_b32 s14, s54, 11
	s_or_b32 s11, s54, 12
	s_or_b32 s15, s54, 13
	s_or_b32 s16, s54, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s34, v7
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s17, s54, 15
	s_or_b32 s26, s54, 16
	s_or_b32 s27, s54, 17
	s_or_b32 s35, s54, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s34, s34, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s38, s54, 19
	s_or_b32 s39, s54, 20
	s_or_b32 s44, s54, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s34, s34
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s45, s54, 22
	s_or_b32 s51, s54, 23
	s_or_b32 s53, s54, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s55, s55, s34
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s54, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s55, s34, s55
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s69, s54, 26
	s_or_b32 s82, s54, 27
	s_or_b32 s83, s54, 28
	s_or_b32 s84, s54, 29
	s_or_b32 s85, s54, 30
	s_or_b32 s86, s54, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s34, s34, s55
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s54, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s54, v65
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s5, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s6, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s26, s30
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s35, s30
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s44, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s45, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s51, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s53, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s69, s30
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s35, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s50, s50, s54
	s_lshl_b32 s68, s46, 4
	s_mul_i32 s38, s50, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v1, s38, v46
	v_add_nc_u32_e32 v10, s38, v67
	v_add_nc_u32_e32 v11, s38, v68
	v_add_nc_u32_e32 v12, s38, v47
	v_add_nc_u32_e32 v13, s38, v69
	v_mad_u64_u32 v[2:3], null, s46, 18, v[1:2]
	v_add_nc_u32_e32 v17, s68, v1
	v_add_nc_u32_e32 v14, s38, v48
	v_add_nc_u32_e32 v15, s38, v49
	v_add_nc_u32_e32 v16, s38, v50
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[3:4], null, s46, 20, v[1:2]
	v_mad_u64_u32 v[4:5], null, s46, 22, v[1:2]
	v_mad_u64_u32 v[5:6], null, s46, 24, v[1:2]
	v_mad_u64_u32 v[6:7], null, s46, 26, v[1:2]
	v_mad_u64_u32 v[7:8], null, s46, 28, v[1:2]
	v_mad_u64_u32 v[8:9], null, s46, 30, v[1:2]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s47, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_lshl_b32 s4, s47, 5
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s69, s47, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x5
	buffer_load_u8 v14, v1, s[36:39], 0 offen
	buffer_load_u8 v9, v9, s[36:39], 0 offen
	buffer_load_u8 v10, v10, s[36:39], 0 offen
	buffer_load_u8 v11, v11, s[36:39], 0 offen
	buffer_load_u8 v12, v12, s[36:39], 0 offen
	buffer_load_u8 v13, v13, s[36:39], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v15, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v17, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x3
	buffer_load_u8 v15, v15, s[36:39], 0 offen
	buffer_load_u8 v17, v2, s[36:39], 0 offen
	buffer_load_u8 v18, v3, s[36:39], 0 offen
	buffer_load_u8 v4, v4, s[36:39], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	s_clause 0x5
	buffer_load_u8 v7, v2, s[36:39], 0 offen
	buffer_load_u8 v8, v3, s[36:39], 0 offen
	buffer_load_u8 v19, v1, s[36:39], 0 offen
	buffer_load_u8 v16, v16, s[36:39], 0 offen
	buffer_load_u8 v5, v5, s[36:39], 0 offen
	buffer_load_u8 v6, v6, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s50, s47, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v3, 0x88, v0
	v_xor_b32_e32 v2, 0x198, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v94, 0, v3
	v_add_nc_u32_e32 v96, 0, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s47, 9, v[1:2]
	v_add_nc_u32_e32 v20, s47, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v3, s47, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 2, v20
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s47, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 2, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v3
	v_cndmask_b32_e32 v35, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v36, 0x80000000, v20, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_nc_u32_e32 v1, s4, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s81, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s47, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v23, s47, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v37, 0x80000000, v1 :: v_dual_lshlrev_b32 v20, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v93, 0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v24, s47, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_nc_u32_e32 v1, s4, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v26, s47, v25
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v38, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v22
	v_lshlrev_b32_e32 v21, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v24
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s80, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(15)
	ds_store_b8 v93, v14
	s_waitcnt vmcnt(14)
	ds_store_b8 v93, v9 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v93, v15 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v93, v17 offset:576
	ds_store_b8 v94, v10
	ds_store_b8 v94, v11 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v94, v18 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v94, v4 offset:576
	ds_store_b8 v95, v12
	ds_store_b8 v95, v13 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v95, v7 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v95, v8 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v96, v19
	s_waitcnt vmcnt(2)
	ds_store_b8 v96, v16 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v96, v5 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v96, v6 offset:576
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v21, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s47, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 2, v22
	v_dual_cndmask_b32 v40, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s69, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v41, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 2, v23
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v27, s47, v25
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s47, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v42, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v26
	v_cndmask_b32_e32 v43, 0x80000000, v20, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v27
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v23
	v_lshlrev_b32_e32 v24, 2, v24
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v26, s47, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v23, v23, s47, 2
	v_lshlrev_b32_e32 v20, 2, v20
	v_cndmask_b32_e32 v45, 0x80000000, v24, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v24, s47, v26
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s47, v24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v52, 0x80000000, v23, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 2, v27
	v_cndmask_b32_e32 v53, 0x80000000, v22, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 2, v25
	v_cndmask_b32_e32 v54, 0x80000000, v3, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s47, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v21, 2, v21
	v_cndmask_b32_e32 v55, 0x80000000, v22, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v56, 0x80000000, v23, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 2, v26
	v_cndmask_b32_e32 v57, 0x80000000, v20, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v3
	v_lshlrev_b32_e32 v24, 2, v24
	v_cndmask_b32_e32 v58, 0x80000000, v23, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s47, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v59, 0x80000000, v24 :: v_dual_lshlrev_b32 v22, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	s_mov_b32 s70, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v21, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s47, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v71, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v80, 0x80000000, v22 :: v_dual_lshlrev_b32 v21, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 2, v23
	v_cndmask_b32_e32 v82, 0x80000000, v3, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s47, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v83, 0x80000000, v22 :: v_dual_lshlrev_b32 v20, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v84, 0x80000000, v21 :: v_dual_lshlrev_b32 v3, 2, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v85, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v21, v22, s47, 2
	v_cndmask_b32_e32 v86, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s35, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v88, 0x80000000, v21, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v15, v35, s[36:39], 0 offen
	buffer_load_b32 v16, v36, s[36:39], 0 offen
	buffer_load_b32 v17, v38, s[36:39], 0 offen
	buffer_load_b32 v18, v40, s[36:39], 0 offen
	buffer_load_b32 v3, v42, s[36:39], 0 offen
	buffer_load_b32 v4, v44, s[36:39], 0 offen
	buffer_load_b32 v5, v51, s[36:39], 0 offen
	buffer_load_b32 v6, v52, s[36:39], 0 offen
	buffer_load_b32 v23, v37, s[36:39], 0 offen
	buffer_load_b32 v24, v2, s[36:39], 0 offen
	buffer_load_b32 v25, v39, s[36:39], 0 offen
	buffer_load_b32 v26, v41, s[36:39], 0 offen
	buffer_load_b32 v7, v43, s[36:39], 0 offen
	buffer_load_b32 v8, v45, s[36:39], 0 offen
	buffer_load_b32 v9, v53, s[36:39], 0 offen
	buffer_load_b32 v10, v54, s[36:39], 0 offen
	buffer_load_b32 v27, v1, s[36:39], 0 offen
	buffer_load_b32 v28, v55, s[36:39], 0 offen
	buffer_load_b32 v29, v56, s[36:39], 0 offen
	buffer_load_b32 v30, v57, s[36:39], 0 offen
	buffer_load_b32 v11, v58, s[36:39], 0 offen
	buffer_load_b32 v12, v59, s[36:39], 0 offen
	buffer_load_b32 v13, v70, s[36:39], 0 offen
	buffer_load_b32 v14, v71, s[36:39], 0 offen
	buffer_load_b32 v31, v80, s[36:39], 0 offen
	buffer_load_b32 v32, v82, s[36:39], 0 offen
	buffer_load_b32 v33, v83, s[36:39], 0 offen
	buffer_load_b32 v34, v84, s[36:39], 0 offen
	buffer_load_b32 v19, v85, s[36:39], 0 offen
	buffer_load_b32 v20, v86, s[36:39], 0 offen
	buffer_load_b32 v21, v87, s[36:39], 0 offen
	buffer_load_b32 v22, v88, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_b32 v75, v35, s[36:39], 0 offen
	buffer_load_b32 v74, v36, s[36:39], 0 offen
	buffer_load_b32 v73, v38, s[36:39], 0 offen
	buffer_load_b32 v72, v40, s[36:39], 0 offen
	buffer_load_b32 v79, v37, s[36:39], 0 offen
	buffer_load_b32 v78, v2, s[36:39], 0 offen
	buffer_load_b32 v77, v39, s[36:39], 0 offen
	buffer_load_b32 v76, v41, s[36:39], 0 offen
	buffer_load_b32 v144, v1, s[36:39], 0 offen
	buffer_load_b32 v142, v55, s[36:39], 0 offen
	buffer_load_b32 v141, v56, s[36:39], 0 offen
	buffer_load_b32 v140, v57, s[36:39], 0 offen
	buffer_load_b32 v136, v80, s[36:39], 0 offen
	buffer_load_b32 v91, v82, s[36:39], 0 offen
	buffer_load_b32 v90, v83, s[36:39], 0 offen
	buffer_load_b32 v80, v84, s[36:39], 0 offen
	buffer_load_b32 v156, v42, s[36:39], 0 offen
	buffer_load_b32 v154, v44, s[36:39], 0 offen
	buffer_load_b32 v153, v51, s[36:39], 0 offen
	buffer_load_b32 v152, v52, s[36:39], 0 offen
	buffer_load_b32 v151, v43, s[36:39], 0 offen
	buffer_load_b32 v150, v45, s[36:39], 0 offen
	buffer_load_b32 v149, v53, s[36:39], 0 offen
	buffer_load_b32 v148, v54, s[36:39], 0 offen
	buffer_load_b32 v147, v58, s[36:39], 0 offen
	buffer_load_b32 v146, v59, s[36:39], 0 offen
	buffer_load_b32 v145, v70, s[36:39], 0 offen
	buffer_load_b32 v143, v71, s[36:39], 0 offen
	buffer_load_b32 v139, v85, s[36:39], 0 offen
	buffer_load_b32 v138, v86, s[36:39], 0 offen
	buffer_load_b32 v137, v87, s[36:39], 0 offen
	buffer_load_b32 v135, v88, s[36:39], 0 offen
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v40, v24, v78 :: v_dual_mul_f32 v41, v25, v77
	s_waitcnt vmcnt(24)
	v_mul_f32_e32 v51, v26, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v53, v28, v142 :: v_dual_mul_f32 v52, v27, v144
	s_waitcnt vmcnt(20)
	v_mul_f32_e32 v55, v30, v140
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v41, v25, v77
	v_fmac_f32_e32 v51, v26, v76
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v102, v6, v152
	v_mul_f32_e32 v100, v4, v154
	s_waitcnt vmcnt(10)
	v_mul_f32_e32 v104, v8, v150
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v57, v32, v91 :: v_dual_mul_f32 v106, v10, v148
.Ltmp6:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v108, v12, v146
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v71, 32, v0
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v102, v6, v152
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v108, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v104, v8, v150
.Ltmp14:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v155, 1, v71
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v114, v22, v135
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v36, 4, v71
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v108, v12, v146
.Ltmp16:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v42, 5, v97
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v35, v155, v97
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v114, v114 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v106, v10, v148
	v_add_f32_dpp v10, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v98, s50, v35
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v35, s54, v35
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v114, v22, v135
	v_add_f32_dpp v22, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v37, 1, v98
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v35
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v59, v34, v80
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v22, v22, v22 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v110, v14, v143
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v35, 0x80000000, v37, s4
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v22, v22, v22 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v51, v10, -1, -1 op_sel:[1,0]
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v53, v28, v142
.Ltmp29:
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v44, v35, s[24:27], 0 offen
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v35, v15, v75
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v22, -1, -1 op_sel:[1,0]
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v57, v32, v91
	v_add_f32_e32 v10, v10, v51
	v_add_f32_dpp v12, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v70, 12, v0
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v22, v22, v102
.Ltmp35:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v112, v20, v138
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v35, v15, v75
.Ltmp37:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v43, 1, v70
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v59, v59 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v110, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v36, v42, v36, v43
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v24, v78
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v112, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v53, v12, -1, -1 op_sel:[1,0]
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v30, v140
.Ltmp45:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v38, 0, v36
	v_xad_u32 v37, v36, 8, 0
	v_xad_u32 v39, v36, 16, 0
	v_xad_u32 v36, v36, 24, 0
	ds_load_b64 v[82:83], v38
	ds_load_b64 v[84:85], v37
	ds_load_b64 v[86:87], v39
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[88:89], v36
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v36, v16, v74 :: v_dual_mul_f32 v37, v17, v73
	v_mul_f32_e32 v38, v18, v72
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v100, v4, v154
	v_fmac_f32_e32 v110, v14, v143
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_and_b32_e32 v2, 1, v0
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v36, v16, v74
	v_add_f32_dpp v16, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v37, v17, v73
	v_dual_add_f32 v12, v12, v53 :: v_dual_lshlrev_b32 v1, 6, v2
	v_add_f32_dpp v14, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v112, v20, v138 :: v_dual_lshlrev_b32 v157, 1, v71
.Ltmp49:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v99, v3, v156
	v_mul_f32_e32 v101, v5, v153
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v38, v18, v72
	v_add_f32_dpp v20, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v108, v108 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v110, v110 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v57, v16, -1, -1 op_sel:[1,0]
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v59, v34, v80
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v39, v23, v79 :: v_dual_add_f32 v16, v16, v57
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v18, v59, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v54, v29, v141
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v24, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v56, v31, v136
	v_dual_mul_f32 v58, v33, v90 :: v_dual_mul_f32 v103, v7, v151
	v_mul_f32_e32 v105, v9, v149
	v_mul_f32_e32 v111, v19, v139
	v_mul_f32_e32 v113, v21, v137
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v107, v11, v147
	v_mul_f32_e32 v109, v13, v145
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v24, v24, v24 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v58, v58 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v111, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v113, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v40, v8, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v101, v5, v153
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v55, v14, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v99, v3, v156
	v_fmac_f32_e32 v39, v23, v79
	v_add_f32_dpp v4, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v107, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v109, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v52, v27, v144
	v_fmac_f32_e32 v54, v29, v141
	v_add_f32_dpp v24, v24, v24 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v56, v31, v136
	v_fmac_f32_e32 v58, v33, v90
	v_add_f32_dpp v3, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v59, v18, -1, -1 op_sel:[1,0]
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v105, v9, v149
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v20, -1, -1 op_sel:[1,0]
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v103, v7, v151
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v108, v28, -1, -1 op_sel:[1,0]
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v111, v19, v139
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v110, v30, -1, -1 op_sel:[1,0]
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v113, v21, v137 :: v_dual_add_f32 v8, v8, v40
	v_add_f32_dpp v21, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v14, v14, v55
	v_add_f32_dpp v19, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v104, v24, -1, -1 op_sel:[1,0]
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v107, v11, v147
	v_add_f32_dpp v11, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v106, v26, -1, -1 op_sel:[1,0]
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v109, v13, v145
	v_add_f32_dpp v13, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v56, v56 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v58, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v112, v112 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v114, v114 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v18, v18, v59
	v_add_f32_dpp v25, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v20, v20, v100
	v_add_f32_dpp v23, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v24, v24, v104
	v_add_f32_dpp v27, v107, v107 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v26, v26, v106
	v_add_f32_dpp v29, v109, v109 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v36, v4, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v38, v6, -1, -1 op_sel:[1,0]
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v35, v3, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v37, v5, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v99, v19, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v101, v21, -1, -1 op_sel:[1,0]
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v4, v36 :: v_dual_add_nc_u32 v45, 0, v157
	v_dual_add_f32 v6, v6, v38 :: v_dual_add_nc_u32 v163, 0, v1
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v39, v7, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v41, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v52, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v54, v13, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v56, v15, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v58, v17, -1, -1 op_sel:[1,0]
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v103, v23, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v105, v25, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v112, v32, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v114, v34, -1, -1 op_sel:[1,0]
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v35
	v_add_f32_e32 v5, v5, v37
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v16, 31
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v19, v19, v99
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v18, 31
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v21, v21, v101
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v4, 31
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v7, v39
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v6, 31
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v9, v9, v41
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v8, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v11, v11, v52
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v10, 31
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v13, v13, v54 :: v_dual_add_f32 v28, v28, v108
	v_add_f32_dpp v31, v111, v111 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v30, v30, v110
	v_add_f32_dpp v33, v113, v113 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v12, 31
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v15, v15, v56
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v14, 31
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v17, v17, v58
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v107, v27, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v109, v29, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v32, v32, v112
	v_add_f32_e32 v34, v34, v114
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v3, 31
	v_readlane_b32 s7, v5, 31
	v_mov_b32_e32 v16, s24
	v_readlane_b32 s27, v19, 31
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v23, v23, v103 :: v_dual_mov_b32 v18, s26
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v21, 31
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v25, v25, v105 :: v_dual_mov_b32 v4, s6
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v7, 31
	v_mov_b32_e32 v6, s8
	v_readlane_b32 s11, v9, 31
	v_mov_b32_e32 v8, s10
	v_readlane_b32 s13, v11, 31
	v_mov_b32_e32 v10, s12
	v_readlane_b32 s15, v13, 31
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v12, s14
	v_readlane_b32 s17, v15, 31
	v_mov_b32_e32 v14, s16
	v_readlane_b32 s25, v17, 31
	v_readlane_b32 s45, v30, 31
	v_readlane_b32 s53, v32, 31
	v_readlane_b32 s56, v34, 31
	v_mov_b32_e32 v3, s5
	v_dual_mov_b32 v5, s7 :: v_dual_mov_b32 v30, s27
	v_readlane_b32 s38, v23, 31
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v27, v27, v107 :: v_dual_mov_b32 v32, s36
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v25, 31
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v29, v29, v109
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v7, s9
	v_mov_b32_e32 v9, s11
	v_mov_b32_e32 v11, s13
	v_mov_b32_e32 v13, s15
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v15, s17
	v_mov_b32_e32 v17, s25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s35, v20, 31
	v_readlane_b32 s37, v22, 31
	v_readlane_b32 s39, v24, 31
	v_readlane_b32 s41, v26, 31
	v_readlane_b32 s43, v28, 31
	v_mov_b32_e32 v34, s38
	v_readlane_b32 s42, v27, 31
	v_mov_b32_e32 v36, s40
	v_readlane_b32 s44, v29, 31
	v_mov_b32_e32 v52, s53
	v_mov_b32_e32 v54, s56
	ds_store_b128 v45, v[3:6]
	ds_store_b128 v45, v[7:10] offset:16
	ds_store_b128 v45, v[11:14] offset:32
	ds_store_b128 v45, v[15:18] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v163
	ds_load_b128 v[22:25], v163 offset:16
	ds_load_b128 v[18:21], v163 offset:32
	ds_load_b128 v[10:13], v163 offset:48
	v_permlanex16_b32 v111, v31, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v113, v33, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v38, s42
	v_dual_mov_b32 v40, s44 :: v_dual_mov_b32 v35, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v31, v31, v111
	v_add_f32_e32 v33, v33, v113
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, s41
	v_mov_b32_e32 v39, s43
	v_mov_b32_e32 v41, s45
	v_readlane_b32 s51, v31, 31
	v_readlane_b32 s55, v33, 31
	v_mov_b32_e32 v31, s35
	v_mov_b32_e32 v33, s37
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v51, s51
	v_mov_b32_e32 v53, s55
	s_barrier
	v_mov_b32_e32 v196, v19
	v_mov_b32_e32 v182, v20
	v_mov_b32_e32 v170, v10
	v_mov_b32_e32 v172, v12
	ds_store_b128 v45, v[30:33]
	ds_store_b128 v45, v[34:37] offset:16
	ds_store_b128 v45, v[38:41] offset:32
	ds_store_b128 v45, v[51:54] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v163
	ds_load_b128 v[34:37], v163 offset:16
	ds_load_b128 v[30:33], v163 offset:32
	ds_load_b128 v[14:17], v163 offset:48
.Ltmp125:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s51, s31, 15
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v197, v26 :: v_dual_mov_b32 v198, v27
	v_dual_mov_b32 v199, v28 :: v_dual_mov_b32 v200, v29
	v_dual_mov_b32 v187, v22 :: v_dual_mov_b32 v188, v23
	v_dual_mov_b32 v189, v24 :: v_dual_mov_b32 v190, v25
	v_mov_b32_e32 v195, v18
	v_mov_b32_e32 v181, v21
	v_mov_b32_e32 v171, v11
	v_mov_b32_e32 v173, v13
.Ltmp127:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s51, 31
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v183, v38 :: v_dual_mov_b32 v184, v39
	v_dual_mov_b32 v185, v40 :: v_dual_mov_b32 v186, v41
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v191, v34 :: v_dual_mov_b32 v192, v35
	v_dual_mov_b32 v193, v36 :: v_dual_mov_b32 v194, v37
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v180, v30 :: v_dual_mov_b32 v179, v31
	v_dual_mov_b32 v177, v32 :: v_dual_mov_b32 v178, v33
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v174, v14 :: v_dual_mov_b32 v175, v15
	v_dual_mov_b32 v176, v16 :: v_dual_mov_b32 v169, v17
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s51, s51, s5
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s48, s34
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s71, s51, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s6, s20, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s54, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s8, s54, s21
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s6, s23
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s8, s8, s23
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s6, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s6, s31, s6
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s6, s6, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s7, s8, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s6, s6, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s70, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s71, s71, s6
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x4
	s_load_b32 s13, s[0:1], 0x88
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b64 s[38:39], s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v107, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s6, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s7, s52, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s8, s54, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 32
	s_min_i32 s8, s31, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s8, s8, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s71, s71, s8
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s8, s5, s49
	s_xor_b32 s6, s6, s7
	s_sub_i32 s7, s48, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s49
	s_cmp_ge_u32 s7, s49
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v158, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[56:59], s[0:1], 0x48
	s_cmp_ge_u32 s7, s49
	s_clause 0x2
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	s_load_b64 s[42:43], s[0:1], 0x8c
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v4, 4, v158
	v_or_b32_e32 v5, 8, v158
	v_or_b32_e32 v6, 12, v158
	v_or_b32_e32 v7, 16, v158
	v_or_b32_e32 v8, 20, v158
	v_or_b32_e32 v9, 24, v158
	v_or_b32_e32 v3, 28, v158
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v45, s54, v158
	v_or_b32_e32 v51, s54, v4
	v_or_b32_e32 v52, s54, v5
	v_or_b32_e32 v53, s54, v6
	v_or_b32_e32 v54, s54, v7
	v_or_b32_e32 v55, s54, v8
	v_or_b32_e32 v56, s54, v9
	v_or_b32_e32 v57, s54, v3
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v105, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s5, s5, s6
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_and_b32_e32 v162, 16, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s72, s5, s6
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s5, s30, v45
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v108, s23, v45
	v_add_nc_u32_e32 v109, s23, v51
	v_add_nc_u32_e32 v110, s23, v52
	v_add_nc_u32_e32 v111, s23, v53
	v_add_nc_u32_e32 v112, s23, v54
	v_add_nc_u32_e32 v113, s23, v55
	v_add_nc_u32_e32 v114, s23, v56
	v_add_nc_u32_e32 v115, s23, v57
	v_mov_b16_e32 v45.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v45.h, v44.l
	v_or_b32_e32 v117, v42, v43
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s15, s38, 0x3fb8aa3b
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s14, s19, s29
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s39
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s13, s28, s13
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v116, s15, v45 :: v_dual_and_b32 v201, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v106, 2, v105
	v_or_b32_e32 v104, 4, v105
	v_or_b32_e32 v103, 6, v105
	v_or_b32_e32 v102, 8, v105
	v_or_b32_e32 v101, 10, v105
	v_or_b32_e32 v100, 12, v105
	v_or_b32_e32 v99, 14, v105
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v51
	v_cmp_gt_i32_e64 s7, s30, v52
	v_cmp_gt_i32_e64 s8, s30, v53
	v_cmp_gt_i32_e64 s9, s30, v54
	v_cmp_gt_i32_e64 s10, s30, v55
	v_cmp_gt_i32_e64 s11, s30, v56
	v_cmp_gt_i32_e64 s12, s30, v57
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s72, s72, s14
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s28, s13, s19
	v_subrev_nc_u32_e32 v118, s21, v108
	v_subrev_nc_u32_e32 v119, s21, v109
	v_subrev_nc_u32_e32 v120, s21, v110
	v_subrev_nc_u32_e32 v121, s21, v111
	v_subrev_nc_u32_e32 v122, s21, v112
	v_subrev_nc_u32_e32 v123, s21, v113
	v_subrev_nc_u32_e32 v124, s21, v114
	v_subrev_nc_u32_e32 v125, s21, v115
	v_add_nc_u32_e32 v126, s22, v108
	v_add_nc_u32_e32 v127, s22, v109
	v_add_nc_u32_e32 v128, s22, v110
	v_add_nc_u32_e32 v129, s22, v111
	v_add_nc_u32_e32 v130, s22, v112
	v_add_nc_u32_e32 v131, s22, v113
	v_add_nc_u32_e32 v132, s22, v114
	v_add_nc_u32_e32 v133, s22, v115
	v_xor_b32_e32 v159, 8, v117
	v_xor_b32_e32 v160, 16, v117
	v_xor_b32_e32 v161, 24, v117
	v_lshlrev_b32_e32 v164, 3, v97
	v_lshrrev_b32_e32 v165, 2, v162
	v_lshrrev_b32_e32 v167, 4, v71
	v_lshlrev_b32_e32 v168, 2, v0
	v_lshrrev_b32_e32 v166, 1, v162
	v_lshlrev_b32_e32 v134, 1, v0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s70, s71
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s55, s72, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s29, -1, 0
	s_cmp_ge_i32 s70, s71
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mul_lo_u32 v42, s43, v97
	v_lshlrev_b32_e32 v2, 5, v2
	v_or3_b32 v202, v165, v167, v164
	v_mov_b32_e32 v235, 0
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v231, 0
	v_mov_b32_e32 v229, 0
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s13, s42, s54
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_mad_u64_u32 v[51:52], null, s42, v4, v[42:43]
	v_mad_u64_u32 v[52:53], null, s42, v5, v[42:43]
	v_mad_u64_u32 v[53:54], null, s42, v6, v[42:43]
	v_mad_u64_u32 v[54:55], null, s42, v7, v[42:43]
	v_mad_u64_u32 v[55:56], null, s42, v8, v[42:43]
	v_mad_u64_u32 v[56:57], null, s42, v9, v[42:43]
	v_mad_u64_u32 v[57:58], null, s42, v3, v[42:43]
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_and_b32 v3, 52, v168
	v_and_or_b32 v6, v0, 2, v166
	v_mad_u64_u32 v[58:59], null, s42, v158, v[42:43]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v70, 5, v3
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_and_b32 v5, 14, v0
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_lshlrev_b32 v7, 2, v201
	v_or3_b32 v59, v6, v3, v92
	v_dual_mov_b32 v244, 0 :: v_dual_and_b32 v3, 60, v134
	v_cndmask_b32_e64 v6, 0x104, 0, vcc_lo
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_lshlrev_b32 v9, 1, v5
	v_lshl_or_b32 v5, v5, 7, v7
	v_xor_b32_e32 v4, 0x90, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v204, v6, v3
	v_xor_b32_e32 v8, 0x120, v202
	v_xor_b32_e32 v7, 0x1b0, v202
	v_xor_b32_e32 v3, 48, v59
	v_mov_b32_e32 v243, 0xff800000
	v_or_b32_e32 v1, v204, v1
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_add_nc_u32 v205, 0, v4
	v_add_nc_u32_e32 v206, 0, v8
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v207, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v218, 0x208, v1
	v_xor_b32_e32 v219, 0x410, v1
	v_xor_b32_e32 v220, 0x618, v1
	v_mov_b32_e32 v1, 0
	v_or3_b32 v203, v5, v2, v9
	v_xor_b32_e32 v2, 16, v59
	v_xor_b32_e32 v5, 32, v59
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_add_nc_u32 v210, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, 4, v203
	v_xor_b32_e32 v9, 8, v203
	v_xor_b32_e32 v42, 12, v203
	v_xor_b32_e32 v43, 16, v203
	v_xor_b32_e32 v44, 20, v203
	v_xor_b32_e32 v45, 24, v203
	v_xor_b32_e32 v217, 28, v203
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v208, 0, v2
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v209, 0, v5
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v6
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v212, 0, v9
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v42
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v214, 0, v43
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v44
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v216, 0, v45
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v217
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v218, 0, v218
	v_add_nc_u32_e32 v219, 0, v219
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v220, 0, v220
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s61, s41, 0xffff
	s_mov_b32 s60, s40
	s_and_b32 s65, s45, 0xffff
	s_mov_b32 s64, s44
	s_add_i32 s39, s28, s13
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s73, s70
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v253, v2
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_and_b16 v2.l, 0xff, v45.h
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v254, v3
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v255, v4
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.l
	v_and_b16 v2.l, 0xff, v45.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v164, v5
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s15, s81, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v2.l
	v_and_b16 v2.l, 0xff, v42.l
	v_mov_b16_e32 v42.l, 0
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v5, v116, v253
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v247.h, v247.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s19, s79, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v2.l
	s_waitcnt vmcnt(0)
	v_and_b16 v2.l, 0xff, v44.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v3, 0, 1, s19
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e64 v247.l, v42.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v7, v116, v7
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s18, s78, s16
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s14, 0, v2.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v2, 0, 1, s15
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e64 v248.h, v248.l
	v_mov_b16_e64 v248.l, v42.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v6, v116, v6 :: v_dual_mul_f32 v7, v7, v247
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v2.l, 8, v2.l
	s_and_b32 s14, s80, s14
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v45.h, v249.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s14
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v9, v116, v9
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v45.l, v42.l
	v_mov_b16_e64 v246.h, v246.l
	v_mov_b16_e64 v246.l, v42.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v2.h, 8, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s18
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s73, s73, 16
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v2.h, v3.l, v2.h
	v_add_nc_u32_e32 v3, 0, v202
	ds_store_b16 v3, v2
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_and_b16 v2.l, 0xff, v43.l
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v6, v6, v248
	v_mul_f32_e32 v164, v116, v164
	v_mul_f32_e32 v8, v116, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.l
	v_and_b16 v2.l, 0xff, v42.h
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v42.h, v252.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v45, v164, v45
	v_mul_f32_e32 v8, v8, v246
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s17, s76, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v2.l
	v_and_b16 v2.l, 0xff, v44.l
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v5, v5, v42 :: v_dual_add_nc_u32 v44, 0, v203
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v42.h, v245.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s16, s74, s16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v2.l
	v_and_b16 v2.l, 0xff, v43.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v4, 0, 1, s16
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v245, v116, v254
	v_mul_f32_e32 v9, v9, v42
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s13, s77, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s20, 0, v2.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v3, 0, 1, s13
	s_and_b32 vcc_lo, s75, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s17
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_lt_i32 s73, s71
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, vcc_lo
	v_lshlrev_b16 v3.l, 8, v3.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v4.l, v3.l
	ds_store_b16_d16_hi v205, v2
	ds_store_b16 v206, v2
	ds_store_b16 v207, v3
	v_add_nc_u32_e32 v3, 0, v59
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v2, v3
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v3 offset:64
	ds_load_u8_d16 v3, v208
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v210 offset:64
	ds_load_u8_d16 v4, v209 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v208 offset:64
	v_and_b16 v2.l, 1, v2.l
	v_and_b16 v3.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v43, 0xff800000, v5, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	ds_load_u8_d16 v2, v209
	ds_load_u8_d16 v5, v210
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v3.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v44, v43
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v43.h, v251.l
	v_mov_b16_e32 v43.l, v42.l
	v_mov_b16_e64 v44.h, v250.l
	v_mov_b16_e32 v44.l, v42.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v43, v245, v43
	v_mul_f32_e32 v245, v116, v255
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v42, 0xff800000, v43, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v44, v245, v44
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v211, v42
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	v_and_b16 v2.l, 1, v5.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v42, 0xff800000, v44, s20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	v_and_b16 v2.l, 1, v2.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v212, v42
	v_cndmask_b32_e64 v5, 0xff800000, v45, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v213, v5
	v_cndmask_b32_e64 v2, 0xff800000, v6, s20
	ds_store_b32 v214, v2
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v7, s20
	ds_store_b32 v215, v2
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v4.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v8, s20
	ds_store_b32 v216, v2
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v9, s20
	ds_store_b32 v217, v2
	v_add_nc_u32_e32 v2, v163, v204
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[2:3], v2 offset1:32
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v2
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v5, v4
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp142:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v221, v221
	v_max_f32_e32 v221, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v221
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v243
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v5 :: v_dual_max_f32 v5, v243, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp149:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v6, v5, v4
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v5, v2, v4 :: v_dual_sub_f32 v2, v243, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp152:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v5, v244, v2
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[243:244], v218 offset1:32
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, v243
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v243, v243
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp163:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v222, v4, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v4, v243, v222 :: v_dual_mov_b32 v243, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v7 :: v_dual_max_f32 v7, v242, v242
.Ltmp170:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v8, v7, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v7, v4, v2 :: v_dual_sub_f32 v2, v242, v8
.Ltmp173:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v7, v241, v2
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[241:242], v219 offset1:32
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, v241
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v241, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp184:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v223, v223
	v_max_f32_e32 v223, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v4, v241, v223 :: v_dual_mov_b32 v241, v7
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v240
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp189:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp191:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v9, v240, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v42, v9, v2
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v9, v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v240, v42
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s17
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v9, v239, v2
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[239:240], v220 offset1:32
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, v239
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v239, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp205:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v224, v224
	v_max_f32_e32 v224, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v4, v239, v224 :: v_dual_mov_b32 v239, v9
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v238
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v43, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v43, v4
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v43
.Ltmp210:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v43, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v43 :: v_dual_max_f32 v43, v238, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp212:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v44, v43, v2
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v43, v4, v2 :: v_dual_sub_f32 v2, v238, v44
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp216:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v43, v237, v2 :: v_dual_mov_b32 v2, v3
	v_mov_b32_e32 v237, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp225:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v225, v225
	v_max_f32_e32 v225, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v3, v225
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v236
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp232:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v245, v4, v2 :: v_dual_mov_b32 v2, v3
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v45, v3, v2 :: v_dual_sub_f32 v2, v236, v245
.Ltmp235:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v244, v244 :: v_dual_mov_b32 v236, v245
.Ltmp236:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v45, v235, v2 :: v_dual_mov_b32 v2, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v235, v45
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
.Ltmp245:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v226, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v226, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v3, v244, v226 :: v_dual_mov_b32 v244, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s14
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s14, 0xff800000, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v234, v234
.Ltmp252:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v247, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v246, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp255:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v234, v247
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v242, v242 :: v_dual_mov_b32 v234, v247
.Ltmp257:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s14
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v246, v233, v2
.Ltmp258:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v233, v246
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp260:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
.Ltmp266:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v227, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v227, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v3, v242, v227 :: v_dual_mov_b32 v242, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s13
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp269:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp273:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v232, v232
	v_dual_max_f32 v249, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v248, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp276:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v232, v249
.Ltmp277:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v240, v240 :: v_dual_mov_b32 v232, v249
.Ltmp278:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s13
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v248, v231, v2
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v231, v248
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v228, v228
	v_mov_b32_e32 v238, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v228, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v3, v240, v228 :: v_dual_mov_b32 v240, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v230, v230
.Ltmp294:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v251, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v250, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp297:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v230, v251
	v_mov_b32_e32 v230, v251
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v250, v229, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v229, v250
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_28
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v92
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s20, s73, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s21, s20, s46
	v_add_nc_u32_e32 v3, s21, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v60
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v4, s21, v68
	v_add_nc_u32_e32 v5, s21, v47
	v_add_nc_u32_e32 v6, s21, v69
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v61
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v7, s21, v48
	v_add_nc_u32_e32 v8, s21, v49
	v_add_nc_u32_e32 v9, s21, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s14, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v62
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v64
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s73, v66
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v2
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s21, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x7
	buffer_load_u8 v2, v2, s[60:63], 0 offen
	buffer_load_u8 v3, v3, s[60:63], 0 offen
	buffer_load_u8 v4, v4, s[60:63], 0 offen
	buffer_load_u8 v5, v5, s[60:63], 0 offen
	buffer_load_u8 v6, v6, s[60:63], 0 offen
	buffer_load_u8 v7, v7, s[60:63], 0 offen
	buffer_load_u8 v8, v8, s[60:63], 0 offen
	buffer_load_u8 v9, v9, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v93, v2
	s_waitcnt vmcnt(6)
	ds_store_b8 v93, v3 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v94, v4
	s_waitcnt vmcnt(4)
	ds_store_b8 v94, v5 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v95, v6
	s_waitcnt vmcnt(2)
	ds_store_b8 v95, v7 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v96, v8
	s_waitcnt vmcnt(0)
	ds_store_b8 v96, v9 offset:64
	v_add_nc_u32_e32 v9, 0, v117
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[42:43], v9
	v_add_nc_u32_e32 v9, 0, v159
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[44:45], v9
	v_add_nc_u32_e32 v9, 0, v160
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v7, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[245:246], v9
	v_add_nc_u32_e32 v9, 0, v161
	ds_load_b64 v[247:248], v9
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v7, v6
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v4, v3
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v2, v1
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[42:43], v[82:83], v[2:9] neg_lo:[1,1,0]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v106
	.loc	1 215 21                        ; attention_backward.py:215:21
	v_add_lshl_u32 v42, s20, v105, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[44:45], v[84:85], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v104
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v44, 4, v42
	v_add_nc_u32_e32 v45, 8, v42
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[245:246], v[86:87], v[2:9] neg_lo:[1,1,0]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v245, 12, v42
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s13, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v103
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v246, 16, v42
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[247:248], v[88:89], v[2:9] neg_lo:[1,1,0]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v247, 20, v42
	v_add_nc_u32_e32 v248, 24, v42
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s14, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v102
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v249, 28, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s15, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v101
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s16, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s17, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v99
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v253, 0x80000000, v248, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s18, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s73, v105
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v254, 0x80000000, v249, s18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s19, s31, v43
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v45, s13
	v_cndmask_b32_e64 v45, 0x80000000, v245, s14
	v_cndmask_b32_e64 v245, 0x80000000, v246, s15
	v_cndmask_b32_e64 v42, 0x80000000, v42, s19
	v_cndmask_b32_e64 v246, 0x80000000, v247, s16
	s_clause 0x7
	buffer_load_u16 v252, v42, s[64:67], 0 offen
	buffer_load_u16 v251, v43, s[64:67], 0 offen
	buffer_load_u16 v250, v44, s[64:67], 0 offen
	buffer_load_u16 v249, v45, s[64:67], 0 offen
	buffer_load_u16 v248, v245, s[64:67], 0 offen
	buffer_load_u16 v247, v246, s[64:67], 0 offen
	buffer_load_u16 v246, v253, s[64:67], 0 offen
	buffer_load_u16 v245, v254, s[64:67], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v42, s73, v97
	.loc	1 238 13                        ; attention_backward.py:238:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v107
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v42
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s79, s5, s13
	s_and_b32 s78, s6, s13
	s_and_b32 s76, s7, s13
	s_and_b32 s74, s8, s13
	s_and_b32 s81, s9, s13
	s_and_b32 s80, s10, s13
	s_and_b32 s77, s11, s13
	s_and_b32 s75, s12, s13
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v42, v108
	v_cmp_le_i32_e64 s13, v42, v109
	v_cmp_le_i32_e64 s14, v42, v110
	v_cmp_le_i32_e64 s15, v42, v111
	v_cmp_le_i32_e64 s16, v42, v112
	v_cmp_le_i32_e64 s17, v42, v113
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s20, vcc_lo, s79
	s_and_b32 s13, s13, s78
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s18, v42, v114
	v_cmp_le_i32_e64 s19, v42, v115
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s14, s14, s76
	s_and_b32 s15, s15, s74
	s_and_not1_b32 s21, s79, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s78, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s81
	s_and_b32 s17, s17, s80
	s_or_b32 s79, s21, s20
	s_or_b32 s78, s22, s13
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s77
	s_and_b32 s19, s19, s75
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s20, s15
	s_and_not1_b32 s13, s81, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s80, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s81, s13, s14
	s_or_b32 s80, s15, s16
	s_and_not1_b32 s13, s77, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s75, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s77, s13, s14
	s_or_b32 s75, s15, s16
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v42, v118
	v_cmp_ge_i32_e64 s13, v42, v119
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s20, v42, v126
	v_cmp_le_i32_e64 s21, v42, v127
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v42, v120
	v_cmp_ge_i32_e64 s15, v42, v121
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s22, v42, v128
	v_cmp_le_i32_e64 s23, v42, v129
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v42, v122
	v_cmp_ge_i32_e64 s17, v42, v123
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s24, v42, v130
	v_cmp_le_i32_e64 s25, v42, v131
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s13, s13, s21
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s18, v42, v124
	v_cmp_ge_i32_e64 s19, v42, v125
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s26, v42, v132
	v_cmp_le_i32_e64 s27, v42, v133
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s20, s20, s79
	s_and_b32 s13, s13, s78
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s76
	s_and_b32 s15, s15, s74
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s79, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s78, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s81
	s_and_b32 s17, s17, s80
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s79, s21, s20
	s_or_b32 s78, s22, s13
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s77
	s_and_b32 s19, s19, s75
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s20, s15
	s_and_not1_b32 s13, s81, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s80, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s81, s13, s14
	s_or_b32 s80, s15, s16
	s_and_not1_b32 s13, s77, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s75, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s77, s13, s14
	s_or_b32 s75, s15, s16
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v42.l, 0
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s13, s73, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s13, s39, s13
	v_mov_b16_e32 v45.l, v42.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s79
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v43, s13, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s34, v43
	v_add_co_ci_u32_e64 v44, null, s35, v44, vcc_lo
	global_load_d16_u8 v45, v[43:44], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s78
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v42, s13, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, vcc_lo, s34, v42
	v_add_co_ci_u32_e64 v43, null, s35, v43, vcc_lo
	global_load_d16_u8 v42, v[42:43], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v42.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s76
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v43, s13, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s34, v43
	v_add_co_ci_u32_e64 v44, null, s35, v44, vcc_lo
	global_load_d16_u8 v43, v[43:44], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s74
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v44, s13, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v254, 31, v44
	v_add_co_u32 v253, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v254, null, s35, v254, vcc_lo
	global_load_d16_hi_u8 v42, v[253:254], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b16_e32 v44.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v45.h, v44.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s81
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v253, s13, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v254, 31, v253
	v_add_co_u32 v253, vcc_lo, s34, v253
	v_add_co_ci_u32_e64 v254, null, s35, v254, vcc_lo
	global_load_d16_hi_u8 v45, v[253:254], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s80
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v44, s13, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v254, 31, v44
	v_add_co_u32 v253, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v254, null, s35, v254, vcc_lo
	global_load_d16_hi_u8 v44, v[253:254], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s77
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v253, s13, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v254, 31, v253
	v_add_co_u32 v253, vcc_lo, s34, v253
	v_add_co_ci_u32_e64 v254, null, s35, v254, vcc_lo
	global_load_d16_u8 v44, v[253:254], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s75
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v253, s13, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v254, 31, v253
	v_add_co_u32 v253, vcc_lo, s34, v253
	v_add_co_ci_u32_e64 v254, null, s35, v254, vcc_lo
	global_load_d16_hi_u8 v43, v[253:254], off
	s_branch .LBB0_6
.LBB0_27:
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v44, 0xff800000
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v42, 0xff800000
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0xff800000
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v6, 0xff800000
	v_mov_b32_e32 v247, 0xff800000
	v_mov_b32_e32 v245, 0xff800000
	s_branch .LBB0_29
.LBB0_28:                               ; %Flow281
	v_lshlrev_b32_e32 v164, 3, v97
.LBB0_29:                               ; %Flow282
	s_load_b32 s60, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s54, v81
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v5
	v_cmp_gt_f32_e64 s1, 0x800000, v7
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v24, v189 :: v_dual_add_f32 v4, v25, v190
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp299:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
.Ltmp300:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v22, v187 :: v_dual_add_f32 v2, v23, v188
.Ltmp301:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v22, 0, 0x42000000, s0
	v_cndmask_b32_e64 v23, 0, 32, s0
	v_cndmask_b32_e64 v24, 0, 0x42000000, s1
	v_cndmask_b32_e64 v25, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v43
	v_cmp_gt_f32_e64 s1, 0x800000, v45
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v51, v28, v199 :: v_dual_add_f32 v52, v29, v200
.Ltmp303:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s13, 0x800000, v9
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v61, v30, v180 :: v_dual_add_f32 v62, v31, v179
.Ltmp305:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v28, 0, 0x42000000, s0
	v_cndmask_b32_e64 v29, 0, 32, s0
	v_cndmask_b32_e64 v30, 0, 0x42000000, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v246
	v_cndmask_b32_e64 v31, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v248
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v26, v197 :: v_dual_add_f32 v50, v27, v198
	v_dual_add_f32 v53, v34, v191 :: v_dual_add_f32 v54, v35, v192
	v_dual_add_f32 v55, v36, v193 :: v_dual_add_f32 v56, v37, v194
.Ltmp307:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v26, 0, 0x42000000, s13
	v_cndmask_b32_e64 v27, 0, 32, s13
	v_ldexp_f32 v23, v5, v23
	v_cmp_gt_f32_e64 s13, 0x800000, v250
	v_cndmask_b32_e64 v35, 0, 32, s0
	v_cndmask_b32_e64 v37, 0, 32, s1
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v57, v38, v183 :: v_dual_add_f32 v58, v39, v184
.Ltmp309:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v25, v7, v25
	v_ldexp_f32 v27, v9, v27
	v_log_f32_e32 v23, v23
	v_cndmask_b32_e64 v39, 0, 32, s13
	v_ldexp_f32 v29, v43, v29
	v_ldexp_f32 v35, v246, v35
	v_ldexp_f32 v37, v248, v37
	v_log_f32_e32 v25, v25
	v_log_f32_e32 v27, v27
	v_ldexp_f32 v31, v45, v31
	v_ldexp_f32 v39, v250, v39
	v_log_f32_e32 v29, v29
	v_log_f32_e32 v35, v35
	v_log_f32_e32 v37, v37
	v_cndmask_b32_e64 v34, 0, 0x42000000, s0
	v_cndmask_b32_e64 v36, 0, 0x42000000, s1
	v_log_f32_e32 v31, v31
	v_log_f32_e32 v39, v39
	v_dual_sub_f32 v22, v23, v22 :: v_dual_sub_f32 v23, v25, v24
	v_cndmask_b32_e64 v38, 0, 0x42000000, s13
	v_dual_sub_f32 v24, v27, v26 :: v_dual_sub_f32 v25, v29, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v27, v35, v34 :: v_dual_sub_f32 v28, v37, v36
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v6, v6, v22
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v26, v31, v30
	v_dual_sub_f32 v29, v39, v38 :: v_dual_add_f32 v8, v8, v23
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v23, v44, v25
	v_add_f32_e32 v25, v247, v27
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v5, 0, v6, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v7
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v22, v42, v24 :: v_dual_add_f32 v27, v251, v29
	v_add_f32_e32 v24, v245, v26
.Ltmp310:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v65, v10, v170
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp311:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v6, 0, v8, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v9
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v26, v249, v28
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v28, 28, v0
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v66, v11, v171
.Ltmp313:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v7, 0, v22, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v43
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v9, 0x60, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp314:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v170, v14, v174
.Ltmp315:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v8, 0, v23, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v45
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v9, 0, v9
	s_ashr_i32 s14, s51, 4
	s_mov_b32 s51, 0x31027000
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s17, s57, 0xffff
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v22, 0, v24, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v246
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_mov_b32 s16, s56
	s_mov_b32 s19, s51
.Ltmp316:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v12, v172 :: v_dual_add_f32 v68, v13, v173
.Ltmp317:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v23, 0, v25, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v248
.Ltmp318:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v173, v17, v169
	v_dual_add_f32 v59, v40, v185 :: v_dual_add_f32 v60, v41, v186
	v_dual_add_f32 v171, v15, v175 :: v_dual_add_f32 v172, v16, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp319:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v24, 0, v26, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v250
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v26, v201, 1, 0
.Ltmp320:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v18, v18, v195 :: v_dual_add_f32 v19, v19, v196
	v_dual_add_f32 v20, v20, v182 :: v_dual_add_f32 v21, v21, v181
.Ltmp321:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v25, 0, v27, s0
	v_add3_u32 v27, v9, v155, v70
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v9, v9, v28
	.loc	1 264 17                        ; attention_backward.py:264:17
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v155, v27
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v9
	v_cmp_eq_u32_e64 s0, 0, v71
	v_add_lshl_u32 v6, s50, v81, 2
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v8, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s18, s50
	s_and_b32 vcc_lo, s0, vcc_lo
.Ltmp322:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v63, v32, v177 :: v_dual_add_f32 v64, v33, v178
.Ltmp323:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v7, v75, 16, 1
	v_bfe_u32 v9, v72, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_cmp_o_f32_e64 s13, v72, v72
	v_bfe_u32 v10, v156, 16, 1
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v9, v72, v9, 0x7fff
	v_bfe_u32 v11, v152, 16, 1
	v_bfe_u32 v12, v79, 16, 1
	v_bfe_u32 v13, v76, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v5, v81, 2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[49:52]
	ds_store_b128 v8, v[57:60] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[53:56] offset:48
	ds_store_b128 v8, v[18:21] offset:64
	ds_store_b128 v8, v[61:64] offset:80
	ds_store_b128 v8, v[65:68] offset:96
	ds_store_b128 v8, v[170:173] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v5
	s_and_b32 s17, s59, 0xffff
	s_mov_b32 s16, s58
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v11, v152, v11, 0x7fff
	v_add3_u32 v13, v76, v13, 0x7fff
	v_bfe_u32 v14, v151, 16, 1
	v_bfe_u32 v15, v148, 16, 1
	v_bfe_u32 v16, v144, 16, 1
	v_bfe_u32 v17, v140, 16, 1
	v_bfe_u32 v22, v147, 16, 1
	v_cmp_o_f32_e64 s0, v74, v74
	v_add3_u32 v15, v148, v15, 0x7fff
	v_bfe_u32 v23, v143, 16, 1
	v_add3_u32 v17, v140, v17, 0x7fff
	v_bfe_u32 v24, v136, 16, 1
	v_bfe_u32 v25, v80, 16, 1
	v_bfe_u32 v26, v139, 16, 1
	v_add3_u32 v23, v143, v23, 0x7fff
	v_bfe_u32 v27, v135, 16, 1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[16:19], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v5, v74, 16, 1
	v_add3_u32 v6, v75, v7, 0x7fff
	v_bfe_u32 v7, v73, 16, 1
	v_add3_u32 v25, v80, v25, 0x7fff
	v_add3_u32 v27, v135, v27, 0x7fff
	v_add3_u32 v5, v74, v5, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v73, v7, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s13
	v_add3_u32 v9, v156, v10, 0x7fff
	v_bfe_u32 v10, v153, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v154, 16, 1
	v_cmp_o_f32_e64 s1, v153, v153
	v_add3_u32 v10, v153, v10, 0x7fff
	v_cmp_o_f32_e64 s13, v152, v152
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_add3_u32 v7, v154, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v78, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s13
	v_add3_u32 v11, v79, v12, 0x7fff
	v_bfe_u32 v12, v77, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cmp_o_f32_e64 s13, v76, v76
	v_add3_u32 v10, v78, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v12, v77, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s13
	v_add3_u32 v13, v151, v14, 0x7fff
	v_bfe_u32 v14, v149, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v150, 16, 1
	v_cmp_o_f32_e64 s1, v149, v149
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_add3_u32 v14, v149, v14, 0x7fff
	v_cmp_o_f32_e64 s13, v148, v148
	v_add3_u32 v12, v150, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v154, v154
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v142, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s13
	v_add3_u32 v15, v144, v16, 0x7fff
	v_bfe_u32 v16, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_cmp_o_f32_e64 s13, v140, v140
	v_add3_u32 v14, v142, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v141, v141
	v_add3_u32 v16, v141, v16, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s13
	v_add3_u32 v17, v147, v22, 0x7fff
	v_bfe_u32 v22, v145, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v146, 16, 1
	v_cmp_o_f32_e64 s1, v145, v145
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_add3_u32 v22, v145, v22, 0x7fff
	v_cmp_o_f32_e64 s13, v143, v143
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v78, v78
	v_add3_u32 v16, v146, v16, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v91, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s13
	v_add3_u32 v23, v136, v24, 0x7fff
	v_bfe_u32 v24, v90, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cmp_o_f32_e64 s13, v80, v80
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e64 s0, v150, v150
	v_add3_u32 v22, v91, v22, 0x7fff
	v_add3_u32 v24, v90, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v90, v90
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s13
	v_add3_u32 v25, v139, v26, 0x7fff
	v_bfe_u32 v26, v137, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	v_cmp_o_f32_e64 s0, v142, v142
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s1
	v_cmp_o_f32_e64 s1, v137, v137
	v_add3_u32 v26, v137, v26, 0x7fff
	v_cmp_o_f32_e64 s13, v135, v135
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e64 s0, v146, v146
	v_add_nc_u32_e32 v135, v93, v0
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_xor_b32_e32 v26, 0x90, v134
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v91, v91
	s_barrier
	v_add_nc_u32_e32 v136, 0, v26
	v_bfe_u32 v24, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	ds_store_b16 v135, v5
	ds_store_b16 v135, v10 offset:1024
	ds_store_b16 v135, v14 offset:2048
	ds_store_b16 v135, v22 offset:3072
	ds_store_b16_d16_hi v136, v5
	ds_store_b16_d16_hi v136, v10 offset:1024
	ds_store_b16_d16_hi v136, v14 offset:2048
	ds_store_b16_d16_hi v136, v22 offset:3072
	v_lshlrev_b32_e32 v5, 4, v0
	v_xor_b32_e32 v26, 0x120, v134
	v_add3_u32 v24, v138, v24, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s13
	v_and_b32_e32 v5, 0x70, v5
	v_xor_b32_e32 v27, 0x1b0, v134
	v_add_nc_u32_e32 v137, 0, v26
	v_xor_b32_e32 v10, 0x240, v134
	v_cmp_o_f32_e64 s0, v138, v138
	v_lshl_or_b32 v139, v97, 7, v5
	v_add_nc_u32_e32 v138, 0, v27
	v_xor_b32_e32 v14, 0x2d0, v134
	v_xor_b32_e32 v22, 0x360, v134
	ds_store_b16 v137, v6
	ds_store_b16 v137, v11 offset:1024
	ds_store_b16 v137, v15 offset:2048
	ds_store_b16 v137, v23 offset:3072
	ds_store_b16_d16_hi v138, v6
	ds_store_b16_d16_hi v138, v11 offset:1024
	ds_store_b16_d16_hi v138, v15 offset:2048
	ds_store_b16_d16_hi v138, v23 offset:3072
	v_xor_b32_e32 v5, 0x3f0, v134
	v_lshl_or_b32 v6, v71, 6, v139
	v_add_nc_u32_e32 v140, 0, v10
	v_add_nc_u32_e32 v141, 0, v14
	v_add_nc_u32_e32 v142, 0, v22
	v_add_nc_u32_e32 v143, 0, v5
	v_add_nc_u32_e32 v5, 0, v6
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	ds_store_b16 v140, v7
	ds_store_b16 v140, v12 offset:1024
	ds_store_b16 v140, v16 offset:2048
	ds_store_b16 v140, v24 offset:3072
	ds_store_b16_d16_hi v141, v7
	ds_store_b16_d16_hi v141, v12 offset:1024
	ds_store_b16_d16_hi v141, v16 offset:2048
	ds_store_b16_d16_hi v141, v24 offset:3072
	v_xad_u32 v7, v6, 16, 0
	ds_store_b16 v142, v9
	ds_store_b16 v142, v13 offset:1024
	ds_store_b16 v142, v17 offset:2048
	ds_store_b16 v142, v25 offset:3072
	ds_store_b16_d16_hi v143, v9
	ds_store_b16_d16_hi v143, v13 offset:1024
	ds_store_b16_d16_hi v143, v17 offset:2048
	ds_store_b16_d16_hi v143, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v5
	ds_load_b128 v[13:16], v7
	v_xad_u32 v5, v6, 32, 0
	v_xad_u32 v7, v6, 48, 0
	v_xad_u32 v17, v6, 64, 0
	v_xad_u32 v22, 0x50, v6, 0
	v_xad_u32 v23, 0x60, v6, 0
	v_xad_u32 v6, 0x70, v6, 0
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[33:36], v17
	ds_load_b128 v[37:40], v22
	ds_load_b128 v[41:44], v23
	ds_load_b128 v[45:48], v6
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[49:52]
	ds_store_b128 v8, v[57:60] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[53:56] offset:48
	ds_store_b128 v8, v[18:21] offset:64
	ds_store_b128 v8, v[61:64] offset:80
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v8, v[65:68] offset:96
	ds_store_b128 v8, v[170:173] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_52
; %bb.30:                               ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v5, 0x7632 :: v_dual_lshlrev_b32 v2, 2, v97
	v_cmp_eq_u32_e32 vcc_lo, 0, v162
	v_and_b32_e32 v4, 52, v168
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v1, 1, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v2, 0, v2, v157
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s29, s14, 3
	v_cndmask_b32_e32 v5, 0x3276, v5, vcc_lo
	v_xor_b32_e32 v17, 16, v139
	v_xor_b32_e32 v20, 64, v139
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v144, v2
	v_lshl_or_b32 v2, v70, 5, v4
	v_mov_b32_e32 v4, 0x5410
	v_lshl_or_b32 v5, v5, 8, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 1, v1
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshlrev_b32_e32 v163, 1, v105
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s60, v1
	v_cndmask_b32_e32 v4, 0x1054, v4, vcc_lo
	v_and_or_b32 v1, v0, 2, v166
	v_xor_b32_e32 v22, 0x60, v139
	v_add_nc_u32_e32 v181, 0, v20
	v_or3_b32 v145, v165, v167, v164
	v_lshl_or_b32 v4, v4, 8, v4
	v_or3_b32 v146, v1, v2, v92
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s13, s72, s14
	v_mov_b32_e32 v65, 0
	v_and_b32_e32 v5, 0x760076, v5
	v_and_b32_e32 v4, 0x540054, v4
	v_add_nc_u32_e32 v178, 0, v17
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s72, s72, s29
	v_mov_b32_e32 v58, v65
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v4, v4, 4, v4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_lshr_b32 s14, s70, 4
	s_lshr_b32 s30, s70, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v148, 0x7060706, v5
	v_mov_b32_e32 v57, 0
	v_dual_mov_b32 v60, v65 :: v_dual_and_b32 v147, 0x5040504, v4
	v_add_nc_u32_e32 v4, s54, v158
	v_dual_mov_b32 v62, v65 :: v_dual_add_nc_u32 v5, s70, v97
	v_mov_b32_e32 v61, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v64, v65 :: v_dual_add_nc_u32 v49, 24, v4
	v_add_nc_u32_e32 v24, 28, v4
	v_mad_u64_u32 v[90:91], null, s43, v5, s[28:29]
	v_mov_b32_e32 v63, v65
	v_add_nc_u32_e32 v5, 20, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v91, s42, v24
	v_add_nc_u32_e32 v24, 16, v4
	v_mul_lo_u32 v152, s42, v49
	v_dual_mov_b32 v54, v65 :: v_dual_add_nc_u32 v49, 8, v4
	v_mul_lo_u32 v151, s42, v4
	v_mul_lo_u32 v154, s42, v24
	v_add3_u32 v24, s70, s55, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v157, s42, v49
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v52, v65
	v_dual_mov_b32 v20, v65 :: v_dual_add_nc_u32 v49, 6, v24
	v_add_nc_u32_e32 v50, 4, v24
	v_add_nc_u32_e32 v51, 2, v24
	v_xor_b32_e32 v18, 32, v139
	v_add_nc_u32_e32 v183, 0, v22
	v_mul_lo_u32 v168, s46, v49
	v_mul_lo_u32 v169, s46, v50
	v_mov_b32_e32 v50, v65
	v_mul_lo_u32 v153, s42, v5
	v_add_nc_u32_e32 v5, 12, v4
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v4, 4, v4
	v_mov_b32_e32 v56, v65
	v_mov_b32_e32 v22, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v156, s42, v5
	v_mul_lo_u32 v158, s42, v4
	v_add_nc_u32_e32 v4, 14, v24
	v_add_nc_u32_e32 v5, 12, v24
	v_mul_lo_u32 v170, s46, v51
	v_mov_b32_e32 v51, v65
	s_add_i32 s14, s14, s13
	v_mul_lo_u32 v164, s46, v4
	v_mul_lo_u32 v165, s46, v5
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v4, 10, v24
	v_add_nc_u32_e32 v5, 8, v24
	s_add_i32 s13, s30, s72
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s60, v3
	v_xor_b32_e32 v3, 0x90, v145
	v_xor_b32_e32 v1, 0x120, v145
	v_xor_b32_e32 v2, 0x1b0, v145
	v_xor_b32_e32 v6, 16, v146
	v_xor_b32_e32 v7, 32, v146
	v_xor_b32_e32 v8, 48, v146
	v_xor_b32_e32 v19, 48, v139
	v_xor_b32_e32 v21, 0x50, v139
	v_xor_b32_e32 v23, 0x70, v139
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_mul_i32 s14, s47, s14
	s_add_i32 s15, s13, 7
	v_lshl_add_u32 v150, s14, 1, v134
	s_mul_i32 s39, s47, s15
	s_add_i32 s14, s13, 6
	s_add_i32 s15, s13, 5
	v_mul_lo_u32 v166, s46, v4
	v_mul_lo_u32 v171, s46, v24
	v_add_nc_u32_e32 v179, 0, v18
	v_mov_b32_e32 v18, v65
	v_mul_lo_u32 v167, s46, v5
	s_mul_i32 s57, s47, s14
	s_mul_i32 s58, s47, s15
	s_add_i32 s14, s13, 4
	s_add_i32 s15, s13, 3
	v_lshl_add_u32 v149, v97, 1, 0
	v_dual_mov_b32 v53, v65 :: v_dual_lshlrev_b32 v162, 1, v92
	v_dual_mov_b32 v24, v65 :: v_dual_add_nc_u32 v159, 0, v159
	v_add_nc_u32_e32 v160, 0, v160
	v_add_nc_u32_e32 v161, 0, v161
	v_add_nc_u32_e32 v172, 0, v3
	v_dual_mov_b32 v4, v65 :: v_dual_add_nc_u32 v173, 0, v1
	v_add_nc_u32_e32 v174, 0, v2
	v_add_nc_u32_e32 v175, 0, v6
	v_mov_b32_e32 v6, v65
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v176, 0, v7
	v_add_nc_u32_e32 v177, 0, v8
	v_mov_b32_e32 v8, v65
	v_dual_mov_b32 v5, v65 :: v_dual_add_nc_u32 v180, 0, v19
	v_dual_mov_b32 v7, v65 :: v_dual_add_nc_u32 v182, 0, v21
	v_dual_mov_b32 v19, v65 :: v_dual_add_nc_u32 v184, 0, v23
	v_mov_b32_e32 v21, v65
	v_mov_b32_e32 v23, v65
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v3, v65
	s_mul_i32 s59, s47, s14
	s_mul_i32 s61, s47, s15
	s_add_i32 s14, s13, 1
	s_add_i32 s15, s13, 2
	s_mul_i32 s64, s47, s13
	s_lshl_b32 s13, s70, 1
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_lshl_b32 s56, s47, 3
	s_mul_i32 s62, s47, s14
	s_mul_i32 s63, s47, s15
	s_lshl_b32 s28, s43, 4
	s_lshl1_add_u32 s65, s55, s13
	s_mov_b32 s66, 0x76543210
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_branch .LBB0_32
.LBB0_31:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_waitcnt vmcnt(0)
	v_and_b16 v69.h, 0xff, v69.h
	v_and_b16 v68.l, 0xff, v68.l
	v_and_b16 v66.l, 0xff, v66.l
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v69.h
	v_cmp_ne_u16_e64 s13, 0, v68.l
	v_cmp_ne_u16_e64 s14, 0, v66.l
	v_and_b16 v66.l, 0xff, v67.h
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_add_i32 s22, s70, 2
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s16, s76, vcc_lo
	s_and_b32 s13, s75, s13
	v_cndmask_b32_e64 v70, 0, 1, s16
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v66.l
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_add_i32 s23, s70, 4
	s_add_i32 s24, s70, 6
	s_add_i32 s16, s70, 7
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v66.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s13
	s_and_b32 s13, s74, s15
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s25, s70, 8
	s_add_i32 s17, s70, 9
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v66.l, 8, v66.l
	v_mov_b16_e32 v68.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s13
	s_and_b32 s13, s73, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s26, s70, 10
	s_add_i32 s18, s70, 11
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v66.l, v68.l, v66.l
	v_mov_b16_e32 v68.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s27, s70, 12
	s_add_i32 s19, s70, 13
	s_add_i32 s21, s70, 14
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v67.h, 8, v68.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s20, s70, 15
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v71, s58, v0
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_add_nc_u32_e32 v209, s39, v0
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v72, s57, v0
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v67.h, v70.l, v67.h
	v_add_nc_u32_e32 v70, 0, v145
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v204.h, v204.l
	v_mov_b16_e64 v203.h, v203.l
	v_mov_b16_e64 v200.h, v200.l
	v_mov_b16_e64 v199.h, v199.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	ds_store_b16 v70, v66
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_and_b16 v66.l, 0xff, v67.l
	.loc	1 351 21 is_stmt 1              ; attention_backward.py:351:21
	v_add_nc_u32_e32 v70, s59, v0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v195.h, v195.l
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v90, s28, v90
	v_add_nc_u32_e32 v164, s68, v164
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v66.l
	v_and_b16 v66.l, 0xff, v66.h
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v166, s68, v166
	v_add_nc_u32_e32 v167, s68, v167
	v_add_nc_u32_e32 v168, s68, v168
	v_add_nc_u32_e32 v169, s68, v169
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s13, 0, v66.l
	v_and_b16 v66.l, 0xff, v69.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v69, s61, v0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v170, s68, v170
	v_add_nc_u32_e32 v171, s68, v171
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s54, s13
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s14, 0, v66.l
	v_and_b16 v66.l, 0xff, v68.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_add_nc_u32_e32 v165, s68, v165
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s14, s72, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v66.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s55, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_mov_b32 s55, s51
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v68, 0, 1, s14
	s_and_b32 s14, s67, s15
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s15, s70, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v67.l, v68.l
	v_cndmask_b32_e64 v68, 0, 1, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s14, s70, 3
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v66.l, v67.l, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v67.l, v68.l
	v_cndmask_b32_e64 v68, 0, 1, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s13, s70, 1
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s30, s29
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v66.h, 8, v67.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v67.l, v68.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s54, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v68, s63, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s13, s31
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v66.h, v67.l, v66.h
	ds_store_b16_d16_hi v172, v67
	ds_store_b16 v173, v66
	ds_store_b16_d16_hi v174, v66
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s64, v0
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v67, s62, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	s_clause 0x4
	buffer_load_u8 v69, v69, s[48:51], 0 offen
	buffer_load_u8 v66, v66, s[48:51], 0 offen
	buffer_load_u8 v68, v68, s[48:51], 0 offen
	buffer_load_u8 v71, v71, s[48:51], 0 offen
	buffer_load_u8 v67, v67, s[48:51], 0 offen
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v209, 0x80000000, v209
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s54, s50
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_clause 0x1
	buffer_load_u8 v70, v70, s[48:51], 0 offen
	buffer_load_u8 v210, v209, s[48:51], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	buffer_load_u8 v72, v72, s[48:51], 0 offen
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v209, 15, v66
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v66.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v66.l, 4, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v211, -16, v209
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	s_waitcnt vmcnt(3)
	v_and_b16 v66.h, v67.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v211, v209, v211, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v67
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v68.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v67.l, 4, v67.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v211, v211
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v212, -16, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v212, v209, v212, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v68
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v69.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v68.l, 4, v68.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v213, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v213, v209, v213, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v69
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(2)
	v_and_b16 v66.h, v70.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v69.l, 4, v69.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v209
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v213, v213
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v214, v209, v214, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v70
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v71.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v70.l, 4, v70.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v214, v214
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v215, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v215, v209, v215, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v71
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(0)
	v_and_b16 v66.h, v72.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v71.l, 4, v71.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v215, v215
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v216, -16, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v216, v209, v216, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v72
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v210.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v72.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v217, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v217, v209, v217, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v210
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v210.l, 4, v210.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v218, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v218, v209, v218, vcc_lo
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v209.l, 0
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v209.h, v208.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v218, v218
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v66.h, v209.l
	v_mov_b16_e64 v67.h, v209.l
	v_mov_b16_e64 v68.h, v209.l
	v_mov_b16_e64 v69.h, v209.l
	v_mov_b16_e64 v70.h, v209.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v71.h, v209.l
	v_mov_b16_e64 v72.h, v209.l
	v_mov_b16_e64 v210.h, v209.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v204.l, v209.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v66
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s13, 7, v66
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v203.l, v209.l
	v_mov_b16_e64 v200.l, v209.l
	v_mov_b16_e64 v199.l, v209.l
	v_mov_b16_e64 v195.l, v209.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v66, v66, v219, s13
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v67, 0, v67, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v67
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v67, v67, v219, s14
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v68, 0, v68, s14
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v68
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s15, 7, v68
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v68, v68, v219, s15
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v69, 0, v69, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v69
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s16, 7, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v69, v69, v219, s16
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v70, 0, v70, s16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v70
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s17, 7, v70
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v70, v70, v219, s17
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v71, 0, v71, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v71
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s18, 7, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v71, v71, v219, s18
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s18
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s19, 7, v72
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v72, v72, v219, s19
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s19, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s70, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v210, 0, v210, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v210
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s20, 7, v210
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v210, v210, v219, s20
	.loc	1 378 27 is_stmt 1              ; attention_backward.py:378:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v210, v210
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s21, s31
	s_cselect_b32 s21, -1, 0
	.loc	1 378 26 is_stmt 0              ; attention_backward.py:378:26
	s_and_b32 s20, s3, s20
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e64 v219, 0x80000000, v150, s20
	v_cndmask_b32_e32 v220, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s70, s70, 16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v221, 0x80000000, v150, vcc_lo
	s_clause 0x1
	buffer_load_u16 v219, v219, s[52:55], 0 offen
	buffer_load_u16 v220, v220, s[52:55], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s39, s39, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v221, v221, s[52:55], 0 offen
	v_cndmask_b32_e32 v222, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s57, s57, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v223, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v222, v222, s[52:55], 0 offen
	v_cndmask_b32_e32 v224, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v223, v223, s[52:55], 0 offen
	v_cndmask_b32_e32 v225, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v224, v224, s[52:55], 0 offen
	v_cndmask_b32_e32 v226, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s25
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v225, v225, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s58, s58, s56
	s_add_i32 s59, s59, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v226, v226, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s61, s61, s56
	s_add_i32 s62, s62, s56
	s_add_i32 s63, s63, s56
	s_add_i32 s64, s64, s56
	s_add_i32 s30, s30, 8
	s_add_i32 s65, s65, 32
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v219, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v211, v211, v219
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v219, 16, v220
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v66, v66, v219 :: v_dual_lshlrev_b32 v219, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v66, v66
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v212, v212, v219 :: v_dual_lshlrev_b32 v219, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v212, v212
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v67, v67, v219
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v219, 16, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v67, v67
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v213, v213, v219
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v219, 16, v224
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v68, v68, v219 :: v_dual_lshlrev_b32 v219, 16, v225
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v214, v214, v219 :: v_dual_lshlrev_b32 v219, 16, v226
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v69, v69, v219
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v219, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v213, v213
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v220, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s26
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v219, v219, s[52:55], 0 offen
	v_cndmask_b32_e32 v221, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v220, v220, s[52:55], 0 offen
	v_cndmask_b32_e32 v222, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s27
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v221, v221, s[52:55], 0 offen
	v_cndmask_b32_e32 v223, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v222, v222, s[52:55], 0 offen
	v_cndmask_b32_e32 v224, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v223, v223, s[52:55], 0 offen
	v_cndmask_b32_e32 v225, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s19
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v224, v224, s[52:55], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v68, v68
	v_cmp_o_f32_e64 s18, v214, v214
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v225, v225, s[52:55], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v69, v69
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s70, s71
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v219, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v215, v215, v219
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v219, 16, v220
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s20, v215, v215
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v70, v70, v219 :: v_dual_lshlrev_b32 v219, 16, v221
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s21, v70, v70
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v216, v216, v219 :: v_dual_lshlrev_b32 v219, 16, v222
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s22, v216, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v71, v71, v219
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v219, 16, v223
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s23, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v217, v217, v219
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v219, 16, v224
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s24, v217, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v72, v72, v219 :: v_dual_cndmask_b32 v219, 0x80000000, v150
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v211, v211
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_add_nc_u32_e32 v150, s69, v150
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s25, v72, v72
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v219, v219, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v219, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v210, v210, v219 :: v_dual_lshlrev_b32 v219, 16, v225
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s26, v210, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v218, v218, v219
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v219, v211, 16, 1
	v_add3_u32 v211, v211, v219, 0x7fff
	v_bfe_u32 v219, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v219, v66, v219, 0x7fff
	v_bfe_u32 v66, v212, 16, 1
	v_add3_u32 v212, v212, v66, 0x7fff
	v_bfe_u32 v66, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v66, 0x7fff
	v_bfe_u32 v66, v213, 16, 1
	v_add3_u32 v213, v213, v66, 0x7fff
	v_bfe_u32 v66, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v66, 0x7fff
	v_bfe_u32 v66, v214, 16, 1
	v_add3_u32 v214, v214, v66, 0x7fff
	v_bfe_u32 v66, v69, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v66, 0x7fff
	v_bfe_u32 v66, v215, 16, 1
	v_add3_u32 v66, v215, v66, 0x7fff
	v_bfe_u32 v215, v70, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v211.h, vcc_lo
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_add_nc_u32_e32 v211, 0, v146
	ds_load_u8_d16_hi v185, v211
	ds_load_u8_d16_hi v186, v211 offset:64
	ds_load_u8_d16_hi v187, v175
	ds_load_u8_d16_hi v188, v175 offset:64
	ds_load_u8_d16_hi v189, v176
	ds_load_u8_d16_hi v190, v176 offset:64
	ds_load_u8_d16_hi v193, v177
	ds_load_u8_d16_hi v197, v177 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v70, v70, v215, 0x7fff
	v_bfe_u32 v215, v216, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s20
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v135, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v215, v216, v215, 0x7fff
	v_bfe_u32 v216, v71, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v219.h, s13
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v135, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s21
	v_cmp_o_f32_e64 s27, v218, v218
	v_add3_u32 v71, v71, v216, 0x7fff
	v_bfe_u32 v216, v217, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v136, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v212.h, s14
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v136, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v215.h, s22
	v_add3_u32 v216, v217, v216, 0x7fff
	v_bfe_u32 v217, v72, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v137, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s15
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v137, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v71.h, s23
	v_add3_u32 v72, v72, v217, 0x7fff
	v_bfe_u32 v217, v210, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v138, v66
	ds_store_b16_d16_hi v138, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v213.h, s16
	v_cndmask_b16 v66.h, 0x7fff, v216.h, s24
	v_add3_u32 v210, v210, v217, 0x7fff
	v_bfe_u32 v217, v218, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v67, v65
	ds_store_b16 v140, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v140, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v217, v218, v217, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v72.h, s25
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v72, v65
	ds_store_b16 v141, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v214.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v68, v65
	ds_store_b16_d16_hi v141, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v217.h, s27
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v70, v65
	ds_store_b16 v142, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s19
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v69, v65
	ds_store_b16_d16_hi v142, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v210.h, s26
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v143, v66
	ds_store_b16_d16_hi v143, v66 offset:1024
	v_add_nc_u32_e32 v66, 0, v139
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[210:213], v66
	ds_load_b128 v[214:217], v178
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v225, v72
	v_dual_mov_b32 v223, v70 :: v_dual_mov_b32 v222, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v221, v68 :: v_dual_mov_b32 v224, v71
	v_dual_mov_b32 v220, v67 :: v_dual_mov_b32 v219, v66
	v_mov_b32_e32 v218, v65
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v70, v76
	v_bfe_i32 v76, v207, 0, 8
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v67, v79
	v_mov_b16_e64 v207.l, v76.l
	v_cvt_f32_i32_e32 v66, v80
	v_mul_f32_e32 v70, v116, v70
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[9:16], v[218:225]
	ds_load_b128 v[210:213], v179
	ds_load_b128 v[214:217], v180
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v207.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v208, 15, v207
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v71, v116, v71
	v_mul_f32_e32 v68, v116, v68
	v_mul_f32_e32 v69, v116, v69
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v206, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v66, v116, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v206.l, v76.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v206.l, 15
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[25:32], v[218:225]
	ds_load_b128 v[210:213], v181
	ds_load_b128 v[214:217], v182
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[33:40], v[218:225]
	ds_load_b128 v[210:213], v183
	ds_load_b128 v[214:217], v184
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[41:48], v[218:225]
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v212, -16, v208
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v211, v74
	v_cvt_f32_i32_e32 v210, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v219, v144
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v208, v208, v212, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v202, 0, 8
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v212, 15, v206
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v221, v144
	v_sub_f32_e32 v74, v223, v144
	v_sub_f32_e32 v72, v225, v144
	v_mov_b16_e64 v202.l, v76.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v213, -16, v212
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v67, v116, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v202.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_dual_cndmask_b32 v212, v212, v213 :: v_dual_and_b32 v213, 15, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v201, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v214, -16, v213
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v76.h, v209.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v201.l, v76.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v213, v213, v214, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v201.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v214, 15, v201
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v201.h, v205.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v205, v208
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v208.h, v209.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v207.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v215, -16, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v214, v214, v215, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v207.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v207, v76, v215, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v206.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v206.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v207, v207
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v206, v76, v215, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v202.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v202.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v206, v206
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v206, v209, v206
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v206, 0, v206, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v202, v76, v215, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v201.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v201.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v201.l, v209.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s19, v206, v206
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v202, v202
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v205, v205, v201
	v_mul_f32_e32 v201, v207, v201
	v_cvt_f32_i32_e32 v207, v213
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v202, v202, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v201, 0, v201, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v207, v207, v204 :: v_dual_cndmask_b32 v76, v76, v215
	v_cvt_f32_i32_e32 v204, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v202, 0, v202, s1
	v_cmp_o_f32_e64 s16, v201, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	v_mul_f32_e32 v204, v204, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s17, v202, v202
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v203
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v203, 0, v205, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v204, 0, v204, s0
	v_cndmask_b32_e64 v76, 0, v76, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v205, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	v_cmp_o_f32_e64 s14, v204, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s18, v76, v76
	v_add3_u32 v203, v203, v205, 0x7fff
	v_cndmask_b32_e64 v205, 0, v207, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v207, v205, 16, 1
	v_cmp_o_f32_e64 s13, v205, v205
	v_add3_u32 v205, v205, v207, 0x7fff
	v_bfe_u32 v207, v204, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v204, v204, v207, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v207, v212
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v203.l, 0x7fff, v204.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v207, v209, v207 :: v_dual_add_nc_u32 v204, v135, v134
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v209.h, v186.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v207, 0, v207, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v208.l, v207.h
	v_cmp_o_f32_e64 s15, v207, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v208, 1, v208
	v_add3_u32 v207, v207, v208, 0x7fff
	v_bfe_u32 v208, v201, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v201, v201, v208, 0x7fff
	v_bfe_u32 v208, v202, 16, 1
	v_cndmask_b16 v201.l, 0x7fff, v203.h, vcc_lo
	v_cndmask_b16 v201.h, 0x7fff, v201.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v202, v202, v208, 0x7fff
	v_bfe_u32 v208, v76, 16, 1
	v_cndmask_b16 v202.l, 0x7fff, v205.h, s13
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v76, v76, v208, 0x7fff
	v_mov_b16_e64 v208.h, v209.l
	v_mov_b16_e64 v208.l, v206.h
	v_cndmask_b16 v76.l, 0x7fff, v207.h, s15
	v_cndmask_b16 v203.h, 0x7fff, v76.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_and_b32_e32 v208, 1, v208
	ds_store_2addr_stride64_b32 v204, v202, v203 offset0:2 offset1:3
	v_add3_u32 v206, v206, v208, 0x7fff
	v_cndmask_b16 v76.h, 0x7fff, v206.h, s19
	ds_store_2addr_stride64_b32 v204, v76, v201 offset1:1
	v_bfe_i32 v76, v198, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v198.l, v76.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v198.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v201, 15, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v197, 0, 8
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v205, -16, v201
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v76.h, v209.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v197.l, v76.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v201, v201, v205, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v197.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v205, 15, v197
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v201, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v198.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v206, -16, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v201, v201, v200
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v205, v205, v206, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v198.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v206, -16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v77, v218, v144 :: v_dual_cndmask_b32 v198, v76, v206
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v197.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v197.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v198, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v198, v198, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v206, -16, v76
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v75, v222, v144
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v200, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v198, 0, v198, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v76, v76, v206, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v200, v200, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v198, v198
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v200, 0, v200, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v199
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v199, 0, v201, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v200, v200
	v_cndmask_b32_e64 v76, 0, v76, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v201, v199, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_cmp_o_f32_e64 s15, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v199, v199, v201, 0x7fff
	v_bfe_u32 v201, v200, 16, 1
	v_add3_u32 v200, v200, v201, 0x7fff
	v_bfe_u32 v201, v198, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v199.l, 0x7fff, v200.h, s13
	v_add3_u32 v198, v198, v201, 0x7fff
	v_bfe_u32 v201, v76, 16, 1
	v_cndmask_b16 v198.l, 0x7fff, v199.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v198.h, 0x7fff, v198.h, s14
	v_add3_u32 v76, v76, v201, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v199.h, 0x7fff, v76.h, s15
	v_bfe_i32 v76, v193, 0, 8
	v_mov_b16_e64 v193.l, v76.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v79, v220, v144 :: v_dual_and_b32 v200, 15, v193
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v193.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v201, -16, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v191, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v76.h, v209.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v200, v200, v201, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v191.l, v76.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v191.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v201, 15, v191
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v191.h, v196.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v196, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v193.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v202, -16, v201
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v201, v201, v202, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v193.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v202, -16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v202, v76, v202, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v191.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v191.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v191.l, v209.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v200, v202
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v196, v196, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v191, v200, v191
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v203, -16, v76
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v200, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v191, 0, v191, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v76, v76, v203, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v200, v200, v195
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v191, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	v_mul_f32_e32 v76, v76, v195
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v195, 0, v196, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v76, 0, v76, s1
	v_bfe_u32 v196, v195, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s15, v76, v76
	v_add3_u32 v195, v195, v196, 0x7fff
	v_cndmask_b32_e64 v196, 0, v200, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v200, v196, 16, 1
	v_cmp_o_f32_e64 s13, v196, v196
	v_add3_u32 v196, v196, v200, 0x7fff
	v_bfe_u32 v200, v191, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v191, v191, v200, 0x7fff
	v_bfe_u32 v200, v76, 16, 1
	v_cndmask_b16 v191.l, 0x7fff, v195.h, vcc_lo
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v76, v76, v200, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s13
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s15
	ds_store_2addr_stride64_b32 v204, v198, v199 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v204, v191, v76 offset0:6 offset1:7
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v194.l
	v_mov_b16_e64 v76.l, v209.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v191, v116, v210
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v76, v191, v76, -v155
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v191.h, v192.l
	v_mov_b16_e64 v191.l, v209.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v192, v116, v211
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v191, v192, v191, -v155
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v192, v76
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v76.l, 1, v185.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v191, v191
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v76.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v76, 0, v192, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v77, v76, v77
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v76.l, 1, v187.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v77, s38, v77
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v76.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v73, v224, v144 :: v_dual_cndmask_b32 v76, 0, v191
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v76, v76, v78
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v78, v77, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v76, s38, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v77, v77, v78, 0x7fff
	v_bfe_u32 v78, v76, 16, 1
	v_cmp_o_f32_e64 s13, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v76, v76, v78, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v77.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s13
	v_permlanex16_b32 v77, v76, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v191, v77, v76, v147
	v_perm_b32 v192, v77, v76, v148
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v190.l
	v_mov_b16_e64 v76.l, v209.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v71, v71, v76, -v155
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v189.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v71
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v76, v70, v76, -v155
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v70.l, 1, v189.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v76, v76
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v71, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v70, v79
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v70.l, 1, v193.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s38, v71
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v76, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v76, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v70, v80
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v71, v71, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v70, s38, v70
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v76, v70, 16, 1
	v_cmp_o_f32_e64 s13, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v70, v70, v76, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v71.h, vcc_lo
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v70, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v193, v71, v70, v147
	v_perm_b32 v194, v71, v70, v148
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v188.l
	v_mov_b16_e64 v70.l, v209.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v69, v69, v70, -v155
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v187.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v70, v68, v70, -v155
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v68.l, 1, v186.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v68.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v68, 0, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v68, v75
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v68.l, 1, v188.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s38, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v68.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v68, 0, v70, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v68, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s38, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v70, v68, 16, 1
	v_cmp_o_f32_e64 s13, v68, v68
	v_add3_u32 v68, v68, v70, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v69.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s13
	v_permlanex16_b32 v69, v68, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v195, v69, v68, v147
	v_perm_b32 v196, v69, v68, v148
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v68.h, v185.l
	v_mov_b16_e64 v68.l, v209.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v67, v67, v68, -v155
	v_fma_f32 v68, v66, v209, -v155
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v66.l, 1, v190.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v66.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v66, 0, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v66, v73
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v66.l, 1, v197.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v66.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v66, 0, v68, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v66, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v66, s38, v66 :: v_dual_mul_f32 v67, s38, v67
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s13, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v68, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v67, v67, v68, 0x7fff
	v_bfe_u32 v68, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v66, v68, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s13
	v_permlanex16_b32 v67, v66, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v197, v67, v66, v147
	v_perm_b32 v198, v67, v66, v148
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	ds_load_u16_d16 v68, v149 offset:608
	ds_load_u16_d16 v67, v149 offset:352
	ds_load_u16_d16 v201, v149 offset:512
	ds_load_u16_d16 v202, v149 offset:768
	ds_load_u16_d16 v200, v149 offset:256
	ds_load_u16_d16 v209, v149 offset:576
	ds_load_u16_d16 v210, v149 offset:832
	ds_load_u16_d16 v203, v149 offset:1024
	ds_load_u16_d16 v211, v149 offset:1088
	ds_load_u16_d16 v204, v149 offset:1280
	ds_load_u16_d16 v212, v149 offset:1344
	ds_load_u16_d16 v205, v149 offset:1536
	ds_load_u16_d16 v213, v149 offset:1600
	ds_load_u16_d16 v206, v149 offset:1792
	ds_load_u16_d16 v199, v149
	ds_load_u16_d16 v216, v149 offset:288
	ds_load_u16_d16 v215, v149 offset:32
	ds_load_u16_d16 v207, v149 offset:64
	ds_load_u16_d16 v208, v149 offset:320
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v67, v149 offset:480
	ds_load_u16_d16 v66, v149 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v201, v149 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v200, v149 offset:384
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v209, v149 offset:704
	ds_load_u16_d16_hi v202, v149 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v210, v149 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v203, v149 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v211, v149 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v204, v149 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v212, v149 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v205, v149 offset:1664
	ds_load_u16_d16 v214, v149 offset:1856
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v213, v149 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v206, v149 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v199, v149 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v215, v149 offset:160
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v207, v149 offset:192
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v66, v149 offset:224
	ds_load_u16_d16 v217, v149 offset:544
	ds_load_u16_d16_hi v216, v149 offset:416
	ds_load_u16_d16_hi v208, v149 offset:448
	ds_load_u16_d16 v69, v149 offset:864
	ds_load_u16_d16 v70, v149 offset:1120
	ds_load_u16_d16 v71, v149 offset:1376
	ds_load_u16_d16 v72, v149 offset:1632
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v214, v149 offset:1984
	ds_load_u16_d16 v73, v149 offset:1888
	ds_load_u16_d16 v218, v149 offset:800
	ds_load_u16_d16 v219, v149 offset:1056
	ds_load_u16_d16 v220, v149 offset:1312
	ds_load_u16_d16 v221, v149 offset:1568
	ds_load_u16_d16 v222, v149 offset:1824
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v217, v149 offset:672
	ds_load_u16_d16_hi v68, v149 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v218, v149 offset:928
	ds_load_u16_d16_hi v69, v149 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v219, v149 offset:1184
	ds_load_u16_d16_hi v70, v149 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v220, v149 offset:1440
	ds_load_u16_d16_hi v71, v149 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v221, v149 offset:1696
	ds_load_u16_d16_hi v72, v149 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v222, v149 offset:1952
	ds_load_u16_d16_hi v73, v149 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[199:206], v[191:198], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[207:214], v[191:198], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[215:222], v[191:198], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[66:73], v[191:198], v[1:8]
	s_cbranch_scc0 .LBB0_52
.LBB0_32:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v66, s70, v92
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v67, s65, v162
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v79, v81, v166
	v_add_nc_u32_e32 v76, v81, v169
	v_add_nc_u32_e32 v75, v81, v170
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v74, 14, v66
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v68, 2, v66
	v_add_nc_u32_e32 v69, 4, v66
	v_add_nc_u32_e32 v70, 6, v66
	v_add_nc_u32_e32 v73, 12, v66
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v77, v81, v168
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v72, 10, v66
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v80, v81, v165
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v71, 8, v66
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v68
	v_cmp_gt_i32_e64 s19, s31, v74
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v74, v81, v171
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v68, 8, v67
	v_add_nc_u32_e32 v69, 12, v67
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v70
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v70, 16, v67
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v71
	v_cmp_gt_i32_e64 s17, s31, v72
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v72, 24, v67
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v73
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v73, 28, v67
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v78, v81, v167
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v71, 20, v67
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v185, v81, v164
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v66, 4, v67
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v69, 0x80000000, v69, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v71, 0x80000000, v71, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v185, 0x80000000, v185, vcc_lo
	s_clause 0x7
	buffer_load_u8 v206, v74, s[40:43], 0 offen
	buffer_load_u8 v207, v75, s[40:43], 0 offen
	buffer_load_u8 v202, v76, s[40:43], 0 offen
	buffer_load_u8 v201, v77, s[40:43], 0 offen
	buffer_load_u8 v198, v78, s[40:43], 0 offen
	buffer_load_u8 v197, v79, s[40:43], 0 offen
	buffer_load_u8 v193, v80, s[40:43], 0 offen
	buffer_load_u8 v191, v185, s[40:43], 0 offen
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v74, s70, v105
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v75, s65, v163
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v76, 2, v74
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v74
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v77, 4, v74
	v_add_nc_u32_e32 v78, 6, v74
	v_add_nc_u32_e32 v79, 8, v74
	v_add_nc_u32_e32 v80, 10, v74
	v_add_nc_u32_e32 v185, 12, v74
	v_add_nc_u32_e32 v186, 14, v74
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v74, 0x80000000, v75, vcc_lo
	v_add_nc_u32_e32 v187, 4, v75
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v188, 8, v75
	v_add_nc_u32_e32 v189, 12, v75
	v_add_nc_u32_e32 v190, 16, v75
	v_add_nc_u32_e32 v192, 20, v75
	v_cndmask_b32_e32 v76, 0x80000000, v187, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v77
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v194, 24, v75
	v_add_nc_u32_e32 v75, 28, v75
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v93, v206
	s_waitcnt vmcnt(6)
	ds_store_b8 v93, v207 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v94, v202
	s_waitcnt vmcnt(4)
	ds_store_b8 v94, v201 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v95, v198
	s_waitcnt vmcnt(2)
	ds_store_b8 v95, v197 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v96, v193
	s_waitcnt vmcnt(0)
	ds_store_b8 v96, v191 offset:64
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v77, 0x80000000, v188, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v68, 0x80000000, v68, s14
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[213:214], v160
	ds_load_b64 v[215:216], v161
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v78, 0x80000000, v189, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v79
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v73, 0x80000000, v73, s19
	v_cndmask_b32_e32 v79, 0x80000000, v190, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v80
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v70, 0x80000000, v70, s16
	v_cndmask_b32_e32 v80, 0x80000000, v192, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v185
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v185, 0x80000000, v194, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v186
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v72, 0x80000000, v72, s18
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	s_clause 0xf
	buffer_load_u16 v208, v67, s[44:47], 0 offen
	buffer_load_u16 v205, v66, s[44:47], 0 offen
	buffer_load_u16 v204, v68, s[44:47], 0 offen
	buffer_load_u16 v203, v69, s[44:47], 0 offen
	buffer_load_u16 v200, v70, s[44:47], 0 offen
	buffer_load_u16 v199, v71, s[44:47], 0 offen
	buffer_load_u16 v196, v72, s[44:47], 0 offen
	buffer_load_u16 v195, v73, s[44:47], 0 offen
	buffer_load_u16 v194, v74, s[44:47], 0 offen
	buffer_load_u16 v192, v76, s[44:47], 0 offen
	buffer_load_u16 v190, v77, s[44:47], 0 offen
	buffer_load_u16 v189, v78, s[44:47], 0 offen
	buffer_load_u16 v188, v79, s[44:47], 0 offen
	buffer_load_u16 v187, v80, s[44:47], 0 offen
	buffer_load_u16 v185, v185, s[44:47], 0 offen
	buffer_load_u16 v186, v75, s[44:47], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v66, 0, v117
	ds_load_b64 v[209:210], v66
	ds_load_b64 v[211:212], v159
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v80, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, v68 :: v_dual_mov_b32 v77, v69
	v_dual_mov_b32 v78, v70 :: v_dual_mov_b32 v79, v71
	v_dual_mov_b32 v75, v67 :: v_dual_mov_b32 v74, v66
	v_dual_mov_b32 v73, v65 :: v_dual_add_nc_u32 v66, s70, v97
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v107
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[209:210], v[82:83], v[73:80] neg_lo:[1,1,0]
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v66
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[211:212], v[84:85], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s75, s5, s13
	s_and_b32 s73, s6, s13
	s_and_b32 s55, s7, s13
	s_and_b32 s54, s8, s13
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[213:214], v[86:87], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s76, s9, s13
	s_and_b32 s74, s10, s13
	s_and_b32 s72, s11, s13
	s_and_b32 s67, s12, s13
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[215:216], v[88:89], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccz .LBB0_49
; %bb.33:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 328 13                        ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccz .LBB0_50
.LBB0_34:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_mov_b16_e32 v66.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v66.l
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s75
	s_cbranch_execnz .LBB0_51
.LBB0_35:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s73
	s_cbranch_execz .LBB0_37
.LBB0_36:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v66, v158, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, vcc_lo, s34, v66
	v_add_co_ci_u32_e64 v67, null, s35, v67, vcc_lo
	global_load_d16_u8 v66, v[66:67], off
.LBB0_37:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s55
	s_cbranch_execz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v67, v157, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v70, 31, v67
	v_add_co_u32 v69, vcc_lo, s34, v67
	v_add_co_ci_u32_e64 v70, null, s35, v70, vcc_lo
	global_load_d16_u8 v67, v[69:70], off
.LBB0_39:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s54
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v69, v156, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s34, v69
	v_add_co_ci_u32_e64 v70, null, s35, v70, vcc_lo
	global_load_d16_hi_u8 v66, v[69:70], off
.LBB0_41:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.h, v67.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s76
	s_cbranch_execz .LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v69, v154, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s34, v69
	v_add_co_ci_u32_e64 v70, null, s35, v70, vcc_lo
	global_load_d16_hi_u8 v69, v[69:70], off
.LBB0_43:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s74
	s_cbranch_execz .LBB0_45
; %bb.44:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v70, v153, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, vcc_lo, s34, v70
	v_add_co_ci_u32_e64 v71, null, s35, v71, vcc_lo
	global_load_d16_hi_u8 v67, v[70:71], off
.LBB0_45:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	v_mov_b16_e32 v68.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.l, v68.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s72
	s_cbranch_execz .LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v70, v152, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, vcc_lo, s34, v70
	v_add_co_ci_u32_e64 v71, null, s35, v71, vcc_lo
	global_load_d16_u8 v69, v[70:71], off
.LBB0_47:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s67
	s_cbranch_execz .LBB0_31
; %bb.48:                               ;   in Loop: Header=BB0_32 Depth=1
	v_add_nc_u32_e32 v70, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, vcc_lo, s34, v70
	v_add_co_ci_u32_e64 v71, null, s35, v71, vcc_lo
	global_load_d16_hi_u8 v68, v[70:71], off
	s_branch .LBB0_31
.LBB0_49:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 327 26 is_stmt 1              ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v108
	v_cmp_le_i32_e64 s13, v66, v109
	v_cmp_le_i32_e64 s14, v66, v110
	v_cmp_le_i32_e64 s15, v66, v111
	v_cmp_le_i32_e64 s16, v66, v112
	v_cmp_le_i32_e64 s17, v66, v113
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s20, vcc_lo, s75
	s_and_b32 s13, s13, s73
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s18, v66, v114
	v_cmp_le_i32_e64 s19, v66, v115
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s55
	s_and_b32 s15, s15, s54
	s_and_not1_b32 s21, s75, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s76
	s_and_b32 s17, s17, s74
	s_or_b32 s75, s21, s20
	s_or_b32 s73, s22, s13
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s54, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s72
	s_and_b32 s19, s19, s67
	s_or_b32 s55, s13, s14
	s_or_b32 s54, s20, s15
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s74, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s15, s16
	s_and_not1_b32 s13, s72, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s67, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s72, s13, s14
	s_or_b32 s67, s15, s16
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_34
.LBB0_50:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v66, v118
	v_cmp_ge_i32_e64 s13, v66, v119
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v66, v126
	v_cmp_le_i32_e64 s21, v66, v127
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s14, v66, v120
	v_cmp_ge_i32_e64 s15, v66, v121
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s22, v66, v128
	v_cmp_le_i32_e64 s23, v66, v129
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s16, v66, v122
	v_cmp_ge_i32_e64 s17, v66, v123
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s24, v66, v130
	v_cmp_le_i32_e64 s25, v66, v131
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s13, s13, s21
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v66, v124
	v_cmp_ge_i32_e64 s19, v66, v125
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v66, v132
	v_cmp_le_i32_e64 s27, v66, v133
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, s20, s75
	s_and_b32 s13, s13, s73
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s55
	s_and_b32 s15, s15, s54
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s75, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s76
	s_and_b32 s17, s17, s74
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s75, s21, s20
	s_or_b32 s73, s22, s13
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s54, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s72
	s_and_b32 s19, s19, s67
	s_or_b32 s55, s13, s14
	s_or_b32 s54, s20, s15
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s74, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s15, s16
	s_and_not1_b32 s13, s72, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s67, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s72, s13, s14
	s_or_b32 s67, s15, s16
	v_mov_b16_e32 v66.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v66.l
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s75
	s_cbranch_execz .LBB0_35
.LBB0_51:                               ;   in Loop: Header=BB0_32 Depth=1
	v_add_nc_u32_e32 v67, v151, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, vcc_lo, s34, v67
	v_add_co_ci_u32_e64 v68, null, s35, v68, vcc_lo
	global_load_d16_u8 v68, v[67:68], off
	s_or_b32 exec_lo, exec_lo, s13
	s_and_saveexec_b32 s13, s73
	s_cbranch_execnz .LBB0_36
	s_branch .LBB0_37
.LBB0_52:                               ; %._crit_edge82
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v40, v98, s60
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s60, v105
	v_cmp_gt_i32_e64 s2, s60, v106
	v_cmp_gt_i32_e64 s3, s60, v104
	v_cmp_gt_i32_e64 s5, s60, v103
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v41, v40, v105, 2
	v_add_lshl_u32 v42, v40, v106, 2
	v_add_lshl_u32 v43, v40, v104, 2
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s60, v102
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v57, v41, s[36:39], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	v_add_lshl_u32 v41, v40, v103, 2
	s_clause 0x1
	buffer_store_b32 v58, v42, s[36:39], 0 offen
	buffer_store_b32 v59, v43, s[36:39], 0 offen
	v_add_lshl_u32 v42, v40, v102, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s7, s60, v101
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v39, 16, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s60, v100
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v43, v40, v101, 2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v38, 18, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s60, v99
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v44, v40, v100, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v37, 20, v105
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s60, v39
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v41, s[36:39], 0 offen
	buffer_store_b32 v61, v42, s[36:39], 0 offen
	v_add_lshl_u32 v41, v40, v99, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v36, 22, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s60, v38
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v39, v40, v39, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 24, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s60, v37
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v38, v40, v38, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v34, 26, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s60, v36
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v37, v40, v37, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v33, 28, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s60, v35
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v36, v40, v36, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v32, 30, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s60, v34
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v35, v40, v35, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v31, 32, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s60, v33
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v34, v40, v34, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v30, 34, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s60, v32
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v33, v40, v33, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v29, 36, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s60, v31
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v32, v40, v32, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s60, v30
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v31, v40, v31, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s60, v29
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v30, v40, v30, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v28, 38, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v29, v40, v29, 2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v27, 40, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v26, 42, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s60, v28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v25, 44, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s60, v27
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0xb
	buffer_store_b32 v62, v43, s[36:39], 0 offen
	buffer_store_b32 v63, v44, s[36:39], 0 offen
	buffer_store_b32 v64, v41, s[36:39], 0 offen
	buffer_store_b32 v49, v39, s[36:39], 0 offen
	buffer_store_b32 v50, v38, s[36:39], 0 offen
	buffer_store_b32 v51, v37, s[36:39], 0 offen
	buffer_store_b32 v52, v36, s[36:39], 0 offen
	buffer_store_b32 v53, v35, s[36:39], 0 offen
	buffer_store_b32 v54, v34, s[36:39], 0 offen
	buffer_store_b32 v55, v33, s[36:39], 0 offen
	buffer_store_b32 v56, v32, s[36:39], 0 offen
	buffer_store_b32 v17, v31, s[36:39], 0 offen
	v_add_lshl_u32 v17, v40, v28, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 46, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s60, v26
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v18, v30, s[36:39], 0 offen
	buffer_store_b32 v19, v29, s[36:39], 0 offen
	v_add_lshl_u32 v18, v40, v27, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 48, v105
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s60, v25
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v40, v26, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 50, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s60, v16
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v40, v25, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 52, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s60, v15
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v40, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s60, v14
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v40, v15, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s60, v13
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v40, v14, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 54, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v40, v13, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 56, v105
	v_or_b32_e32 v9, 60, v105
	v_or_b32_e32 v10, 58, v105
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s60, v12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s30, s60, v11
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x5
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v25, s[36:39], 0 offen
	buffer_store_b32 v24, v16, s[36:39], 0 offen
	buffer_store_b32 v1, v15, s[36:39], 0 offen
	v_add_lshl_u32 v1, v40, v12, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s60, v10
	v_cmp_gt_i32_e32 vcc_lo, s60, v9
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v2, v14, s[36:39], 0 offen
	buffer_store_b32 v3, v13, s[36:39], 0 offen
	v_add_lshl_u32 v2, v40, v11, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s60, v0
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v40, v10, 2
	v_add_lshl_u32 v9, v40, v9, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v40, v0, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	buffer_store_b32 v8, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp324:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 184
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 87
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26624
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 89
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x87 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x61 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           1
        .value_kind:     by_value
      - .offset:         149
        .size:           1
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
