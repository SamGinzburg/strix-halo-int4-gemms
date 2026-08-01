	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v122, 31, v0
	s_clause 0x2
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_load_b128 s[36:39], s[0:1], 0x38
	v_and_b32_e32 v119, 15, v0
	v_or_b32_e32 v105, 2, v104
	v_or_b32_e32 v106, 4, v104
	v_or_b32_e32 v107, 6, v104
	v_or_b32_e32 v108, 8, v104
	v_or_b32_e32 v109, 10, v104
	v_or_b32_e32 v110, 12, v104
	v_or_b32_e32 v111, 14, v104
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v120, 1, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v177, 12, v0
	v_add_nc_u32_e32 v115, 0, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[85:86], null, s34, v104, v[122:123]
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
	v_or_b32_e32 v2, s46, v105
	v_or_b32_e32 v3, s46, v106
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v112, s34, 1, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v107
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v113, s34, 2, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v108
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[87:88], null, s34, 10, v[85:86]
	v_lshl_add_u32 v114, s34, 3, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[88:89], null, s34, 12, v[85:86]
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v110
	v_or_b32_e32 v8, s46, v111
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[89:90], null, s34, 14, v[85:86]
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v121, v115, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	v_cmp_gt_i32_e64 s2, s34, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v104
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
	v_or_b32_e32 v6, s46, v109
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
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s26, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s42, s30
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
	v_add_nc_u32_e32 v4, s42, v114
	v_mad_u64_u32 v[10:11], null, s34, 18, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v9, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v5, s42, v87
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
	v_add_nc_u32_e32 v6, s42, v88
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v7, s42, v89
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v8, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v8, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
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
	s_and_b32 s4, s78, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s5, s26, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v18, 0x80000000, v11, vcc_lo
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[10:11], null, s34, 26, v[9:10]
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s45, s3
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v117, 0, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v17
	v_lshl_add_u32 v19, s35, 3, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v21, s35, v20
	v_add_nc_u32_e32 v22, s35, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 2, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s35, v21
	v_add_nc_u32_e32 v26, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v21
	v_lshlrev_b32_e32 v18, 2, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v29, s35, v25
	v_add_nc_u32_e32 v30, s35, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_lshlrev_b32 v31, 2, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s35, v29
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s35, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 2, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v43, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v29, 1, v29
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v24, 2, v19
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
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
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v37
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 1, v42
	v_cndmask_b32_e32 v56, 0x80000000, v38, vcc_lo
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s77, s3
	s_and_b32 vcc_lo, s64, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v30, 1, v30
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s75, s3
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
	buffer_load_u16 v134, v78, s[40:43], 0 offen
	buffer_load_u16 v131, v84, s[40:43], 0 offen
	buffer_load_u16 v132, v63, s[40:43], 0 offen
	buffer_load_u16 v133, v92, s[40:43], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	s_clause 0x12
	buffer_load_u16 v135, v96, s[40:43], 0 offen
	buffer_load_u16 v136, v79, s[40:43], 0 offen
	buffer_load_u16 v137, v10, s[40:43], 0 offen
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
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v16, 0x360, v120
	v_xor_b32_e32 v17, 0x3f0, v120
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v34, 5, v119
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v180, 1, v33
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v35, 1, v177
	v_lshlrev_b32_e32 v10, 4, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v129, 0, v16
	v_add_nc_u32_e32 v130, 0, v17
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v18, v180, v119
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v10, v34, v10, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v12, 0x120, v120
	v_xor_b32_e32 v13, 0x1b0, v120
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v17, s47, v18
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, s46, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v11, 0x90, v120
	v_xor_b32_e32 v14, 0x240, v120
	v_xor_b32_e32 v15, 0x2d0, v120
	scratch_store_b32 off, v17, off         ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v16
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshl_or_b32 v128, v119, 7, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v1, 0, v10
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v124, 0, v12
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v12, v10, 8, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v16, 0x80000000, v17, s4
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
	ds_store_b16 v121, v131 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b16 v123, v132 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v123, v133 offset:3072
	ds_store_b16 v124, v4
	ds_store_b16 v124, v8 offset:1024
	ds_store_b16 v124, v134 offset:2048
	ds_store_b16 v125, v5
	ds_store_b16 v125, v9 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v124, v135 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v125, v136 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v125, v137 offset:3072
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
	v_lshlrev_b32_e32 v136, 16, v136
	v_lshlrev_b32_e32 v141, 16, v5
	v_lshlrev_b32_e32 v133, 16, v133
	v_lshlrev_b32_e32 v63, 16, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v157, v71, v136 :: v_dual_lshlrev_b32 v62, 16, v62
	v_mul_f32_e32 v149, v58, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v159, v73, v133
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v139, 16, v3
	v_lshlrev_b32_e32 v131, 16, v131
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v147, v52, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v158, v72, v131 :: v_dual_fmac_f32 v157, v71, v136
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v149, v58, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v159, v73, v133
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v101, 16, v101
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v147, v52, v139
	v_fmac_f32_e32 v158, v72, v131
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v168, v49, v81
	v_dual_mul_f32 v164, v45, v101 :: v_dual_lshlrev_b32 v79, 16, v79
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v99, 16, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v166, v47, v79
	v_mul_f32_e32 v162, v43, v99
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v133, v58, -1, -1 op_sel:[1,0]
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v168, v49, v81
	v_fmac_f32_e32 v164, v45, v101
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v58, v133 :: v_dual_lshlrev_b32 v103, 16, v103
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v98, 16, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v166, v47, v79
	v_fmac_f32_e32 v162, v43, v99
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v58, 31
.Ltmp19:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v68, v103
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v169, v50, v98
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v155, v69, v132
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v169, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v161, v77, v137
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v154, v68, v103
	v_add_f32_dpp v68, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v169, v50, v98
	v_fmac_f32_e32 v155, v69, v132
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v161, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v65, 16, v65
	v_lshlrev_b32_e32 v64, 16, v64
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v161, v77, v137
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v169, v169 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v135, 16, v135
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v134, 16, v134
	v_lshlrev_b32_e32 v80, 16, v80
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v160, v76, v135
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v156, v70, v134 :: v_dual_mul_f32 v167, v48, v80
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v160, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v131, v52, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v160, v76, v135
	v_add_f32_e32 v52, v52, v131
	v_dual_fmac_f32 v156, v70, v134 :: v_dual_fmac_f32 v167, v48, v80
	v_add_f32_dpp v70, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v52, 31
.Ltmp45:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v144, 16, v8
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v76, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v152, v61, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v152, v61, v144
	v_add_f32_dpp v61, v160, v160 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v136, v61, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v101, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v61, v61, v136
	v_add_f32_e32 v49, v49, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v61, 31
	v_mov_b32_e32 v61, s16
	v_readlane_b32 s11, v49, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v49, s11 :: v_dual_lshlrev_b32 v142, 16, v6
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v150, v59, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v150, v59, v142
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v142, v72, -1, -1 op_sel:[1,0]
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v47, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v72, v72, v142
.Ltmp59:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshl_or_b32 v11, v33, 6, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v15, v11, 16, 0
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v18, v11, 32, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v19, v11, 48, 0
	v_xad_u32 v20, v11, 64, 0
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v134, v59, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v21, 0x50, v11, 0
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v47, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v25, 0x60, v11, 0
	v_xad_u32 v29, 0x70, v11, 0
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v59, v59, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v47, v47, v99
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s17, v59, 31
	v_mov_b32_e32 v59, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_readlane_b32 s9, v47, 31
.Ltmp72:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v140, 16, v4
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v144, v76, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v47, s9 :: v_dual_mul_f32 v148, v53, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v144
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v148, v53, v140
	v_add_f32_dpp v53, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v140, v70, -1, -1 op_sel:[1,0]
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v132, v53, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v81, v45, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v53, v132
	v_add_f32_e32 v45, v45, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v53, 31
	v_readlane_b32 s7, v45, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v45, s7 :: v_dual_lshlrev_b32 v138, 16, v2
.Ltmp82:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v146, v51, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v146, v51, v138
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v138, v68, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v43, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v68, v68, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v68, 31
.Ltmp88:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v102, 16, v102
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v165, v46, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v103, v51, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v79, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v51, v51, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v43, v43, v79
	v_fmac_f32_e32 v165, v46, v102
	v_add_f32_dpp v46, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v51, 31
	v_lshlrev_b32_e32 v185, 1, v33
	v_readlane_b32 s5, v43, 31
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v58, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v43, s5 :: v_dual_add_nc_u32 v78, 0, v185
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v98, v46, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v141, v71, -1, -1 op_sel:[1,0]
.Ltmp98:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v14, 0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v46, v46, v98 :: v_dual_add_f32 v71, v71, v141
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v46, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s7, v71, 31
	v_dual_mov_b32 v46, s8 :: v_dual_lshlrev_b32 v71, 16, v42
	v_readlane_b32 s8, v72, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v72, v55, v71
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v98, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v72, v55, v71 :: v_dual_lshlrev_b32 v145, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp104:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v153, v67, v145
	v_dual_mul_f32 v71, v41, v65 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v55, v40, v64
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v153, v67, v145
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v145, v77, -1, -1 op_sel:[1,0]
.Ltmp108:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v100, 16, v100
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v40, v64
	v_fmac_f32_e32 v71, v41, v65
	v_add_f32_dpp v50, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v161, v161 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v163, v44, v100
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v64, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v163, v44, v100
	v_add_f32_dpp v44, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v137, v67, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v69, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v50, v50, v102 :: v_dual_add_f32 v67, v67, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v50, 31
	v_readlane_b32 s26, v67, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v44, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v67, s17 :: v_dual_mov_b32 v50, s12
	v_permlanex16_b32 v139, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v80
	v_add_f32_e32 v80, v70, v140
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v70, s26 :: v_dual_add_f32 v79, v69, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s6, v44, 31
	v_mov_b32_e32 v69, s25
	v_readlane_b32 s5, v79, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v79, v39, v63 :: v_dual_mov_b32 v44, s6
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v80, 31
	v_mov_b32_dpp v41, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v41, v39, v63
	v_add_f32_dpp v39, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v55, 16, v56
	v_lshlrev_b32_e32 v56, 16, v57
	v_lshlrev_b32_e32 v143, 16, v7
	ds_load_b128 v[1:4], v14
	ds_load_b128 v[5:8], v15
	ds_load_b128 v[9:12], v18
	ds_load_b128 v[13:16], v19
	ds_load_b128 v[17:20], v20
	ds_load_b128 v[21:24], v21
	ds_load_b128 v[25:28], v25
	ds_load_b128 v[29:32], v29
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v151, v60, v143
	v_mul_f32_e32 v57, v36, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v151, v60, v143
	v_add_f32_dpp v60, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v57, v36, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v48, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v135, v60, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v100, v48, -1, -1 op_sel:[1,0]
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v60, v60, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v48, v48, v100
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v60, 31
	v_mov_b32_e32 v60, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s10, v48, 31
	v_mov_b32_e32 v68, s24
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v48, s10
	ds_store_b128 v78, v[43:46]
	ds_store_b128 v78, v[47:50] offset:16
	ds_store_b128 v78, v[58:61] offset:32
	ds_store_b128 v78, v[67:70] offset:48
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v77, v145
.Ltmp134:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v77, v38, v62
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s6
	v_readlane_b32 s10, v76, 31
	s_waitcnt lgkmcnt(0)
	v_readlane_b32 s11, v43, 31
	v_mov_b32_dpp v40, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_and_b32_e32 v76, 1, v0
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v68, s5 :: v_dual_mov_b32 v101, s11
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v38, v62
.Ltmp137:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v62, v37, v56
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v143, v73, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v70, s7
	v_dual_mov_b32 v100, s10 :: v_dual_mov_b32 v67, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v73, v73, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v62, v37, v56
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v73, 31
.Ltmp141:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v73, v54, v66
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v40, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v99, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v73, v54, v66
	v_add_f32_dpp v54, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_f32_dpp v38, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v64, v64 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v39, -1, -1 op_sel:[1,0]
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v39, v39, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v63, v38, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v65, v54, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_readlane_b32 s6, v39, 31
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v57, v40, -1, -1 op_sel:[1,0]
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v63
	v_add_f32_e32 v54, v54, v65
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v40, v40, v57
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v38, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_readlane_b32 s7, v54, 31
	v_permlanex16_b32 v54, v37, -1, -1 op_sel:[1,0]
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v40, 31
	v_permlanex16_b32 v56, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v57, s12
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v39, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v39, 31
	v_dual_mov_b32 v56, s11 :: v_dual_lshlrev_b32 v103, 6, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v131, 0, v103
	ds_load_b128 v[58:61], v131
	ds_load_b128 v[50:53], v131 offset:16
	ds_load_b128 v[46:49], v131 offset:32
	ds_load_b128 v[42:45], v131 offset:48
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v54
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v175, v58
	v_mov_b32_e32 v187, v59
	v_mov_b32_e32 v198, v47
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v204, v46
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v212, v42
	v_readlane_b32 s9, v37, 31
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, s6
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v188, v60
	v_mov_b32_e32 v54, s9
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v189, v61
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v195, v50 :: v_dual_mov_b32 v196, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v41, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v197, v52
	v_permlanex16_b32 v55, v38, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v199, v53
	v_mov_b32_e32 v173, v48
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v41 :: v_dual_mov_b32 v191, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v38, v38, v55 :: v_dual_mov_b32 v167, v44
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v168, v45
	v_readlane_b32 s8, v36, 31
	v_mov_b32_e32 v36, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s10, v38, 31
	v_mov_b32_e32 v38, s7
.Ltmp172:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s50, 31
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v39, s8
.Ltmp174:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, s10
	ds_store_b128 v78, v[67:70]
	ds_store_b128 v78, v[98:101] offset:16
	ds_store_b128 v78, v[36:39] offset:32
	ds_store_b128 v78, v[54:57] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v131
	ds_load_b128 v[66:69], v131 offset:16
	v_mov_b32_e32 v101, v43
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp176:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s50, s50, s5
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v190, v70
	ds_load_b128 v[62:65], v131 offset:32
	ds_load_b128 v[54:57], v131 offset:48
	v_dual_mov_b32 v192, v71 :: v_dual_mov_b32 v193, v72
	v_mov_b32_e32 v194, v73
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v200, v66 :: v_dual_mov_b32 v201, v67
	v_dual_mov_b32 v202, v68 :: v_dual_mov_b32 v203, v69
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp178:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s56, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s39, s50, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v174, v62
	v_mov_b32_e32 v166, v63
	v_mov_b32_e32 v172, v64
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v206, v65 :: v_dual_mov_b32 v169, v54
	v_dual_mov_b32 v170, v55 :: v_dual_mov_b32 v171, v56
	v_mov_b32_e32 v211, v57
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp180:
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
	v_or_b32_e32 v38, 4, v37
	v_or_b32_e32 v39, 8, v37
	v_or_b32_e32 v40, 12, v37
	v_or_b32_e32 v41, 16, v37
	v_or_b32_e32 v77, 20, v37
	v_or_b32_e32 v78, 24, v37
	v_or_b32_e32 v79, 28, v37
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v218, 48, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s42, s6, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v138, v0, 4, 1
	v_and_b32_e32 v186, 16, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v37
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v140, s23, v37
	v_add_nc_u32_e32 v142, s23, v39
	v_add_nc_u32_e32 v143, s23, v40
	v_add_nc_u32_e32 v144, s23, v41
	v_add_nc_u32_e32 v145, s23, v77
	v_add_nc_u32_e32 v146, s23, v78
	v_add_nc_u32_e32 v147, s23, v79
	v_mov_b16_e32 v37.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v37.h, v75.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s42, s42, s14
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s14, s52, 0x3fb8aa3b
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v141, s23, v38
	v_or_b32_e32 v149, v34, v35
	v_mul_lo_u32 v216, s55, v36
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s53
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s54, s28, s54
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v139, 2, v138
	v_or_b32_e32 v137, 4, v138
	v_or_b32_e32 v136, 6, v138
	v_or_b32_e32 v135, 8, v138
	v_or_b32_e32 v134, 10, v138
	v_or_b32_e32 v133, 12, v138
	v_or_b32_e32 v132, 14, v138
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, s30, v38
	v_cmp_gt_i32_e64 s8, s30, v39
	v_cmp_gt_i32_e64 s9, s30, v40
	v_cmp_gt_i32_e64 s10, s30, v41
	v_cmp_gt_i32_e64 s11, s30, v77
	v_cmp_gt_i32_e64 s12, s30, v78
	v_cmp_gt_i32_e64 s13, s30, v79
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v148, s14, v37
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s54, s54, s19
	v_subrev_nc_u32_e32 v150, s21, v140
	v_subrev_nc_u32_e32 v151, s21, v141
	v_subrev_nc_u32_e32 v152, s21, v142
	v_subrev_nc_u32_e32 v153, s21, v143
	v_subrev_nc_u32_e32 v154, s21, v144
	v_subrev_nc_u32_e32 v155, s21, v145
	v_subrev_nc_u32_e32 v156, s21, v146
	v_subrev_nc_u32_e32 v157, s21, v147
	v_add_nc_u32_e32 v158, s22, v140
	v_add_nc_u32_e32 v159, s22, v141
	v_add_nc_u32_e32 v160, s22, v142
	v_add_nc_u32_e32 v161, s22, v143
	v_add_nc_u32_e32 v162, s22, v144
	v_add_nc_u32_e32 v163, s22, v145
	v_add_nc_u32_e32 v164, s22, v146
	v_add_nc_u32_e32 v165, s22, v147
	v_xor_b32_e32 v181, 8, v149
	v_xor_b32_e32 v182, 16, v149
	v_xor_b32_e32 v183, 24, v149
	v_cmp_eq_u32_e64 s14, 0, v33
	v_and_b32_e32 v214, 14, v0
	v_lshlrev_b32_e32 v215, 2, v218
	v_lshlrev_b32_e32 v213, 5, v76
	v_lshlrev_b32_e32 v205, 3, v119
	v_lshrrev_b32_e32 v207, 2, v186
	v_lshrrev_b32_e32 v209, 4, v33
	v_lshlrev_b32_e32 v210, 2, v0
	v_lshrrev_b32_e32 v208, 1, v186
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
	v_mov_b32_e32 v33, v216
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_mad_u64_u32 v[76:77], null, s80, v119, v[216:217]
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v103, off offset:12
	scratch_store_b32 off, v213, off offset:40
	scratch_store_b64 off, v[33:34], off offset:44
	scratch_store_b32 off, v208, off offset:20
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_and_b32 v33, 60, v120
	v_cndmask_b32_e64 v34, 0x104, 0, s14
	v_mad_u64_u32 v[77:78], null, s55, 12, v[76:77]
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v212, off offset:36
	scratch_store_b32 off, v211, off offset:32
	scratch_store_b32 off, v206, off offset:28
	scratch_store_b32 off, v185, off offset:8
	scratch_store_b32 off, v180, off offset:4
	v_lshl_or_b32 v35, v214, 7, v215
	v_xor_b32_e32 v206, v34, v33
	v_lshlrev_b32_e32 v34, 1, v214
	v_and_or_b32 v40, v0, 2, v208
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v207, off offset:16
	scratch_store_b32 off, v209, off offset:24
	v_mad_u64_u32 v[78:79], null, s55, 20, v[76:77]
	v_or_b32_e32 v33, v206, v103
	v_mad_u64_u32 v[79:80], null, s55, 24, v[76:77]
	v_mad_u64_u32 v[80:81], null, s55, 28, v[76:77]
	v_or3_b32 v81, v35, v213, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v34, 0x208, v33
	v_xor_b32_e32 v35, 0x410, v33
	v_xor_b32_e32 v36, 0x618, v33
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_and_b32 v33, 52, v210
	v_or3_b32 v207, v207, v209, v205
	v_xor_b32_e32 v37, 4, v81
	v_xor_b32_e32 v38, 8, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v33, v177, 5, v33
	v_xor_b32_e32 v39, 12, v81
	v_xor_b32_e32 v41, 16, v81
	v_xor_b32_e32 v176, 20, v81
	v_xor_b32_e32 v178, 24, v81
	v_or3_b32 v208, v40, v33, v104
	v_xor_b32_e32 v40, 28, v81
	v_xor_b32_e32 v179, 0x90, v207
	v_xor_b32_e32 v184, 0x120, v207
	v_xor_b32_e32 v221, 0x1b0, v207
	v_xor_b32_e32 v222, 16, v208
	v_xor_b32_e32 v223, 32, v208
	v_xor_b32_e32 v224, 48, v208
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v210, 0, v35
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_add_nc_u32 v212, 0, v37
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_add_nc_u32 v209, 0, v34
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v36
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v213, 0, v38
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v214, 0, v39
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v215, 0, v41
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v176
	v_dual_mov_b32 v234, 0 :: v_dual_add_nc_u32 v217, 0, v178
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v40
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_add_nc_u32 v219, 0, v179
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v184
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_add_nc_u32 v221, 0, v221
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v222, 0, v222
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v223, 0, v223
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v224, 0, v224
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v238, 0xff800000
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v236, 0xff800000
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v235, 0xff800000
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
	v_cvt_f32_i32_e32 v178, v36
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s15, s53, s80
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v40, s55, 4, v76
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s15, s51, s15
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v184, v35
	v_cvt_f32_i32_e32 v176, v37
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v35, v41
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v39, s15, v76, 2
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v41, s55, 2, v76
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v40, s15, v40, 2
	v_add_lshl_u32 v82, s15, v78, 2
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v102, s55, 3, v76
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v39, 0x80000000, v39, s85
	v_add_lshl_u32 v41, s15, v41, 2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s86
	s_clause 0x1
	buffer_load_b32 v39, v39, s[72:75], 0 offen
	buffer_load_b32 v40, v40, s[72:75], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v41, s83
	v_cndmask_b32_e64 v82, 0x80000000, v82, s84
	v_add_lshl_u32 v102, s15, v102, 2
	s_clause 0x1
	buffer_load_b32 v41, v41, s[72:75], 0 offen
	buffer_load_b32 v82, v82, s[72:75], 0 offen
	v_add_lshl_u32 v122, s15, v79, 2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s63
	v_add_lshl_u32 v205, s15, v80, 2
	v_add_lshl_u32 v177, s15, v77, 2
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v122, 0x80000000, v122, s82
	s_clause 0x1
	buffer_load_b32 v102, v102, s[72:75], 0 offen
	buffer_load_b32 v122, v122, s[72:75], 0 offen
	v_cndmask_b32_e64 v205, 0x80000000, v205, s62
	v_cndmask_b32_e64 v177, 0x80000000, v177, s59
	s_clause 0x1
	buffer_load_b32 v205, v205, s[72:75], 0 offen
	buffer_load_b32 v177, v177, s[72:75], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v74, v131, v206
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v179.h, v179.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v184, v148, v184
	v_mul_f32_e32 v176, v148, v176
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v178, v148, v178
	v_mul_f32_e32 v38, v148, v38
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v36, v148, v36
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s53, s53, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v34, v148, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v37, v148, v37
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v39, 0xff800000, v39, s85
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v40, 0xff800000, v40, s86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v84, 0x3fb8aa3b, v39
	v_mul_f32_e32 v180, 0x3fb8aa3b, v40
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v41, 0xff800000, v41, s83
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v82, 0xff800000, v82, s84
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v40
	v_cmp_neq_f32_e64 s15, 0xff800000, v39
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v74, v84, v180 offset1:32
	v_mul_f32_e32 v84, 0x3fb8aa3b, v41
	v_mul_f32_e32 v180, 0x3fb8aa3b, v82
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s17, s86, vcc_lo
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v82
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s21, s85, s15
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v41
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v209, v84, v180 offset1:32
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v84, 0xff800000, v102, s63
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v102, 0xff800000, v122, s82
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s16, s84, s16
	s_and_b32 s20, s83, s18
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v122, 0x3fb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v180, 0x3fb8aa3b, v102
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
	v_cmp_neq_f32_e64 s18, 0xff800000, v84
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v210, v122, v180 offset1:32
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v122, 0xff800000, v177, s59
	v_cndmask_b32_e64 v177, 0xff800000, v205, s62
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s82, vcc_lo
	s_and_b32 s19, s63, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_dual_mul_f32 v180, 0x3fb8aa3b, v122 :: v_dual_mul_f32 v205, 0x3fb8aa3b, v177
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s23, 0xff800000, v177
	v_cmp_neq_f32_e64 s22, 0xff800000, v122
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v211, v180, v205 offset1:32
	v_mov_b16_e64 v180.l, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v186, 0, v81
	ds_load_b32 v75, v214
	ds_load_b32 v83, v215
	ds_load_b32 v103, v216
	ds_load_b32 v98, v217
	ds_load_b32 v99, v218
	ds_load_b32 v100, v186
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v180.h, v249.l
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_load_b32 v205, v212
	ds_load_b32 v185, v213
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v179.l, v180.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 vcc_lo, s62, s23
	s_and_b32 s18, s59, s22
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s53, s39
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v100, v34, v180
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v180.h, v250.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v34, v148, v35
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v35, 0, 1, s21
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v205, v184, v179
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v179.h, v255.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v99, v34, v180
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v34, 0, 1, s17
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v185, v178, v179
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v178.h, v254.l
	v_mov_b16_e64 v178.l, v180.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v75, v176, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s16
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v176.h, v253.l
	v_mov_b16_e64 v176.l, v180.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v34.h, 8, v35.l
	v_add_nc_u32_e32 v35, 0, v207
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v83, v38, v176
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v38.h, v252.l
	v_mov_b16_e64 v38.l, v180.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_store_b16 v35, v34
	v_cndmask_b32_e64 v35, 0, 1, s15
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v103, v37, v38
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v37.h, v251.l
	v_mov_b16_e64 v37.l, v180.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s19
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v98, v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v34.l, 8, v34.l
	v_cndmask_b32_e64 v36, 0, 1, s20
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v34.h, v36.l, v34.h
	v_cndmask_b32_e64 v36, 0, 1, s18
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v35.l, v36.l, v35.l
	ds_store_b16_d16_hi v219, v34
	ds_store_b16 v220, v34
	ds_store_b16 v221, v35
	v_add_nc_u32_e32 v35, 0, v208
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v35 offset:64
	ds_load_u8_d16 v35, v222
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v224 offset:64
	ds_load_u8_d16 v36, v223 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v222 offset:64
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	ds_load_u8_d16 v34, v223
	ds_load_u8_d16 v37, v224
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v38, 0xff800000, v100, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v186, v38
	v_cndmask_b32_e64 v38, 0xff800000, v205, s22
	ds_store_b32 v212, v38
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v38, 0xff800000, v185, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v213, v38
	v_cndmask_b32_e64 v37, 0xff800000, v75, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v214, v37
	v_cndmask_b32_e64 v34, 0xff800000, v83, s22
	ds_store_b32 v215, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v103, s22
	ds_store_b32 v216, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v98, s22
	ds_store_b32 v217, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v99, s22
	ds_store_b32 v218, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v74 offset1:32
	ds_load_2addr_b32 v[178:179], v209 offset1:32
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v36, v34
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v34, v34
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v38, v178, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp191:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v37, v225, v225
	v_max_f32_e32 v225, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v225
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v34, 0, v34, s21
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s21, 0xff800000, v245
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp198:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v37, v245, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v37, v36 :: v_dual_mov_b32 v37, v34
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_sub_f32 v37, v245, v36
.Ltmp201:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v37, 0, v37, s21
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v34, v248, v37 :: v_dual_mov_b32 v37, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp203:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp210:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v38, v226, v226
	v_max_f32_e32 v226, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v178, v226
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s20
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s20, 0xff800000, v244
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v248, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v39, v38, v39 :: v_dual_max_f32 v38, v244, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v38, v38, v37 :: v_dual_mov_b32 v37, v39
.Ltmp218:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v39, v37
.Ltmp220:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v244, v38
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[244:245], v210 offset1:32
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v39, 0, v39, s20
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v247, v39
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v39, v244
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v244, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v40, v39
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v39, v40
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v39, v40
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v39, v40
.Ltmp231:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v40, v227, v227
	v_max_f32_e32 v227, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v244, v227
	v_mov_b32_e32 v244, v38
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v242
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v41, v40, v41 :: v_dual_max_f32 v40, v242, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v40, v40, v39 :: v_dual_mov_b32 v39, v41
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v41, v39
.Ltmp241:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v41, v242, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v41, v41
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v41, 0, v41, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v246, v41
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[246:247], v211 offset1:32
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v41, v246
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v246, v246
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v41, v41, v41
	v_max_f32_e32 v41, v74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v41, v41, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v41, v41, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_dual_max_f32 v41, v41, v74 :: v_dual_max_f32 v74, v228, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v228, v74, v41
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v74, v246, v228
	v_mov_b32_e32 v246, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v74, v74
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v74, 0, v74, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_dual_mov_b32 v75, v74 :: v_dual_mov_b32 v242, v40
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v75
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v74, v74, v75 :: v_dual_max_f32 v75, v240, v240
.Ltmp259:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v249, v75, v41
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v74
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v74, v41
.Ltmp263:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v74, v240, v249
	v_mov_b32_e32 v240, v249
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v41, v243, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v74, v35 :: v_dual_mov_b32 v243, v41
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v74, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	v_dual_max_f32 v74, v74, v75 :: v_dual_max_f32 v75, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v229, v75, v74
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v35
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v75
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v35
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v75
.Ltmp279:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v75, v238, v238
	v_max_f32_e32 v250, v75, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v35
.Ltmp281:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v179, v179
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v74
.Ltmp284:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v74, v238, v250
	v_mov_b32_e32 v238, v250
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s17
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v35, v241, v74 :: v_dual_mov_b32 v74, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v75, v74
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v75
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v75
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v74, v74, v75
.Ltmp293:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v75, v230, v230
	v_mov_b32_e32 v241, v35
	v_max_f32_e32 v230, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v75, v179, v230
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v75, 0, v75, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v236
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v75, v75, v82 :: v_dual_max_f32 v82, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp300:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v252, v82, v74
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v251, v75, v74 :: v_dual_sub_f32 v74, v236, v252
.Ltmp303:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v75, v245, v245 :: v_dual_mov_b32 v236, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp304:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v251, v239, v74 :: v_dual_mov_b32 v74, v245
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v74, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	v_dual_max_f32 v74, v74, v75 :: v_dual_mov_b32 v239, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v74, v74, v75
.Ltmp313:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v75, v231, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v231, v75, v74
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v75, v245, v231
	v_mov_b32_e32 v245, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v75, v75
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v75, 0, v75, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	v_mov_b32_dpp v82, v82 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp315:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
.Ltmp316:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp317:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp319:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v75, v75, v82 :: v_dual_max_f32 v82, v233, v233
.Ltmp320:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v178, v82, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp321:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v75
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp322:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v176, v75, v74
.Ltmp323:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v74, v233, v178 :: v_dual_mov_b32 v233, v178
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v247, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp325:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v74, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v176, v237, v74
.Ltmp326:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v74, v247 :: v_dual_mov_b32 v237, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp327:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v75, v74
.Ltmp328:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp329:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v75
.Ltmp330:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp331:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v75
.Ltmp332:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp333:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v74, v74, v75 :: v_dual_max_f32 v75, v232, v232
.Ltmp334:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v232, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v75, v247, v232
	v_mov_b32_e32 v247, v37
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v75, 0, v75, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v235
.Ltmp335:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp336:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp337:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
.Ltmp339:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp340:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v75, v82
.Ltmp341:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v82, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v184, v82, v74
.Ltmp342:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp343:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v179, v75, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp344:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v74, v235, v184 :: v_dual_mov_b32 v235, v184
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v179, v234, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v234, v179
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s53, v104
	v_or_b32_e32 v35, s53, v105
	v_or_b32_e32 v36, s53, v106
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s22, s53, s81
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v37, s53, v107
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s53, v109
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v35
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v35, s53, v110
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s23, s22, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v36
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v36, s53, v111
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v34
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v34, s23, v85
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v38, s53, v108
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
	v_add_nc_u32_e32 v184, 0, v181
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x7
	buffer_load_u8 v176, v34, s[68:71], 0 offen
	buffer_load_u8 v35, v35, s[68:71], 0 offen
	buffer_load_u8 v36, v36, s[68:71], 0 offen
	buffer_load_u8 v37, v37, s[68:71], 0 offen
	buffer_load_u8 v38, v38, s[68:71], 0 offen
	buffer_load_u8 v39, v39, s[68:71], 0 offen
	buffer_load_u8 v40, v40, s[68:71], 0 offen
	buffer_load_u8 v41, v41, s[68:71], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v34, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v176
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
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v178, 0, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v41, 0, v182
	ds_load_b64 v[249:250], v184
	ds_load_b64 v[178:179], v178
	v_add_nc_u32_e32 v176, 0, v183
	ds_load_b64 v[251:252], v41
	ds_load_b64 v[253:254], v176
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v176, s53, v119
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[178:179], v[90:91], v[34:41] neg_lo:[1,1,0]
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v176
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_wmma_i32_16x16x16_iu4 v[34:41], v[249:250], v[92:93], v[34:41] neg_lo:[1,1,0]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s85, s6, s15
	s_and_b32 s83, s7, s15
	s_and_b32 s63, s8, s15
	s_and_b32 s59, s9, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[251:252], v[94:95], v[34:41] neg_lo:[1,1,0]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s86, s10, s15
	s_and_b32 s84, s11, s15
	s_and_b32 s82, s12, s15
	s_and_b32 s62, s13, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[253:254], v[96:97], v[34:41] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v176, v140
	v_cmp_le_i32_e64 s15, v176, v141
	v_cmp_le_i32_e64 s16, v176, v142
	v_cmp_le_i32_e64 s17, v176, v143
	v_cmp_le_i32_e64 s18, v176, v144
	v_cmp_le_i32_e64 s19, v176, v145
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s23, vcc_lo, s85
	s_and_b32 s15, s15, s83
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s20, v176, v146
	v_cmp_le_i32_e64 s21, v176, v147
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
	v_or_b32_e32 v178, s53, v138
	v_or_b32_e32 v179, s53, v139
	v_add_lshl_u32 v249, s22, v138, 1
	v_or_b32_e32 v184, s53, v137
	v_or_b32_e32 v250, s53, v136
	v_cmp_gt_i32_e32 vcc_lo, s31, v178
	v_or_b32_e32 v251, s53, v135
	v_add_nc_u32_e32 v254, 4, v249
	v_or_b32_e32 v252, s53, v134
	v_or_b32_e32 v253, s53, v133
	v_cndmask_b32_e32 v178, 0x80000000, v249, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v179
	v_add_nc_u32_e32 v82, 20, v249
	v_or_b32_e32 v122, s53, v132
	v_dual_cndmask_b32 v179, 0x80000000, v254 :: v_dual_add_nc_u32 v102, 24, v249
	v_add_nc_u32_e32 v254, 12, v249
	v_add_nc_u32_e32 v255, 8, v249
	v_cmp_gt_i32_e32 vcc_lo, s31, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v184, 0x80000000, v255 :: v_dual_add_nc_u32 v255, 16, v249
	v_cmp_gt_i32_e32 vcc_lo, s31, v250
	v_cndmask_b32_e32 v250, 0x80000000, v254, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v251
	v_cndmask_b32_e32 v251, 0x80000000, v255, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v252
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_add_nc_u32 v249, 28, v249
	v_cmp_gt_i32_e32 vcc_lo, s31, v253
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v122, 0x80000000, v249, vcc_lo
	s_clause 0x7
	buffer_load_u16 v249, v178, s[76:79], 0 offen
	buffer_load_u16 v179, v179, s[76:79], 0 offen
	buffer_load_u16 v255, v184, s[76:79], 0 offen
	buffer_load_u16 v254, v250, s[76:79], 0 offen
	buffer_load_u16 v253, v251, s[76:79], 0 offen
	buffer_load_u16 v252, v82, s[76:79], 0 offen
	buffer_load_u16 v251, v102, s[76:79], 0 offen
	buffer_load_u16 v250, v122, s[76:79], 0 offen
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v176, v150
	v_cmp_ge_i32_e64 s15, v176, v151
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s22, v176, v158
	v_cmp_le_i32_e64 s23, v176, v159
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v176, v152
	v_cmp_ge_i32_e64 s17, v176, v153
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s24, v176, v160
	v_cmp_le_i32_e64 s25, v176, v161
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s18, v176, v154
	v_cmp_ge_i32_e64 s19, v176, v155
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s26, v176, v162
	v_cmp_le_i32_e64 s27, v176, v163
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s15, s15, s23
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s20, v176, v156
	v_cmp_ge_i32_e64 s21, v176, v157
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s28, v176, v164
	v_cmp_le_i32_e64 s29, v176, v165
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
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v178, 0xff800000
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v252, 0xff800000
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v250, 0xff800000
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v40, 0xff800000
	v_mov_b32_e32 v38, 0xff800000
	v_mov_b32_e32 v36, 0xff800000
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow263
	s_clause 0xa                            ; 48-byte Folded Reload
	scratch_load_b32 v206, off, off offset:28
	scratch_load_b32 v211, off, off offset:32
	scratch_load_b32 v212, off, off offset:36
	scratch_load_b32 v213, off, off offset:40
	scratch_load_b32 v180, off, off offset:4
	scratch_load_b32 v185, off, off offset:8
	scratch_load_b32 v103, off, off offset:12
	scratch_load_b32 v207, off, off offset:16
	scratch_load_b32 v208, off, off offset:20
	scratch_load_b32 v209, off, off offset:24
	scratch_load_b64 v[216:217], off, off offset:44
	v_and_b32_e32 v218, 48, v0
	v_and_b32_e32 v122, 31, v0
	v_and_b32_e32 v177, 12, v0
	v_and_b32_e32 v186, 16, v0
	v_lshlrev_b32_e32 v205, 3, v119
	v_lshlrev_b32_e32 v210, 2, v0
	v_and_b32_e32 v214, 14, v0
	v_lshlrev_b32_e32 v215, 2, v218
.LBB0_13:                               ; %Flow264
	s_load_b32 s53, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v33, s46, v122
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v34
	v_cmp_gt_f32_e64 s1, 0x800000, v37
	v_cmp_gt_f32_e64 s15, 0x800000, v39
.Ltmp345:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v63, v63, v166 :: v_dual_add_f32 v64, v64, v172
.Ltmp346:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v33
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v33, 0, 0x42000000, s0
	v_cndmask_b32_e64 v74, 0, 32, s0
	v_cndmask_b32_e64 v75, 0, 0x42000000, s1
	v_cndmask_b32_e64 v76, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v41
	v_cmp_gt_f32_e64 s1, 0x800000, v35
	v_cndmask_b32_e64 v77, 0, 0x42000000, s15
	v_cndmask_b32_e64 v78, 0, 32, s15
	v_ldexp_f32 v74, v34, v74
	v_cndmask_b32_e64 v79, 0, 0x42000000, s0
	v_cndmask_b32_e64 v80, 0, 32, s0
	v_cndmask_b32_e64 v81, 0, 0x42000000, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v251
	v_cndmask_b32_e64 v82, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v176
	v_cmp_gt_f32_e64 s15, 0x800000, v179
	v_ldexp_f32 v76, v37, v76
	v_log_f32_e32 v74, v74
	v_cndmask_b32_e64 v84, 0, 32, s0
	v_cndmask_b32_e64 v99, 0, 32, s1
	v_cndmask_b32_e64 v102, 0, 32, s15
	v_ldexp_f32 v78, v39, v78
	v_log_f32_e32 v76, v76
	v_ldexp_f32 v80, v41, v80
	v_ldexp_f32 v82, v35, v82
	v_ldexp_f32 v84, v251, v84
	v_ldexp_f32 v99, v176, v99
	v_ldexp_f32 v102, v179, v102
	v_log_f32_e32 v78, v78
	v_log_f32_e32 v80, v80
	v_log_f32_e32 v82, v82
	v_log_f32_e32 v84, v84
	v_log_f32_e32 v99, v99
	v_log_f32_e32 v102, v102
	v_dual_sub_f32 v33, v74, v33 :: v_dual_sub_f32 v74, v76, v75
.Ltmp347:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v62, v62, v174
.Ltmp348:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v83, 0, 0x42000000, s0
	v_cndmask_b32_e64 v98, 0, 0x42000000, s1
	v_cndmask_b32_e64 v100, 0, 0x42000000, s15
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v33, v36, v33
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v34
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v75, v78, v77 :: v_dual_sub_f32 v76, v80, v79
	v_dual_sub_f32 v77, v82, v81 :: v_dual_sub_f32 v78, v84, v83
	v_dual_sub_f32 v79, v99, v98 :: v_dual_sub_f32 v80, v102, v100
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v38, v38, v74
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v36, 0, v33, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v37
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v40, v40, v75 :: v_dual_add_f32 v75, v250, v77
	v_dual_add_f32 v74, v249, v76 :: v_dual_add_f32 v77, v252, v78
	v_dual_add_f32 v78, v178, v79 :: v_dual_lshlrev_b32 v33, 5, v0
	v_add_f32_e32 v79, v184, v80
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v38, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v39
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v34, v218, 1, 0
	v_and_b32_e32 v33, 0x60, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v38, 0, v40, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v33, 0, v33
.Ltmp349:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(10)
	v_dual_add_f32 v65, v65, v206 :: v_dual_and_b32 v40, 28, v0
.Ltmp350:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s14, vcc_lo
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v39, 0, v74, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v35
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt vmcnt(6)
	v_add3_u32 v35, v33, v180, v177
	s_ashr_i32 s16, s50, 4
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_cndmask_b32_e64 v76, 0, v75, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v251
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s21, s65, 0xffff
	s_mov_b32 s20, s64
	s_mov_b32 s22, s50
	s_mov_b32 s23, s51
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v77, 0, v77, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v176
.Ltmp351:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v58, v175 :: v_dual_add_f32 v61, v61, v189
	v_dual_add_f32 v59, v59, v187 :: v_dual_add_f32 v60, v60, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp352:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v78, 0, v78, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v179
.Ltmp353:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v70, v70, v190 :: v_dual_add_f32 v71, v71, v192
	v_dual_add_f32 v72, v72, v193 :: v_dual_add_f32 v73, v73, v194
.Ltmp354:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v79, 0, v79, s0
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[76:79] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v166, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[76:79] offset:16
.Ltmp355:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v44, v167 :: v_dual_add_nc_u32 v33, v33, v40
.Ltmp356:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp357:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v79, v45, v168 :: v_dual_mov_b32 v40, 0
	v_add_f32_e32 v168, v55, v170
.Ltmp358:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v33, v33
	v_add_lshl_u32 v34, s47, v122, 2
.Ltmp359:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v77, v43, v101 :: v_dual_add_f32 v76, v42, v212
	v_dual_add_f32 v167, v54, v169 :: v_dual_add_f32 v170, v57, v211
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp360:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_add_f32 v169, v56, v171
.Ltmp361:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v50, v50, v195 :: v_dual_add_f32 v51, v51, v196
	v_dual_add_f32 v52, v52, v197 :: v_dual_add_f32 v53, v53, v199
	v_dual_add_f32 v66, v66, v200 :: v_dual_add_f32 v67, v67, v201
	v_dual_add_f32 v68, v68, v202 :: v_dual_add_f32 v69, v69, v203
	v_dual_add_f32 v46, v46, v204 :: v_dual_add_f32 v47, v47, v198
	v_dual_add_f32 v48, v48, v173 :: v_dual_add_f32 v49, v49, v191
.Ltmp362:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v33, v122, 2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[58:61]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[50:53] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[62:65] offset:80
	ds_store_b128 v40, v[76:79] offset:96
	ds_store_b128 v40, v[167:170] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	s_and_b32 s21, s67, 0xffff
	s_mov_b32 s20, s66
	v_mov_b32_e32 v39, v40
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
	ds_store_b128 v40, v[167:170] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_20
; %bb.14:                               ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v46, 0x5410 :: v_dual_lshlrev_b32 v33, 1, v122
	v_dual_mov_b32 v47, 0x7632 :: v_dual_lshlrev_b32 v34, 2, v119
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[98:99], null, s80, v119, v[216:217]
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_add_i32 s0, s35, s35
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 1, v33
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v167, s0, s35, v0
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s53, v33
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v33, 0, v34, v185
	v_cmp_eq_u32_e32 vcc_lo, 0, v186
	v_cndmask_b32_e64 v34, 0x104, 0, s14
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[99:100], null, s55, 12, v[98:99]
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v173, v33
	v_dual_cndmask_b32 v46, 0x1054, v46 :: v_dual_and_b32 v33, 60, v120
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v168, s35, v167
	v_and_b32_e32 v41, 52, v210
	v_dual_cndmask_b32 v47, 0x3276, v47 :: v_dual_add_nc_u32 v182, 0, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v175, v34, v33
	v_dual_mov_b32 v60, v65 :: v_dual_lshlrev_b32 v33, 1, v214
	v_lshl_or_b32 v34, v214, 7, v215
	v_and_or_b32 v44, v0, 2, v208
	v_lshl_or_b32 v46, v46, 8, v46
	v_lshl_or_b32 v47, v47, 8, v47
	v_mov_b32_e32 v62, v65
	v_lshl_or_b32 v41, v177, 5, v41
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[100:101], null, s55, 20, v[98:99]
	v_mad_u64_u32 v[101:102], null, s55, 24, v[98:99]
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s53, v35
	v_or_b32_e32 v35, v175, v103
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[102:103], null, s55, 28, v[98:99]
	v_or3_b32 v103, v34, v213, v33
	v_or3_b32 v176, v207, v209, v205
	v_or3_b32 v177, v44, v41, v104
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v46, 0x540054, v46
	v_dual_mov_b32 v64, v65 :: v_dual_and_b32 v47, 0x760076, v47
	v_dual_mov_b32 v58, v65 :: v_dual_add_nc_u32 v169, s35, v168
	v_xor_b32_e32 v33, 0x208, v35
	v_xor_b32_e32 v34, 0x410, v35
	v_xor_b32_e32 v35, 0x618, v35
	v_xor_b32_e32 v36, 4, v103
	v_xor_b32_e32 v37, 8, v103
	v_xor_b32_e32 v38, 12, v103
	v_xor_b32_e32 v39, 16, v103
	v_xor_b32_e32 v40, 20, v103
	v_xor_b32_e32 v42, 24, v103
	v_xor_b32_e32 v43, 28, v103
	v_xor_b32_e32 v45, 0x90, v176
	v_xor_b32_e32 v41, 0x120, v176
	v_xor_b32_e32 v44, 0x1b0, v176
	v_xor_b32_e32 v48, 16, v177
	v_xor_b32_e32 v49, 32, v177
	v_xor_b32_e32 v50, 48, v177
	v_xor_b32_e32 v51, 16, v128
	v_xor_b32_e32 v52, 32, v128
	v_xor_b32_e32 v53, 48, v128
	v_xor_b32_e32 v54, 64, v128
	v_lshl_or_b32 v46, v46, 4, v46
	v_lshl_or_b32 v47, v47, 4, v47
	v_xor_b32_e32 v55, 0x50, v128
	v_xor_b32_e32 v56, 0x60, v128
	v_xor_b32_e32 v57, 0x70, v128
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v170, s35, v169
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v171, s55, 2, v98
	v_lshl_add_u32 v172, s55, 3, v98
	v_lshl_add_u32 v174, s55, 4, v98
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v178, 0x5040504, v46
	v_and_b32_e32 v179, 0x7060706, v47
	v_lshl_add_u32 v180, v119, 1, 0
	v_add_nc_u32_e32 v181, 0, v181
	v_add_nc_u32_e32 v183, 0, v183
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v184, 0, v33
	v_add_nc_u32_e32 v185, 0, v34
	v_add_nc_u32_e32 v186, 0, v35
	v_add_nc_u32_e32 v187, 0, v36
	v_add_nc_u32_e32 v188, 0, v37
	v_add_nc_u32_e32 v189, 0, v38
	v_add_nc_u32_e32 v190, 0, v39
	v_dual_mov_b32 v46, v65 :: v_dual_add_nc_u32 v191, 0, v40
	v_add_nc_u32_e32 v192, 0, v42
	v_add_nc_u32_e32 v193, 0, v43
	v_add_nc_u32_e32 v194, 0, v45
	v_dual_mov_b32 v34, v65 :: v_dual_add_nc_u32 v195, 0, v41
	v_dual_mov_b32 v43, v65 :: v_dual_add_nc_u32 v196, 0, v44
	v_dual_mov_b32 v36, v65 :: v_dual_add_nc_u32 v197, 0, v48
	v_dual_mov_b32 v45, v65 :: v_dual_add_nc_u32 v198, 0, v49
	v_dual_mov_b32 v38, v65 :: v_dual_add_nc_u32 v199, 0, v50
	v_dual_mov_b32 v47, v65 :: v_dual_add_nc_u32 v200, 0, v51
	v_dual_mov_b32 v40, v65 :: v_dual_add_nc_u32 v201, 0, v52
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v202, 0, v53
	v_add_nc_u32_e32 v203, 0, v54
	v_dual_mov_b32 v35, v65 :: v_dual_add_nc_u32 v204, 0, v55
	v_add_nc_u32_e32 v205, 0, v56
	v_dual_mov_b32 v37, v65 :: v_dual_add_nc_u32 v206, 0, v57
	v_mov_b32_e32 v57, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, v65
	v_mov_b32_e32 v51, v65
	v_mov_b32_e32 v52, v65
	v_mov_b32_e32 v53, v65
	v_mov_b32_e32 v54, v65
	v_mov_b32_e32 v55, v65
	v_dual_mov_b32 v56, v65 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v42, v65
	v_mov_b32_e32 v44, v65
	v_mov_b32_e32 v48, v65
	v_mov_b32_e32 v39, v65
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
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s14, s38, s80
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v82, v131, v175
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s14, s54, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s22, s38, 2
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v66, s14, v98, 2
	v_add_lshl_u32 v67, s14, v174, 2
	v_add_lshl_u32 v68, s14, v171, 2
	v_add_lshl_u32 v69, s14, v100, 2
	v_add_lshl_u32 v70, s14, v172, 2
	v_cndmask_b32_e64 v66, 0x80000000, v66, s67
	v_cndmask_b32_e64 v67, 0x80000000, v67, s68
	v_cndmask_b32_e64 v68, 0x80000000, v68, s65
	v_cndmask_b32_e64 v69, 0x80000000, v69, s66
	v_add_lshl_u32 v71, s14, v101, 2
	s_clause 0x3
	buffer_load_b32 v66, v66, s[48:51], 0 offen
	buffer_load_b32 v67, v67, s[48:51], 0 offen
	buffer_load_b32 v68, v68, s[48:51], 0 offen
	buffer_load_b32 v69, v69, s[48:51], 0 offen
	v_add_lshl_u32 v72, s14, v102, 2
	v_add_lshl_u32 v81, s14, v99, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s62
	v_cndmask_b32_e64 v71, 0x80000000, v71, s63
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s18, s38, 3
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v72, 0x80000000, v72, s59
	v_cndmask_b32_e64 v81, 0x80000000, v81, s58
	s_clause 0x3
	buffer_load_b32 v70, v70, s[48:51], 0 offen
	buffer_load_b32 v71, v71, s[48:51], 0 offen
	buffer_load_b32 v72, v72, s[48:51], 0 offen
	buffer_load_b32 v81, v81, s[48:51], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s23, s38, 4
	s_or_b32 s20, s38, 5
	s_or_b32 s24, s38, 6
	s_or_b32 s19, s38, 7
	s_or_b32 s25, s38, 8
	s_or_b32 s21, s38, 9
	s_or_b32 s26, s38, 10
	s_or_b32 s27, s38, 12
	s_or_b32 s28, s38, 14
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v223, v223, 0, 8
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	s_waitcnt vmcnt(21)
	v_mov_b16_e64 v226.h, v226.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v225.h, v225.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v77, v148, v77
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v66, 0xff800000, v66, s67
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v67, 0xff800000, v67, s68
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v66
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v67
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v82, v66, v67 offset1:32
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v66, 0xff800000, v68, s65
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v67, 0xff800000, v69, s66
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s14, s67, s14
	s_and_b32 s17, s68, vcc_lo
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v69, 0xff800000, v71, s63
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v66
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v184, v66, v67 offset1:32
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v66, 0, 1, s17
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v69
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_add_nc_u32_e32 v71, 0, v103
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v66.l, 8, v66.l
	s_and_b32 s14, s66, s16
	s_and_b32 s17, s63, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s14
	s_and_b32 s14, s65, s15
	v_cndmask_b32_e64 v68, 0, 1, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v66.h, 8, v67.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v67, 0xff800000, v70, s62
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v70, 0xff800000, v72, s59
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v66.h, v68.l, v66.h
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v68, 0xff800000, v81, s58
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v185, v67, v69 offset1:32
	ds_store_2addr_b32 v186, v68, v70 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v236, v71
	ds_load_b32 v234, v187
	ds_load_b32 v233, v188
	ds_load_b32 v232, v189
	ds_load_b32 v231, v190
	ds_load_b32 v230, v191
	ds_load_b32 v229, v192
	ds_load_b32 v228, v193
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v71, 0, v176
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v71, v66
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v70
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_mov_b16_e32 v66.l, v67.l
	s_and_b32 s14, s62, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v68
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s14
	s_and_b32 s14, s59, s16
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s17, s38, 1
	s_or_b32 s16, s38, 13
	s_or_b32 s62, s38, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s59, s51
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s14
	s_and_b32 s14, s58, s15
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s15, s38, 11
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v68, 0, 1, s14
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s14, s38, 1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v67.l, 8, v67.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s14, s29
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s58, s50
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s65, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s63, s14, s64
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v67.l, v68.l, v67.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s63, s63, s35
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v194, v66
	ds_store_b16 v195, v66
	ds_store_b16 v196, v67
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s63, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s65
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v70, s35, v170
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v67, 0x80000000, v66, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s35, v66
	v_add_nc_u32_e32 v68, s63, v169
	v_add_nc_u32_e32 v69, s63, v170
	v_add_nc_u32_e32 v70, s63, v70
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v81, v67, s[56:59], 0 offen
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v67, s63, v168
	v_add_nc_u32_e32 v71, s35, v66
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	s_clause 0x5
	buffer_load_u8 v82, v67, s[56:59], 0 offen
	buffer_load_u8 v83, v68, s[56:59], 0 offen
	buffer_load_u8 v84, v69, s[56:59], 0 offen
	buffer_load_u8 v122, v70, s[56:59], 0 offen
	buffer_load_u8 v240, v66, s[56:59], 0 offen
	buffer_load_u8 v241, v71, s[56:59], 0 offen
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
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v67, 15, v81
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v81.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v81.l, 4, v81.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s14, 7, v66.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v66, v67, v68, s14
	.loc	1 351 21 is_stmt 1              ; attention_backward.py:351:21
	v_add_nc_u32_e32 v67, s63, v167
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v244, 15, v241
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s63, s51
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v245, -16, v244
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v242, v67, s[56:59], 0 offen
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v68, 15, v242
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v67.l, v242.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v242.l, 4, v242.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v69, -16, v68
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v67.l, v82.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_dual_cndmask_b32 v71, v68, v69 :: v_dual_and_b32 v68, 15, v82
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v67.l, v83.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v82.l, 4, v82.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v69, -16, v68
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v70, v68, v69, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v68, 15, v83
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v67.l, v84.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v83.l, 4, v83.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v69, -16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v69, v68, v69 :: v_dual_and_b32 v68, 15, v84
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v67.l, v122.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v84.l, 4, v84.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v72, -16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v68, v68, v72, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v72, 15, v122
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v122.l, 4, v122.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v239, -16, v72
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v67, v72, v239, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v239, 15, v240
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v72.l, v240.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v240.l, 4, v240.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v243, -16, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v72.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v72, v239, v243, vcc_lo
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v239.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v239.h, v238.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v81.h, v239.l
	v_mov_b16_e64 v240.h, v239.l
	v_mov_b16_e64 v242.h, v239.l
	v_mov_b16_e64 v82.h, v239.l
	v_mov_b16_e64 v241.h, v239.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v81, 0, v81, s17
	v_cndmask_b32_e64 v240, 0, v240, s18
	v_cndmask_b32_e64 v242, 0, v242, s19
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v83.h, v239.l
	v_mov_b16_e64 v84.h, v239.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v243, -16, v81
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v81
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_mov_b16_e64 v122.h, v239.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v226.l, v239.l
	v_mov_b16_e64 v225.l, v239.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v243, v81, v243, vcc_lo
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v81.l, v241.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v241.l, 4, v241.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v243, v243
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v81.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v241, 0, v241, s20
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v81, v244, v245, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v240
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v240
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v240, v240, v244, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v242
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v242
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v240, v240
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v242, v242, v244, vcc_lo
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v242, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v82
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v82
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v82, v82, v244, s14
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v241
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v241, v241, v244, s14
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v83, 0, v83, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v241, v241
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v83
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s15, 7, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v83, v83, v244, s15
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s62, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v84, 0, v84, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s62, s50
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v84
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s16, 7, v84
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v84, v84, v244, s16
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s16, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s38, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v122, 0, v122, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v244, -16, v122
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s21, 7, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v122, v122, v244, s21
	.loc	1 378 27 is_stmt 1              ; attention_backward.py:378:27
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v122, v122
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
	v_add_lshl_u32 v244, s26, v0, 1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s38, s38, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v245, 0x80000000, v244, s21
	v_cndmask_b32_e64 v246, 0x80000000, v244, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s65
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v247, 0x80000000, v244, s17
	s_clause 0x1
	buffer_load_u16 v245, v245, s[60:63], 0 offen
	buffer_load_u16 v246, v246, s[60:63], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v247, v247, s[60:63], 0 offen
	v_cndmask_b32_e64 v248, 0x80000000, v244, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s59
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v249, 0x80000000, v244, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s20
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v248, v248, s[60:63], 0 offen
	v_cndmask_b32_e64 v250, 0x80000000, v244, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s58
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v249, v249, s[60:63], 0 offen
	v_cndmask_b32_e64 v251, 0x80000000, v244, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s19
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v250, v250, s[60:63], 0 offen
	v_cndmask_b32_e64 v252, 0x80000000, v244, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s25
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v251, v251, s[60:63], 0 offen
	buffer_load_u16 v252, v252, s[60:63], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v245, 16, v245
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v66, v66, v245 :: v_dual_lshlrev_b32 v245, 16, v246
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v246, 0x80000000, v244, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s27, v66, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v243, v243, v245
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v245, 16, v247
	v_cndmask_b32_e32 v247, 0x80000000, v244, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v246, v246, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v243, v243
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v72, v72, v245 :: v_dual_lshlrev_b32 v245, 16, v248
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e32 v248, 0x80000000, v244, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v247, v247, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v72, v72
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v240, v240, v245
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v245, 16, v249
	v_cndmask_b32_e32 v249, 0x80000000, v244, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v248, v248, s[60:63], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v81, v81, v245
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v245, 16, v250
	v_cndmask_b32_e32 v250, 0x80000000, v244, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v249, v249, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v81, v81
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v241, v241, v245
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v245, 16, v251
	v_cndmask_b32_e32 v251, 0x80000000, v244, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v250, v250, s[60:63], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s38, s39
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v71, v71, v245
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v245, 16, v252
	buffer_load_u16 v251, v251, s[60:63], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v242, v242, v245
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v245, 0x80000000, v244, s17
	v_cndmask_b32_e32 v244, 0x80000000, v244, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v240, v240
	v_cmp_o_f32_e64 s16, v241, v241
	v_cmp_o_f32_e32 vcc_lo, v242, v242
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v245, v245, s[60:63], 0 offen
	buffer_load_u16 v244, v244, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v245, 16, v245
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v244, 16, v244
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v70, v70, v245
	v_mul_f32_e32 v122, v122, v244
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v244, v66, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v245, 16, v246
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s28, v70, v70
	v_cmp_o_f32_e64 s20, v122, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v66, v244, 0x7fff
	v_bfe_u32 v244, v243, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v82, v82, v245 :: v_dual_lshlrev_b32 v245, 16, v247
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v243, v243, v244, 0x7fff
	v_bfe_u32 v244, v72, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v69, v69, v245
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v245, 16, v248
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s26, v82, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v72, v72, v244, 0x7fff
	v_bfe_u32 v244, v240, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v83, v83, v245
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v245, 16, v249
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s25, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v240, v240, v244, 0x7fff
	v_bfe_u32 v244, v81, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v68, v68, v245 :: v_dual_lshlrev_b32 v245, 16, v250
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s24, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v244, v81, v244, 0x7fff
	v_bfe_u32 v81, v241, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v84, v84, v245 :: v_dual_lshlrev_b32 v245, 16, v251
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s23, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v241, v241, v81, 0x7fff
	v_bfe_u32 v81, v71, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v67, v67, v245
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s22, v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v71, v71, v81, 0x7fff
	v_bfe_u32 v81, v242, 16, 1
	v_cmp_o_f32_e64 s21, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v242, v242, v81, 0x7fff
	v_bfe_u32 v81, v70, 16, 1
	v_add3_u32 v70, v70, v81, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s28
	v_add3_u32 v245, v82, v81, 0x7fff
	v_bfe_u32 v81, v69, 16, 1
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_add_nc_u32_e32 v70, 0, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v69, v69, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_add3_u32 v246, v83, v81, 0x7fff
	v_bfe_u32 v81, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_add3_u32 v247, v84, v81, 0x7fff
	v_bfe_u32 v81, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v81, 0x7fff
	v_bfe_u32 v81, v122, 16, 1
	v_add3_u32 v122, v122, v81, 0x7fff
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_load_u8_d16_hi v84, v70
	ds_load_u8_d16_hi v82, v70 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v84, v197
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v82, v197 offset:64
	ds_load_u8_d16_hi v83, v198
	ds_load_u8_d16_hi v81, v198 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v83, v199
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v81, v199 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v121, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v243.h, s19
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v121, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v245.h, s26
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v70, v65
	ds_store_b16 v123, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v72.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v123, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s25
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v69, v65
	ds_store_b16 v124, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v240.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v124, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v246.h, s24
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v125, v66
	ds_store_b16_d16_hi v125, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v244.h, s15
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s23
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v68, v65
	ds_store_b16 v126, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v241.h, s16
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v126, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v247.h, s22
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v127, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v71.h, s14
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v127, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s21
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v71, v65
	ds_store_b16 v129, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v242.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v129, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v122.h, s20
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v130, v66
	ds_store_b16_d16_hi v130, v66 offset:1024
	v_add_nc_u32_e32 v66, 0, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[240:243], v66
	ds_load_b128 v[244:247], v200
	v_mov_b32_e32 v66, v65
	v_dual_mov_b32 v255, v72 :: v_dual_mov_b32 v248, v65
	v_dual_mov_b32 v254, v71 :: v_dual_mov_b32 v253, v70
	v_dual_mov_b32 v252, v69 :: v_dual_mov_b32 v251, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v250, v67 :: v_dual_mov_b32 v249, v66
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[248:255], v[240:247], v[1:8], v[248:255]
	ds_load_b128 v[240:243], v201
	ds_load_b128 v[244:247], v202
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[248:255], v[240:247], v[9:16], v[248:255]
	ds_load_b128 v[240:243], v203
	ds_load_b128 v[244:247], v204
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[248:255], v[240:247], v[17:24], v[248:255]
	ds_load_b128 v[240:243], v205
	ds_load_b128 v[244:247], v206
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[248:255], v[240:247], v[25:32], v[248:255]
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v240, v76
	v_cvt_f32_i32_e32 v76, v78
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v78, v237, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v242, v74
	v_cvt_f32_i32_e32 v74, v80
	v_cvt_f32_i32_e32 v241, v75
	v_cvt_f32_i32_e32 v75, v79
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v80.l, v78.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v243, v73
	v_mul_f32_e32 v76, v148, v76
	v_mul_f32_e32 v74, v148, v74
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v66, v249, v173
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v80.l, 15
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v68, v251, v173 :: v_dual_and_b32 v79, 15, v80
	v_sub_f32_e32 v70, v253, v173
	v_sub_f32_e32 v72, v255, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v78.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v78, v235, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v79
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v235.l, v78.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_dual_cndmask_b32 v79, v79, v122 :: v_dual_and_b32 v122, 15, v235
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v78.l, v235.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v237, -16, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v78.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v78, v122, v237, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v122, v224, 0, 8
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v67, v248, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v224, 15, v122
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v80.h, v122.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v78, v239, v78
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v237, -16, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v80.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v80.h, v223.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v78, 0, v78, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v224, v224, v237, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v80.h
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v80.h, 4, v80.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s16, v78, v78
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v224, v224
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v237, 15, v223
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v223.h, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v224, v224, v226
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v238, -16, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v224, 0, v224, s0
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v237, v237, v238, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v238.l, v80.h, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v238.h, v239.l
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v80.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v80.l, 4, v235.l
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v80.h, v239.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v224, v224
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v244, -16, v238
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v252, v173
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v80.l, v80.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v238, v238, v244, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v235.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v244, -16, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v227, v238
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v235, v80, v244, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v80.l, 4, v122.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v122.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v80.l, v80.l, 15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v244, -16, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v69, v250, v173 :: v_dual_cndmask_b32 v122, v80, v244
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v80.l, 4, v223.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v223.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v223.l, v239.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v80.l, v80.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v122, v122, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v244, -16, v80
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v254, v173
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v226, v237
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v122, 0, v122, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v80, v80, v244, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v226, v226, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s18, v122, v122
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v79, v79, v223 :: v_dual_mul_f32 v80, v80, v225
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v79, 0, v79, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v80, 0, v80, s1
	v_bfe_u32 v225, v79, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s19, v80, v80
	v_add3_u32 v79, v79, v225, 0x7fff
	v_bfe_u32 v225, v224, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v79.h, vcc_lo
	v_add3_u32 v224, v224, v225, 0x7fff
	v_cndmask_b32_e64 v225, 0, v226, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v226, v225, 16, 1
	v_cmp_o_f32_e64 s15, v225, v225
	v_add3_u32 v225, v225, v226, 0x7fff
	v_mov_b16_e64 v226.h, v239.l
	v_mov_b16_e64 v226.l, v78.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v223, v227, v223
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v227.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v226, 1, v226
	v_cndmask_b32_e64 v223, 0, v223, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v78, v226, 0x7fff
	v_bfe_u32 v226, v223, 16, 1
	v_cmp_o_f32_e64 s17, v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s16
	v_add3_u32 v223, v223, v226, 0x7fff
	v_bfe_u32 v226, v122, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v223.h, s17
	v_add3_u32 v122, v122, v226, 0x7fff
	v_bfe_u32 v226, v80, 16, 1
	v_add_nc_u32_e32 v223, v121, v120
	v_cndmask_b16 v122.l, 0x7fff, v224.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v122.h, 0x7fff, v122.h, s18
	v_add3_u32 v80, v80, v226, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v226, v235
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v80.l, 0x7fff, v225.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s19
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v226, v239, v226
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v239.h, v209.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_2addr_stride64_b32 v223, v122, v80 offset0:2 offset1:3
	v_cndmask_b32_e64 v226, 0, v226, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v227.l, v226.h
	v_cmp_o_f32_e64 s20, v226, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v227, 1, v227
	v_add3_u32 v226, v226, v227, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v78.h, 0x7fff, v226.h, s20
	ds_store_2addr_stride64_b32 v223, v78, v79 offset1:1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v78, v218, 0, 8
	v_mov_b16_e32 v79.l, v78.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v78.l, v79.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v78.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v78, v216, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v78.h, v239.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v218, 15, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v216.l, v78.l
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v224, -16, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v216.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v218, v218, v224, vcc_lo
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v224, 15, v216
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v216.h, v222.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v78.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v78.l, 4, v79.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v218, v218
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v225, -16, v224
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v78.l, v78.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v224, v224, v225, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v79.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v225, -16, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v79, v78, v225, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v78.l, 4, v216.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v216.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v216.l, v239.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v78.l, v78.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v218, v218, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v79, v216
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v225, -16, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v216.h, v221.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v221, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v79, 0, v79, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_dual_cndmask_b32 v78, v78, v225 :: v_dual_mul_f32 v221, v221, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v79, v79
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v78, v78, v216
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v216, 0, v218, s0
	v_cndmask_b32_e64 v78, 0, v78, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v218, v216, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_cmp_o_f32_e64 s16, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v216, v216, v218, 0x7fff
	v_cndmask_b32_e64 v218, 0, v221, s0
	v_bfe_u32 v221, v218, 16, 1
	v_cmp_o_f32_e64 s14, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v218, v218, v221, 0x7fff
	v_bfe_u32 v221, v79, 16, 1
	v_cndmask_b16 v216.l, 0x7fff, v218.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v79, v221, 0x7fff
	v_bfe_u32 v221, v78, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v216.h, vcc_lo
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v78, v221, 0x7fff
	v_cndmask_b16 v216.h, 0x7fff, v78.h, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v78, v208, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v80.l, v78.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v78.l, v80.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v122, 15, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v78.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v78, v207, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v208, -16, v122
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v78.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v207.l, v78.l
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e32 v122, v122, v208, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v207.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v208, 15, v207
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v207.h, v220.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v78.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v78.l, 4, v80.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v218, -16, v208
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v78.l, v78.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v208, v208, v218, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v80.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v218, -16, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v208, v208
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v80, v78, v218, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v78.l, 4, v207.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v207.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v207.l, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v78.l, v78.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v122, v122, v207
	v_mul_f32_e32 v80, v80, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v218, -16, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v207.h, v219.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v122, 0, v122, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v80, 0, v80, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v78, v78, v218, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v208, v208, v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s15, v80, v80
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v78, v78, v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v207, v122, 16, 1
	v_cndmask_b32_e64 v78, 0, v78, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v122, v122, v207, 0x7fff
	v_cndmask_b32_e64 v207, 0, v208, s0
	v_cmp_o_f32_e64 s16, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v208, v207, 16, 1
	v_cmp_o_f32_e64 s14, v207, v207
	v_add3_u32 v207, v207, v208, 0x7fff
	v_bfe_u32 v208, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v80, v80, v208, 0x7fff
	v_bfe_u32 v208, v78, 16, 1
	v_cndmask_b16 v80.l, 0x7fff, v122.h, vcc_lo
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v122, 0x3fb8aa3b, v234
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v78, v78, v208, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v207.h, s14
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v207, 0x3fb8aa3b, v233 :: v_dual_mul_f32 v208, 0x3fb8aa3b, v232
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s16
	ds_store_2addr_stride64_b32 v223, v79, v216 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v223, v80, v78 offset0:6 offset1:7
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v217.l
	v_mov_b16_e64 v78.l, v239.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v79, v148, v243 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v236
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v80, v79, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v215.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v79, v148, v242
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v122, v79, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v214.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v79, v148, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v207, v79, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v213.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v79, v148, v240
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v208, v79, v78
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v212.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v79, 0x3fb8aa3b, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v79, v77, v78
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v77.h, v211.l
	v_mov_b16_e64 v77.l, v239.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v78, 0x3fb8aa3b, v230
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v78, v76, v77
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v210.l
	v_mov_b16_e64 v76.l, v239.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v77, v148, v75
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v75, 0x3fb8aa3b, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v75, v77, v76
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v76, 0x3fb8aa3b, v228
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v76, v74, v239
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v74, v80, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v77, v74
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v74.l, 1, v84.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v74.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v74, 0, v77, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v74, v74, v67
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v67, v122, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v77, v67
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v67.l, 1, v84.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v67.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v67, 0, v77, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v67, v66
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s52, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v66, s52, v66
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v66, v66
	v_add3_u32 v67, v67, v74, 0x7fff
	v_bfe_u32 v74, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v67.h, vcc_lo
	v_add3_u32 v66, v66, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v66.h, s14
	v_permlanex16_b32 v74, v67, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v66, v74, v67, v178
	v_perm_b32 v67, v74, v67, v179
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v74, v207, v166
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v77, v74
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v74.l, 1, v83.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v74.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v74, 0, v77, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v74, v74, v69 :: v_dual_sub_f32 v69, v208, v166
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v77, v69
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v69.l, 1, v83.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v69, 0, v77, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v68, v69, v68 :: v_dual_mul_f32 v69, s52, v74
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s52, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_cmp_o_f32_e64 s14, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v74, 0x7fff
	v_bfe_u32 v74, v68, 16, 1
	v_cndmask_b16 v69.l, 0x7fff, v69.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v74, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v69, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v74, v69, v178
	v_perm_b32 v69, v74, v69, v179
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v74, v79, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v77, v74
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v74.l, 1, v82.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v74.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v74, 0, v77, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v74, v74, v71
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v71, v78, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v77, v71
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v71.l, 1, v82.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v71.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v71, 0, v77, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v71, v70
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s52, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, s52, v70
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v70, v70
	v_add3_u32 v71, v71, v74, 0x7fff
	v_bfe_u32 v74, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v71.l, 0x7fff, v71.h, vcc_lo
	v_add3_u32 v70, v70, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.h, 0x7fff, v70.h, s14
	v_permlanex16_b32 v74, v71, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v70, v74, v71, v178
	v_perm_b32 v71, v74, v71, v179
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v74, v75, v166
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v74
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v74.l, 1, v81.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v74.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v74, 0, v75, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v74, v74, v73 :: v_dual_sub_f32 v73, v76, v166
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v73
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v73.l, 1, v81.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v73.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v73, 0, v75, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v76, v180 offset:608
	ds_load_u16_d16 v75, v180 offset:352
	ds_load_u16_d16 v207, v180
	ds_load_u16_d16 v211, v180 offset:1024
	ds_load_u16_d16 v218, v180 offset:832
	ds_load_u16_d16 v219, v180 offset:1088
	ds_load_u16_d16 v212, v180 offset:1280
	ds_load_u16_d16 v220, v180 offset:1344
	ds_load_u16_d16 v213, v180 offset:1536
	ds_load_u16_d16 v221, v180 offset:1600
	ds_load_u16_d16 v214, v180 offset:1792
	ds_load_u16_d16 v208, v180 offset:256
	ds_load_u16_d16 v209, v180 offset:512
	ds_load_u16_d16 v217, v180 offset:576
	ds_load_u16_d16 v210, v180 offset:768
	ds_load_u16_d16 v222, v180 offset:1856
	ds_load_u16_d16 v215, v180 offset:64
	ds_load_u16_d16 v216, v180 offset:320
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v72, v73, v72 :: v_dual_mul_f32 v73, s52, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v72, s52, v72
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v72, v72
	v_add3_u32 v73, v73, v74, 0x7fff
	v_bfe_u32 v74, v72, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v73.l, 0x7fff, v73.h, vcc_lo
	v_add3_u32 v72, v72, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v73.h, 0x7fff, v72.h, s14
	v_permlanex16_b32 v74, v73, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v72, v74, v73, v178
	v_perm_b32 v73, v74, v73, v179
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v75, v180 offset:480
	ds_load_u16_d16 v74, v180 offset:96
	ds_load_u16_d16 v223, v180 offset:32
	ds_load_u16_d16 v224, v180 offset:288
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v207, v180 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v218, v180 offset:960
	ds_load_u16_d16_hi v211, v180 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v219, v180 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v212, v180 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v220, v180 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v213, v180 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v221, v180 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v214, v180 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v208, v180 offset:384
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v180 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v217, v180 offset:704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v210, v180 offset:896
	ds_load_u16_d16 v77, v180 offset:864
	ds_load_u16_d16 v78, v180 offset:1120
	ds_load_u16_d16 v79, v180 offset:1376
	ds_load_u16_d16 v80, v180 offset:1632
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v222, v180 offset:1984
	ds_load_u16_d16 v81, v180 offset:1888
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v223, v180 offset:160
	ds_load_u16_d16_hi v215, v180 offset:192
	ds_load_u16_d16_hi v74, v180 offset:224
	ds_load_u16_d16 v225, v180 offset:544
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v224, v180 offset:416
	ds_load_u16_d16_hi v216, v180 offset:448
	ds_load_u16_d16 v226, v180 offset:800
	ds_load_u16_d16 v227, v180 offset:1056
	ds_load_u16_d16 v228, v180 offset:1312
	ds_load_u16_d16 v229, v180 offset:1568
	ds_load_u16_d16 v230, v180 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v225, v180 offset:672
	ds_load_u16_d16_hi v76, v180 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v226, v180 offset:928
	ds_load_u16_d16_hi v77, v180 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v227, v180 offset:1184
	ds_load_u16_d16_hi v78, v180 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v228, v180 offset:1440
	ds_load_u16_d16_hi v79, v180 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v229, v180 offset:1696
	ds_load_u16_d16_hi v80, v180 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v230, v180 offset:1952
	ds_load_u16_d16_hi v81, v180 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[207:214], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[215:222], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[223:230], v[66:73], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[74:81], v[66:73], v[33:40]
	s_cbranch_scc0 .LBB0_20
.LBB0_16:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s38, v104
	v_or_b32_e32 v67, s38, v105
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s69, s38, s81
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s38, v106
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s22, s69, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s19, s31, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v69, s38, v107
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v67
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v66, s22, v85
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s38, v108
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s21, s31, v68
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v67, s22, v112
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s38, v109
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v69
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v68, s22, v113
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s38, v110
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v70
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v69, s22, v86
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v73, s38, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v71
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v70, s22, v114
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v72
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v71, s22, v87
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v73
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v72, s22, v88
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v73, s22, v89
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u8 v235, v66, s[40:43], 0 offen
	buffer_load_u8 v237, v67, s[40:43], 0 offen
	buffer_load_u8 v224, v68, s[40:43], 0 offen
	buffer_load_u8 v223, v69, s[40:43], 0 offen
	buffer_load_u8 v218, v70, s[40:43], 0 offen
	buffer_load_u8 v216, v71, s[40:43], 0 offen
	buffer_load_u8 v208, v72, s[40:43], 0 offen
	buffer_load_u8 v207, v73, s[40:43], 0 offen
	v_add_nc_u32_e32 v66, 0, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v235
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v237 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v224
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v223 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v218
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v216 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v208
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v207 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[81:82], v66
	ds_load_b64 v[83:84], v181
	ds_load_b64 v[209:210], v182
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v66, v65
	v_dual_mov_b32 v80, v72 :: v_dual_mov_b32 v79, v71
	v_dual_mov_b32 v78, v70 :: v_dual_mov_b32 v77, v69
	v_dual_mov_b32 v76, v68 :: v_dual_mov_b32 v75, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v74, v66 :: v_dual_mov_b32 v73, v65
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[67:68], v183
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s38, v119
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s22, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[90:91], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s67, s6, s22
	s_and_b32 s65, s7, s22
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[83:84], v[92:93], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s62, s8, s22
	s_and_b32 s58, s9, s22
	s_and_b32 s68, s10, s22
	s_and_b32 s66, s11, s22
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[209:210], v[94:95], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s63, s12, s22
	s_and_b32 s59, s13, s22
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[96:97], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s22, v66, v141
	v_cmp_le_i32_e64 s23, v66, v142
	v_cmp_le_i32_e64 s24, v66, v143
	v_cmp_le_i32_e64 s25, v66, v144
	v_cmp_le_i32_e64 s26, v66, v145
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s22, s22, s65
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v140
	v_cmp_le_i32_e64 s27, v66, v146
	v_cmp_le_i32_e64 s28, v66, v147
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
	v_or_b32_e32 v67, s38, v138
	v_add_lshl_u32 v69, s69, v104, 1
	v_add_lshl_u32 v214, s69, v138, 1
	v_or_b32_e32 v68, s38, v139
	v_or_b32_e32 v70, s38, v137
	v_cmp_gt_i32_e32 vcc_lo, s31, v67
	v_add_nc_u32_e32 v82, 4, v69
	v_add_nc_u32_e32 v83, 8, v69
	v_add_nc_u32_e32 v210, 12, v69
	v_cndmask_b32_e64 v209, 0x80000000, v69, s19
	v_add_nc_u32_e32 v211, 16, v69
	v_add_nc_u32_e32 v212, 20, v69
	v_add_nc_u32_e32 v213, 24, v69
	v_add_nc_u32_e32 v69, 28, v69
	v_cndmask_b32_e32 v67, 0x80000000, v214, vcc_lo
	v_cndmask_b32_e64 v82, 0x80000000, v82, s20
	v_cndmask_b32_e64 v83, 0x80000000, v83, s21
	v_cndmask_b32_e64 v210, 0x80000000, v210, s14
	v_cndmask_b32_e64 v211, 0x80000000, v211, s15
	v_cndmask_b32_e64 v69, 0x80000000, v69, s18
	v_cndmask_b32_e64 v212, 0x80000000, v212, s16
	v_cndmask_b32_e64 v213, 0x80000000, v213, s17
	s_clause 0x7
	buffer_load_u16 v238, v209, s[44:47], 0 offen
	buffer_load_u16 v227, v82, s[44:47], 0 offen
	buffer_load_u16 v226, v83, s[44:47], 0 offen
	buffer_load_u16 v225, v210, s[44:47], 0 offen
	buffer_load_u16 v222, v211, s[44:47], 0 offen
	buffer_load_u16 v221, v212, s[44:47], 0 offen
	buffer_load_u16 v220, v213, s[44:47], 0 offen
	buffer_load_u16 v219, v69, s[44:47], 0 offen
	v_add_nc_u32_e32 v69, 4, v214
	v_cmp_gt_i32_e32 vcc_lo, s31, v68
	v_or_b32_e32 v71, s38, v136
	v_or_b32_e32 v72, s38, v135
	v_or_b32_e32 v81, s38, v134
	v_or_b32_e32 v84, s38, v133
	v_dual_cndmask_b32 v68, 0x80000000, v69 :: v_dual_add_nc_u32 v69, 12, v214
	v_add_nc_u32_e32 v82, 8, v214
	v_cmp_gt_i32_e32 vcc_lo, s31, v70
	v_or_b32_e32 v122, s38, v132
	v_add_nc_u32_e32 v83, 28, v214
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v70, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v71
	v_add_nc_u32_e32 v82, 16, v214
	v_add_nc_u32_e32 v71, 20, v214
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v72, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v81
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_add_nc_u32 v82, 24, v214
	v_cmp_gt_i32_e32 vcc_lo, s31, v84
	v_cndmask_b32_e32 v81, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v122
	v_cndmask_b32_e32 v82, 0x80000000, v83, vcc_lo
	s_clause 0x7
	buffer_load_u16 v217, v67, s[44:47], 0 offen
	buffer_load_u16 v215, v68, s[44:47], 0 offen
	buffer_load_u16 v214, v70, s[44:47], 0 offen
	buffer_load_u16 v213, v69, s[44:47], 0 offen
	buffer_load_u16 v212, v72, s[44:47], 0 offen
	buffer_load_u16 v211, v71, s[44:47], 0 offen
	buffer_load_u16 v210, v81, s[44:47], 0 offen
	buffer_load_u16 v209, v82, s[44:47], 0 offen
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_15
; %bb.19:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v66, v150
	v_cmp_ge_i32_e64 s14, v66, v151
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s21, v66, v158
	v_cmp_le_i32_e64 s22, v66, v159
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v66, v152
	v_cmp_ge_i32_e64 s16, v66, v153
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s23, v66, v160
	v_cmp_le_i32_e64 s24, v66, v161
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v66, v154
	v_cmp_ge_i32_e64 s18, v66, v155
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s25, v66, v162
	v_cmp_le_i32_e64 s26, v66, v163
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s14, s14, s22
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s19, v66, v156
	v_cmp_ge_i32_e64 s20, v66, v157
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v66, v164
	v_cmp_le_i32_e64 s28, v66, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, s21, s67
	s_and_b32 s14, s14, s65
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_and_b32 s15, s15, s62
	s_and_b32 s16, s16, s58
	s_and_b32 s17, s17, s25
	s_and_b32 s18, s18, s26
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
	v_cmp_gt_i32_e64 s1, s53, v138
	v_cmp_gt_i32_e64 s2, s53, v139
	v_cmp_gt_i32_e64 s3, s53, v137
	v_cmp_gt_i32_e64 s5, s53, v136
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s53, v135
	v_cmp_gt_i32_e64 s7, s53, v134
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s53, v133
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s53, v132
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s53, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s53, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s53, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s53, v20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s53, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s53, v18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s53, v17
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s53, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s53, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s53, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s53, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s53, v12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s53, v11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s53, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s53, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s53, v8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s53, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s53, v6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v138
	v_or_b32_e32 v1, 60, v138
	v_or_b32_e32 v2, 58, v138
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s53, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v138
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
	v_add_lshl_u32 v25, v24, v138, 2
	v_add_lshl_u32 v26, v24, v139, 2
	v_add_lshl_u32 v27, v24, v137, 2
	v_add_lshl_u32 v28, v24, v133, 2
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
	v_add_lshl_u32 v25, v24, v136, 2
	s_clause 0x1
	buffer_store_b32 v58, v26, s[36:39], 0 offen
	buffer_store_b32 v59, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v135, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v134, 2
	v_add_lshl_u32 v22, v24, v22, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v25, s[36:39], 0 offen
	buffer_store_b32 v61, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v132, 2
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
.Ltmp363:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 56
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 56
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26404
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 56
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
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
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
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 56
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 13
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
