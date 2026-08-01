	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshrrev_b32_e32 v104, 5, v0
	v_and_b32_e32 v173, 31, v0
	s_clause 0x2
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_load_b128 s[36:39], s[0:1], 0x38
	v_and_b32_e32 v119, 15, v0
	v_or_b32_e32 v7, 10, v104
	v_or_b32_e32 v8, 12, v104
	v_or_b32_e32 v9, 14, v104
	v_or_b32_e32 v253, 2, v104
	v_or_b32_e32 v254, 4, v104
	v_or_b32_e32 v255, 6, v104
	v_or_b32_e32 v5, 8, v104
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v74, 1, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v115, 0, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[85:86], null, s34, v104, v[173:174]
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s46, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[86:87], null, s34, 6, v[85:86]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v253
	v_or_b32_e32 v3, s46, v254
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v112, s34, 1, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v255
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v113, s34, 2, v85
	v_mad_u64_u32 v[87:88], null, s34, 10, v[85:86]
	v_mad_u64_u32 v[88:89], null, s34, 12, v[85:86]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v114, s34, 3, v85
	v_mad_u64_u32 v[89:90], null, s34, 14, v[85:86]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v121, v115, v0
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
	v_cmp_gt_i32_e64 s2, s34, v173
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v104
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v10, 18, v1
	v_or_b32_e32 v11, 20, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v15, 28, v1
	v_or_b32_e32 v12, 22, v1
	v_or_b32_e32 v13, 24, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v14, 26, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s8
	s_mul_i32 s8, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_abs_i32 s56, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s57, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s51, s57
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s51
	s_sub_i32 s53, 0, s51
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
	s_or_b32 s16, s46, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s44, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s17, s46, 15
	s_or_b32 s26, s46, 16
	s_or_b32 s27, s46, 17
	s_or_b32 s42, s46, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s44, s44, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s43, s46, 19
	s_or_b32 s45, s46, 20
	s_or_b32 s48, s46, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s49, s46, 22
	s_or_b32 s50, s46, 23
	s_or_b32 s52, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s53, s53, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s53, s44, s53
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s81, s46, 26
	s_or_b32 s82, s46, 27
	s_or_b32 s83, s46, 28
	s_or_b32 s84, s46, 29
	s_or_b32 s85, s46, 30
	s_or_b32 s86, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s53
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v7
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v8
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s5, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s46, v9
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s6, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s6, s30, v5
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
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s26, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s27, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s42, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s43, s30
	s_mov_b32 s43, 0x31027000
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s45, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s48, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s49, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s50, s30
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s52, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s49, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s47, s47, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s42, s47, s34
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s41, s41, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v9, s42, v85
	v_add_nc_u32_e32 v1, s42, v112
	v_add_nc_u32_e32 v2, s42, v113
	v_add_nc_u32_e32 v3, s42, v86
	v_add_nc_u32_e32 v6, s42, v88
	v_mad_u64_u32 v[10:11], null, s34, 18, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v9, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v4, s42, v114
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v5, s42, v87
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
	v_lshl_add_u32 v8, s34, 4, v9
	v_add_nc_u32_e32 v7, s42, v89
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v8, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v8, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s78, s3
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
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s5, s26, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s45, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v18, 0x80000000, v11, vcc_lo
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[10:11], null, s34, 26, v[9:10]
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s7, s49, s3
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
	v_add_nc_u32_e32 v118, 0, v20
	v_add_nc_u32_e32 v116, 0, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(10)
	v_mad_u64_u32 v[17:18], null, s47, s35, v[0:1]
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v26, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v29, s35, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
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
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v37, s35, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 2, v34
	v_lshlrev_b32_e32 v43, 2, v38
	v_lshlrev_b32_e32 v23, 2, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v117, 0, v18
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v18, 2, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v37
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v20, 0x80000000, v20
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
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_lshlrev_b32 v26, 1, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_lshlrev_b32 v36, 2, v30
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v56, 0x80000000, v38 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_dual_cndmask_b32 v46, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s77, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v30, 1, v30
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s75, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s73, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v66, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s71, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s69, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_store_b8 v115, v6
	ds_store_b8 v115, v7 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v13 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v14 offset:576
	ds_store_b8 v116, v4
	ds_store_b8 v116, v8 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v9 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v10 offset:576
	ds_store_b8 v117, v2
	ds_store_b8 v117, v3 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v15 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v16 offset:576
	ds_store_b8 v118, v1
	ds_store_b8 v118, v5 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v11 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v12 offset:576
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v57, 0x80000000, v37, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v48, 0x80000000, v44, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s68, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 2, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v65, 0x80000000, v38, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 2, v45
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v49, 0x80000000, v44, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v75, 0x80000000, v42 :: v_dual_lshlrev_b32 v44, 2, v37
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v50, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e32 v62, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v54, 0x80000000, v44, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v63, 0x80000000, v38, vcc_lo
	v_lshlrev_b32_e32 v38, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v55, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v78, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v64, 0x80000000, v44, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v79, 0x80000000, v37 :: v_dual_lshlrev_b32 v44, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v43 :: v_dual_lshlrev_b32 v42, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v72, 0x80000000, v44 :: v_dual_lshlrev_b32 v43, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v44, s35, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v45, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v81, 0x80000000, v38, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v73, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v82, 0x80000000, v37 :: v_dual_lshlrev_b32 v43, 2, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v76, 0x80000000, v45, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v77, 0x80000000, v43 :: v_dual_lshlrev_b32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v45, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v83, 0x80000000, v44 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v44, s35, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v80, 0x80000000, v45, vcc_lo
	v_lshlrev_b32_e32 v45, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v84, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v90, s35, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 2, v43
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	s_and_b32 s4, s27, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v93, s35, v90
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v91, 0x80000000, v45, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v92, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v94, 1, v44
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v95, s35, v93
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v96, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v90
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v37, 0x80000000, v38 :: v_dual_lshlrev_b32 v38, 2, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v97, s35, v95
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 2, v93
	v_cndmask_b32_e64 v98, 0x80000000, v43, s4
	v_lshlrev_b32_e32 v43, 2, v95
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v45, 2, v97
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 1, v90
	v_lshlrev_b32_e32 v11, 1, v93
	v_lshlrev_b32_e32 v12, 1, v95
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_lshlrev_b32 v13, 1, v97
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v10, 0x80000000, v94, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v99, 0x80000000, v44, s5
	v_cndmask_b32_e64 v100, 0x80000000, v43, s6
	v_cndmask_b32_e64 v101, 0x80000000, v45, s7
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_b32 v51, v18, s[40:43], 0 offen
	buffer_load_b32 v52, v23, s[40:43], 0 offen
	buffer_load_b32 v53, v27, s[40:43], 0 offen
	buffer_load_b32 v58, v31, s[40:43], 0 offen
	buffer_load_b32 v43, v35, s[40:43], 0 offen
	buffer_load_b32 v44, v39, s[40:43], 0 offen
	buffer_load_b32 v45, v46, s[40:43], 0 offen
	buffer_load_b32 v46, v41, s[40:43], 0 offen
	buffer_load_b32 v59, v24, s[40:43], 0 offen
	buffer_load_b32 v60, v28, s[40:43], 0 offen
	buffer_load_b32 v61, v32, s[40:43], 0 offen
	buffer_load_b32 v67, v36, s[40:43], 0 offen
	buffer_load_b32 v47, v40, s[40:43], 0 offen
	buffer_load_b32 v48, v48, s[40:43], 0 offen
	buffer_load_b32 v49, v49, s[40:43], 0 offen
	buffer_load_b32 v50, v50, s[40:43], 0 offen
	buffer_load_b32 v68, v54, s[40:43], 0 offen
	buffer_load_b32 v69, v55, s[40:43], 0 offen
	buffer_load_b32 v70, v64, s[40:43], 0 offen
	buffer_load_b32 v71, v71, s[40:43], 0 offen
	buffer_load_b32 v55, v72, s[40:43], 0 offen
	buffer_load_b32 v40, v73, s[40:43], 0 offen
	buffer_load_b32 v41, v76, s[40:43], 0 offen
	buffer_load_b32 v54, v77, s[40:43], 0 offen
	buffer_load_b32 v72, v80, s[40:43], 0 offen
	buffer_load_b32 v73, v91, s[40:43], 0 offen
	buffer_load_b32 v76, v37, s[40:43], 0 offen
	buffer_load_b32 v77, v38, s[40:43], 0 offen
	buffer_load_b32 v38, v98, s[40:43], 0 offen
	buffer_load_b32 v39, v99, s[40:43], 0 offen
	buffer_load_b32 v36, v100, s[40:43], 0 offen
	buffer_load_b32 v37, v101, s[40:43], 0 offen
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
	buffer_load_u16 v103, v62, s[40:43], 0 offen
	buffer_load_u16 v108, v78, s[40:43], 0 offen
	buffer_load_u16 v105, v84, s[40:43], 0 offen
	buffer_load_u16 v106, v63, s[40:43], 0 offen
	buffer_load_u16 v107, v92, s[40:43], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	s_clause 0x12
	buffer_load_u16 v109, v96, s[40:43], 0 offen
	buffer_load_u16 v110, v79, s[40:43], 0 offen
	buffer_load_u16 v111, v10, s[40:43], 0 offen
	buffer_load_u16 v99, v29, s[40:43], 0 offen
	buffer_load_u16 v79, v34, s[40:43], 0 offen
	buffer_load_u16 v42, v42, s[40:43], 0 offen
	buffer_load_u16 v62, v1, s[40:43], 0 offen
	buffer_load_u16 v100, v33, s[40:43], 0 offen
	buffer_load_u16 v80, v57, s[40:43], 0 offen
	buffer_load_u16 v64, v81, s[40:43], 0 offen
	buffer_load_u16 v63, v11, s[40:43], 0 offen
	buffer_load_u16 v101, v56, s[40:43], 0 offen
	buffer_load_u16 v81, v65, s[40:43], 0 offen
	buffer_load_u16 v65, v82, s[40:43], 0 offen
	buffer_load_u16 v56, v12, s[40:43], 0 offen
	buffer_load_u16 v102, v66, s[40:43], 0 offen
	buffer_load_u16 v98, v75, s[40:43], 0 offen
	buffer_load_u16 v66, v83, s[40:43], 0 offen
	buffer_load_u16 v57, v13, s[40:43], 0 offen
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v33, 32, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v83, 12, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v16, 0x360, v74
	v_xor_b32_e32 v17, 0x3f0, v74
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v84, 1, v33
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v34, 5, v119
	v_lshlrev_b32_e32 v35, 1, v83
	v_lshlrev_b32_e32 v10, 4, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v129, 0, v16
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v18, v84, v119
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v130, 0, v17
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v10, v34, v10, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v12, 0x120, v74
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v17, s47, v18
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, s46, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v13, 0x1b0, v74
	v_xor_b32_e32 v11, 0x90, v74
	v_xor_b32_e32 v14, 0x240, v74
	scratch_store_b32 off, v17, off         ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v16
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v15, 0x2d0, v74
	v_lshl_or_b32 v128, v119, 7, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v1, 0, v10
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v124, 0, v12
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v16, 0x80000000, v17, s4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v12, v10, 8, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v125, 0, v13
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v13, v10, 16, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s43
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v123, 0, v11
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v10, v10, 24, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v126, 0, v14
	v_add_nc_u32_e32 v127, 0, v15
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v75, v16, s[24:27], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_load_b64 v[90:91], v1
	ds_load_b64 v[92:93], v12
	ds_load_b64 v[94:95], v13
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[96:97], v10
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s50, s31, 15
	s_mov_b32 s38, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(32)
	ds_store_b16 v121, v2
	s_waitcnt vmcnt(28)
	ds_store_b16 v121, v6 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v121, v103 offset:2048
	ds_store_b16 v123, v3
	ds_store_b16 v123, v7 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v121, v105 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b16 v123, v106 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v123, v107 offset:3072
	ds_store_b16 v124, v4
	ds_store_b16 v124, v8 offset:1024
	ds_store_b16 v124, v108 offset:2048
	ds_store_b16 v125, v5
	ds_store_b16 v125, v9 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v124, v109 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v125, v110 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v125, v111 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v126, v99
	s_waitcnt vmcnt(15)
	ds_store_b16 v126, v79 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v126, v42 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v126, v62 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v127, v100
	s_waitcnt vmcnt(11)
	ds_store_b16 v127, v80 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v127, v64 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v127, v63 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v129, v101
	s_waitcnt vmcnt(7)
	ds_store_b16 v129, v81 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v129, v65 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v129, v56 offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b16 v130, v102
	s_waitcnt vmcnt(3)
	ds_store_b16 v130, v98 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v130, v66 offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b16 v130, v57 offset:3072
	v_lshlrev_b32_e32 v63, 16, v63
	v_lshlrev_b32_e32 v62, 16, v62
	v_lshlrev_b32_e32 v135, 16, v8
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v143, v61, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v159, v49, v81 :: v_dual_mul_f32 v160, v50, v98
	v_mul_f32_e32 v152, v77, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v155, v45, v101
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v143, v143 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v160, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v143, v61, v135
	v_dual_fmac_f32 v159, v49, v81 :: v_dual_fmac_f32 v160, v50, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v152, v77, v111
	v_fmac_f32_e32 v155, v45, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v49, v143, v143 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp3:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v109, 16, v109
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v160, v160 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v105, 16, v105
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v151, v76, v109
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v150, v73, v107 :: v_dual_lshlrev_b32 v133, 16, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v110, 16, v110
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v101, v49, -1, -1 op_sel:[1,0]
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v151, v76, v109
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v149, v72, v105 :: v_dual_mul_f32 v148, v71, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v150, v73, v107
	v_add_f32_e32 v49, v49, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v61, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v79, 16, v79
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v141, v59, v133
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v49, 31
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v132, 16, v5
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v148, v71, v110
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v49, s11 :: v_dual_mul_f32 v140, v58, v132
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v157, v47, v79
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v141, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v149, v72, v105
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v140, v140 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v110, v61, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v141, v59, v133
	v_add_f32_dpp v59, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v140, v58, v132
	v_add_f32_dpp v58, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v61, v61, v110
.Ltmp31:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v99, 16, v99
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v157, v47, v79
	v_add_f32_dpp v47, v141, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v61, 31
.Ltmp34:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v108, 16, v108
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v153, v43, v99
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v147, v70, v108
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v107, v58, -1, -1 op_sel:[1,0]
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v153, v43, v99 :: v_dual_lshlrev_b32 v80, 16, v80
	v_add_f32_e32 v58, v58, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v47, -1, -1 op_sel:[1,0]
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v147, v70, v108
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v108, v59, -1, -1 op_sel:[1,0]
.Ltmp47:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v158, v48, v80
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v58, 31
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v47, v47, v99 :: v_dual_lshlrev_b32 v136, 16, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v59, v59, v108
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v61, s16 :: v_dual_mul_f32 v144, v67, v136
	v_readlane_b32 s9, v47, 31
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s17, v59, 31
.Ltmp51:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v122, 16, v3
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v144, v144 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v47, s9 :: v_dual_lshlrev_b32 v100, 16, v100
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v158, v48, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v138, v52, v122
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v144, v67, v136
	v_add_f32_dpp v67, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v44, v100
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v138, v138 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v131, 16, v4
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v138, v52, v122 :: v_dual_lshlrev_b32 v103, 16, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v154, v44, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v145, v68, v103
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v111, v67, -1, -1 op_sel:[1,0]
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v135, v76, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v145, v145 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v67, v111
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v76, v76, v135
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v145, v68, v103
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v67, 31
	v_dual_mov_b32 v67, s17 :: v_dual_mul_f32 v146, v69, v106
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v133, v72, -1, -1 op_sel:[1,0]
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v138, v138 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v72, v72, v133
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v146, v69, v106
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v65, 16, v65
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v64, 16, v64
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v144, v144 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshl_or_b32 v11, v33, 6, v128
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v136, v77, -1, -1 op_sel:[1,0]
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v15, v11, 16, 0
	v_xad_u32 v18, v11, 32, 0
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v105, v52, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v19, v11, 48, 0
	v_xad_u32 v20, v11, 64, 0
	v_xad_u32 v21, 0x50, v11, 0
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v69, -1, -1 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v52, v52, v105
.Ltmp89:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v25, 0x60, v11, 0
	v_xad_u32 v29, 0x70, v11, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v52, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v59, s14 :: v_dual_lshlrev_b32 v134, 16, v7
.Ltmp91:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v142, v60, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v142, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v142, v60, v134
	v_add_f32_dpp v60, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v134, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v142, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v73, v73, v134
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v73, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v109, v60, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v99, s9
	v_permlanex16_b32 v80, v44, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v100, v48, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v60, v60, v109
	v_add_f32_e32 v44, v44, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v48, v48, v100
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v60, 31
	v_lshlrev_b32_e32 v175, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s6, v44, 31
	v_readlane_b32 s10, v48, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v44, s6
	v_mov_b32_e32 v48, s10
	v_readlane_b32 s10, v76, 31
.Ltmp101:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v76, v38, v62 :: v_dual_mul_f32 v139, v53, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v100, s10
	v_mov_b32_dpp v139, v139 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v139, v53, v131
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v131, v70, -1, -1 op_sel:[1,0]
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v139, v139 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v80, v70, v131
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v70, s26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v80, 31
.Ltmp109:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v102, 16, v102
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v156, v46, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v106, v53, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v81, v45, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v53, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v45, v45, v81 :: v_dual_fmac_f32 v156, v46, v102
	v_add_f32_dpp v46, v140, v140 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v50, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v45, 31
.Ltmp115:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v120, 16, v2
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v50, v50, v102 :: v_dual_mov_b32 v45, s7
.Ltmp117:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v137, v51, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v50, 31
	v_readlane_b32 s15, v53, 31
	v_mov_b32_dpp v137, v137 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v98, v46, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v50, s12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v60, s15 :: v_dual_fmac_f32 v137, v51, v120
	v_permlanex16_b32 v120, v68, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v132, v71, -1, -1 op_sel:[1,0]
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v46, v98
	v_add_f32_dpp v51, v145, v145 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v137, v137 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v68, v68, v120
	v_add_f32_e32 v71, v71, v132
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v46, 31
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v68, 31
	v_mov_b32_e32 v68, s24
	v_add_nc_u32_e32 v78, 0, v175
	v_readlane_b32 s7, v71, 31
	v_dual_mov_b32 v46, s8 :: v_dual_lshlrev_b32 v71, 16, v42
	v_readlane_b32 s8, v72, 31
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v72, v55, v71
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v98, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v79, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v79
	v_dual_add_f32 v79, v69, v122 :: v_dual_fmac_f32 v72, v55, v71
.Ltmp130:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v71, v41, v65 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v55, v40, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v43, 31
.Ltmp132:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v14, 0, v11
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp134:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v73, v54, v66
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v43, s5
	v_mov_b32_e32 v69, s25
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v71, v41, v65
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v40, v64
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[1:4], v14
	ds_load_b128 v[5:8], v15
	ds_load_b128 v[9:12], v18
	ds_load_b128 v[13:16], v19
	ds_load_b128 v[17:20], v20
	ds_load_b128 v[21:24], v21
	ds_load_b128 v[25:28], v25
	ds_load_b128 v[29:32], v29
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v64, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v73, v54, v66
	v_add_f32_dpp v54, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v40, v38, v62
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v64, v64 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v79, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v65, v54, -1, -1 op_sel:[1,0]
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v54, v54, v65
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v103, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v51, v51, v103
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v51, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v58, s13
	ds_store_b128 v78, v[43:46]
	ds_store_b128 v78, v[47:50] offset:16
	ds_store_b128 v78, v[58:61] offset:32
	ds_store_b128 v78, v[67:70] offset:48
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v77, v136
.Ltmp152:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v77, v39, v63
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s11, v43, 31
	v_mov_b32_dpp v41, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v68, s5
	v_mov_b32_e32 v70, s7
	v_readlane_b32 s7, v54, 31
	v_mov_b32_e32 v101, s11
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v41, v39, v63
	v_add_f32_dpp v39, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v55, 16, v56
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v67, s27 :: v_dual_lshlrev_b32 v56, 16, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v57, v36, v55 :: v_dual_mul_f32 v62, v37, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v39, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v39, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v36, v55 :: v_dual_fmac_f32 v62, v37, v56
	v_add_f32_dpp v37, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v39, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v54, v37, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v56, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v57, v40, -1, -1 op_sel:[1,0]
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v39, v39, v56 :: v_dual_add_f32 v40, v40, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v39, 31
	v_and_b32_e32 v155, 1, v0
	v_readlane_b32 s12, v40, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v56, s11 :: v_dual_lshlrev_b32 v81, 6, v155
	v_mov_b32_e32 v57, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v165, 0, v81
	ds_load_b128 v[58:61], v165
	ds_load_b128 v[50:53], v165 offset:16
	ds_load_b128 v[46:49], v165 offset:32
	ds_load_b128 v[42:45], v165 offset:48
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v54
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_readlane_b32 s9, v37, 31
	v_mov_b32_e32 v37, s6
.Ltmp168:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s56, s44
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v54, s9 :: v_dual_mov_b32 v181, v58
	v_mov_b32_e32 v194, v51
	v_permlanex16_b32 v63, v38, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v196, v47
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v202, v46
	v_mov_b32_e32 v172, v48
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v63 :: v_dual_mov_b32 v185, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v186, v60 :: v_dual_mov_b32 v187, v61
	v_readlane_b32 s5, v38, 31
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v193, v50
	v_mov_b32_e32 v195, v52
	v_mov_b32_e32 v197, v53
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v41, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v189, v49
	v_dual_mov_b32 v103, v44 :: v_dual_mov_b32 v166, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v36, v36, v41
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v55, v38, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v36, 31
	v_mov_b32_e32 v36, s5
.Ltmp180:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s50, 31
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v55 :: v_dual_mov_b32 v39, s8
.Ltmp183:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
.Ltmp184:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_readlane_b32 s10, v38, 31
	v_mov_b32_e32 v38, s7
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v55, s10
	ds_store_b128 v78, v[67:70]
	ds_store_b128 v78, v[98:101] offset:16
	ds_store_b128 v78, v[36:39] offset:32
	ds_store_b128 v78, v[54:57] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v165
	ds_load_b128 v[66:69], v165 offset:16
	v_dual_mov_b32 v100, v42 :: v_dual_mov_b32 v101, v43
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v103, v103 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp185:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s50, s50, s5
	.loc	1 179 14 is_stmt 0              ; attention_backward.py:179:14
	s_and_b32 s39, s50, -16
	.loc	1 180 9 is_stmt 1               ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v190, v71
	ds_load_b128 v[62:65], v165 offset:32
	ds_load_b128 v[54:57], v165 offset:48
	v_dual_mov_b32 v188, v70 :: v_dual_mov_b32 v191, v72
	v_mov_b32_e32 v192, v73
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v198, v66 :: v_dual_mov_b32 v199, v67
	v_dual_mov_b32 v200, v68 :: v_dual_mov_b32 v201, v69
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v174, v62
	v_dual_mov_b32 v170, v63 :: v_dual_mov_b32 v171, v64
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v98, v65 :: v_dual_mov_b32 v167, v54
	v_dual_mov_b32 v168, v55 :: v_dual_mov_b32 v169, v56
	v_mov_b32_e32 v99, v57
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v98, v98 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp187:
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
	s_and_b32 s38, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s39, s39, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x3
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b64 s[48:49], s[0:1], 0x30
	s_load_b128 s[52:55], s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v36, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s57, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v36
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
	s_min_i32 s39, s39, s9
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s9, s6, s51
	s_xor_b32 s7, s7, s8
	s_sub_i32 s8, s56, s9
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s51
	s_cmp_ge_u32 s8, s51
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[64:67], s[0:1], 0x48
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x10
	s_load_b64 s[60:61], s[0:1], 0x28
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v37, s46, v36
	s_load_b32 s80, s[0:1], 0x90
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s51
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s14, s19, s29
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v38, 16, v37
	v_or_b32_e32 v39, 20, v37
	v_or_b32_e32 v40, 4, v37
	v_or_b32_e32 v41, 24, v37
	v_or_b32_e32 v76, 8, v37
	v_or_b32_e32 v77, 28, v37
	v_or_b32_e32 v78, 12, v37
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v137, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s42, s6, s7
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v37
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v139, s23, v37
	v_add_nc_u32_e32 v140, s23, v40
	v_add_nc_u32_e32 v141, s23, v76
	v_add_nc_u32_e32 v142, s23, v78
	v_add_nc_u32_e32 v143, s23, v38
	v_add_nc_u32_e32 v144, s23, v39
	v_add_nc_u32_e32 v145, s23, v41
	v_add_nc_u32_e32 v146, s23, v77
	v_mov_b16_e32 v37.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v37.h, v75.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s42, s42, s14
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s14, s52, 0x3fb8aa3b
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_and_b32_e32 v156, 16, v0
	v_or_b32_e32 v148, v34, v35
	v_mul_lo_u32 v204, s55, v36
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s53
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s54, s28, s54
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v205, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v138, 2, v137
	v_or_b32_e32 v136, 4, v137
	v_or_b32_e32 v135, 6, v137
	v_or_b32_e32 v134, 8, v137
	v_or_b32_e32 v133, 10, v137
	v_or_b32_e32 v132, 12, v137
	v_or_b32_e32 v131, 14, v137
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, s30, v40
	v_cmp_gt_i32_e64 s8, s30, v76
	v_cmp_gt_i32_e64 s9, s30, v78
	v_cmp_gt_i32_e64 s10, s30, v38
	v_cmp_gt_i32_e64 s11, s30, v39
	v_cmp_gt_i32_e64 s12, s30, v41
	v_cmp_gt_i32_e64 s13, s30, v77
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v147, s14, v37
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s54, s54, s19
	v_subrev_nc_u32_e32 v120, s21, v139
	v_subrev_nc_u32_e32 v105, s21, v140
	v_subrev_nc_u32_e32 v106, s21, v141
	v_subrev_nc_u32_e32 v107, s21, v142
	v_subrev_nc_u32_e32 v108, s21, v143
	v_subrev_nc_u32_e32 v109, s21, v144
	v_subrev_nc_u32_e32 v110, s21, v145
	v_subrev_nc_u32_e32 v111, s21, v146
	v_add_nc_u32_e32 v157, s22, v139
	v_add_nc_u32_e32 v158, s22, v140
	v_add_nc_u32_e32 v159, s22, v141
	v_add_nc_u32_e32 v160, s22, v142
	v_add_nc_u32_e32 v161, s22, v143
	v_add_nc_u32_e32 v162, s22, v144
	v_add_nc_u32_e32 v163, s22, v145
	v_add_nc_u32_e32 v164, s22, v146
	v_xor_b32_e32 v182, 8, v148
	v_xor_b32_e32 v183, 16, v148
	v_xor_b32_e32 v184, 24, v148
	v_cmp_eq_u32_e64 s14, 0, v33
	v_and_b32_e32 v203, 14, v0
	v_lshlrev_b32_e32 v75, 3, v119
	v_lshrrev_b32_e32 v176, 2, v156
	v_lshrrev_b32_e32 v179, 4, v33
	v_lshlrev_b32_e32 v178, 2, v0
	v_lshrrev_b32_e32 v177, 1, v156
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s38, s39
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s81, s42, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s58, -1, 0
	s_cmp_ge_i32 s38, s39
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s55, s46
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v33, v204 :: v_dual_lshlrev_b32 v36, 5, v155
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_mad_u64_u32 v[76:77], null, s80, v119, v[204:205]
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_lshlrev_b32 v35, 1, v203
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:16
	scratch_store_b32 off, v176, off offset:12
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_and_b32 v33, 60, v74
	v_cndmask_b32_e64 v34, 0x104, 0, s14
	v_mad_u64_u32 v[77:78], null, s55, 12, v[76:77]
	v_mov_b32_e32 v226, 0xff800000
	v_and_or_b32 v40, v0, 2, v177
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v204, v34, v33
	v_lshlrev_b32_e32 v33, 2, v205
	v_or3_b32 v205, v176, v179, v75
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v175, off offset:8
	scratch_store_b32 off, v84, off offset:4
	v_mad_u64_u32 v[78:79], null, s55, 20, v[76:77]
	v_lshl_or_b32 v33, v203, 7, v33
	v_mad_u64_u32 v[79:80], null, s55, 24, v[76:77]
	v_or_b32_e32 v34, v204, v81
	v_mad_u64_u32 v[80:81], null, s55, 28, v[76:77]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or3_b32 v81, v33, v36, v35
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_and_b32 v33, 52, v178
	v_xor_b32_e32 v35, 0x208, v34
	v_xor_b32_e32 v36, 0x410, v34
	v_xor_b32_e32 v34, 0x618, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v33, v83, 5, v33
	v_xor_b32_e32 v37, 4, v81
	v_xor_b32_e32 v38, 8, v81
	v_xor_b32_e32 v39, 12, v81
	v_xor_b32_e32 v41, 16, v81
	v_or3_b32 v206, v40, v33, v104
	v_xor_b32_e32 v122, 20, v81
	v_xor_b32_e32 v149, 24, v81
	v_xor_b32_e32 v40, 28, v81
	v_xor_b32_e32 v150, 0x90, v205
	v_xor_b32_e32 v151, 0x120, v205
	v_xor_b32_e32 v152, 0x1b0, v205
	v_xor_b32_e32 v153, 16, v206
	v_xor_b32_e32 v154, 32, v206
	v_xor_b32_e32 v155, 48, v206
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v208, 0, v36
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_add_nc_u32 v210, 0, v37
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v207, 0, v35
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v209, 0, v34
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v211, 0, v38
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_add_nc_u32 v212, 0, v39
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v41
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v214, 0, v122
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v149
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v40
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v150
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v151
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v219, 0, v152
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v220, 0, v153
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v221, 0, v154
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v222, 0, v155
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v84, v253
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v235, 0
	v_mov_b32_e32 v231, 0xff800000
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v75, v254
	v_mov_b32_e32 v83, v255
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	s_and_b32 s69, s41, 0xffff
	s_mov_b32 s68, s40
	s_and_b32 s77, s45, 0xffff
	s_mov_b32 s76, s44
	s_add_i32 s51, s54, s43
	s_and_b32 s73, s49, 0xffff
	s_mov_b32 s72, s48
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	s_mov_b32 s78, s74
	s_mov_b32 s79, s75
	s_mov_b32 s53, s38
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v255, v36
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s15, s53, s80
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v40, s55, 4, v76
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s15, s51, s15
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v254, v37
	v_cvt_f32_i32_e32 v37, v39
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v39, s15, v76, 1
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v150, s55, 3, v76
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v40, s15, v40, 1
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v180, v35
	v_cvt_f32_i32_e32 v35, v41
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v39, 0x80000000, v39, s85
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v41, s55, 2, v76
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v150, s15, v150, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s86
	v_add_lshl_u32 v151, s15, v79, 1
	v_add_lshl_u32 v152, s15, v80, 1
	v_add_lshl_u32 v153, s15, v77, 1
	s_clause 0x1
	buffer_load_u16 v39, v39, s[72:75], 0 offen
	buffer_load_u16 v40, v40, s[72:75], 0 offen
	v_add_lshl_u32 v41, s15, v41, 1
	v_cndmask_b32_e64 v150, 0x80000000, v150, s63
	v_add_lshl_u32 v149, s15, v78, 1
	v_cndmask_b32_e64 v151, 0x80000000, v151, s82
	v_cndmask_b32_e64 v152, 0x80000000, v152, s62
	v_cndmask_b32_e64 v153, 0x80000000, v153, s59
	v_cndmask_b32_e64 v41, 0x80000000, v41, s83
	s_clause 0x1
	buffer_load_u16 v150, v150, s[72:75], 0 offen
	buffer_load_u16 v151, v151, s[72:75], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v149, s84
	s_clause 0x3
	buffer_load_u16 v152, v152, s[72:75], 0 offen
	buffer_load_u16 v153, v153, s[72:75], 0 offen
	buffer_load_u16 v41, v41, s[72:75], 0 offen
	buffer_load_u16 v149, v149, s[72:75], 0 offen
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v122.h, v122.l
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v36, v147, v36
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s53, s53, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v38, v147, v38
	v_mul_f32_e32 v34, v147, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0xff800000, v40, s86
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v156, 0x3fb8aa3b, v40
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v39, 0xff800000, v39, s85
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v153, 16, v153
	v_cndmask_b32_e64 v151, 0xff800000, v151, s82
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v41, 16, v41
	v_cndmask_b32_e64 v152, 0xff800000, v152, s62
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v155, 0x3fb8aa3b, v39
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v153, 0xff800000, v153, s59
	v_cndmask_b32_e64 v41, 0xff800000, v41, s83
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v154, v165, v204
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v149, 0xff800000, v149, s84
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v40
	v_cmp_neq_f32_e64 s15, 0xff800000, v39
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v154, v155, v156 offset1:32
	v_mul_f32_e32 v155, 0x3fb8aa3b, v41
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v150, 0xff800000, v150, s63
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v156, 0x3fb8aa3b, v149
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s17, s86, vcc_lo
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v149
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s21, s85, s15
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v151
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v207, v155, v156 offset1:32
	v_dual_mul_f32 v155, 0x3fb8aa3b, v150 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v151
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s16, s84, s16
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v41
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s82, vcc_lo
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s23, 0xff800000, v152
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v208, v155, v156 offset1:32
	v_dual_mul_f32 v155, 0x3fb8aa3b, v153 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v152
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s20, s83, s18
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v150
	v_cmp_neq_f32_e64 s22, 0xff800000, v153
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 vcc_lo, s62, s23
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v209, v155, v156 offset1:32
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v156, v147, v180
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v180, v210
	ds_load_b32 v175, v211
	v_mov_b16_e64 v155.l, 0
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v155.h, v247.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s19, s63, s18
	s_and_b32 s18, s59, s22
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s53, s39
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v122.l, v155.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v180, v156, v122
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v122.h, v253.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v156, v147, v255 :: v_dual_mov_b32 v253, v84
	v_mov_b32_e32 v255, v83
	.loc	1 255 21                        ; attention_backward.py:255:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v175, v156, v122
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v122.h, v252.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v156, v147, v254
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v178, 0, v81
	ds_load_b32 v173, v212
	ds_load_b32 v203, v213
	ds_load_b32 v102, v214
	ds_load_b32 v82, v215
	ds_load_b32 v176, v216
	ds_load_b32 v74, v178
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v37, v147, v37
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v254, v75
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v74, v34, v155
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v155.h, v248.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v34, v147, v35
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v35, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v176, v34, v155
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v34, 0, 1, s17
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s16
	v_lshlrev_b16 v34.h, 8, v35.l
	v_add_nc_u32_e32 v35, 0, v205
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v173, v156, v122
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v122.h, v251.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_store_b16 v35, v34
	v_cndmask_b32_e64 v35, 0, 1, s15
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v203, v38, v122
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v38.h, v250.l
	v_mov_b16_e64 v38.l, v155.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s19
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v102, v37, v38
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v37.h, v249.l
	v_mov_b16_e64 v37.l, v155.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v82, v36, v37
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v36, 0, 1, s20
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v34.h, v36.l, v34.h
	v_cndmask_b32_e64 v36, 0, 1, s18
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v35.l, v36.l, v35.l
	ds_store_b16_d16_hi v217, v34
	ds_store_b16 v218, v34
	ds_store_b16 v219, v35
	v_add_nc_u32_e32 v35, 0, v206
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v35 offset:64
	ds_load_u8_d16 v35, v220
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v222 offset:64
	ds_load_u8_d16 v36, v221 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v220 offset:64
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	ds_load_u8_d16 v34, v221
	ds_load_u8_d16 v37, v222
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v38, 0xff800000, v74, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v178, v38
	v_cndmask_b32_e64 v38, 0xff800000, v180, s22
	ds_store_b32 v210, v38
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v38, 0xff800000, v175, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v211, v38
	v_cndmask_b32_e64 v37, 0xff800000, v173, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v212, v37
	v_cndmask_b32_e64 v34, 0xff800000, v203, s22
	ds_store_b32 v213, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v102, s22
	ds_store_b32 v214, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v82, s22
	ds_store_b32 v215, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v176, s22
	ds_store_b32 v216, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v154 offset1:32
	ds_load_2addr_b32 v[149:150], v207 offset1:32
	ds_load_2addr_b32 v[151:152], v208 offset1:32
	ds_load_2addr_b32 v[153:154], v209 offset1:32
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v36, v34
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v37, v34, v34 :: v_dual_max_f32 v38, v149, v149
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v40, v151, v151
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v74, v153, v153
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v223, v37, v36
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v34, 0, v34, s21
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s21, 0xff800000, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_max_f32 v37, v243, v243
.Ltmp205:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v36, v37, v36 :: v_dual_mov_b32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_sub_f32 v37, v243, v36
	v_mov_b32_e32 v243, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp208:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v37
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v37, 0, v37, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v34, v246, v37 :: v_dual_mov_b32 v37, v149
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v224, v224
	v_mov_b32_e32 v246, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v224, v38, v37
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v149, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s20
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s20, 0xff800000, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v38, v39
.Ltmp224:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v38, v242, v242
	v_dual_max_f32 v38, v38, v37 :: v_dual_mov_b32 v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v242, v38
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v39, 0, v39, s20
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v245, v39
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v39, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v245, v37
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v39, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v225, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v225, v40, v39
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v151, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_dual_mov_b32 v41, v40 :: v_dual_mov_b32 v242, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v40, v41
.Ltmp243:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v40, v240, v240
	v_dual_max_f32 v40, v40, v39 :: v_dual_mov_b32 v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v41, v240, v40
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v41, 0, v41, s19
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v244, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v41, v153 :: v_dual_mov_b32 v244, v39
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v41, v41, v41
	v_dual_max_f32 v41, v74, v41 :: v_dual_mov_b32 v240, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v41, v41, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v41, v41, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v41, v41, v74
.Ltmp255:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v74, v226, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v226, v74, v41
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v74, v153, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v74, v74
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v74, 0, v74, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v74
	v_mov_b32_dpp v82, v82 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v82
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v74
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v82
.Ltmp262:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v82, v238, v238
	v_max_f32_e32 v247, v82, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_dual_mov_b32 v41, v74 :: v_dual_max_f32 v82, v35, v35
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v74, v41
.Ltmp265:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v74, v238, v247
	v_mov_b32_e32 v238, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v41, v241, v74 :: v_dual_mov_b32 v74, v35
	v_mov_b32_e32 v241, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v82, v74
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp270:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp271:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp272:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp273:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp274:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v82, v227, v227
	v_max_f32_e32 v227, v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v227
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v236
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v35
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v82
.Ltmp279:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v82 :: v_dual_max_f32 v82, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp281:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v248, v82, v74
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v35
.Ltmp283:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v150, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v74 :: v_dual_sub_f32 v74, v236, v248
	v_mov_b32_e32 v236, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp286:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v35, v239, v74 :: v_dual_mov_b32 v74, v150
	v_mov_b32_e32 v239, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v82, v74
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp295:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v82, v228, v228
	v_max_f32_e32 v228, v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v82, v150, v228
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v82, 0, v82, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v234
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	v_mov_b32_dpp v102, v102 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
.Ltmp302:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v102, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v250, v102, v74
.Ltmp303:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v249, v82, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp305:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v74, v234, v250
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v152, v152
	v_mov_b32_e32 v234, v250
.Ltmp307:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s16
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v249, v237, v74 :: v_dual_mov_b32 v74, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v237, v249
.Ltmp308:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v74, v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v74, v74, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp313:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v74, v74, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp315:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v74, v74, v82
.Ltmp316:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v82, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v229, v82, v74
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v82, v152, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v82, v82
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v82, 0, v82, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp317:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	v_mov_b32_dpp v102, v102 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
.Ltmp319:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp320:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp321:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
.Ltmp323:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v102, v231, v231
	v_max_f32_e32 v251, v102, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v82
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp325:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v122, v82, v74
.Ltmp326:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v74, v231, v251
.Ltmp327:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v82, v154, v154 :: v_dual_mov_b32 v231, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp328:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v122, v235, v74
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v154
	v_mov_b32_e32 v235, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v82, v74
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v82
.Ltmp337:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v82, v230, v230
	v_max_f32_e32 v230, v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v82, v154, v230
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v233
.Ltmp338:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp339:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp340:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	v_mov_b32_dpp v102, v102 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp341:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
.Ltmp342:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v102, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp343:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v82, v82, v102
.Ltmp344:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v102, v233, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v180, v102, v74
.Ltmp345:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp346:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v252, v82, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp347:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v74, v233, v180 :: v_dual_mov_b32 v233, v180
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v252, v232, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v232, v252
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s53, v104
	v_or_b32_e32 v35, s53, v253
	v_or_b32_e32 v36, s53, v254
	v_or_b32_e32 v38, 8, v104
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s22, s53, s81
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, 10, v104
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v35
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v35, 12, v104
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v36
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v36, 14, v104
	v_or_b32_e32 v34, s53, v34
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s23, s22, s34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v35, s53, v35
	v_or_b32_e32 v37, s53, v255
	v_or_b32_e32 v36, s53, v36
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v34
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v34, s23, v85
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v38, s53, v38
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s20, s31, v35
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v35, s23, v112
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v37
	v_cmp_gt_i32_e64 s21, s31, v36
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v36, s23, v113
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v38
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v37, s23, v86
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v38, s23, v114
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v39, s23, v87
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v40, s23, v88
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v41, s23, v89
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v149, 0, v148
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s21
	v_add_nc_u32_e32 v151, 0, v182
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x7
	buffer_load_u8 v122, v34, s[68:71], 0 offen
	buffer_load_u8 v35, v35, s[68:71], 0 offen
	buffer_load_u8 v36, v36, s[68:71], 0 offen
	buffer_load_u8 v37, v37, s[68:71], 0 offen
	buffer_load_u8 v38, v38, s[68:71], 0 offen
	buffer_load_u8 v39, v39, s[68:71], 0 offen
	buffer_load_u8 v40, v40, s[68:71], 0 offen
	buffer_load_u8 v41, v41, s[68:71], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v34, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v180, s53, v119
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v122
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v35 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v36
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v37 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v38
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v39 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v40
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v41 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[149:150], v149
	ds_load_b64 v[151:152], v151
	v_add_nc_u32_e32 v41, 0, v183
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	v_add_nc_u32_e32 v122, 0, v184
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[153:154], v41
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v180
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[155:156], v122
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s85, s6, s15
	s_and_b32 s83, s7, s15
	s_and_b32 s63, s8, s15
	s_and_b32 s59, s9, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[149:150], v[90:91], v[34:41] neg_lo:[1,1,0]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s86, s10, s15
	s_and_b32 s84, s11, s15
	s_and_b32 s82, s12, s15
	s_and_b32 s62, s13, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[151:152], v[92:93], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[153:154], v[94:95], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[155:156], v[96:97], v[34:41] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v180, v139
	v_cmp_le_i32_e64 s15, v180, v140
	v_cmp_le_i32_e64 s16, v180, v141
	v_cmp_le_i32_e64 s17, v180, v142
	v_cmp_le_i32_e64 s18, v180, v143
	v_cmp_le_i32_e64 s19, v180, v144
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s23, vcc_lo, s85
	s_and_b32 s15, s15, s83
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s20, v180, v145
	v_cmp_le_i32_e64 s21, v180, v146
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s16, s16, s63
	s_and_b32 s17, s17, s59
	s_and_not1_b32 s24, s85, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s25, s83, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s86
	s_and_b32 s19, s19, s84
	s_or_b32 s85, s24, s23
	s_or_b32 s83, s25, s15
	s_and_not1_b32 s15, s63, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s23, s59, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s20, s20, s82
	s_and_b32 s21, s21, s62
	s_or_b32 s63, s15, s16
	s_or_b32 s59, s23, s17
	s_and_not1_b32 s15, s86, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s84, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s86, s15, s16
	s_or_b32 s84, s17, s18
	s_and_not1_b32 s15, s82, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s62, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s62, s17, s18
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v122, s53, v137
	v_or_b32_e32 v149, s53, v138
	v_add_lshl_u32 v151, s22, v137, 1
	v_or_b32_e32 v150, s53, v136
	v_or_b32_e32 v152, s53, v135
	v_cmp_gt_i32_e32 vcc_lo, s31, v122
	v_or_b32_e32 v153, s53, v134
	v_add_nc_u32_e32 v250, 24, v151
	v_add_nc_u32_e32 v156, 4, v151
	v_or_b32_e32 v154, s53, v133
	v_cndmask_b32_e32 v122, 0x80000000, v151, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v149
	v_add_nc_u32_e32 v249, 20, v151
	v_or_b32_e32 v155, s53, v132
	v_or_b32_e32 v248, s53, v131
	v_dual_cndmask_b32 v149, 0x80000000, v156 :: v_dual_add_nc_u32 v156, 12, v151
	v_add_nc_u32_e32 v247, 8, v151
	v_cmp_gt_i32_e32 vcc_lo, s31, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v150, 0x80000000, v247, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v152
	v_add_nc_u32_e32 v247, 16, v151
	v_dual_cndmask_b32 v152, 0x80000000, v156 :: v_dual_add_nc_u32 v151, 28, v151
	v_cmp_gt_i32_e32 vcc_lo, s31, v153
	v_cndmask_b32_e32 v153, 0x80000000, v247, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v154
	v_cndmask_b32_e32 v154, 0x80000000, v249, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v155
	v_cndmask_b32_e32 v155, 0x80000000, v250, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v248
	v_cndmask_b32_e32 v151, 0x80000000, v151, vcc_lo
	s_clause 0x7
	buffer_load_u16 v247, v122, s[76:79], 0 offen
	buffer_load_u16 v122, v149, s[76:79], 0 offen
	buffer_load_u16 v253, v150, s[76:79], 0 offen
	buffer_load_u16 v252, v152, s[76:79], 0 offen
	buffer_load_u16 v251, v153, s[76:79], 0 offen
	buffer_load_u16 v250, v154, s[76:79], 0 offen
	buffer_load_u16 v249, v155, s[76:79], 0 offen
	buffer_load_u16 v248, v151, s[76:79], 0 offen
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v180, v120
	v_cmp_ge_i32_e64 s15, v180, v105
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s22, v180, v157
	v_cmp_le_i32_e64 s23, v180, v158
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v180, v106
	v_cmp_ge_i32_e64 s17, v180, v107
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s24, v180, v159
	v_cmp_le_i32_e64 s25, v180, v160
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s18, v180, v108
	v_cmp_ge_i32_e64 s19, v180, v109
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s26, v180, v161
	v_cmp_le_i32_e64 s27, v180, v162
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s15, s15, s23
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s20, v180, v110
	v_cmp_ge_i32_e64 s21, v180, v111
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s28, v180, v163
	v_cmp_le_i32_e64 s29, v180, v164
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s22, s22, s85
	s_and_b32 s15, s15, s83
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_b32 s16, s16, s63
	s_and_b32 s17, s17, s59
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_and_not1_b32 s23, s85, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_not1_b32 s24, s83, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s86
	s_and_b32 s19, s19, s84
	s_and_b32 s20, s20, s28
	s_and_b32 s21, s21, s29
	s_or_b32 s85, s23, s22
	s_or_b32 s83, s24, s15
	s_and_not1_b32 s15, s63, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s22, s59, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s20, s20, s82
	s_and_b32 s21, s21, s62
	s_or_b32 s63, s15, s16
	s_or_b32 s59, s22, s17
	s_and_not1_b32 s15, s86, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s84, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s86, s15, s16
	s_or_b32 s84, s17, s18
	s_and_not1_b32 s15, s82, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s62, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s62, s17, s18
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v250, 0xff800000
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_mov_b32 v248, 0xff800000
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v40, 0xff800000
	v_mov_b32_e32 v38, 0xff800000
	v_mov_b32_e32 v36, 0xff800000
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow255
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v84, off, off offset:4
	scratch_load_b32 v175, off, off offset:8
	scratch_load_b32 v176, off, off offset:12
	scratch_load_b64 v[204:205], off, off offset:16
	v_and_b32_e32 v173, 31, v0
	v_and_b32_e32 v83, 12, v0
	v_and_b32_e32 v155, 1, v0
	v_and_b32_e32 v156, 16, v0
	v_lshlrev_b32_e32 v75, 3, v119
	v_lshlrev_b32_e32 v178, 2, v0
	v_and_b32_e32 v203, 14, v0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v205, 48, v0
.LBB0_13:                               ; %Flow256
	s_load_b32 s53, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v33, s46, v173
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v34
	v_cmp_gt_f32_e64 s1, 0x800000, v37
	v_cmp_gt_f32_e64 s15, 0x800000, v39
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v33
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v33, 0, 0x42000000, s0
	v_cndmask_b32_e64 v74, 0, 32, s0
	v_cndmask_b32_e64 v76, 0, 0x42000000, s1
	v_cndmask_b32_e64 v77, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v41
	v_cmp_gt_f32_e64 s1, 0x800000, v35
	v_cndmask_b32_e64 v78, 0, 0x42000000, s15
	v_cndmask_b32_e64 v79, 0, 32, s15
	v_ldexp_f32 v74, v34, v74
	v_cndmask_b32_e64 v80, 0, 0x42000000, s0
	v_cndmask_b32_e64 v81, 0, 32, s0
	v_cndmask_b32_e64 v82, 0, 0x42000000, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v249
	v_cndmask_b32_e64 v102, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v122
	v_cmp_gt_f32_e64 s15, 0x800000, v252
	v_ldexp_f32 v77, v37, v77
	v_ldexp_f32 v79, v39, v79
	v_log_f32_e32 v74, v74
	v_cndmask_b32_e64 v150, 0, 32, s0
	v_cndmask_b32_e64 v152, 0, 32, s1
	v_cndmask_b32_e64 v154, 0, 32, s15
	v_ldexp_f32 v102, v35, v102
	v_log_f32_e32 v77, v77
	v_log_f32_e32 v79, v79
	v_ldexp_f32 v81, v41, v81
	v_ldexp_f32 v150, v249, v150
	v_ldexp_f32 v152, v122, v152
	v_ldexp_f32 v154, v252, v154
	v_log_f32_e32 v102, v102
	v_log_f32_e32 v81, v81
	v_log_f32_e32 v150, v150
	v_log_f32_e32 v152, v152
	v_log_f32_e32 v154, v154
	v_dual_sub_f32 v33, v74, v33 :: v_dual_sub_f32 v74, v77, v76
	v_cndmask_b32_e64 v149, 0, 0x42000000, s0
	v_cndmask_b32_e64 v151, 0, 0x42000000, s1
	v_cndmask_b32_e64 v153, 0, 0x42000000, s15
	v_sub_f32_e32 v76, v79, v78
	v_dual_sub_f32 v78, v102, v82 :: v_dual_add_f32 v33, v36, v33
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v34
.Ltmp348:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v62, v62, v174 :: v_dual_sub_f32 v77, v81, v80
.Ltmp349:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v79, v150, v149 :: v_dual_sub_f32 v80, v152, v151
	v_sub_f32_e32 v81, v154, v153
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v38, v38, v74
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v36, 0, v33, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v37
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v40, v40, v76
	v_dual_add_f32 v74, v247, v77 :: v_dual_lshlrev_b32 v33, 5, v0
	v_add_f32_e32 v77, v250, v79
	v_add_f32_e32 v79, v180, v81
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v38, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v39
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v76, v248, v78 :: v_dual_and_b32 v33, 0x60, v33
	v_add_f32_e32 v78, v251, v80
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v34, v205, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v38, 0, v40, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v33, 0, v33
.Ltmp350:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v65, v98 :: v_dual_and_b32 v40, 28, v0
.Ltmp351:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_barrier
	v_cndmask_b32_e64 v39, 0, v74, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v35
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v35, v33, v84, v83
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_add_nc_u32_e32 v33, v33, v40
	s_and_b32 vcc_lo, s14, vcc_lo
	s_ashr_i32 s16, s50, 4
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v76, 0, v76, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v249
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s21, s65, 0xffff
	s_mov_b32 s20, s64
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v77, 0, v77, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v122
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_mov_b32 s22, s50
	s_mov_b32 s23, s51
.Ltmp352:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v58, v181 :: v_dual_add_f32 v61, v61, v187
.Ltmp353:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v78, 0, v78, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v252
.Ltmp354:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v59, v59, v185 :: v_dual_add_f32 v60, v60, v186
	v_dual_add_f32 v151, v56, v169 :: v_dual_mov_b32 v40, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp355:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v79, 0, v79, s0
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[76:79] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v165, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[76:79] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp356:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v78, v44, v103
.Ltmp357:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v33, v33
	v_add_lshl_u32 v34, s47, v173, 2
.Ltmp358:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v149, v54, v167
	v_dual_add_f32 v76, v42, v100 :: v_dual_add_f32 v77, v43, v101
	v_dual_add_f32 v79, v45, v166 :: v_dual_add_f32 v150, v55, v168
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp359:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
.Ltmp360:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v70, v70, v188 :: v_dual_add_f32 v71, v71, v190
	v_dual_add_f32 v72, v72, v191 :: v_dual_add_f32 v73, v73, v192
	v_dual_add_f32 v152, v57, v99 :: v_dual_mov_b32 v39, v40
	v_dual_add_f32 v50, v50, v193 :: v_dual_add_f32 v51, v51, v194
	v_dual_add_f32 v52, v52, v195 :: v_dual_add_f32 v53, v53, v197
	v_dual_add_f32 v66, v66, v198 :: v_dual_add_f32 v67, v67, v199
.Ltmp361:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v33, v173, 2, 0
.Ltmp362:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v68, v200 :: v_dual_add_f32 v69, v69, v201
	v_dual_add_f32 v46, v46, v202 :: v_dual_add_f32 v47, v47, v196
	v_dual_add_f32 v48, v48, v172 :: v_dual_add_f32 v49, v49, v189
	v_dual_add_f32 v63, v63, v170 :: v_dual_add_f32 v64, v64, v171
.Ltmp363:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[58:61]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[50:53] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[62:65] offset:80
	ds_store_b128 v40, v[76:79] offset:96
	ds_store_b128 v40, v[149:152] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	s_and_b32 s21, s67, 0xffff
	s_mov_b32 s20, s66
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v57, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[20:23], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[58:61]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[50:53] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[62:65] offset:80
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	ds_store_b128 v40, v[76:79] offset:96
	ds_store_b128 v40, v[149:152] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_20
; %bb.14:                               ; %.lr.ph81
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_add_i32 s0, s35, s35
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v33, 1, v173
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v166, s0, s35, v0
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_mov_b32 v181, v165 :: v_dual_lshlrev_b32 v34, 2, v119
	v_lshlrev_b32_e32 v40, 5, v83
	v_xor_b32_e32 v57, 0x70, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v46, 0x7632 :: v_dual_add_nc_u32 v167, s35, v166
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[98:99], null, s80, v119, v[204:205]
	v_cmp_eq_u32_e32 vcc_lo, 0, v156
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v168, s35, v167
	v_and_b32_e32 v41, 52, v178
	v_and_b32_e32 v42, 2, v0
	v_add_nc_u32_e32 v207, 0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, v149
	v_mov_b32_e32 v59, v149
	v_or3_b32 v40, v40, v41, v42
	v_mov_b32_e32 v42, 0x5410
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 1, v33
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s53, v33
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v33, 0, v34, v175
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[99:100], null, s55, 12, v[98:99]
	v_mul_u32_u24_e32 v34, 0x48, v203
	v_dual_cndmask_b32 v42, 0x1054, v42 :: v_dual_add_nc_u32 v183, 0, v183
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v172, v33
	v_cndmask_b32_e64 v33, 0x90, 0, s14
	v_lshl_or_b32 v34, v155, 2, v34
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[100:101], null, s55, 20, v[98:99]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v33, v33, v75
	v_mad_u64_u32 v[101:102], null, s55, 24, v[98:99]
	v_mad_u64_u32 v[102:103], null, s55, 28, v[98:99]
	v_or_b32_e32 v174, v33, v176
	v_or3_b32 v103, v34, v177, v179
	v_or3_b32 v175, v176, v179, v75
	v_or3_b32 v176, v40, v177, v104
	v_dual_mov_b32 v61, v149 :: v_dual_and_b32 v42, 0x540054, v42
	v_xor_b32_e32 v33, 0x120, v174
	v_cndmask_b32_e32 v46, 0x3276, v46, vcc_lo
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s53, v35
	v_xor_b32_e32 v34, 0x240, v174
	v_xor_b32_e32 v35, 0x360, v174
	v_add_nc_u32_e32 v185, 0, v33
	v_lshl_or_b32 v46, v46, 8, v46
	v_xor_b32_e32 v36, 16, v103
	v_xor_b32_e32 v37, 32, v103
	v_xor_b32_e32 v38, 48, v103
	v_xor_b32_e32 v39, 64, v103
	v_dual_mov_b32 v63, v149 :: v_dual_and_b32 v46, 0x760076, v46
	v_xor_b32_e32 v43, 0x50, v103
	v_xor_b32_e32 v44, 0x60, v103
	v_xor_b32_e32 v45, 0x70, v103
	v_xor_b32_e32 v41, 0x90, v175
	v_xor_b32_e32 v40, 0x120, v175
	v_xor_b32_e32 v47, 0x1b0, v175
	v_xor_b32_e32 v48, 16, v176
	v_xor_b32_e32 v49, 32, v176
	v_xor_b32_e32 v50, 48, v176
	v_xor_b32_e32 v51, 16, v128
	v_xor_b32_e32 v52, 32, v128
	v_xor_b32_e32 v53, 48, v128
	v_xor_b32_e32 v54, 64, v128
	v_lshl_or_b32 v42, v42, 4, v42
	v_lshl_or_b32 v46, v46, 4, v46
	v_xor_b32_e32 v55, 0x50, v128
	v_xor_b32_e32 v56, 0x60, v128
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mov_b32 v180, v147 :: v_dual_add_nc_u32 v169, s35, v168
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v170, s55, 2, v98
	v_lshl_add_u32 v171, s55, 3, v98
	v_lshl_add_u32 v173, s55, 4, v98
	v_dual_mov_b32 v60, v149 :: v_dual_and_b32 v177, 0x5040504, v42
	v_and_b32_e32 v178, 0x7060706, v46
	v_lshl_add_u32 v179, v119, 1, 0
	v_add_nc_u32_e32 v182, 0, v182
	v_add_nc_u32_e32 v184, 0, v184
	v_add_nc_u32_e32 v186, 0, v34
	v_dual_mov_b32 v62, v149 :: v_dual_add_nc_u32 v187, 0, v35
	v_add_nc_u32_e32 v188, 0, v36
	v_dual_mov_b32 v64, v149 :: v_dual_add_nc_u32 v189, 0, v37
	v_add_nc_u32_e32 v190, 0, v38
	v_add_nc_u32_e32 v191, 0, v39
	v_add_nc_u32_e32 v192, 0, v43
	v_add_nc_u32_e32 v193, 0, v44
	v_add_nc_u32_e32 v194, 0, v45
	v_add_nc_u32_e32 v195, 0, v41
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v196, 0, v40
	v_add_nc_u32_e32 v197, 0, v47
	v_dual_mov_b32 v35, v149 :: v_dual_add_nc_u32 v198, 0, v48
	v_dual_mov_b32 v42, v149 :: v_dual_add_nc_u32 v199, 0, v49
	v_dual_mov_b32 v37, v149 :: v_dual_add_nc_u32 v200, 0, v50
	v_dual_mov_b32 v44, v149 :: v_dual_add_nc_u32 v201, 0, v51
	v_dual_mov_b32 v39, v149 :: v_dual_add_nc_u32 v202, 0, v52
	v_dual_mov_b32 v46, v149 :: v_dual_add_nc_u32 v203, 0, v53
	v_add_nc_u32_e32 v204, 0, v54
	v_dual_mov_b32 v48, v149 :: v_dual_add_nc_u32 v205, 0, v55
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v206, 0, v56
	v_mov_b32_e32 v50, v149
	v_mov_b32_e32 v51, v149
	v_mov_b32_e32 v52, v149
	v_mov_b32_e32 v53, v149
	v_mov_b32_e32 v54, v149
	v_mov_b32_e32 v55, v149
	v_dual_mov_b32 v56, v149 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v43, v149
	v_mov_b32_e32 v45, v149
	v_mov_b32_e32 v47, v149
	v_mov_b32_e32 v34, v149
	v_dual_mov_b32 v36, v149 :: v_dual_lshlrev_b32 v249, 1, v0
	v_mov_b32_e32 v38, v149
	v_mov_b32_e32 v40, v149
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s29, s16, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s30, s42, s16
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s54, s54, s43
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s64, s42, s29
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s55, 0x76543210
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_branch .LBB0_16
.LBB0_15:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v65, v81, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v208.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v208.h, v67.l
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s14, s38, s80
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s17, s38, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v68.l, v65.l
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v65.h, v208.l
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s14, s54, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s22, s38, 2
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v70, s14, v170, 1
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v65.l, v68.l, 15
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v71, s14, v101, 1
	v_add_lshl_u32 v72, s14, v171, 1
	v_add_lshl_u32 v81, s14, v102, 1
	v_add_lshl_u32 v82, s14, v99, 1
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v65.l, 4, v68.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s65
	v_cndmask_b32_e64 v71, 0x80000000, v71, s63
	v_cndmask_b32_e64 v72, 0x80000000, v72, s62
	v_cndmask_b32_e64 v81, 0x80000000, v81, s59
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v65.l, v65.l, 15
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v82, 0x80000000, v82, s58
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s18, s38, 3
	s_or_b32 s23, s38, 4
	s_or_b32 s20, s38, 5
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v67, -16, v65
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v66, 15, v68
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s24, s38, 6
	s_or_b32 s19, s38, 7
	s_or_b32 s25, s38, 8
	s_or_b32 s21, s38, 9
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v69, -16, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s26, s38, 10
	s_or_b32 s27, s38, 12
	s_or_b32 s28, s38, 14
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v66, v66, v69, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v68.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v68, s14, v98, 1
	v_add_lshl_u32 v69, s14, v100, 1
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v67, v65, v67, vcc_lo
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v65, s14, v173, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v68, 0x80000000, v68, s67
	v_cndmask_b32_e64 v69, 0x80000000, v69, s66
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s68
	s_clause 0x7
	buffer_load_u16 v65, v65, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v69, v69, s[48:51], 0 offen
	buffer_load_u16 v70, v70, s[48:51], 0 offen
	buffer_load_u16 v71, v71, s[48:51], 0 offen
	buffer_load_u16 v72, v72, s[48:51], 0 offen
	buffer_load_u16 v81, v81, s[48:51], 0 offen
	buffer_load_u16 v82, v82, s[48:51], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v239, v208, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v77, v147, v77
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v65.h, 0xff80, v65.l, s68
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v65.l, 0xff80, v68.l, s67
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v68.h, 0xff80, v69.l, s66
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v68.l, 0xff80, v70.l, s65
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v69.h, 0xff80, v71.l, s63
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v71, 0, v174
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v69.l, 0xff80, v72.l, s62
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v185, v68
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v70.h, 0xff80, v81.l, s59
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v71, v65
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v240, v208, v66
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v65.l
	v_mov_b16_e64 v65.l, v208.l
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v70.l, 0xff80, v82.l, s58
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v186, v69
	ds_store_b32 v187, v70
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	v_cmp_neq_f32_e64 s14, 0xff800000, v208
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v68.l
	v_mov_b16_e64 v68.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s16, s68, vcc_lo
	s_and_b32 s14, s67, s14
	v_cndmask_b32_e64 v65, 0, 1, s16
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v68
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v208
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v69.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s14, s66, s15
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v69.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.l, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s65, vcc_lo
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v69
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v208
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v65.h, 8, v66.l
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_add_nc_u32_e32 v66, 0, v103
	.loc	1 342 32                        ; attention_backward.py:342:32
	ds_load_u16 v238, v66
	ds_load_u16 v237, v188
	ds_load_u16 v235, v190
	ds_load_u16 v233, v192
	ds_load_u16 v230, v194
	ds_load_u16 v232, v193
	ds_load_u16 v234, v191
	ds_load_u16 v236, v189
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v66, 0, v175
	s_and_b32 s16, s63, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v70.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16 v66, v65
	v_cndmask_b32_e64 v66, 0, 1, s16
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v70.l, v208.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s14, s62, s14
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v208
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.h, v67.l, v65.h
	v_mov_b16_e32 v65.l, v66.l
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v70
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s16, s38, 13
	s_or_b32 s62, s38, 15
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s14, s59, s15
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s15, s38, 11
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s59, s51
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v69, s35, v169
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.l, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s58, vcc_lo
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s58, s50
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s14, s38, 1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s14, s29
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v208.h, v211.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s65, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s63, s14, s64
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v66.l, v67.l, v66.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s63, s63, s35
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v195, v65
	ds_store_b16 v196, v65
	ds_store_b16 v197, v66
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v65, s63, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s65
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v67, s63, v168
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v66, 0x80000000, v65, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v65, s35, v65
	v_add_nc_u32_e32 v68, s63, v169
	v_add_nc_u32_e32 v69, s63, v69
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	buffer_load_u8 v72, v66, s[56:59], 0 offen
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s63, v167
	v_add_nc_u32_e32 v70, s35, v65
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x5
	buffer_load_u8 v81, v66, s[56:59], 0 offen
	buffer_load_u8 v82, v67, s[56:59], 0 offen
	buffer_load_u8 v83, v68, s[56:59], 0 offen
	buffer_load_u8 v84, v69, s[56:59], 0 offen
	buffer_load_u8 v122, v65, s[56:59], 0 offen
	buffer_load_u8 v150, v70, s[56:59], 0 offen
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s17, s31
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s31
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s20, s31
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s19, s31
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(6)
	v_and_b16 v65.l, v72.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v66, 15, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s14, 7, v65.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v65, s63, v166
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v67, -16, v66
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s63, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v66, v66, v67, s14
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v151, v65, s[56:59], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v65.h, v208.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v67, 15, v151
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v151.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v65.l, v81.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v71, v67, v68, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v67, 15, v81
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v82.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v70, v67, v68 :: v_dual_and_b32 v67, 15, v82
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v65.l, v83.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v82.l, 4, v82.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v82.h, v208.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v69, v67, v68, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v67, 15, v83
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v84.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v83.l, 4, v83.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v83.h, v208.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v68, v67, v68, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v67, 15, v84
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v122.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v84.l, 4, v84.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v84.h, v208.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v152, -16, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v67, v67, v152, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v65.l, 4, v72.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v65, 0, v65, s17
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v72, -16, v65
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v152, 15, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v153, -16, v152
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v152, v152, v153, vcc_lo
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_dual_cndmask_b32 v153, v65, v72 :: v_dual_and_b32 v72, 15, v150
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v150.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v150.l, 4, v150.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v150.h, v208.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v154, -16, v72
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v65, v72, v154, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v122.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v208.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s18
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v122, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v122, v72, v122, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v151.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v208.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s19
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v151, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v151, v72, v151, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v81.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v208.l
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v81, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v72
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v72, v72, v81, s14
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v81, 0, v150, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v150, -16, v81
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v81, v81, v150, s14
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v82, 0, v82, s14
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v81, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v150, -16, v82
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s15, 7, v82
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v82, v82, v150, s15
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s62, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v83, 0, v83, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s62, s50
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v150, -16, v83
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s16, 7, v83
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v83, v83, v150, s16
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s16, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s38, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v84, 0, v84, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v150, -16, v84
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s21, 7, v84
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v84, v84, v150, s21
	.loc	1 378 27 is_stmt 1              ; attention_backward.py:378:27
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s28, s31
	s_cselect_b32 s22, -1, 0
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s26, s38, 4
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s21, s3, s21
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s26, s26, s30
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s17
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s26, s26, s35
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v150, s26, v0, 1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s38, s38, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v154, 0x80000000, v150, s21
	v_cndmask_b32_e64 v155, 0x80000000, v150, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s65
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v156, 0x80000000, v150, s17
	s_clause 0x1
	buffer_load_u16 v154, v154, s[60:63], 0 offen
	buffer_load_u16 v155, v155, s[60:63], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v156, v156, s[60:63], 0 offen
	v_cndmask_b32_e64 v241, 0x80000000, v150, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s59
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v242, 0x80000000, v150, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s20
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[60:63], 0 offen
	v_cndmask_b32_e64 v243, 0x80000000, v150, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s58
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v242, v242, s[60:63], 0 offen
	v_cndmask_b32_e64 v244, 0x80000000, v150, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s19
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v243, v243, s[60:63], 0 offen
	v_cndmask_b32_e64 v245, 0x80000000, v150, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s25
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v244, v244, s[60:63], 0 offen
	buffer_load_u16 v245, v245, s[60:63], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v151, v151
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v66, v66, v154
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v154, 16, v155
	v_cndmask_b32_e32 v155, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s27, v66, v66
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v153, v153, v154 :: v_dual_lshlrev_b32 v154, 16, v156
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e32 v156, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v155, v155, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v153, v153
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v152, v152, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v154, 16, v241
	v_cndmask_b32_e32 v241, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v156, v156, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v152, v152
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v122, v122, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v154, 16, v242
	v_cndmask_b32_e32 v242, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[60:63], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v65, v65, v154 :: v_dual_lshlrev_b32 v154, 16, v243
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v242, v242, s[60:63], 0 offen
	v_cndmask_b32_e32 v243, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v65, v65
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v81, v81, v154 :: v_dual_lshlrev_b32 v154, 16, v244
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e32 v244, 0x80000000, v150, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v243, v243, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v81, v81
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v71, v71, v154 :: v_dual_lshlrev_b32 v154, 16, v245
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	buffer_load_u16 v244, v244, s[60:63], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s38, s39
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v71, v71
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v151, v151, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e64 v154, 0x80000000, v150, s17
	v_cndmask_b32_e32 v150, 0x80000000, v150, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v122, v122
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v154, v154, s[60:63], 0 offen
	buffer_load_u16 v150, v150, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v150, 16, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v70, v70, v154
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v154, 16, v155
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v84, v84, v150
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v150, v66, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_cmp_o_f32_e64 s28, v70, v70
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v72, v72, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v154, 16, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v66, v66, v150, 0x7fff
	v_bfe_u32 v150, v153, 16, 1
	v_cmp_o_f32_e64 s20, v84, v84
	v_cmp_o_f32_e64 s26, v72, v72
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v69, v69, v154 :: v_dual_lshlrev_b32 v154, 16, v241
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v150, v153, v150, 0x7fff
	v_bfe_u32 v153, v152, 16, 1
	v_cmp_o_f32_e64 s25, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v82, v82, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v154, 16, v242
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v152, v152, v153, 0x7fff
	v_bfe_u32 v153, v122, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s24, v82, v82
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v68, v68, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v154, 16, v243
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v122, v122, v153, 0x7fff
	v_bfe_u32 v153, v65, 16, 1
	v_cmp_o_f32_e64 s23, v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v83, v83, v154 :: v_dual_lshlrev_b32 v154, 16, v244
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v153, v65, v153, 0x7fff
	v_bfe_u32 v65, v81, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s22, v83, v83
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v67, v67, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v154, v81, v65, 0x7fff
	v_bfe_u32 v65, v71, 16, 1
	v_bfe_u32 v81, v68, 16, 1
	v_add3_u32 v71, v71, v65, 0x7fff
	v_bfe_u32 v65, v151, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_add3_u32 v151, v151, v65, 0x7fff
	v_bfe_u32 v65, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v155, v83, v81, 0x7fff
	v_add3_u32 v65, v70, v65, 0x7fff
	v_bfe_u32 v70, v72, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s27
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_add_nc_u32_e32 v66, 0, v176
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v81, v67, 16, 1
	v_cmp_o_f32_e64 s21, v67, v67
	v_add3_u32 v70, v72, v70, 0x7fff
	v_bfe_u32 v72, v69, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s28
	v_add3_u32 v67, v67, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v69, v72, 0x7fff
	v_bfe_u32 v72, v82, 16, 1
	v_add3_u32 v156, v84, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v72, v82, v72, 0x7fff
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_load_u8_d16_hi v84, v66
	ds_load_u8_d16_hi v82, v66 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v84, v198
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v82, v198 offset:64
	ds_load_u8_d16_hi v83, v199
	ds_load_u8_d16_hi v81, v199 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v83, v200
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v81, v200 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v121, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v150.h, s19
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v121, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s26
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v150, v149
	ds_store_b16 v123, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v152.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v123, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v69.h, s25
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v152, v149
	ds_store_b16 v124, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v122.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v124, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s24
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v125, v65
	ds_store_b16_d16_hi v125, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v153.h, s15
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s23
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v153, v149
	ds_store_b16 v126, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v154.h, s16
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v126, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v155.h, s22
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v154, v149
	v_mov_b32_e32 v155, v149
	ds_store_b16 v127, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s14
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v127, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s21
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v129, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v151.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v129, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v156.h, s20
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v130, v65
	ds_store_b16_d16_hi v130, v65 offset:1024
	v_add_nc_u32_e32 v65, 0, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[241:244], v65
	ds_load_b128 v[245:248], v201
	v_mov_b32_e32 v151, v149
	v_mov_b32_e32 v156, v149
	v_dual_mov_b32 v65, v149 :: v_dual_mov_b32 v66, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v68, v152 :: v_dual_mov_b32 v67, v151
	v_dual_mov_b32 v69, v153 :: v_dual_mov_b32 v70, v154
	v_dual_mov_b32 v71, v155 :: v_dual_mov_b32 v72, v156
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v153.h, v208.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[1:8], v[65:72]
	ds_load_b128 v[241:244], v202
	ds_load_b128 v[245:248], v203
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[9:16], v[65:72]
	ds_load_b128 v[241:244], v204
	ds_load_b128 v[245:248], v205
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[17:24], v[65:72]
	ds_load_b128 v[241:244], v206
	ds_load_b128 v[245:248], v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[25:32], v[65:72]
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v242, v75
	v_cvt_f32_i32_e32 v75, v79
	v_cvt_f32_i32_e32 v243, v74
	v_cvt_f32_i32_e32 v74, v80
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v122, v67, v172
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v67, v231, 0, 8
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v69, v172
	v_sub_f32_e32 v150, v65, v172
	v_sub_f32_e32 v65, v70, v172
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v241, v76
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v79.l, v67.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v76, v78
	v_cvt_f32_i32_e32 v244, v73
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v71, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v69, 15, v79
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v79.l, 15
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v70, -16, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v226, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v78, v69, v70, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v69.l, v67.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v70, 15, v69
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v69.l, 15
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v71, -16, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v225, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v67.h, v208.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v70, v70, v71, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v71.l, v67.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v71.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v151, 15, v71
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v71.h, v229.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v79.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v152, -16, v151
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v151, v151, v152, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v79.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v152, -16, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v79, v67, v152, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v69.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v69.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v152, -16, v67
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v69, v67, v152, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v71.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v71.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v71.l, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v78, v78, v71
	v_mul_f32_e32 v71, v79, v71
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v228.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v152, -16, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.l, v208.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v78, 0, v78, s0
	v_cndmask_b32_e64 v71, 0, v71, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_dual_cndmask_b32 v67, v67, v152 :: v_dual_mul_f32 v70, v70, v79
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v69, v69, v79
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v227.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v70, 0, v70, s0
	v_mov_b16_e64 v152.h, v208.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v151, v151, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v69, 0, v69, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v67, v67, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s14, v70, v70
	v_cmp_o_f32_e64 s17, v71, v71
	v_cmp_o_f32_e64 s18, v69, v69
	v_cndmask_b32_e64 v67, 0, v67, s1
	v_add3_u32 v78, v78, v79, 0x7fff
	v_bfe_u32 v79, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v70, v70, v79, 0x7fff
	v_cndmask_b32_e64 v79, 0, v151, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v151, v79, 16, 1
	v_cmp_o_f32_e64 s15, v79, v79
	v_add3_u32 v79, v79, v151, 0x7fff
	v_cndmask_b32_e64 v151, 0, v240, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v79.h, s15
	v_mov_b16_e64 v152.l, v151.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v151, v151
	v_and_b32_e32 v152, 1, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v151, v151, v152, 0x7fff
	v_bfe_u32 v152, v71, 16, 1
	v_add3_u32 v71, v71, v152, 0x7fff
	v_bfe_u32 v152, v69, 16, 1
	v_cndmask_b16 v71.l, 0x7fff, v78.h, vcc_lo
	v_add_nc_u32_e32 v78, v121, v249
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s17
	v_add3_u32 v69, v69, v152, 0x7fff
	v_bfe_u32 v152, v67, 16, 1
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s18
	v_add3_u32 v67, v67, v152, 0x7fff
	v_cndmask_b32_e64 v152, 0, v239, s1
	v_cndmask_b16 v67.l, 0x7fff, v151.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v67.h, s19
	v_mov_b16_e64 v153.l, v152.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s20, v152, v152
	ds_store_2addr_stride64_b32 v78, v69, v70 offset0:2 offset1:3
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v152, v152, v153, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v152.h, s20
	ds_store_2addr_stride64_b32 v78, v67, v71 offset1:1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v67, v220, 0, 8
	v_mov_b16_e32 v71.l, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v79, 15, v71
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v71.l, 15
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v151, -16, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v219, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v67.h, v208.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v79, v79, v151, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v151.l, v67.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v151.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v152, 15, v151
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v151.h, v224.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v71.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v153, -16, v152
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v152, v152, v153, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v71.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v153, -16, v67
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v66, v66, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v71, v67, v153, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v151.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v151.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v151.l, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v72, v72, v172 :: v_dual_mul_f32 v79, v79, v151
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v71, v71, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v153, -16, v67
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v68, v172
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v151.h, v223.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v79, 0, v79, s0
	v_cndmask_b32_e64 v71, 0, v71, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_dual_cndmask_b32 v67, v67, v153 :: v_dual_mul_f32 v152, v152, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cmp_o_f32_e64 s15, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	v_mul_f32_e32 v67, v67, v151
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v151, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v67, 0, v67, s1
	v_add3_u32 v79, v79, v151, 0x7fff
	v_cndmask_b32_e64 v151, 0, v152, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v67, v67
	v_bfe_u32 v152, v151, 16, 1
	v_cmp_o_f32_e64 s14, v151, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v151, v151, v152, 0x7fff
	v_bfe_u32 v152, v71, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v151.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v71, v152, 0x7fff
	v_bfe_u32 v152, v67, 16, 1
	v_cndmask_b16 v71.l, 0x7fff, v79.h, vcc_lo
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v152, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v67.h, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v67, v210, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v69.l, v67.l
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v70, 15, v69
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v151, -16, v70
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v209, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v67.h, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v70, v70, v151, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v151.l, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v151.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v152, 15, v151
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v151.h, v222.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v69.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v153, -16, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v152, v152, v153, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v69.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v153, -16, v67
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v152, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v69, v67, v153, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v151.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v151.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v151.l, v208.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v70, v70, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v69, v69, v151
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v153, -16, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v151.h, v221.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v70, 0, v70, s0
	v_cndmask_b32_e64 v69, 0, v69, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_dual_cndmask_b32 v67, v67, v153 :: v_dual_mul_f32 v152, v152, v151
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s15, v69, v69
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v67, v67, v151
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v151, v70, 16, 1
	v_cndmask_b32_e64 v67, 0, v67, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v151, 0x7fff
	v_cndmask_b32_e64 v151, 0, v152, s0
	v_cmp_o_f32_e64 s16, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v152, v151, 16, 1
	v_cmp_o_f32_e64 s14, v151, v151
	v_add3_u32 v151, v151, v152, 0x7fff
	v_bfe_u32 v152, v69, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v69, v152, 0x7fff
	v_bfe_u32 v152, v67, 16, 1
	v_cndmask_b16 v69.l, 0x7fff, v70.h, vcc_lo
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v70, v147, v244
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v152, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v151.h, s14
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v151, v147, v75
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s16
	ds_store_2addr_stride64_b32 v78, v71, v79 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v78, v69, v67 offset0:6 offset1:7
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v67, 16, v238
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v69.h, v218.l
	v_mov_b16_e64 v69.l, v208.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v71, v180, v243
	v_mul_f32_e32 v79, v180, v241
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v67, 0x3fb8aa3b, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v67, v70, v69
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v69, 16, v237
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v217.l
	v_mov_b16_e64 v70.l, v208.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v67, v67, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v69, v71, v70 :: v_dual_lshlrev_b32 v70, 16, v236
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v71.h, v216.l
	v_mov_b16_e64 v71.l, v208.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v76, v180, v76
	v_mul_f32_e32 v78, v147, v242
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v70, 0x3fb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v70, v78, v71
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v71, 16, v235
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v215.l
	v_mov_b16_e64 v78.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v71, 0x3fb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v71, v79, v78
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v79.l, v208.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v78, 16, v234
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v214.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v74, v180, v74
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v78, v77, v79 :: v_dual_lshlrev_b32 v77, 16, v233
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v213.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v77, v76, v79 :: v_dual_lshlrev_b32 v76, 16, v232
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v212.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v75, 0x3fb8aa3b, v76 :: v_dual_lshlrev_b32 v76, 16, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v75, v151, v79 :: v_dual_mul_f32 v76, 0x3fb8aa3b, v76
	v_fmac_f32_e32 v76, v74, v208
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v67.l, 1, v84.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v67.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v67, 0, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v74, v67, v150 :: v_dual_sub_f32 v67, v69, v181
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v67.l, 1, v84.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v67.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v67, 0, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v67, v66
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s52, v74
	v_mul_f32_e32 v66, s52, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v69, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_cmp_o_f32_e64 s14, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v67, v69, 0x7fff
	v_bfe_u32 v69, v66, 16, 1
	v_cndmask_b16 v67.l, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v66, v69, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v66.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v67, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v69, v67, v177
	v_perm_b32 v67, v69, v67, v178
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v69, v70, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v69
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v69.l, 1, v83.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v69, 0, v70, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v70, v69, v122 :: v_dual_sub_f32 v69, v71, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v69
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v69.l, 1, v83.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v69, 0, v71, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v68, v69, v68 :: v_dual_mul_f32 v69, s52, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s52, v68
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v68, v68
	v_add3_u32 v69, v69, v70, 0x7fff
	v_bfe_u32 v70, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.l, 0x7fff, v69.h, vcc_lo
	v_add3_u32 v68, v68, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s14
	v_permlanex16_b32 v70, v69, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v68, v70, v69, v177
	v_perm_b32 v69, v70, v69, v178
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v70, v78, v165
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v70
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v70.l, 1, v82.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v71, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v71, v70, v80 :: v_dual_sub_f32 v70, v77, v181
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v70
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v70.l, 1, v82.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v65, v70, v65 :: v_dual_mul_f32 v70, s52, v71
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s52, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v71, v70, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cmp_o_f32_e64 s14, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_bfe_u32 v71, v65, 16, 1
	v_add3_u32 v65, v65, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v65, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v71, v65, v177
	v_perm_b32 v71, v71, v65, v178
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v65, v75, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v65
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v65.l, 1, v81.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v65.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v65, 0, v74, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v65, v73
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v65, v76, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v76, v179 offset:608
	ds_load_u16_d16 v75, v179 offset:352
	ds_load_u16_d16 v208, v179
	ds_load_u16_d16 v212, v179 offset:1024
	ds_load_u16_d16 v219, v179 offset:832
	ds_load_u16_d16 v220, v179 offset:1088
	ds_load_u16_d16 v213, v179 offset:1280
	ds_load_u16_d16 v221, v179 offset:1344
	ds_load_u16_d16 v214, v179 offset:1536
	ds_load_u16_d16 v222, v179 offset:1600
	ds_load_u16_d16 v215, v179 offset:1792
	ds_load_u16_d16 v209, v179 offset:256
	ds_load_u16_d16 v210, v179 offset:512
	ds_load_u16_d16 v218, v179 offset:576
	ds_load_u16_d16 v211, v179 offset:768
	ds_load_u16_d16 v223, v179 offset:1856
	ds_load_u16_d16 v216, v179 offset:64
	ds_load_u16_d16 v217, v179 offset:320
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v65
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v65.l, 1, v81.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v65.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v65, 0, v74, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v75, v179 offset:480
	ds_load_u16_d16 v74, v179 offset:96
	ds_load_u16_d16 v224, v179 offset:32
	ds_load_u16_d16 v225, v179 offset:288
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v208, v179 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v219, v179 offset:960
	ds_load_u16_d16_hi v212, v179 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v220, v179 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v213, v179 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v221, v179 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v214, v179 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v222, v179 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v215, v179 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v179 offset:384
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v210, v179 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v218, v179 offset:704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v211, v179 offset:896
	ds_load_u16_d16 v77, v179 offset:864
	ds_load_u16_d16 v78, v179 offset:1120
	ds_load_u16_d16 v79, v179 offset:1376
	ds_load_u16_d16 v80, v179 offset:1632
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v223, v179 offset:1984
	ds_load_u16_d16 v81, v179 offset:1888
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v224, v179 offset:160
	ds_load_u16_d16_hi v216, v179 offset:192
	ds_load_u16_d16_hi v74, v179 offset:224
	ds_load_u16_d16 v226, v179 offset:544
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v225, v179 offset:416
	ds_load_u16_d16_hi v217, v179 offset:448
	ds_load_u16_d16 v227, v179 offset:800
	ds_load_u16_d16 v228, v179 offset:1056
	ds_load_u16_d16 v229, v179 offset:1312
	ds_load_u16_d16 v230, v179 offset:1568
	ds_load_u16_d16 v231, v179 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v226, v179 offset:672
	ds_load_u16_d16_hi v76, v179 offset:736
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v65, v65, v72 :: v_dual_mul_f32 v72, s52, v73
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v227, v179 offset:928
	ds_load_u16_d16_hi v77, v179 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v228, v179 offset:1184
	ds_load_u16_d16_hi v78, v179 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v229, v179 offset:1440
	ds_load_u16_d16_hi v79, v179 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v230, v179 offset:1696
	ds_load_u16_d16_hi v80, v179 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v231, v179 offset:1952
	ds_load_u16_d16_hi v81, v179 offset:2016
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v73, v72, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s52, v65
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v73, 0x7fff
	v_bfe_u32 v73, v65, 16, 1
	v_cmp_o_f32_e64 s14, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v65, v73, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v72.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s14
	v_permlanex16_b32 v73, v65, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v72, v73, v65, v177
	v_perm_b32 v73, v73, v65, v178
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[208:215], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[224:231], v[66:73], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[216:223], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[74:81], v[66:73], v[33:40]
	s_cbranch_scc0 .LBB0_20
.LBB0_16:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v65, s38, v104
	v_or_b32_e32 v66, s38, v253
	v_or_b32_e32 v69, 8, v104
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s69, s38, s81
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v67, s38, v254
	v_or_b32_e32 v70, 10, v104
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s19, s31, v65
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s22, s69, s34
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s38, v255
	v_or_b32_e32 v71, 12, v104
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v150, v149 :: v_dual_add_nc_u32 v65, s22, v85
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v69, s38, v69
	v_or_b32_e32 v72, 14, v104
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s21, s31, v67
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v151, v149 :: v_dual_add_nc_u32 v66, s22, v112
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s38, v70
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v68
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v152, v149 :: v_dual_add_nc_u32 v67, s22, v113
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s38, v71
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v69
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v153, v149 :: v_dual_add_nc_u32 v68, s22, v86
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s38, v72
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v70
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v154, v149 :: v_dual_add_nc_u32 v69, s22, v114
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v71
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v155, v149 :: v_dual_add_nc_u32 v70, s22, v87
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v72
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v156, v149 :: v_dual_add_nc_u32 v71, s22, v88
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v73, v149 :: v_dual_add_nc_u32 v72, s22, v89
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v74, v150 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v75, v151 :: v_dual_mov_b32 v76, v152
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	s_clause 0x7
	buffer_load_u8 v81, v65, s[40:43], 0 offen
	buffer_load_u8 v231, v66, s[40:43], 0 offen
	buffer_load_u8 v226, v67, s[40:43], 0 offen
	buffer_load_u8 v225, v68, s[40:43], 0 offen
	buffer_load_u8 v220, v69, s[40:43], 0 offen
	buffer_load_u8 v219, v70, s[40:43], 0 offen
	buffer_load_u8 v210, v71, s[40:43], 0 offen
	buffer_load_u8 v209, v72, s[40:43], 0 offen
	v_add_nc_u32_e32 v65, 0, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v77, v153 :: v_dual_mov_b32 v78, v154
	v_dual_mov_b32 v79, v155 :: v_dual_mov_b32 v80, v156
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s38, v119
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v81
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v231 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v226
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v225 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v220
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v219 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v210
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v209 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[67:68], v65
	ds_load_b64 v[69:70], v182
	ds_load_b64 v[71:72], v183
	ds_load_b64 v[82:83], v184
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s22, s31, v66
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s67, s6, s22
	s_and_b32 s65, s7, s22
	s_and_b32 s62, s8, s22
	s_and_b32 s58, s9, s22
	s_and_b32 s68, s10, s22
	s_and_b32 s66, s11, s22
	s_and_b32 s63, s12, s22
	s_and_b32 s59, s13, s22
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[90:91], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[92:93], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[94:95], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[82:83], v[96:97], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s22, v66, v140
	v_cmp_le_i32_e64 s23, v66, v141
	v_cmp_le_i32_e64 s24, v66, v142
	v_cmp_le_i32_e64 s25, v66, v143
	v_cmp_le_i32_e64 s26, v66, v144
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s22, s22, s65
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v139
	v_cmp_le_i32_e64 s27, v66, v145
	v_cmp_le_i32_e64 s28, v66, v146
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s23, s23, s62
	s_and_b32 s24, s24, s58
	s_and_not1_b32 s65, s65, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_b32 s25, s25, s68
	s_and_b32 s26, s26, s66
	s_or_b32 s65, s65, s22
	s_and_not1_b32 s22, s62, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s58, s58, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_b32 s70, vcc_lo, s67
	s_and_b32 s27, s27, s63
	s_and_b32 s28, s28, s59
	s_or_b32 s62, s22, s23
	s_or_b32 s58, s58, s24
	s_and_not1_b32 s22, s68, exec_lo
	s_and_b32 s23, s25, exec_lo
	s_and_not1_b32 s24, s66, exec_lo
	s_and_b32 s25, s26, exec_lo
	s_and_not1_b32 s67, s67, exec_lo
	s_and_b32 s70, s70, exec_lo
	s_or_b32 s68, s22, s23
	s_or_b32 s66, s24, s25
	s_and_not1_b32 s22, s63, exec_lo
	s_and_b32 s23, s27, exec_lo
	s_and_not1_b32 s24, s59, exec_lo
	s_and_b32 s25, s28, exec_lo
	s_or_b32 s67, s67, s70
	s_or_b32 s63, s22, s23
	s_or_b32 s59, s24, s25
.LBB0_18:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v65, s38, v137
	v_add_lshl_u32 v67, s69, v104, 1
	v_or_b32_e32 v68, s38, v138
	v_add_lshl_u32 v156, s69, v137, 1
	v_or_b32_e32 v69, s38, v136
	v_cmp_gt_i32_e32 vcc_lo, s31, v65
	v_add_nc_u32_e32 v82, 4, v67
	v_add_nc_u32_e32 v151, 12, v67
	v_add_nc_u32_e32 v152, 16, v67
	v_cndmask_b32_e64 v150, 0x80000000, v67, s19
	v_cndmask_b32_e32 v65, 0x80000000, v156, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v68
	v_add_nc_u32_e32 v83, 8, v67
	v_add_nc_u32_e32 v153, 20, v67
	v_add_nc_u32_e32 v154, 24, v67
	v_add_nc_u32_e32 v67, 28, v67
	v_cndmask_b32_e64 v82, 0x80000000, v82, s20
	v_cndmask_b32_e64 v83, 0x80000000, v83, s21
	v_cndmask_b32_e64 v151, 0x80000000, v151, s14
	v_cndmask_b32_e64 v152, 0x80000000, v152, s15
	v_cndmask_b32_e64 v153, 0x80000000, v153, s16
	v_cndmask_b32_e64 v154, 0x80000000, v154, s17
	v_cndmask_b32_e64 v155, 0x80000000, v67, s18
	s_clause 0x7
	buffer_load_u16 v67, v150, s[44:47], 0 offen
	buffer_load_u16 v229, v82, s[44:47], 0 offen
	buffer_load_u16 v228, v83, s[44:47], 0 offen
	buffer_load_u16 v227, v151, s[44:47], 0 offen
	buffer_load_u16 v224, v152, s[44:47], 0 offen
	buffer_load_u16 v223, v153, s[44:47], 0 offen
	buffer_load_u16 v222, v154, s[44:47], 0 offen
	buffer_load_u16 v221, v155, s[44:47], 0 offen
	v_add_nc_u32_e32 v83, 8, v156
	v_add_nc_u32_e32 v82, 4, v156
	v_or_b32_e32 v70, s38, v135
	v_or_b32_e32 v71, s38, v134
	v_or_b32_e32 v72, s38, v133
	v_or_b32_e32 v84, s38, v132
	v_cndmask_b32_e32 v68, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v69
	v_or_b32_e32 v122, s38, v131
	v_dual_cndmask_b32 v69, 0x80000000, v83 :: v_dual_add_nc_u32 v150, 28, v156
	v_add_nc_u32_e32 v83, 16, v156
	v_add_nc_u32_e32 v82, 12, v156
	v_cmp_gt_i32_e32 vcc_lo, s31, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v70, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v71
	v_dual_cndmask_b32 v71, 0x80000000, v83 :: v_dual_add_nc_u32 v82, 20, v156
	v_cmp_gt_i32_e32 vcc_lo, s31, v72
	v_dual_cndmask_b32 v72, 0x80000000, v82 :: v_dual_add_nc_u32 v83, 24, v156
	v_cmp_gt_i32_e32 vcc_lo, s31, v84
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v82, 0x80000000, v83, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v122
	v_cndmask_b32_e32 v83, 0x80000000, v150, vcc_lo
	s_clause 0x7
	buffer_load_u16 v218, v65, s[44:47], 0 offen
	buffer_load_u16 v217, v68, s[44:47], 0 offen
	buffer_load_u16 v216, v69, s[44:47], 0 offen
	buffer_load_u16 v215, v70, s[44:47], 0 offen
	buffer_load_u16 v214, v71, s[44:47], 0 offen
	buffer_load_u16 v213, v72, s[44:47], 0 offen
	buffer_load_u16 v212, v82, s[44:47], 0 offen
	buffer_load_u16 v211, v83, s[44:47], 0 offen
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_15
; %bb.19:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v66, v120
	v_cmp_ge_i32_e64 s14, v66, v105
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s21, v66, v157
	v_cmp_le_i32_e64 s22, v66, v158
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v66, v106
	v_cmp_ge_i32_e64 s16, v66, v107
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s23, v66, v159
	v_cmp_le_i32_e64 s24, v66, v160
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v66, v108
	v_cmp_ge_i32_e64 s18, v66, v109
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s25, v66, v161
	v_cmp_le_i32_e64 s26, v66, v162
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s14, s14, s22
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s19, v66, v110
	v_cmp_ge_i32_e64 s20, v66, v111
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v66, v163
	v_cmp_le_i32_e64 s28, v66, v164
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, s21, s67
	s_and_b32 s14, s14, s65
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_b32 s18, s18, s26
	s_and_b32 s15, s15, s62
	s_and_b32 s16, s16, s58
	s_and_not1_b32 s22, s67, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s65, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s68
	s_and_b32 s18, s18, s66
	s_and_b32 s19, s19, s27
	s_and_b32 s20, s20, s28
	s_or_b32 s67, s22, s21
	s_or_b32 s65, s23, s14
	s_and_not1_b32 s14, s62, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_not1_b32 s21, s58, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_b32 s19, s19, s63
	s_and_b32 s20, s20, s59
	s_or_b32 s62, s14, s15
	s_or_b32 s58, s21, s16
	s_and_not1_b32 s14, s68, exec_lo
	s_and_b32 s15, s17, exec_lo
	s_and_not1_b32 s16, s66, exec_lo
	s_and_b32 s17, s18, exec_lo
	s_or_b32 s68, s14, s15
	s_or_b32 s66, s16, s17
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s15, s19, exec_lo
	s_and_not1_b32 s16, s59, exec_lo
	s_and_b32 s17, s20, exec_lo
	s_or_b32 s63, s14, s15
	s_or_b32 s59, s16, s17
	s_branch .LBB0_15
.LBB0_20:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v24, off, off          ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v137
	v_cmp_gt_i32_e64 s2, s53, v138
	v_cmp_gt_i32_e64 s3, s53, v136
	v_cmp_gt_i32_e64 s5, s53, v135
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s53, v134
	v_cmp_gt_i32_e64 s7, s53, v133
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s53, v132
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s53, v131
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s53, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s53, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s53, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s53, v20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s53, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s53, v18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s53, v17
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s53, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s53, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s53, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s53, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s53, v12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s53, v11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s53, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s53, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s53, v8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s53, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s53, v6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v137
	v_or_b32_e32 v1, 60, v137
	v_or_b32_e32 v2, 58, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s53, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v137
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s53, v4
	v_cmp_gt_i32_e64 s30, s53, v3
	v_cmp_gt_i32_e64 s0, s53, v2
	v_cmp_gt_i32_e32 vcc_lo, s53, v1
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v24, v24, s53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v137, 2
	v_add_lshl_u32 v26, v24, v138, 2
	v_add_lshl_u32 v27, v24, v136, 2
	v_add_lshl_u32 v28, v24, v132, 2
	v_add_lshl_u32 v23, v24, v23, 2
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
	v_add_lshl_u32 v25, v24, v135, 2
	s_clause 0x1
	buffer_store_b32 v58, v26, s[36:39], 0 offen
	buffer_store_b32 v59, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v134, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v133, 2
	v_add_lshl_u32 v22, v24, v22, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v25, s[36:39], 0 offen
	buffer_store_b32 v61, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v131, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v21, v24, v21, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v20, v24, v20, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v24, v19, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v18, v24, v18, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v24, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v24, v16, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v24, v15, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v24, v14, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v24, v13, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v24, v12, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v24, v11, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v10, v24, v10, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v24, v9, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v8, v24, v8, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v7, v24, v7, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v24, v6, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v5, v24, v5, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v4, v24, v4, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v24, v3, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v0
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v2, v24, v2, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v24, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v24, v0, 2
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
	s_endpgm
.Ltmp364:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 28
		.amdhsa_kernarg_size 184
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 28
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26336
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 28
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
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
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
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 28
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 6
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
