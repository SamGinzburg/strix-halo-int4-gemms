	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b64 s[34:35], s[0:1], 0x78
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v95, 5, v0
	v_and_b32_e32 v94, 31, v0
	s_clause 0x2
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_load_b128 s[36:39], s[0:1], 0x38
	v_and_b32_e32 v135, 32, v0
	v_or_b32_e32 v96, 2, v95
	v_or_b32_e32 v97, 4, v95
	v_or_b32_e32 v98, 6, v95
	v_or_b32_e32 v99, 8, v95
	v_or_b32_e32 v100, 10, v95
	v_or_b32_e32 v101, 12, v95
	v_or_b32_e32 v102, 14, v95
	v_and_b32_e32 v136, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s16, s3, s30
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[81:82], null, s34, v95, v[94:95]
	s_cselect_b32 s19, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s46, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[82:83], null, s34, 6, v[81:82]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v96
	v_or_b32_e32 v3, s46, v97
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v103, s34, 1, v81
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v98
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v104, s34, 2, v81
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v99
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[83:84], null, s34, 10, v[81:82]
	v_lshl_add_u32 v105, s34, 3, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[84:85], null, s34, 12, v[81:82]
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v101
	v_or_b32_e32 v8, s46, v102
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[85:86], null, s34, 14, v[81:82]
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
	s_sub_i32 s47, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s47, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s50, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v95
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	v_or_b32_e32 v10, 18, v1
	v_or_b32_e32 v11, 20, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v15, 28, v1
	v_or_b32_e32 v12, 22, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v13, 24, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v14, 26, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
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
	s_abs_i32 s48, s50
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s51, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s49, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s49
	s_sub_i32 s55, 0, s49
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s46, 4
	s_or_b32 s8, s46, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v6, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s46, 6
	s_or_b32 s3, s46, 7
	s_or_b32 s10, s46, 8
	s_or_b32 s12, s46, 9
	s_or_b32 s13, s46, 10
	s_or_b32 s14, s46, 11
	s_or_b32 s11, s46, 12
	s_or_b32 s15, s46, 13
	s_or_b32 s17, s46, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s44, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s26, s46, 15
	s_or_b32 s27, s46, 16
	s_or_b32 s28, s46, 17
	s_or_b32 s33, s46, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s44, s44, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s42, s46, 19
	s_or_b32 s43, s46, 20
	s_or_b32 s45, s46, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s52, s46, 22
	s_or_b32 s53, s46, 23
	s_or_b32 s54, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s55, s55, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s55, s44, s55
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s81, s46, 26
	s_or_b32 s82, s46, 27
	s_or_b32 s83, s46, 28
	s_or_b32 s84, s46, 29
	s_or_b32 s85, s46, 30
	s_or_b32 s86, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s55
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v100
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s5, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s6, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s26, s30
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s28, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s33, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s42, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s43, s30
	s_mov_b32 s43, 0x31027000
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s45, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s52, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s53, s30
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s54, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s52, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s28, s16, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s42, s28, s34
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v9, s42, v81
	v_add_nc_u32_e32 v1, s42, v103
	v_add_nc_u32_e32 v2, s42, v104
	v_add_nc_u32_e32 v3, s42, v82
	v_add_nc_u32_e32 v4, s42, v105
	v_mad_u64_u32 v[10:11], null, s34, 18, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v9, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v5, s42, v83
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v8, s34, 4, v9
	v_mad_u64_u32 v[11:12], null, s34, 20, v[9:10]
	v_mad_u64_u32 v[12:13], null, s34, 22, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[13:14], null, s34, 24, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v3, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v6, s42, v84
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v7, s42, v85
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s41, s41, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v8, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v8, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v16, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u8 v6, v15, s[40:43], 0 offen
	buffer_load_u8 v7, v1, s[40:43], 0 offen
	buffer_load_u8 v4, v2, s[40:43], 0 offen
	buffer_load_u8 v2, v3, s[40:43], 0 offen
	buffer_load_u8 v3, v5, s[40:43], 0 offen
	buffer_load_u8 v1, v8, s[40:43], 0 offen
	buffer_load_u8 v5, v16, s[40:43], 0 offen
	buffer_load_u8 v8, v14, s[40:43], 0 offen
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s78, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v18, 0x80000000, v11, vcc_lo
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[10:11], null, s34, 26, v[9:10]
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s5, s26, s3
	s_and_b32 s6, s33, s3
	s_and_b32 s7, s52, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s42
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[15:16], null, s34, 28, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v16, 0x80000000, v12, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[11:12], null, s34, 30, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v19, 0x80000000, v13, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v20, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x3
	buffer_load_u8 v13, v17, s[40:43], 0 offen
	buffer_load_u8 v14, v14, s[40:43], 0 offen
	buffer_load_u8 v9, v18, s[40:43], 0 offen
	buffer_load_u8 v10, v16, s[40:43], 0 offen
	v_cndmask_b32_e32 v12, 0x80000000, v15, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v11, vcc_lo
	s_clause 0x3
	buffer_load_u8 v15, v19, s[40:43], 0 offen
	buffer_load_u8 v16, v20, s[40:43], 0 offen
	buffer_load_u8 v11, v12, s[40:43], 0 offen
	buffer_load_u8 v12, v17, s[40:43], 0 offen
	v_xor_b32_e32 v20, 0x198, v0
	v_xor_b32_e32 v19, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s40, s36
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v109, 0, v20
	v_add_nc_u32_e32 v107, 0, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(10)
	v_mad_u64_u32 v[17:18], null, s28, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v18, 0x110, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v17
	v_lshl_add_u32 v19, s35, 3, v17
	v_add_nc_u32_e32 v21, s35, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v22, s35, v19
	v_add_nc_u32_e32 v25, s35, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v26, s35, v22
	v_add_nc_u32_e32 v29, s35, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v30, s35, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 2, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s35, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v34, s35, v30
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 2, v29
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v29, 1, v29
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v37, s35, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 2, v20
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v108, 0, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v21
	v_lshlrev_b32_e32 v18, 2, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 1, v17
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v106, 0, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_lshlrev_b32 v46, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v24, 2, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_lshlrev_b32 v28, 2, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_lshlrev_b32 v32, 2, v26
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_lshlrev_b32 v26, 1, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_lshlrev_b32 v36, 2, v30
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_lshlrev_b32 v30, 1, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v48, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 2, v37
	v_lshlrev_b32_e32 v47, 2, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v75, 0x80000000, v42 :: v_dual_lshlrev_b32 v38, 1, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v41, 0x80000000, v46 :: v_dual_lshlrev_b32 v42, 1, v45
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v46, 2, v45
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s77, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v79, 0x80000000, v42, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s75, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 2, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s73, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s71, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_store_b8 v106, v6
	ds_store_b8 v106, v7 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v106, v13 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v106, v14 offset:576
	ds_store_b8 v107, v4
	ds_store_b8 v107, v8 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v107, v9 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v107, v10 offset:576
	ds_store_b8 v108, v2
	ds_store_b8 v108, v3 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v15 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v108, v16 offset:576
	ds_store_b8 v109, v1
	ds_store_b8 v109, v5 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v11 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v12 offset:576
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s69, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v65, 0x80000000, v37, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s68, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v78, 0x80000000, v38, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v45, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v49, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e32 v76, 0x80000000, v37, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v50, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v77, 0x80000000, v38, vcc_lo
	v_lshlrev_b32_e32 v38, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v51, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v80, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v69, 0x80000000, v50, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v50, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 1, v42
	v_cndmask_b32_e32 v86, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v51, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v51, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e32 v87, 0x80000000, v42, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v71, 0x80000000, v50, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v50, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v88, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v72, 0x80000000, v51, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v73, 0x80000000, v50, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v89, 0x80000000, v37 :: v_dual_lshlrev_b32 v50, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v50, vcc_lo
	v_lshlrev_b32_e32 v51, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v50, s35, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e32 v90, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v91, 0x80000000, v51, vcc_lo
	v_lshlrev_b32_e32 v51, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v92, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v93, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 2, v50
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v50, 1, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v110, 0x80000000, v51, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v112, s35, v93
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v111, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v113, 1, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v37, 0x80000000, v38, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v114, s35, v112
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 2, v42
	v_lshlrev_b32_e32 v42, 2, v93
	v_cndmask_b32_e64 v47, 0x80000000, v47, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s27, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v116, s35, v114
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v115, 0x80000000, v50 :: v_dual_lshlrev_b32 v50, 2, v112
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v117, 0x80000000, v42, s4
	v_lshlrev_b32_e32 v42, 2, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v51, 2, v116
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 1, v93
	v_lshlrev_b32_e32 v11, 1, v112
	v_lshlrev_b32_e32 v12, 1, v114
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_lshlrev_b32 v13, 1, v116
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v10, 0x80000000, v113, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v118, 0x80000000, v50, s5
	v_cndmask_b32_e64 v119, 0x80000000, v42, s6
	v_cndmask_b32_e64 v120, 0x80000000, v51, s7
	s_clause 0x1f
	buffer_load_b32 v58, v18, s[40:43], 0 offen
	buffer_load_b32 v59, v23, s[40:43], 0 offen
	buffer_load_b32 v60, v27, s[40:43], 0 offen
	buffer_load_b32 v61, v31, s[40:43], 0 offen
	buffer_load_b32 v50, v35, s[40:43], 0 offen
	buffer_load_b32 v51, v39, s[40:43], 0 offen
	buffer_load_b32 v52, v43, s[40:43], 0 offen
	buffer_load_b32 v53, v41, s[40:43], 0 offen
	buffer_load_b32 v62, v24, s[40:43], 0 offen
	buffer_load_b32 v63, v28, s[40:43], 0 offen
	buffer_load_b32 v64, v32, s[40:43], 0 offen
	buffer_load_b32 v66, v36, s[40:43], 0 offen
	buffer_load_b32 v54, v40, s[40:43], 0 offen
	buffer_load_b32 v55, v44, s[40:43], 0 offen
	buffer_load_b32 v56, v47, s[40:43], 0 offen
	buffer_load_b32 v57, v46, s[40:43], 0 offen
	buffer_load_b32 v67, v45, s[40:43], 0 offen
	buffer_load_b32 v68, v49, s[40:43], 0 offen
	buffer_load_b32 v69, v69, s[40:43], 0 offen
	buffer_load_b32 v70, v70, s[40:43], 0 offen
	buffer_load_b32 v42, v71, s[40:43], 0 offen
	buffer_load_b32 v39, v72, s[40:43], 0 offen
	buffer_load_b32 v40, v73, s[40:43], 0 offen
	buffer_load_b32 v41, v74, s[40:43], 0 offen
	buffer_load_b32 v71, v91, s[40:43], 0 offen
	buffer_load_b32 v72, v110, s[40:43], 0 offen
	buffer_load_b32 v73, v37, s[40:43], 0 offen
	buffer_load_b32 v74, v38, s[40:43], 0 offen
	buffer_load_b32 v37, v117, s[40:43], 0 offen
	buffer_load_b32 v38, v118, s[40:43], 0 offen
	buffer_load_b32 v35, v119, s[40:43], 0 offen
	buffer_load_b32 v36, v120, s[40:43], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s41, s39, 0xffff
	s_mov_b32 s40, s38
	s_clause 0xc
	buffer_load_u16 v2, v17, s[40:43], 0 offen
	buffer_load_u16 v3, v20, s[40:43], 0 offen
	buffer_load_u16 v4, v21, s[40:43], 0 offen
	buffer_load_u16 v5, v25, s[40:43], 0 offen
	buffer_load_u16 v6, v19, s[40:43], 0 offen
	buffer_load_u16 v7, v22, s[40:43], 0 offen
	buffer_load_u16 v8, v26, s[40:43], 0 offen
	buffer_load_u16 v9, v30, s[40:43], 0 offen
	buffer_load_u16 v124, v76, s[40:43], 0 offen
	buffer_load_u16 v128, v80, s[40:43], 0 offen
	buffer_load_u16 v125, v92, s[40:43], 0 offen
	buffer_load_u16 v126, v77, s[40:43], 0 offen
	buffer_load_u16 v127, v111, s[40:43], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	s_clause 0x12
	buffer_load_u16 v131, v115, s[40:43], 0 offen
	buffer_load_u16 v132, v86, s[40:43], 0 offen
	buffer_load_u16 v133, v10, s[40:43], 0 offen
	buffer_load_u16 v80, v29, s[40:43], 0 offen
	buffer_load_u16 v76, v34, s[40:43], 0 offen
	buffer_load_u16 v49, v87, s[40:43], 0 offen
	buffer_load_u16 v45, v1, s[40:43], 0 offen
	buffer_load_u16 v121, v33, s[40:43], 0 offen
	buffer_load_u16 v77, v65, s[40:43], 0 offen
	buffer_load_u16 v47, v88, s[40:43], 0 offen
	buffer_load_u16 v46, v11, s[40:43], 0 offen
	buffer_load_u16 v122, v48, s[40:43], 0 offen
	buffer_load_u16 v78, v78, s[40:43], 0 offen
	buffer_load_u16 v48, v89, s[40:43], 0 offen
	buffer_load_u16 v43, v12, s[40:43], 0 offen
	buffer_load_u16 v123, v75, s[40:43], 0 offen
	buffer_load_u16 v79, v79, s[40:43], 0 offen
	buffer_load_u16 v65, v90, s[40:43], 0 offen
	buffer_load_u16 v44, v13, s[40:43], 0 offen
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v10, 1, v135
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v110, 1, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v33, 5, v136
	v_lshlrev_b32_e32 v11, 4, v135
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v10, v10, v136
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v34, 24, v110
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v1, 0x70, v1
	v_xor_b32_e32 v13, 0x120, v110
	v_xor_b32_e32 v14, 0x1b0, v110
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v112, s28, v10
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v129, s46, v10
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v11, v33, v11, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v12, 0x90, v110
	v_add_nc_u32_e32 v111, v106, v0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v10, 1, v112
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v129
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v15, 0x240, v110
	v_xor_b32_e32 v16, 0x2d0, v110
	v_xor_b32_e32 v17, 0x360, v110
	v_xor_b32_e32 v18, 0x3f0, v110
	v_lshl_or_b32 v118, v136, 7, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v1, 0, v11
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v114, 0, v13
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v13, v11, 8, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v115, 0, v14
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v14, v11, 16, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s43
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v113, 0, v12
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v11, v11, 24, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v116, 0, v15
	v_add_nc_u32_e32 v117, 0, v16
	v_add_nc_u32_e32 v119, 0, v17
	v_add_nc_u32_e32 v120, 0, v18
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v130, v10, s[24:27], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_load_b64 v[86:87], v1
	ds_load_b64 v[88:89], v13
	ds_load_b64 v[90:91], v14
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[92:93], v11
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s42, s31, 15
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(32)
	ds_store_b16 v111, v2
	s_waitcnt vmcnt(28)
	ds_store_b16 v111, v6 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v111, v124 offset:2048
	ds_store_b16 v113, v3
	ds_store_b16 v113, v7 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v111, v125 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b16 v113, v126 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v113, v127 offset:3072
	ds_store_b16 v114, v4
	ds_store_b16 v114, v8 offset:1024
	ds_store_b16 v114, v128 offset:2048
	ds_store_b16 v115, v5
	ds_store_b16 v115, v9 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v114, v131 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v115, v132 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v115, v133 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v116, v80
	s_waitcnt vmcnt(15)
	ds_store_b16 v116, v76 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v116, v49 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v116, v45 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v117, v121
	s_waitcnt vmcnt(11)
	ds_store_b16 v117, v77 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v117, v47 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v117, v46 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v119, v122
	s_waitcnt vmcnt(7)
	ds_store_b16 v119, v78 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v119, v48 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v119, v43 offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b16 v120, v123
	s_waitcnt vmcnt(3)
	ds_store_b16 v120, v79 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v120, v65 offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b16 v120, v44 offset:3072
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v142, 16, v7
	v_lshlrev_b32_e32 v46, 16, v46
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v158, v72, v127
	v_dual_mul_f32 v150, v63, v142 :: v_dual_lshlrev_b32 v131, 16, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v168, v57, v79 :: v_dual_lshlrev_b32 v133, 16, v133
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v159, v73, v131 :: v_dual_mul_f32 v160, v74, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v158, v72, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v150, v63, v142
.Ltmp5:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v65, 16, v65
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v63, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v124, 16, v124
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v160, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v63, v63, v63 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v161, v50, v80 :: v_dual_fmac_f32 v168, v57, v79
	v_dual_mul_f32 v153, v67, v124 :: v_dual_lshlrev_b32 v144, 16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v63, v63, v63 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v161, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v159, v73, v131 :: v_dual_fmac_f32 v160, v74, v133
	v_add_f32_dpp v74, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v131, v63, -1, -1 op_sel:[1,0]
.Ltmp15:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v152, v66, v144
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v161, v50, v80
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v63, v63, v131
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v153, v67, v124
	v_add_f32_dpp v67, v161, v161 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v63, 31
.Ltmp21:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v134, 16, v2
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v152, v66, v144
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v144, v74, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v145, v58, v134 :: v_dual_lshlrev_b32 v140, 16, v5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v123, 16, v123
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v132, 16, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v148, v61, v140
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v145, v145 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v164, v53, v123
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v66, v160, v160 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v125, 16, v125
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v145, v58, v134
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v134, v67, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v148, v61, v140 :: v_dual_mul_f32 v157, v71, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v67, v67, v134 :: v_dual_fmac_f32 v164, v53, v123
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v53, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_readlane_b32 s27, v67, 31
.Ltmp36:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v143, 16, v8
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v133, v66, -1, -1 op_sel:[1,0]
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v157, v71, v125 :: v_dual_lshlrev_b32 v128, 16, v128
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v151, v64, v143 :: v_dual_add_f32 v66, v66, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v155, v69, v128 :: v_dual_lshlrev_b32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v76, 16, v76
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v53, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp45:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v163, v52, v122
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v151, v64, v143
	v_add_f32_dpp v64, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v53, v53, v79
.Ltmp48:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v38, v46
	v_mul_f32_e32 v156, v70, v132
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v64, v64, v64 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v155, v69, v128
	v_add_f32_dpp v50, v145, v145 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v163, v52, v122
	v_add_f32_dpp v64, v64, v64 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v165, v54, v76
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v156, v70, v132
	v_add_f32_dpp v69, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v132, v64, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v137, 1, v135
	v_readlane_b32 s26, v66, 31
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v64, v64, v132
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v165, v54, v76 :: v_dual_lshlrev_b32 v138, 16, v3
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v64, 31
.Ltmp58:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v141, 16, v6
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v76, v50, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v126, 16, v126
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v149, v62, v141
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v50, v50, v76
.Ltmp62:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v162, v51, v121
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v68, v126
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v166, v55, v77
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v167, v56, v78
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v149, v62, v141
	v_add_f32_dpp v62, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v162, v51, v121
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v154, v68, v126
	v_add_f32_dpp v62, v62, v62 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v166, v55, v77 :: v_dual_fmac_f32 v167, v56, v78
	v_add_f32_dpp v55, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v62, v62, v62 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v128, v62, -1, -1 op_sel:[1,0]
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v62, v62, v128
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s17, v62, 31
.Ltmp74:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v139, 16, v4
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v66, s17 :: v_dual_mul_f32 v147, v60, v139
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v121, v55, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v122, v56, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v123, v57, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v124, v58, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v127, v61, -1, -1 op_sel:[1,0]
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v147, v60, v139
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v139, v69, -1, -1 op_sel:[1,0]
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v55, v55, v121
	v_add_f32_dpp v52, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v76, v69, v139 :: v_dual_mov_b32 v69, s26
.Ltmp82:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v146, v59, v138
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v56, v56, v122 :: v_dual_add_f32 v57, v57, v123
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v58, v58, v124 :: v_dual_add_f32 v61, v61, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v146, v59, v138
	v_add_f32_dpp v59, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v52, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v126, v60, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v138, v68, -1, -1 op_sel:[1,0]
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v52, v52, v78
	v_add_f32_e32 v60, v60, v126
.Ltmp88:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshl_or_b32 v12, v135, 6, v118
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v50, 31
	v_readlane_b32 s7, v52, 31
	v_readlane_b32 s8, v53, 31
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v125, v59, -1, -1 op_sel:[1,0]
	v_readlane_b32 s10, v55, 31
	v_readlane_b32 s11, v56, 31
	v_readlane_b32 s12, v57, 31
	v_permlanex16_b32 v77, v51, -1, -1 op_sel:[1,0]
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v59, v59, v125
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v58, 31
	v_readlane_b32 s15, v60, 31
	v_readlane_b32 s16, v61, 31
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v51, v51, v77
.Ltmp96:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v77, v41, v65
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v59, 31
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v68, v138 :: v_dual_add_nc_u32 v75, 0, v137
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v56, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s6, v51, 31
	v_dual_mov_b32 v60, s15 :: v_dual_add_nc_u32 v15, 0, v12
	v_dual_mov_b32 v50, s5 :: v_dual_fmac_f32 v77, v41, v65
	v_permlanex16_b32 v80, v54, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v51, s6 :: v_dual_mov_b32 v52, s7
	v_mov_b32_e32 v53, s8
.Ltmp100:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v16, v12, 16, 0
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v54, v54, v80 :: v_dual_mov_b32 v55, s10
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v57, s12
.Ltmp103:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v17, v12, 32, 0
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v58, s13
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s9, v54, 31
	v_mov_b32_e32 v59, s14
	v_mov_b32_e32 v61, s16
.Ltmp105:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v18, v12, 48, 0
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s33, v68, 31
	v_dual_mov_b32 v54, s9 :: v_dual_mov_b32 v67, s24
	v_mov_b32_e32 v68, s25
.Ltmp107:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v19, v12, 64, 0
	v_xad_u32 v21, 0x50, v12, 0
	v_xad_u32 v25, 0x60, v12, 0
	v_xad_u32 v29, 0x70, v12, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v15
	ds_load_b128 v[5:8], v16
	ds_load_b128 v[9:12], v17
	ds_load_b128 v[13:16], v18
	ds_load_b128 v[17:20], v19
	ds_load_b128 v[21:24], v21
	ds_load_b128 v[25:28], v25
	ds_load_b128 v[29:32], v29
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[50:53]
	ds_store_b128 v75, v[54:57] offset:16
	ds_store_b128 v75, v[58:61] offset:32
	ds_store_b128 v75, v[66:69] offset:48
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v51, v74, v144 :: v_dual_lshlrev_b32 v74, 16, v49
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v76, 31
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v67, s33 :: v_dual_mul_f32 v76, v42, v74
	v_mov_b32_e32 v68, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v76, v42, v74
.Ltmp116:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v74, v40, v48
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v142, v72, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v141, v71, -1, -1 op_sel:[1,0]
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v72, v72, v142 :: v_dual_add_f32 v71, v71, v141
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v74, v40, v48
.Ltmp121:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v42, v39, v47
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s8, v72, 31
	v_readlane_b32 s7, v71, 31
	v_permlanex16_b32 v140, v70, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v38, v46
.Ltmp124:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v78, v37, v45 :: v_dual_mov_b32 v71, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v70, v70, v140
	v_fmac_f32_e32 v42, v39, v47
	v_add_f32_dpp v47, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v66, s27
	v_permlanex16_b32 v143, v73, -1, -1 op_sel:[1,0]
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v70, 31
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v39, v37, v45
	v_add_f32_dpp v37, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v73, v73, v143
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v51, 31
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v70, s7
	v_readlane_b32 s9, v73, 31
	v_permlanex16_b32 v46, v37, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v50, 6, v0
	v_permlanex16_b32 v47, v38, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v69, s6
	v_mov_b32_e32 v73, s10
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v46
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v47
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	v_mov_b32_e32 v72, s9
	v_readlane_b32 s5, v37, 31
.Ltmp137:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 16, v43
	v_lshlrev_b32_e32 v43, 16, v44
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v38, 31
	s_mov_b32 s33, 0
.Ltmp140:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v44, v35, v42 :: v_dual_mul_f32 v45, v36, v43
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v50, 64, v50
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v44, v35, v42
	v_add_f32_dpp v35, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v45, v36, v43
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v121, 0, v50
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[61:64], v121
	ds_load_b128 v[57:60], v121 offset:16
	ds_load_b128 v[53:56], v121 offset:32
	ds_load_b128 v[49:52], v121 offset:48
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v40, v35, -1, -1 op_sel:[1,0]
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v35, v35, v40
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v145, v62
	v_dual_mov_b32 v141, v63 :: v_dual_mov_b32 v144, v61
	v_mov_b32_e32 v151, v59
	v_readlane_b32 s8, v35, 31
	v_mov_b32_e32 v35, s5
	v_permlanex16_b32 v42, v37, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v142, v64 :: v_dual_mov_b32 v149, v57
	v_dual_mov_b32 v150, v58 :: v_dual_mov_b32 v163, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v42
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v48, v41, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v155, v60 :: v_dual_mov_b32 v164, v54
	v_mov_b32_e32 v153, v49
	v_readlane_b32 s10, v37, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v41, v41, v48
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v165, v55
	v_dual_mov_b32 v169, v56 :: v_dual_mov_b32 v154, v50
	v_mov_b32_e32 v40, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s7, v41, 31
	v_permlanex16_b32 v41, v36, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v159, v51 :: v_dual_mov_b32 v160, v52
.Ltmp159:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s42, 31
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, s7
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v44, v39, -1, -1 op_sel:[1,0]
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v41
.Ltmp164:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v39, v39, v44
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v36, 31
	v_mov_b32_e32 v36, s6
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v39, 31
	v_mov_b32_e32 v39, s9
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v43, v38, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s12
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v151, v151 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v43
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v155, v155 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v164, v164 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v165, v165 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_readlane_b32 s11, v38, 31
	v_mov_b32_e32 v38, s8
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v153, v153 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v154, v154 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v41, s11
	ds_store_b128 v75, v[66:69]
	ds_store_b128 v75, v[70:73] offset:16
	ds_store_b128 v75, v[35:38] offset:32
	ds_store_b128 v75, v[39:42] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v121
	ds_load_b128 v[69:72], v121 offset:16
	ds_load_b128 v[77:80], v121 offset:32
	ds_load_b128 v[65:68], v121 offset:48
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v160, v160 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s42, s42, s5
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s48, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s38, s42, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v143, v73 :: v_dual_mov_b32 v146, v74
	v_dual_mov_b32 v147, v75 :: v_dual_mov_b32 v148, v76
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v157, v70 :: v_dual_mov_b32 v156, v69
	v_mov_b32_e32 v158, v71
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v162, v72 :: v_dual_mov_b32 v167, v79
	v_mov_b32_e32 v170, v77
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v166, v78 :: v_dual_mov_b32 v161, v65
	v_dual_mov_b32 v168, v80 :: v_dual_mov_b32 v171, v66
	v_mov_b32_e32 v172, v67
	v_mov_b32_e32 v152, v68
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v152, v152 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp174:
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s46, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s8, s46, s21
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, s23
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s8, s8, s23
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s31, s5
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s7, s5, 31
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s7, s8, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s33, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s38, s38, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x2
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b32 s39, s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v35, 0, 1, s19
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s50, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s19
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s51, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v35
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s9, s46, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 32
	s_min_i32 s9, s31, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 28
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s9, s9, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s38, s38, s9
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s9, s6, s49
	s_xor_b32 s7, s7, s8
	s_sub_i32 s8, s48, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s49
	s_cmp_ge_u32 s8, s49
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[24:27], s[0:1], 0x48
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s49
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	s_cselect_b32 s6, s9, s6
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v127, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	v_mov_b16_e32 v35.l, 0
	s_sub_i32 s6, s6, s7
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v35.h, v130.l
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s7, s39, 0x3fb8aa3b
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v129, s23, v129
	v_or_b32_e32 v33, v33, v34
	v_cndmask_b32_e64 v34, 0, 1, s18
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s47, s47, s29
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v128, 2, v127
	v_or_b32_e32 v126, 4, v127
	v_or_b32_e32 v125, 6, v127
	v_or_b32_e32 v124, 8, v127
	v_or_b32_e32 v123, 10, v127
	v_or_b32_e32 v122, 12, v127
	v_or_b32_e32 v121, 14, v127
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s23, s6, s47
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v130, s7, v35
	v_subrev_nc_u32_e32 v131, s21, v129
	v_add_nc_u32_e32 v132, s22, v129
	v_xor_b32_e32 v138, 8, v33
	v_xor_b32_e32 v139, 16, v33
	v_xor_b32_e32 v140, 24, v33
	v_add_nc_u32_e32 v133, 0, v33
	v_cmp_ne_u32_e64 s6, 1, v34
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s33, s38
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s64, s23, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s22, -1, 0
	s_cmp_ge_i32 s33, s38
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v174, v130 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v134, v130 :: v_dual_mov_b32 v175, 0xff800000
	v_dual_mov_b32 v173, v130 :: v_dual_add_nc_u32 v176, 0, v138
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v178, 0, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v177, 0, v139
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 s57, s41, 0xffff
	s_mov_b32 s56, s40
	s_and_b32 s61, s45, 0xffff
	s_mov_b32 s60, s44
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s29, 0x76543210
	s_mov_b32 s43, s33
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	v_mov_b16_e64 v180.l, 0
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v180.h, v195.l
	v_mov_b16_e64 v183.l, v180.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v183.h, v191.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v44, v174, v44 :: v_dual_mul_f32 v43, v173, v43
	v_mul_f32_e32 v41, v130, v41
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v181.h, v194.l
	v_mov_b16_e64 v182.h, v193.l
	v_mov_b16_e64 v181.l, v180.l
	v_mov_b16_e64 v182.l, v180.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v42, v134, v42 :: v_dual_mul_f32 v47, v173, v47
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v184.l, v180.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v184.h, v192.l
	v_mov_b16_e64 v185.l, v180.l
	v_mov_b16_e64 v185.h, v190.l
	v_mov_b16_e64 v186.l, v180.l
	v_mov_b16_e64 v186.h, v189.l
	v_mov_b16_e64 v187.l, v180.l
	v_mov_b16_e64 v187.h, v188.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v46, v134, v46 :: v_dual_mul_f32 v43, v43, v181
	v_mul_f32_e32 v44, v44, v180
	v_dual_mul_f32 v48, v174, v48 :: v_dual_mul_f32 v41, v41, v183
	v_mul_f32_e32 v45, v130, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v46, v46, v186 :: v_dual_mul_f32 v47, v47, v185
	v_mul_f32_e32 v48, v48, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v42, v42, v182 :: v_dual_mul_f32 v45, v45, v187
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v44, 0xff800000, v44, s47
	v_cndmask_b32_e64 v43, 0xff800000, v43, s66
	v_cndmask_b32_e64 v180, 0xff800000, v41, s55
	v_cndmask_b32_e64 v42, 0xff800000, v42, s50
	v_cndmask_b32_e64 v48, 0xff800000, v48, s54
	v_cndmask_b32_e64 v46, 0xff800000, v46, s51
	v_cndmask_b32_e64 v45, 0xff800000, v45, s65
	v_cndmask_b32_e64 v47, 0xff800000, v47, s67
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v41, v180, v42, v43
.Ltmp176:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v175
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s43, s43, 16
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v181, v44, v45, v46
	v_max_f32_e32 v182, v47, v48
.Ltmp178:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s43, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v41, v41, v181, v182
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v181, v41, s29, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v41, v175, v41, v181
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v43, v43, v41
	v_sub_f32_e32 v44, v44, v41
	v_sub_f32_e32 v45, v45, v41
	v_sub_f32_e32 v46, v46, v41
	v_sub_f32_e32 v48, v48, v41
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v48, v48
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v43, 0, v43, s66
	v_cndmask_b32_e64 v44, 0, v44, s47
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v45, 0, v45, s65
	v_cndmask_b32_e64 v46, 0, v46, s51
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v47, v47, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_sub_f32 v180, v180, v41 :: v_dual_add_f32 v43, v43, v44
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v48, 0, v48, s54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp182:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v44, v45, v46
.Ltmp183:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v180, v180
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v46, v175, v41 :: v_dual_mov_b32 v175, v41
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v47, 0, v47, s67
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_sub_f32_e32 v42, v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v180, 0, v180, s55
.Ltmp184:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v45, v47, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp185:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v42, v42
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v42, 0, v42, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v180, v42
	v_dual_add_f32 v42, v42, v43 :: v_dual_add_f32 v43, v44, v45
.Ltmp187:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp189:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v43, v42, s29, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp190:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v42, v179, v44
	v_mov_b32_e32 v179, v42
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v41, s43, v95
	v_or_b32_e32 v42, s43, v96
	v_or_b32_e32 v43, s43, v97
	v_or_b32_e32 v44, s43, v98
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s68, s43, s64
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v45, s43, v99
	v_or_b32_e32 v46, s43, v100
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	v_cmp_gt_i32_e64 s7, s31, v42
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s14, s68, s34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v47, s43, v101
	v_or_b32_e32 v48, s43, v102
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s8, s31, v43
	v_cmp_gt_i32_e64 s9, s31, v44
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v41, s14, v81
	v_add_nc_u32_e32 v42, s14, v103
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s10, s31, v45
	v_cmp_gt_i32_e64 s11, s31, v46
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v43, s14, v104
	v_add_nc_u32_e32 v44, s14, v82
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s7, s2, s7
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s12, s31, v47
	v_cmp_gt_i32_e64 s13, s31, v48
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v45, s14, v105
	v_add_nc_u32_e32 v46, s14, v83
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	v_cndmask_b32_e64 v42, 0x80000000, v42, s7
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s8
	s_and_b32 s7, s2, s9
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v47, s14, v84
	v_add_nc_u32_e32 v48, s14, v85
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v44, s7
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s10
	s_and_b32 s7, s2, s11
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	v_cndmask_b32_e64 v46, 0x80000000, v46, s7
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s12
	s_and_b32 s7, s2, s13
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	v_cndmask_b32_e64 v48, 0x80000000, v48, s7
	s_clause 0x7
	buffer_load_u8 v41, v41, s[56:59], 0 offen
	buffer_load_u8 v42, v42, s[56:59], 0 offen
	buffer_load_u8 v43, v43, s[56:59], 0 offen
	buffer_load_u8 v44, v44, s[56:59], 0 offen
	buffer_load_u8 v45, v45, s[56:59], 0 offen
	buffer_load_u8 v46, v46, s[56:59], 0 offen
	buffer_load_u8 v47, v47, s[56:59], 0 offen
	buffer_load_u8 v48, v48, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v180, s43, v127
	v_or_b32_e32 v181, s43, v128
	v_or_b32_e32 v182, s43, v126
	v_or_b32_e32 v183, s43, v125
	v_or_b32_e32 v184, s43, v124
	v_or_b32_e32 v185, s43, v123
	v_or_b32_e32 v186, s43, v122
	v_or_b32_e32 v187, s43, v121
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s8, s31, v183
	v_cmp_gt_i32_e64 s10, s31, v182
	v_cmp_gt_i32_e64 s12, s31, v181
	v_cmp_gt_i32_e64 s14, s31, v180
	v_cmp_gt_i32_e64 s7, s31, v187
	v_cmp_gt_i32_e64 s9, s31, v186
	v_cmp_gt_i32_e64 s11, s31, v185
	v_cmp_gt_i32_e64 s13, s31, v184
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s55, s4, s14
	s_and_b32 s50, s4, s12
	s_and_b32 s66, s4, s10
	s_and_b32 s47, s4, s8
	s_and_b32 s65, s4, s13
	s_and_b32 s51, s4, s11
	s_and_b32 s67, s4, s9
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s54, s4, s7
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v106, v41
	s_waitcnt vmcnt(6)
	ds_store_b8 v106, v42 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v107, v43
	s_waitcnt vmcnt(4)
	ds_store_b8 v107, v44 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v45
	s_waitcnt vmcnt(2)
	ds_store_b8 v108, v46 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v47
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v48 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[188:189], v133
	ds_load_b64 v[190:191], v176
	ds_load_b64 v[192:193], v177
	ds_load_b64 v[194:195], v178
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[86:87], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[88:89], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[192:193], v[90:91], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[194:195], v[92:93], v[41:48] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s15, v181, v129
	v_cmp_le_i32_e64 s16, v182, v129
	v_cmp_le_i32_e64 s17, v183, v129
	v_cmp_le_i32_e64 s18, v184, v129
	v_cmp_le_i32_e64 s19, v185, v129
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s15, s15, s50
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v180, v129
	v_cmp_le_i32_e64 s20, v186, v129
	v_cmp_le_i32_e64 s21, v187, v129
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s16, s16, s66
	s_and_b32 s17, s17, s47
	s_and_not1_b32 s50, s50, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s65
	s_and_b32 s19, s19, s51
	s_or_b32 s50, s50, s15
	s_and_not1_b32 s15, s66, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s47, s47, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s69, vcc_lo, s55
	s_and_b32 s20, s20, s67
	s_and_b32 s21, s21, s54
	s_or_b32 s66, s15, s16
	s_or_b32 s47, s47, s17
	s_and_not1_b32 s15, s65, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s51, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_and_not1_b32 s55, s55, exec_lo
	s_and_b32 s69, s69, exec_lo
	s_or_b32 s65, s15, s16
	s_or_b32 s51, s17, s18
	s_and_not1_b32 s15, s67, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s54, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s55, s55, s69
	s_or_b32 s67, s15, s16
	s_or_b32 s54, s17, s18
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_add_lshl_u32 v188, s68, v127, 1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_add_nc_u32_e32 v189, 4, v188
	v_add_nc_u32_e32 v190, 8, v188
	v_add_nc_u32_e32 v191, 12, v188
	v_add_nc_u32_e32 v192, 16, v188
	v_add_nc_u32_e32 v193, 20, v188
	v_add_nc_u32_e32 v194, 24, v188
	v_add_nc_u32_e32 v195, 28, v188
	v_cndmask_b32_e64 v188, 0x80000000, v188, s14
	v_cndmask_b32_e64 v189, 0x80000000, v189, s12
	v_cndmask_b32_e64 v190, 0x80000000, v190, s10
	v_cndmask_b32_e64 v196, 0x80000000, v191, s8
	v_cndmask_b32_e64 v192, 0x80000000, v192, s13
	v_cndmask_b32_e64 v197, 0x80000000, v193, s11
	v_cndmask_b32_e64 v198, 0x80000000, v194, s9
	v_cndmask_b32_e64 v199, 0x80000000, v195, s7
	s_clause 0x7
	buffer_load_u16 v191, v188, s[60:63], 0 offen
	buffer_load_u16 v193, v189, s[60:63], 0 offen
	buffer_load_u16 v194, v190, s[60:63], 0 offen
	buffer_load_u16 v195, v196, s[60:63], 0 offen
	buffer_load_u16 v188, v192, s[60:63], 0 offen
	buffer_load_u16 v189, v197, s[60:63], 0 offen
	buffer_load_u16 v190, v198, s[60:63], 0 offen
	buffer_load_u16 v192, v199, s[60:63], 0 offen
	.loc	1 240 13                        ; attention_backward.py:240:13
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v180, v131
	v_cmp_ge_i32_e64 s7, v181, v131
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s14, v180, v132
	v_cmp_le_i32_e64 s15, v181, v132
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s8, v182, v131
	v_cmp_ge_i32_e64 s9, v183, v131
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s16, v182, v132
	v_cmp_le_i32_e64 s17, v183, v132
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s10, v184, v131
	v_cmp_ge_i32_e64 s11, v185, v131
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s18, v184, v132
	v_cmp_le_i32_e64 s19, v185, v132
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s7, s7, s15
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v186, v131
	v_cmp_ge_i32_e64 s13, v187, v131
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s20, v186, v132
	v_cmp_le_i32_e64 s21, v187, v132
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s9, s9, s17
	s_and_b32 s8, s8, s16
	s_and_b32 s14, s14, s55
	s_and_b32 s7, s7, s50
	s_and_b32 s8, s8, s66
	s_and_b32 s9, s9, s47
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s15, s55, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s16, s50, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s20
	s_and_b32 s10, s10, s65
	s_and_b32 s11, s11, s51
	s_or_b32 s55, s15, s14
	s_or_b32 s50, s16, s7
	s_and_not1_b32 s7, s66, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s14, s47, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_b32 s12, s12, s67
	s_and_b32 s13, s13, s54
	s_or_b32 s66, s7, s8
	s_or_b32 s47, s14, s9
	s_and_not1_b32 s7, s65, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_and_not1_b32 s9, s51, exec_lo
	s_and_b32 s10, s11, exec_lo
	s_or_b32 s65, s7, s8
	s_or_b32 s51, s9, s10
	s_and_not1_b32 s7, s67, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s9, s54, exec_lo
	s_and_b32 s10, s13, exec_lo
	s_or_b32 s67, s7, s8
	s_or_b32 s54, s9, s10
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_mov_b32 v42, 0
.LBB0_12:                               ; %Flow178
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v42
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v37, s46, v94
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v61, v144 :: v_dual_add_f32 v34, v62, v145
	v_dual_add_f32 v43, v73, v143 :: v_dual_add_f32 v44, v74, v146
.Ltmp194:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v39, 0, 32, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v42
.Ltmp195:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v60, v60, v155 :: v_dual_add_f32 v61, v69, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp196:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v39, v42, v39
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v59, v59, v151 :: v_dual_add_f32 v62, v70, v157
	v_dual_add_f32 v55, v55, v165 :: v_dual_add_f32 v70, v77, v170
.Ltmp198:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v39, v39
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_b32 s56, s[0:1], 0x74
	v_cmp_eq_u32_e64 s0, 0, v135
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v63, v141 :: v_dual_add_f32 v36, v64, v142
	v_dual_add_f32 v45, v75, v147 :: v_dual_add_f32 v46, v76, v148
	v_dual_add_f32 v63, v71, v158 :: v_dual_add_f32 v54, v54, v164
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp200:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v38, v39, v38 :: v_dual_lshlrev_b32 v39, 2, v136
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v56, v56, v169 :: v_dual_add_f32 v71, v78, v166
	v_dual_add_f32 v73, v80, v168 :: v_dual_add_f32 v38, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp202:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add3_u32 v69, 0, v39, v137
	v_add_lshl_u32 v39, s28, v94, 2
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v77, v51, v159 :: v_dual_add_f32 v76, v50, v154
	v_dual_add_f32 v141, v65, v161 :: v_dual_cndmask_b32 v74, 0, v38
.Ltmp204:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v38, v94, 2, 0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v37
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_dual_mov_b32 v65, 0 :: v_dual_add_f32 v144, v68, v152
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v69, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v37, v38
	s_and_b32 vcc_lo, s0, vcc_lo
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v52, v160 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_dual_add_f32 v57, v57, v149 :: v_dual_add_f32 v58, v58, v150
	v_dual_add_f32 v64, v72, v162 :: v_dual_add_f32 v53, v53, v163
.Ltmp206:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s8, s24
	s_mov_b32 s10, s50
	s_mov_b32 s11, s51
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v72, v79, v167 :: v_dual_add_f32 v75, v49, v153
	v_dual_add_f32 v142, v66, v171 :: v_dual_add_f32 v143, v67, v172
	v_mov_b32_e32 v40, 0
	v_lshrrev_b32_e32 v134, 4, v0
.Ltmp208:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v37, v39, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[33:36]
	ds_store_b128 v65, v[43:46] offset:16
	ds_store_b128 v65, v[57:60] offset:32
	ds_store_b128 v65, v[61:64] offset:48
	ds_store_b128 v65, v[53:56] offset:64
	ds_store_b128 v65, v[70:73] offset:80
	ds_store_b128 v65, v[75:78] offset:96
	ds_store_b128 v65, v[141:144] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v37, v38
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	s_ashr_i32 s1, s42, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v37, v39, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[33:36]
	ds_store_b128 v65, v[43:46] offset:16
	ds_store_b128 v65, v[57:60] offset:32
	ds_store_b128 v65, v[61:64] offset:48
	ds_store_b128 v65, v[53:56] offset:64
	ds_store_b128 v65, v[70:73] offset:80
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	ds_store_b128 v65, v[75:78] offset:96
	ds_store_b128 v65, v[141:144] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v35, 0x5410 :: v_dual_and_b32 v34, 16, v0
	v_dual_mov_b32 v36, 0x7632 :: v_dual_lshlrev_b32 v33, 1, v94
	.loc	1 167 13 is_stmt 1              ; attention_backward.py:167:13
	s_add_i32 s0, s35, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	v_add3_u32 v75, s0, s35, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v34, 1, v33
	v_xor_b32_e32 v37, 48, v118
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s30, s1, 3
	v_cndmask_b32_e32 v35, 0x1054, v35, vcc_lo
	v_dual_cndmask_b32 v36, 0x3276, v36 :: v_dual_add_nc_u32 v137, 0, v138
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s57, s23, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v76, v69
	v_dual_mov_b32 v58, v65 :: v_dual_add_nc_u32 v77, s35, v75
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s56, v33
	v_cmp_gt_i32_e64 s1, s56, v34
	v_lshl_or_b32 v34, v36, 8, v36
	v_add_nc_u32_e32 v142, 0, v37
	v_lshl_or_b32 v33, v35, 8, v35
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v78, s35, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v34, 0x760076, v34
	v_dual_mov_b32 v62, v65 :: v_dual_and_b32 v33, 0x540054, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v60, v65 :: v_dual_add_nc_u32 v79, s35, v78
	v_xor_b32_e32 v35, 16, v118
	v_xor_b32_e32 v36, 32, v118
	v_xor_b32_e32 v38, 64, v118
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	v_xor_b32_e32 v39, 0x50, v118
	v_xor_b32_e32 v40, 0x60, v118
	v_xor_b32_e32 v41, 0x70, v118
	v_dual_mov_b32 v59, v65 :: v_dual_add_nc_u32 v80, s35, v79
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v94, 0x5040504, v33
	v_dual_mov_b32 v64, v65 :: v_dual_and_b32 v135, 0x7060706, v34
	v_lshl_add_u32 v136, v136, 1, 0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v138, 0, v139
	v_dual_mov_b32 v50, v65 :: v_dual_add_nc_u32 v139, 0, v140
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v140, 0, v35
	v_dual_mov_b32 v52, v65 :: v_dual_add_nc_u32 v141, 0, v36
	v_dual_mov_b32 v54, v65 :: v_dual_add_nc_u32 v143, 0, v38
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v144, 0, v39
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v145, 0, v40
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v146, 0, v41
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, v65
	v_mov_b32_e32 v43, v65
	v_dual_mov_b32 v44, v65 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v46, v65
	v_mov_b32_e32 v47, v65
	v_mov_b32_e32 v48, v65
	v_mov_b32_e32 v34, v65
	v_mov_b32_e32 v35, v65
	v_mov_b32_e32 v36, v65
	v_mov_b32_e32 v37, v65
	v_mov_b32_e32 v38, v65
	v_mov_b32_e32 v39, v65
	v_mov_b32_e32 v40, v65
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s58, s23, s30
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_mov_b32 s59, 0x76543210
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v153, v153, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v152, v152, 0, 8
	v_bfe_i32 v151, v151, 0, 8
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v167.h, v174.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v150, v150, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v174, v130, v69
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.h, 4, v153.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v149, v149, 0, 8
	v_bfe_i32 v148, v148, 0, 8
	v_bfe_i32 v147, v147, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v182.l, v69.h, 15
	v_lshrrev_b16 v69.h, 4, v152.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v183.l, v69.h, 15
	v_lshrrev_b16 v69.h, 4, v151.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v162.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v164.h, v177.l
	v_mov_b16_e64 v165.h, v176.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v184.l, v69.h, 15
	v_lshrrev_b16 v69.h, 4, v150.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v166.h, v175.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v169.h, v173.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v170.h, v172.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v171.h, v168.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v185.l, v69.h, 15
	v_lshrrev_b16 v69.h, 4, v149.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v168, v130, v66 :: v_dual_and_b32 v175, 15, v153
	v_dual_mul_f32 v172, v130, v67 :: v_dual_and_b32 v179, 15, v149
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v69.h, 15
	v_lshrrev_b16 v69.h, 4, v148.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v173, v130, v68
	v_dual_mul_f32 v70, v130, v70 :: v_dual_and_b32 v181, 15, v147
	v_dual_mul_f32 v71, v130, v71 :: v_dual_and_b32 v176, 15, v152
	v_dual_mul_f32 v73, v130, v73 :: v_dual_and_b32 v180, 15, v148
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v66.l, v153.l, 15
	v_and_b16 v66.h, v152.l, 15
	v_and_b16 v67.l, v151.l, 15
	v_and_b16 v67.h, v150.l, 15
	v_and_b16 v68.l, v149.l, 15
	v_and_b16 v68.h, v148.l, 15
	v_and_b16 v69.l, v147.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v177, 15, v151
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v187.l, v69.h, 15
	v_lshrrev_b16 v69.h, 4, v147.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v157.h, v178.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v178, 15, v150
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v182.h, v162.l
	v_mov_b16_e64 v183.h, v162.l
	.loc	1 305 30 is_stmt 0              ; attention_backward.py:305:30
	v_and_b16 v188.l, v69.h, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v186.h, v162.l
	v_mov_b16_e64 v187.h, v162.l
	v_mov_b16_e64 v188.h, v162.l
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.l
	v_cmp_lt_u16_e64 s7, 7, v66.h
	v_cmp_lt_u16_e64 s8, 7, v67.l
	v_cmp_lt_u16_e64 s9, 7, v67.h
	v_cmp_lt_u16_e64 s10, 7, v68.l
	v_cmp_lt_u16_e64 s11, 7, v68.h
	v_cmp_lt_u16_e64 s12, 7, v69.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v66, -16, v175
	v_or_b32_e32 v67, -16, v176
	v_or_b32_e32 v68, -16, v177
	v_or_b32_e32 v189, -16, v179
	v_or_b32_e32 v190, -16, v180
	v_or_b32_e32 v191, -16, v181
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v184.h, v162.l
	v_mov_b16_e64 v185.h, v162.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v69, -16, v178
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v67, v176, v67, s7
	v_cndmask_b32_e64 v68, v177, v68, s8
	v_cndmask_b32_e64 v176, v180, v190, s11
	v_cndmask_b32_e64 v177, v181, v191, s12
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v152.l
	v_cmp_gt_i16_e64 s8, 0, v151.l
	v_cmp_gt_i16_e64 s11, 0, v148.l
	v_cmp_gt_i16_e64 s12, 0, v147.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v147, -16, v182
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e32 v66, v175, v66, vcc_lo
	v_cndmask_b32_e64 v175, v179, v189, s10
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v153.l
	v_cmp_gt_i16_e64 s10, 0, v149.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v148, -16, v183
	v_or_b32_e32 v151, -16, v186
	v_or_b32_e32 v152, -16, v187
	v_or_b32_e32 v153, -16, v188
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v155.l, v162.l
	v_mov_b16_e64 v155.h, v164.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v69, v178, v69, s9
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s9, 0, v150.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v149, -16, v184
	v_or_b32_e32 v150, -16, v185
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v147, v182, v147, vcc_lo
	v_cndmask_b32_e64 v148, v183, v148, s7
	v_cndmask_b32_e64 v151, v186, v151, s10
	v_cndmask_b32_e64 v152, v187, v152, s11
	v_cndmask_b32_e64 v153, v188, v153, s12
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v154, v154, 0, 8
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v156.l, v162.l
	v_mov_b16_e64 v156.h, v163.l
	v_mov_b16_e64 v161.h, v160.l
	v_mov_b16_e64 v160.l, v162.l
	v_mov_b16_e64 v160.h, v159.l
	v_mov_b16_e64 v159.l, v162.l
	v_mov_b16_e64 v159.h, v158.l
	v_mov_b16_e64 v158.l, v162.l
	v_mov_b16_e64 v158.h, v157.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v149, v184, v149, s8
	v_cndmask_b32_e64 v150, v185, v150, s9
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v153, v153
	v_dual_mul_f32 v66, v66, v155 :: v_dual_mul_f32 v67, v67, v156
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v163.l, v162.l
	v_mov_b16_e64 v163.h, v161.l
	v_mov_b16_e64 v161.l, v162.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v72, v130, v72 :: v_dual_mul_f32 v147, v147, v155
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v175, v175
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v148, v148, v156 :: v_dual_mul_f32 v149, v149, v163
	v_dual_mul_f32 v151, v151, v160 :: v_dual_mul_f32 v156, v176, v159
	v_dual_mul_f32 v152, v152, v159 :: v_dual_mul_f32 v159, v177, v158
	v_mul_f32_e32 v153, v153, v158
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v158, 0, v66, s0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v66.l, 4, v154.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v162.h, v165.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v68, v68, v163 :: v_dual_mul_f32 v69, v69, v161
	v_dual_mul_f32 v150, v150, v161 :: v_dual_mul_f32 v155, v175, v160
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v160, 0, v147, s1
	v_cndmask_b32_e64 v161, 0, v148, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v147.l, v66.l, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v66.l, v154.l, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v147.h, v162.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v148, 15, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v163, 0, v149, s1
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v154.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v66.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v66, -16, v147
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v149, -16, v148
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v175, 0, v150, s1
	v_cndmask_b32_e64 v67, 0, v67, s0
	v_cndmask_b32_e64 v68, 0, v68, s0
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v66, v147, v66, vcc_lo
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v147, v148, v149, s7
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v149.h, v162.l
	v_cndmask_b32_e64 v69, 0, v69, s0
	v_cndmask_b32_e64 v176, 0, v151, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v155, 0, v155, s0
	v_cndmask_b32_e64 v177, 0, v152, s1
	v_cndmask_b32_e64 v156, 0, v156, s0
	v_cndmask_b32_e64 v178, 0, v153, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v147, v162, v147
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v159, 0, v159, s0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v157.l, v162.l
	v_mov_b16_e64 v164.l, v162.l
	v_mov_b16_e64 v165.l, v162.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v148, 0, v147, s0
	v_mov_b16_e64 v147.h, v162.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v171.l, v162.l
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s7, s33, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s13, s33, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v147.l, v148.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v66, v162, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s22, s33, 2
	s_or_b32 s14, s33, 3
	s_or_b32 s23, s33, 4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v147, 1, v147
	v_cndmask_b32_e64 v66, 0, v66, s1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s15, s33, 5
	s_or_b32 s24, s33, 6
	s_or_b32 s16, s33, 7
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v150, v148, v147, 0x7fff
	v_mov_b16_e64 v149.l, v66.h
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s25, s33, 8
	s_or_b32 s17, s33, 9
	s_or_b32 s26, s33, 10
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v149, 1, v149
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s18, s33, 11
	s_or_b32 s27, s33, 12
	s_or_b32 s19, s33, 13
	s_or_b32 s28, s33, 14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v147, v66, v149, 0x7fff
	v_bfe_u32 v66, v158, 16, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s20, s33, 15
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s7, s30
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v166.l, v162.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v147.h, 0x7fff, v147.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_add3_u32 v66, v158, v66, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, v73, v171, -v74
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s8, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s7, s7, s58
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v147.l, 0x7fff, v150.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s7, s7, s35
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v167.l, v162.l
	v_mov_b16_e64 v169.l, v162.l
	v_mov_b16_e64 v170.l, v162.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v148.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v70, v70, v167, -v74
	v_fma_f32 v71, v71, v169, -v74
	v_fma_f32 v72, v72, v170, -v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v66, v160, v66, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v72, v72
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v148.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v66, v67, v66, 0x7fff
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v67, v172, v164, -v74
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v158, 0, v70, s63
	.loc	1 351 21 is_stmt 1              ; attention_backward.py:351:21
	v_add_nc_u32_e32 v70, s7, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v160, 0, v72, s66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v149.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v72, s7, v79
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add3_u32 v66, v161, v66, 0x7fff
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v161, v73
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b16 v149.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v66, v68, v66, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v68, v173, v165, -v74
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v161, 0, v161, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b16 v150.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v68, v68
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v66, v163, v66, 0x7fff
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v163, s7, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v150.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_add3_u32 v66, v69, v66, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v69, v174, v166, -v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v151.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v66, v175, v66, 0x7fff
	v_cndmask_b16 v151.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v155, v66, 0x7fff
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v155, 0, v67, s55
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s55, s51
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v152.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v176, v66, 0x7fff
	v_cndmask_b16 v152.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v156, v66, 0x7fff
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v156, 0, v68, s65
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v153.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v177, v66, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v159, v66, 0x7fff
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v159, 0, v71, s60
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v71, s7, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v154.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v178, v66, 0x7fff
	v_cndmask_b16 v154.h, 0x7fff, v66.h, vcc_lo
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v66, v168, v157, -v74
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s8
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v157, 0, v69, s54
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v69, s7, v75
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s13, s31
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v66, v66
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s54, s50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v66, s62
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s7, v0
	v_add_nc_u32_e32 v67, s35, v66
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v68, s35, v67
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v164, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v67, vcc_lo
	buffer_load_u8 v165, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v68, vcc_lo
	buffer_load_u8 v166, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v69, vcc_lo
	buffer_load_u8 v167, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v70, vcc_lo
	buffer_load_u8 v70, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v71, vcc_lo
	buffer_load_u8 v71, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v72, vcc_lo
	buffer_load_u8 v72, v66, s[48:51], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v163, vcc_lo
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s14, s31
	s_cselect_b32 s7, -1, 0
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v163, v66, s[48:51], 0 offen
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s15, s31
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s16, s31
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s17, s31
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s18, s31
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s19, s31
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s20, s31
	s_cselect_b32 s17, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s33, s31
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(7)
	v_and_b16 v66.l, v164.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s11, 7, v66.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(6)
	v_and_b16 v66.h, v165.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v169, 15, v165
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v165.l, 4, v165.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v165.h, v162.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s12, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(5)
	v_and_b16 v67.l, v166.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v170, 15, v166
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v166.l, 4, v166.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v166.h, v162.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v165, 0, v165, s7
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s13, 7, v67.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(4)
	v_and_b16 v67.h, v167.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v171, 15, v167
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v167.l, 4, v167.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v167.h, v162.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v166, 0, v166, s8
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s14, 7, v67.h
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v67, -16, v169
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	s_waitcnt vmcnt(3)
	v_and_b16 v68.l, v70.l, 15
	.loc	1 360 32 is_stmt 0              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v167, 0, v167, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v67, v169, v67, s12
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(2)
	v_and_b16 v68.h, v71.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v173, 15, v71
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v71.l, 4, v71.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v71.h, v162.l
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s18, 7, v68.l
	v_cmp_lt_u16_e64 s19, 7, v68.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(1)
	v_and_b16 v69.l, v72.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v174, 15, v72
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v71, 0, v71, s15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v176, -16, v173
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v162.l
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s20, 7, v69.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(0)
	v_and_b16 v69.h, v163.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v177, -16, v174
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v175, 15, v163
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v163.l, 4, v163.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v163.h, v162.l
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s21, 7, v69.h
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v69, -16, v171
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v169, v174, v177, s20
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v174, -16, v167
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v170
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s12, 7, v165
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v69, v171, v69, s14
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v167
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v72.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v68, v170, v68, s13
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s13, 7, v166
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v178, -16, v175
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v167, v167, v174, s14
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v169, v169
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v170, v175, v178, s21
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v168, 15, v164
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v164.l, 4, v164.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v164.h, v162.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s20, 7, v72
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v177, -16, v72
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v66, -16, v168
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e32 v164, 0, v164, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v72, v72, v177, s20
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v66, v168, v66, s11
	v_cndmask_b32_e64 v168, v173, v176, s19
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s19, 7, v71
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v176, -16, v71
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s11, 7, v164
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v171, -16, v164
	v_or_b32_e32 v173, -16, v166
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v71, v71, v176, s19
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v164, v164, v171, s11
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v172, 15, v70
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v70.h, v162.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v162, 0, v163, s17
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v166, v166, v173, s13
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v70.l, 4, v70.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v163, -16, v172
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v164, v164
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s21, 7, v162
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v178, -16, v162
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v70, 0, v70, s10
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v163, v172, v163, s18
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v172, -16, v165
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v166, v166
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v162, v162, v178, s21
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s18, 7, v70
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v175, -16, v70
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v165, v165, v172, s12
	.loc	1 378 27 is_stmt 1              ; attention_backward.py:378:27
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v70, v70, v175, s18
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s28, -1, 0
	.loc	1 378 26 is_stmt 0              ; attention_backward.py:378:26
	s_and_b32 s20, s3, s12
	s_and_b32 s12, s3, s10
	s_and_b32 s10, s3, s15
	.loc	1 376 24 is_stmt 1              ; attention_backward.py:376:24
	s_lshr_b32 s15, s33, 4
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s18, s3, s11
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s15, s15, s57
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s22, s3, s13
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s15, s15, s35
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s24, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v171, s15, v0, 1
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s14, s3, s9
	s_and_b32 s13, s3, s25
	s_and_b32 s19, s3, vcc_lo
	s_and_b32 s11, s3, s26
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v172, 0x80000000, v171, s18
	v_cndmask_b32_e64 v179, 0x80000000, v171, s14
	v_cndmask_b32_e64 v180, 0x80000000, v171, s13
	v_cndmask_b32_e64 v181, 0x80000000, v171, s12
	v_cndmask_b32_e64 v173, 0x80000000, v171, s19
	s_clause 0x4
	buffer_load_u16 v172, v172, s[52:55], 0 offen
	buffer_load_u16 v179, v179, s[52:55], 0 offen
	buffer_load_u16 v180, v180, s[52:55], 0 offen
	buffer_load_u16 v181, v181, s[52:55], 0 offen
	buffer_load_u16 v173, v173, s[52:55], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s9, s3, s27
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v174, 0x80000000, v171, s20
	v_cndmask_b32_e64 v182, 0x80000000, v171, s11
	v_cndmask_b32_e64 v183, 0x80000000, v171, s10
	v_cndmask_b32_e64 v184, 0x80000000, v171, s9
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s21, s3, s7
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x3
	buffer_load_u16 v174, v174, s[52:55], 0 offen
	buffer_load_u16 v182, v182, s[52:55], 0 offen
	buffer_load_u16 v183, v183, s[52:55], 0 offen
	buffer_load_u16 v184, v184, s[52:55], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v171, s21
	v_cndmask_b32_e64 v176, 0x80000000, v171, s22
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s23, s3, s8
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v178, 0x80000000, v171, s24
	v_cndmask_b32_e64 v177, 0x80000000, v171, s23
	s_clause 0x1
	buffer_load_u16 v175, v175, s[52:55], 0 offen
	buffer_load_u16 v176, v176, s[52:55], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s8, s3, s16
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v178, v178, s[52:55], 0 offen
	buffer_load_u16 v177, v177, s[52:55], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s7, s3, s28
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v185, 0x80000000, v171, s8
	v_cndmask_b32_e64 v186, 0x80000000, v171, s7
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v171, 0x80000000, v171, vcc_lo
	s_clause 0x1
	buffer_load_u16 v185, v185, s[52:55], 0 offen
	buffer_load_u16 v186, v186, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s33, s33, 16
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v171, v171, s[52:55], 0 offen
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s33, s38
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v66, v66, v172 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v179, 16, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v163, v163, v180 :: v_dual_mul_f32 v172, v70, v181
	v_mul_f32_e32 v164, v164, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v70, v66, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v167, v167, v179 :: v_dual_lshlrev_b32 v182, 16, v182
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v184, 16, v184
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v70, v66, v70, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v168, v168, v182 :: v_dual_lshlrev_b32 v183, 16, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v169, v169, v184
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v164, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v67, v67, v174
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v175, 16, v175
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v70, v164, v70, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v177, 16, v177
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v68, v68, v176 :: v_dual_mul_f32 v165, v165, v175
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v166, v166, v177 :: v_dual_mul_f32 v69, v69, v178
	v_mul_f32_e32 v173, v71, v183
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v70, v67, v70, 0x7fff
	v_bfe_u32 v71, v172, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v67.l, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v71, v172, v71, 0x7fff
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v170, v170, v186 :: v_dual_lshlrev_b32 v171, 16, v171
	v_mul_f32_e32 v174, v72, v185
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v70, v165, v70, 0x7fff
	v_bfe_u32 v72, v173, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v171, v162, v171
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v162, v174, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v67.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v72, v173, v72, 0x7fff
	v_add3_u32 v162, v174, v162, 0x7fff
	v_add3_u32 v70, v68, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v166, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_add3_u32 v70, v166, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_add3_u32 v70, v69, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.l, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v167, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_add3_u32 v70, v167, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v70, v163, v70, 0x7fff
	v_bfe_u32 v163, v171, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.l, 0x7fff, v70.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_add3_u32 v163, v171, v163, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v71.h, vcc_lo
	v_bfe_u32 v71, v168, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v168, v71, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v71.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_cndmask_b16 v71.h, 0x7fff, v72.h, vcc_lo
	v_bfe_u32 v72, v169, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v169, v72, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v72.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cndmask_b16 v72.h, 0x7fff, v162.h, vcc_lo
	v_bfe_u32 v162, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v162, v170, v162, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v162.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	v_cndmask_b16 v162.h, 0x7fff, v163.h, vcc_lo
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	ds_store_b16 v111, v66
	ds_store_b16 v111, v70 offset:1024
	ds_store_b16_d16_hi v113, v66
	ds_store_b16_d16_hi v113, v70 offset:1024
	ds_store_b16 v114, v67
	ds_store_b16 v114, v71 offset:1024
	ds_store_b16_d16_hi v115, v67
	ds_store_b16_d16_hi v115, v71 offset:1024
	ds_store_b16 v116, v68
	ds_store_b16 v116, v72 offset:1024
	ds_store_b16_d16_hi v117, v68
	ds_store_b16_d16_hi v117, v72 offset:1024
	ds_store_b16 v119, v69
	ds_store_b16 v119, v162 offset:1024
	ds_store_b16_d16_hi v120, v69
	ds_store_b16_d16_hi v120, v162 offset:1024
	v_add_nc_u32_e32 v66, 0, v118
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v66
	ds_load_b128 v[166:169], v140
	ds_load_b128 v[170:173], v141
	ds_load_b128 v[174:177], v142
	ds_load_b128 v[178:181], v143
	ds_load_b128 v[182:185], v144
	ds_load_b128 v[186:189], v145
	ds_load_b128 v[190:193], v146
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v201, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v197, v68 :: v_dual_mov_b32 v198, v69
	v_dual_mov_b32 v199, v70 :: v_dual_mov_b32 v200, v71
	v_dual_mov_b32 v196, v67 :: v_dual_mov_b32 v195, v66
	v_mov_b32_e32 v194, v65
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[194:201], v[162:169], v[1:8], v[194:201]
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[9:16], v[194:201]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[178:185], v[17:24], v[194:201]
	v_wmma_f32_16x16x16_bf16 v[194:201], v[186:193], v[25:32], v[194:201]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v162, v201, v76
	v_sub_f32_e32 v66, v194, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v67, v195, v76
	v_sub_f32_e32 v69, v197, v76
	v_sub_f32_e32 v70, v198, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v71, v199, v76 :: v_dual_mul_f32 v66, v73, v66
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v155, v67
	v_dual_mul_f32 v73, v161, v162 :: v_dual_sub_f32 v68, v196, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v69, v157, v69 :: v_dual_mul_f32 v66, s39, v66
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s39, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v73, s39, v73 :: v_dual_mul_f32 v68, v156, v68
	v_mul_f32_e32 v69, s39, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v155, v66, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v158, v70
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v68, s39, v68 :: v_dual_mul_f32 v71, v159, v71
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_add3_u32 v155, v66, v155, 0x7fff
	v_bfe_u32 v66, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v70, s39, v70
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v72, v200, v76 :: v_dual_mul_f32 v71, s39, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v155.l, 0x7fff, v155.h, vcc_lo
	v_add3_u32 v66, v67, v66, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v72, v160, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v155.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v72, s39, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v67, v155, s59, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v68, v66, 0x7fff
	v_cndmask_b16 v156.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v69, v66, 0x7fff
	v_cndmask_b16 v156.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v70, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v69, v156, s59, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v66, v70, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v68, v69, v156, v94
	v_cndmask_b16 v157.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_perm_b32 v69, v69, v156, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v71, v66, 0x7fff
	v_cndmask_b16 v157.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v72, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v71, v157, s59, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v66, v72, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v70, v71, v157, v94
	v_cndmask_b16 v158.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_perm_b32 v71, v71, v157, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v73, v66, 0x7fff
	v_cndmask_b16 v158.h, 0x7fff, v66.h, vcc_lo
	v_perm_b32 v66, v67, v155, v94
	v_perm_b32 v67, v67, v155, v135
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add_nc_u32_e32 v155, v111, v110
	ds_store_2addr_stride64_b32 v155, v147, v148 offset1:1
	ds_store_2addr_stride64_b32 v155, v149, v150 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v155, v151, v152 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v155, v153, v154 offset0:6 offset1:7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v147, v136
	ds_load_u16_d16 v155, v136 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v147, v136 offset:128
	ds_load_u16_d16 v148, v136 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v148, v136 offset:384
	ds_load_u16_d16 v149, v136 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v149, v136 offset:640
	ds_load_u16_d16 v150, v136 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v150, v136 offset:896
	ds_load_u16_d16 v151, v136 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v151, v136 offset:1152
	ds_load_u16_d16 v152, v136 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v152, v136 offset:1408
	ds_load_u16_d16 v153, v136 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v153, v136 offset:1664
	ds_load_u16_d16 v154, v136 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v154, v136 offset:1920
	ds_load_u16_d16_hi v155, v136 offset:160
	ds_load_u16_d16 v156, v136 offset:288
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v156, v136 offset:416
	ds_load_u16_d16 v157, v136 offset:544
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v73, v158, s59, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v72, v73, v158, v94
	v_perm_b32 v73, v73, v158, v135
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v157, v136 offset:672
	ds_load_u16_d16 v158, v136 offset:800
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v158, v136 offset:928
	ds_load_u16_d16 v159, v136 offset:1056
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v159, v136 offset:1184
	ds_load_u16_d16 v160, v136 offset:1312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v160, v136 offset:1440
	ds_load_u16_d16 v161, v136 offset:1568
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v161, v136 offset:1696
	ds_load_u16_d16 v162, v136 offset:1824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v162, v136 offset:1952
	ds_load_u16_d16 v163, v136 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v163, v136 offset:192
	ds_load_u16_d16 v164, v136 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v164, v136 offset:448
	ds_load_u16_d16 v165, v136 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v165, v136 offset:704
	ds_load_u16_d16 v166, v136 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v166, v136 offset:960
	ds_load_u16_d16 v167, v136 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v167, v136 offset:1216
	ds_load_u16_d16 v168, v136 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v168, v136 offset:1472
	ds_load_u16_d16 v169, v136 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v169, v136 offset:1728
	ds_load_u16_d16 v170, v136 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v170, v136 offset:1984
	ds_load_u16_d16 v171, v136 offset:96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v171, v136 offset:224
	ds_load_u16_d16 v172, v136 offset:352
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v172, v136 offset:480
	ds_load_u16_d16 v173, v136 offset:608
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v173, v136 offset:736
	ds_load_u16_d16 v174, v136 offset:864
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v174, v136 offset:992
	ds_load_u16_d16 v175, v136 offset:1120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v175, v136 offset:1248
	ds_load_u16_d16 v176, v136 offset:1376
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v176, v136 offset:1504
	ds_load_u16_d16 v177, v136 offset:1632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v177, v136 offset:1760
	ds_load_u16_d16 v178, v136 offset:1888
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[147:154], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[155:162], v[66:73], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[163:170], v[66:73], v[41:48]
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v178, v136 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[171:178], v[66:73], v[33:40]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s33, v95
	v_or_b32_e32 v67, s33, v96
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s67, s33, s64
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s33, v97
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s15, s67, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v69, s33, v98
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s9, s31, v67
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v66, s15, v81
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s33, v99
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s10, s31, v68
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v67, s15, v103
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s33, v100
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s11, s31, v69
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v68, s15, v104
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s33, v101
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s7, s31, v70
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v69, s15, v82
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v73, s33, v102
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s8, s31, v71
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v70, s15, v105
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s12, s31, v72
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v71, s15, v83
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v73
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v72, s15, v84
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v73, s15, v85
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v155, s33, v127
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v156, s33, v128
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u8 v154, v66, s[40:43], 0 offen
	buffer_load_u8 v153, v67, s[40:43], 0 offen
	buffer_load_u8 v152, v68, s[40:43], 0 offen
	buffer_load_u8 v151, v69, s[40:43], 0 offen
	buffer_load_u8 v150, v70, s[40:43], 0 offen
	buffer_load_u8 v149, v71, s[40:43], 0 offen
	buffer_load_u8 v148, v72, s[40:43], 0 offen
	buffer_load_u8 v147, v73, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v162, s33, v126
	v_or_b32_e32 v166, s33, v125
	v_or_b32_e32 v167, s33, v124
	v_or_b32_e32 v169, s33, v123
	v_or_b32_e32 v170, s33, v122
	v_or_b32_e32 v171, s33, v121
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v155
	v_cmp_gt_i32_e64 s21, s31, v156
	v_cmp_gt_i32_e64 s22, s31, v162
	v_cmp_gt_i32_e64 s15, s31, v166
	v_cmp_gt_i32_e64 s16, s31, v167
	v_cmp_gt_i32_e64 s17, s31, v169
	v_cmp_gt_i32_e64 s18, s31, v170
	v_cmp_gt_i32_e64 s19, s31, v171
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s62, s4, s20
	s_and_b32 s55, s4, s21
	s_and_b32 s65, s4, s22
	s_and_b32 s54, s4, s15
	s_and_b32 s63, s4, s16
	s_and_b32 s60, s4, s17
	s_and_b32 s66, s4, s18
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s61, s4, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v106, v154
	s_waitcnt vmcnt(6)
	ds_store_b8 v106, v153 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v107, v152
	s_waitcnt vmcnt(4)
	ds_store_b8 v107, v151 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v150
	s_waitcnt vmcnt(2)
	ds_store_b8 v108, v149 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v148
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v147 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[157:158], v133
	ds_load_b64 v[159:160], v137
	ds_load_b64 v[163:164], v138
	ds_load_b64 v[172:173], v139
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[157:158], v[86:87], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[159:160], v[88:89], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[163:164], v[90:91], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[172:173], v[92:93], v[66:73] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s23, v156, v129
	v_cmp_le_i32_e64 s24, v162, v129
	v_cmp_le_i32_e64 s25, v166, v129
	v_cmp_le_i32_e64 s26, v167, v129
	v_cmp_le_i32_e64 s27, v169, v129
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s23, s23, s55
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v155, v129
	v_cmp_le_i32_e64 s28, v170, v129
	v_cmp_le_i32_e64 s29, v171, v129
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s24, s24, s65
	s_and_b32 s25, s25, s54
	s_and_not1_b32 s55, s55, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_b32 s26, s26, s63
	s_and_b32 s27, s27, s60
	s_or_b32 s55, s55, s23
	s_and_not1_b32 s23, s65, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_not1_b32 s54, s54, exec_lo
	s_and_b32 s25, s25, exec_lo
	s_and_b32 s68, vcc_lo, s62
	s_and_b32 s28, s28, s66
	s_and_b32 s29, s29, s61
	s_or_b32 s65, s23, s24
	s_or_b32 s54, s54, s25
	s_and_not1_b32 s23, s63, exec_lo
	s_and_b32 s24, s26, exec_lo
	s_and_not1_b32 s25, s60, exec_lo
	s_and_b32 s26, s27, exec_lo
	s_and_not1_b32 s62, s62, exec_lo
	s_and_b32 s68, s68, exec_lo
	s_or_b32 s63, s23, s24
	s_or_b32 s60, s25, s26
	s_and_not1_b32 s23, s66, exec_lo
	s_and_b32 s24, s28, exec_lo
	s_and_not1_b32 s25, s61, exec_lo
	s_and_b32 s26, s29, exec_lo
	s_or_b32 s62, s62, s68
	s_or_b32 s66, s23, s24
	s_or_b32 s61, s25, s26
.LBB0_17:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_add_lshl_u32 v157, s67, v95, 1
	v_add_lshl_u32 v168, s67, v127, 1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_add_nc_u32_e32 v159, 4, v157
	v_add_nc_u32_e32 v160, 8, v157
	v_add_nc_u32_e32 v161, 12, v157
	v_cndmask_b32_e64 v158, 0x80000000, v157, s14
	v_add_nc_u32_e32 v163, 16, v157
	v_add_nc_u32_e32 v164, 20, v157
	v_add_nc_u32_e32 v165, 24, v157
	v_add_nc_u32_e32 v157, 28, v157
	v_add_nc_u32_e32 v175, 4, v168
	v_cndmask_b32_e64 v159, 0x80000000, v159, s9
	v_add_nc_u32_e32 v176, 8, v168
	v_cndmask_b32_e64 v160, 0x80000000, v160, s10
	v_cndmask_b32_e64 v161, 0x80000000, v161, s11
	v_cndmask_b32_e64 v172, 0x80000000, v163, s7
	v_cndmask_b32_e64 v173, 0x80000000, v164, s8
	v_cndmask_b32_e64 v157, 0x80000000, v157, s13
	v_cndmask_b32_e64 v174, 0x80000000, v165, s12
	s_clause 0x7
	buffer_load_u16 v165, v158, s[44:47], 0 offen
	buffer_load_u16 v164, v159, s[44:47], 0 offen
	buffer_load_u16 v163, v160, s[44:47], 0 offen
	buffer_load_u16 v161, v161, s[44:47], 0 offen
	buffer_load_u16 v160, v172, s[44:47], 0 offen
	buffer_load_u16 v159, v173, s[44:47], 0 offen
	buffer_load_u16 v158, v174, s[44:47], 0 offen
	buffer_load_u16 v157, v157, s[44:47], 0 offen
	v_cndmask_b32_e64 v173, 0x80000000, v175, s21
	v_add_nc_u32_e32 v175, 12, v168
	v_cndmask_b32_e64 v172, 0x80000000, v168, s20
	v_cndmask_b32_e64 v174, 0x80000000, v176, s22
	v_add_nc_u32_e32 v176, 16, v168
	v_add_nc_u32_e32 v177, 20, v168
	v_add_nc_u32_e32 v178, 24, v168
	v_add_nc_u32_e32 v168, 28, v168
	v_cndmask_b32_e64 v175, 0x80000000, v175, s15
	v_cndmask_b32_e64 v179, 0x80000000, v176, s16
	v_cndmask_b32_e64 v180, 0x80000000, v177, s17
	v_cndmask_b32_e64 v181, 0x80000000, v178, s18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s19
	s_clause 0x7
	buffer_load_u16 v178, v172, s[44:47], 0 offen
	buffer_load_u16 v177, v173, s[44:47], 0 offen
	buffer_load_u16 v176, v174, s[44:47], 0 offen
	buffer_load_u16 v175, v175, s[44:47], 0 offen
	buffer_load_u16 v174, v179, s[44:47], 0 offen
	buffer_load_u16 v173, v180, s[44:47], 0 offen
	buffer_load_u16 v172, v181, s[44:47], 0 offen
	buffer_load_u16 v168, v168, s[44:47], 0 offen
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v155, v131
	v_cmp_ge_i32_e64 s7, v156, v131
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s14, v155, v132
	v_cmp_le_i32_e64 s15, v156, v132
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s8, v162, v131
	v_cmp_ge_i32_e64 s9, v166, v131
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s16, v162, v132
	v_cmp_le_i32_e64 s17, v166, v132
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s10, v167, v131
	v_cmp_ge_i32_e64 s11, v169, v131
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s18, v167, v132
	v_cmp_le_i32_e64 s19, v169, v132
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s7, s7, s15
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s12, v170, v131
	v_cmp_ge_i32_e64 s13, v171, v131
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v170, v132
	v_cmp_le_i32_e64 s21, v171, v132
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s14, s14, s62
	s_and_b32 s7, s7, s55
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_b32 s8, s8, s65
	s_and_b32 s9, s9, s54
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s15, s62, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s16, s55, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s63
	s_and_b32 s11, s11, s60
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_or_b32 s62, s15, s14
	s_or_b32 s55, s16, s7
	s_and_not1_b32 s7, s65, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s14, s54, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_b32 s12, s12, s66
	s_and_b32 s13, s13, s61
	s_or_b32 s65, s7, s8
	s_or_b32 s54, s14, s9
	s_and_not1_b32 s7, s63, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_and_not1_b32 s9, s60, exec_lo
	s_and_b32 s10, s11, exec_lo
	s_or_b32 s63, s7, s8
	s_or_b32 s60, s9, s10
	s_and_not1_b32 s7, s66, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s9, s61, exec_lo
	s_and_b32 s10, s13, exec_lo
	s_or_b32 s66, s7, s8
	s_or_b32 s61, s9, s10
	s_branch .LBB0_14
.LBB0_19:                               ; %._crit_edge68
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_mul_lo_u32 v24, v112, s56
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s56, v127
	v_cmp_gt_i32_e64 s2, s56, v128
	v_cmp_gt_i32_e64 s3, s56, v126
	v_cmp_gt_i32_e64 s5, s56, v125
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v127, 2
	v_add_lshl_u32 v26, v24, v128, 2
	v_add_lshl_u32 v27, v24, v126, 2
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s56, v124
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v57, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v24, v125, 2
	s_clause 0x1
	buffer_store_b32 v58, v26, s[36:39], 0 offen
	buffer_store_b32 v59, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v124, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s7, s56, v123
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s56, v122
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v123, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s56, v121
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v28, v24, v122, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v127
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s56, v23
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v25, s[36:39], 0 offen
	buffer_store_b32 v61, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v121, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s56, v22
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v23, v24, v23, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s56, v21
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v24, v22, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s56, v20
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v21, v24, v21, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s56, v19
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v20, v24, v20, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s56, v18
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v24, v19, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s56, v17
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v18, v24, v18, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s56, v16
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v24, v17, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s56, v15
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v24, v16, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s56, v14
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v24, v15, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s56, v13
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v24, v14, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s56, v12
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v24, v13, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s56, v11
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v24, v12, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s56, v10
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v24, v11, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s56, v9
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v10, v24, v10, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s56, v8
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v24, v9, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s56, v7
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v8, v24, v8, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s56, v6
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v7, v24, v7, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v1, 60, v127
	v_or_b32_e32 v2, 58, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s56, v5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v24, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v134
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s56, v4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v5, v24, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s30, s56, v3
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v4, v24, v4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s56, v2
	v_cmp_gt_i32_e32 vcc_lo, s56, v1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v24, v3, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s56, v0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v2, v24, v2, 2
	v_add_lshl_u32 v1, v24, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v24, v0, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v62, v27, s[36:39], 0 offen
	buffer_store_b32 v63, v28, s[36:39], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b32 v64, v25, s[36:39], 0 offen
	buffer_store_b32 v49, v23, s[36:39], 0 offen
	buffer_store_b32 v50, v22, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	buffer_store_b32 v52, v20, s[36:39], 0 offen
	buffer_store_b32 v53, v19, s[36:39], 0 offen
	buffer_store_b32 v54, v18, s[36:39], 0 offen
	buffer_store_b32 v55, v17, s[36:39], 0 offen
	buffer_store_b32 v56, v16, s[36:39], 0 offen
	buffer_store_b32 v41, v15, s[36:39], 0 offen
	buffer_store_b32 v42, v14, s[36:39], 0 offen
	buffer_store_b32 v43, v13, s[36:39], 0 offen
	buffer_store_b32 v44, v12, s[36:39], 0 offen
	buffer_store_b32 v45, v11, s[36:39], 0 offen
	buffer_store_b32 v46, v10, s[36:39], 0 offen
	buffer_store_b32 v47, v9, s[36:39], 0 offen
	buffer_store_b32 v48, v8, s[36:39], 0 offen
	buffer_store_b32 v33, v7, s[36:39], 0 offen
	buffer_store_b32 v34, v6, s[36:39], 0 offen
	buffer_store_b32 v35, v5, s[36:39], 0 offen
	buffer_store_b32 v36, v4, s[36:39], 0 offen
	buffer_store_b32 v37, v3, s[36:39], 0 offen
	buffer_store_b32 v38, v2, s[36:39], 0 offen
	buffer_store_b32 v39, v1, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp209:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 202
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 202
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19908
; TotalNumSgprs: 89
; NumVgprs: 202
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 89
; NumVGPRsForWavesPerEU: 202
; Occupancy: 7
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
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
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
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
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     202
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
