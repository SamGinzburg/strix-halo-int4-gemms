	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshrrev_b32_e32 v126, 5, v0
	v_and_b32_e32 v73, 31, v0
	s_clause 0x2
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_load_b128 s[40:43], s[0:1], 0x38
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v137, 0, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v127, 2, v126
	v_or_b32_e32 v128, 4, v126
	v_or_b32_e32 v129, 6, v126
	v_or_b32_e32 v130, 8, v126
	v_or_b32_e32 v131, 10, v126
	v_or_b32_e32 v132, 12, v126
	v_or_b32_e32 v133, 14, v126
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s16, s3, s30
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[113:114], null, s34, v126, v[73:74]
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
	v_mad_u64_u32 v[114:115], null, s34, 6, v[113:114]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v127
	v_or_b32_e32 v3, s46, v128
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v134, s34, 1, v113
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v129
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v135, s34, 2, v113
	v_mad_u64_u32 v[115:116], null, s34, 10, v[113:114]
	v_mad_u64_u32 v[116:117], null, s34, 12, v[113:114]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v130
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v136, s34, 3, v113
	v_mad_u64_u32 v[117:118], null, s34, 14, v[113:114]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v132
	v_or_b32_e32 v8, s46, v133
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
	v_cmp_gt_i32_e64 s2, s34, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v126
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
	s_or_b32 s38, s46, 19
	s_or_b32 s39, s46, 20
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
	v_or_b32_e32 v6, s46, v131
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
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
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
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s26, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s28, s16, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s38, s28, s34
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v9, s38, v113
	v_add_nc_u32_e32 v1, s38, v134
	v_add_nc_u32_e32 v2, s38, v135
	v_add_nc_u32_e32 v3, s38, v114
	v_add_nc_u32_e32 v6, s38, v116
	v_mad_u64_u32 v[10:11], null, s34, 18, v[9:10]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v9, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v4, s38, v136
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v5, s38, v115
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
	v_add_nc_u32_e32 v7, s38, v117
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	s_mov_b32 s38, 0x7ffffffe
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
	buffer_load_u8 v6, v15, s[36:39], 0 offen
	buffer_load_u8 v7, v1, s[36:39], 0 offen
	buffer_load_u8 v4, v2, s[36:39], 0 offen
	buffer_load_u8 v2, v3, s[36:39], 0 offen
	buffer_load_u8 v3, v5, s[36:39], 0 offen
	buffer_load_u8 v1, v8, s[36:39], 0 offen
	buffer_load_u8 v5, v16, s[36:39], 0 offen
	buffer_load_u8 v8, v14, s[36:39], 0 offen
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s78, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v18, 0x80000000, v11, vcc_lo
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[10:11], null, s34, 26, v[9:10]
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
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
	buffer_load_u8 v13, v17, s[36:39], 0 offen
	buffer_load_u8 v14, v14, s[36:39], 0 offen
	buffer_load_u8 v9, v18, s[36:39], 0 offen
	buffer_load_u8 v10, v16, s[36:39], 0 offen
	v_cndmask_b32_e32 v12, 0x80000000, v15, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v11, vcc_lo
	s_clause 0x3
	buffer_load_u8 v15, v19, s[36:39], 0 offen
	buffer_load_u8 v16, v20, s[36:39], 0 offen
	buffer_load_u8 v11, v12, s[36:39], 0 offen
	buffer_load_u8 v12, v17, s[36:39], 0 offen
	v_xor_b32_e32 v19, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x198, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v138, 0, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v140, 0, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(10)
	v_mad_u64_u32 v[17:18], null, s28, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v18, 0x110, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v19, s35, 3, v17
	v_add_nc_u32_e32 v20, s35, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v22, s35, v19
	v_add_nc_u32_e32 v21, s35, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v26, s35, v22
	v_add_nc_u32_e32 v25, s35, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v30, s35, v26
	v_add_nc_u32_e32 v29, s35, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v34, s35, v30
	v_add_nc_u32_e32 v33, s35, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v37, s35, v34
	v_add_nc_u32_e32 v38, s35, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v41, s35, v37
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v41
	v_add_nc_u32_e32 v48, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v49, 1, v45
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v45, 2, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v50, s35, v48
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v51, 1, v48
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v52, s35, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v53, 1, v50
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v54, s35, v52
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v55, 1, v52
	v_lshlrev_b32_e32 v46, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v52, 2, v52
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v56, s35, v54
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v57, 1, v54
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 2, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 1, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v54, 2, v54
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v58, s35, v56
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v59, 1, v56
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v48, 2, v48
	v_lshlrev_b32_e32 v21, 2, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 1, v29
	v_lshlrev_b32_e32 v61, 1, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v50, 2, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 1, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 2, v20
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v139, 0, v18
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v18, 1, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 2, v17
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v60, s35, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v25, 2, v25
	v_lshlrev_b32_e32 v56, 2, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v29, 2, v29
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v24, 1, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v58, 2, v58
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 1, v33
	v_lshlrev_b32_e32 v62, 1, v60
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_lshlrev_b32 v28, 1, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_lshlrev_b32 v22, 2, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_lshlrev_b32 v32, 1, v26
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_lshlrev_b32 v26, 2, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_lshlrev_b32 v36, 1, v30
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_lshlrev_b32 v30, 2, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_lshlrev_b32 v19, 2, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_lshlrev_b32 v40, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_lshlrev_b32 v34, 2, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_lshlrev_b32 v44, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	s_and_b32 s4, s77, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v74, 0x80000000, v56, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v56, s35, v60
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_lshlrev_b32 v60, 2, v60
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v63, s35, v56
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v64, 1, v56
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v84, 0x80000000, v60, vcc_lo
	v_lshlrev_b32_e32 v56, 2, v56
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v60, s35, v63
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v65, 1, v63
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v63, 2, v63
	v_cndmask_b32_e32 v85, 0x80000000, v56, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v56, s35, v60
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_lshlrev_b32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v67, 0x80000000, v63 :: v_dual_lshlrev_b32 v66, 1, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v63, s35, v56
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v60, 2, v60
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v68, 1, v56
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_lshlrev_b32 v56, 2, v56
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v69, s35, v63
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_lshlrev_b32 v47, 1, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_lshlrev_b32 v41, 2, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v70, 1, v63
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v76, 0x80000000, v56, vcc_lo
	v_lshlrev_b32_e32 v56, 2, v63
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v63, s35, v69
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v71, 1, v69
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v77, 0x80000000, v56 :: v_dual_lshlrev_b32 v56, 2, v69
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v69, s35, v63
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s75, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v72, 1, v63
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v63, 2, v63
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v75, s35, v69
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s73, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s71, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v86, 0x80000000, v56
	v_lshlrev_b32_e32 v56, 1, v69
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s33, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v69, 2, v69
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s69, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v87, 0x80000000, v63, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_lshlrev_b32 v63, 1, v75
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v37, 0x80000000, v37, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s68, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v88, 0x80000000, v69, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v47, 0x80000000, v47, s4
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_store_b8 v137, v6
	ds_store_b8 v137, v7 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v137, v13 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v14 offset:576
	ds_store_b8 v138, v4
	ds_store_b8 v138, v8 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v9 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v10 offset:576
	ds_store_b8 v139, v2
	ds_store_b8 v139, v3 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v15 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v16 offset:576
	ds_store_b8 v140, v1
	ds_store_b8 v140, v5 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v11 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v140, v12 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_u16 v14, v18, s[36:39], 0 offen
	buffer_load_u16 v15, v23, s[36:39], 0 offen
	buffer_load_u16 v16, v27, s[36:39], 0 offen
	buffer_load_u16 v18, v31, s[36:39], 0 offen
	buffer_load_u16 v23, v24, s[36:39], 0 offen
	buffer_load_u16 v24, v28, s[36:39], 0 offen
	buffer_load_u16 v27, v32, s[36:39], 0 offen
	buffer_load_u16 v28, v36, s[36:39], 0 offen
	buffer_load_u16 v31, v51, s[36:39], 0 offen
	buffer_load_u16 v32, v53, s[36:39], 0 offen
	buffer_load_u16 v36, v55, s[36:39], 0 offen
	buffer_load_u16 v89, v57, s[36:39], 0 offen
	buffer_load_u16 v90, v65, s[36:39], 0 offen
	buffer_load_u16 v91, v66, s[36:39], 0 offen
	buffer_load_u16 v92, v68, s[36:39], 0 offen
	buffer_load_u16 v93, v70, s[36:39], 0 offen
	buffer_load_u16 v35, v35, s[36:39], 0 offen
	buffer_load_u16 v39, v39, s[36:39], 0 offen
	buffer_load_u16 v43, v43, s[36:39], 0 offen
	buffer_load_u16 v46, v46, s[36:39], 0 offen
	buffer_load_u16 v40, v40, s[36:39], 0 offen
	buffer_load_u16 v44, v44, s[36:39], 0 offen
	buffer_load_u16 v47, v47, s[36:39], 0 offen
	buffer_load_u16 v94, v49, s[36:39], 0 offen
	buffer_load_u16 v13, v59, s[36:39], 0 offen
	buffer_load_u16 v12, v61, s[36:39], 0 offen
	buffer_load_u16 v11, v62, s[36:39], 0 offen
	buffer_load_u16 v10, v64, s[36:39], 0 offen
	buffer_load_u16 v8, v71, s[36:39], 0 offen
	buffer_load_u16 v7, v72, s[36:39], 0 offen
	buffer_load_u16 v6, v56, s[36:39], 0 offen
	buffer_load_u16 v5, v63, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v75, 2, v75
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v1, 0x80000000, v75, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v83, v17, s[36:39], 0 offen
	buffer_load_b32 v82, v20, s[36:39], 0 offen
	buffer_load_b32 v81, v21, s[36:39], 0 offen
	buffer_load_b32 v80, v25, s[36:39], 0 offen
	buffer_load_b32 v75, v19, s[36:39], 0 offen
	buffer_load_b32 v72, v22, s[36:39], 0 offen
	buffer_load_b32 v71, v26, s[36:39], 0 offen
	buffer_load_b32 v70, v30, s[36:39], 0 offen
	buffer_load_b32 v65, v48, s[36:39], 0 offen
	buffer_load_b32 v64, v50, s[36:39], 0 offen
	buffer_load_b32 v63, v52, s[36:39], 0 offen
	buffer_load_b32 v62, v54, s[36:39], 0 offen
	buffer_load_b32 v57, v67, s[36:39], 0 offen
	buffer_load_b32 v56, v60, s[36:39], 0 offen
	buffer_load_b32 v55, v76, s[36:39], 0 offen
	buffer_load_b32 v54, v77, s[36:39], 0 offen
	buffer_load_b32 v79, v29, s[36:39], 0 offen
	buffer_load_b32 v78, v33, s[36:39], 0 offen
	buffer_load_b32 v77, v38, s[36:39], 0 offen
	buffer_load_b32 v76, v42, s[36:39], 0 offen
	buffer_load_b32 v69, v34, s[36:39], 0 offen
	buffer_load_b32 v68, v37, s[36:39], 0 offen
	buffer_load_b32 v67, v41, s[36:39], 0 offen
	buffer_load_b32 v66, v45, s[36:39], 0 offen
	buffer_load_b32 v61, v74, s[36:39], 0 offen
	buffer_load_b32 v60, v58, s[36:39], 0 offen
	buffer_load_b32 v59, v84, s[36:39], 0 offen
	buffer_load_b32 v58, v85, s[36:39], 0 offen
	buffer_load_b32 v53, v86, s[36:39], 0 offen
	buffer_load_b32 v52, v87, s[36:39], 0 offen
	buffer_load_b32 v51, v88, s[36:39], 0 offen
	buffer_load_b32 v50, v1, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s42, s31, 15
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v22, 16, v31
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v25, 16, v89
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v29, 16, v93
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v30, 16, v35
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v31, 16, v39
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v49, 32, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v86, v62, v25 :: v_dual_lshlrev_b32 v33, 16, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 16, v44
	v_lshlrev_b32_e32 v34, 16, v40
	v_lshlrev_b32_e32 v37, 16, v94
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v49
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v94, v76, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(10)
	v_mul_f32_e32 v96, v68, v35
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v86, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v98, v66, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v45, 16, v5
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v5, v83, v14
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v94, v94 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v141, 1, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v100, v60, v12
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v102, v58, v10
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v5, v5 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v94, v76, v33
.Ltmp7:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v2, 24, v141
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v96, v96 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_lshlrev_b32_e32 v3, 6, v0
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v5, v83, v14
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v9, 4, v49
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v86, v62, v25
	v_add_f32_dpp v5, v5, v5 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v94, v94 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v13, 16, v13
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v96, v68, v35
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v98, v66, v37 :: v_dual_and_b32 v17, 64, v3
	v_fmac_f32_e32 v100, v60, v12
	v_add_f32_dpp v25, v25, v25 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v99, v61, v13 :: v_dual_and_b32 v74, 15, v0
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v102, v58, v10
	v_add_f32_dpp v25, v25, v25 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v4, v1, v74
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v1, 5, v74
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v94, v25, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v101, v59, v11 :: v_dual_lshlrev_b32 v42, 16, v8
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v19, v1, v9, v2
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v9, 0, v17
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v99, v61, v13
	v_add_f32_e32 v25, v25, v94
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v17, 0, v19
	v_xad_u32 v20, v19, 8, 0
	v_xad_u32 v21, v19, 16, 0
	v_xad_u32 v19, v19, 24, 0
	ds_load_b64 v[118:119], v17
	ds_load_b64 v[120:121], v20
	ds_load_b64 v[122:123], v21
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[124:125], v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 16, v27
	v_lshlrev_b32_e32 v27, 16, v91
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v91, v79, v30
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v21, 16, v28
	v_lshlrev_b32_e32 v28, 16, v92
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v40, v71, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v19, 16, v24
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v91, v91 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v101, v59, v11
.Ltmp27:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v89, v55, v28
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v39, v72, v19
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v91, v79, v30
	v_add_f32_dpp v30, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v89, v89 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v71, v20
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v92, v78, v31
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v30, v30, v30 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v89, v55, v28
	v_add_f32_dpp v12, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v39, v72, v19
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v92, v92 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v30, v30, v30 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v89, v89 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v92, v78, v31
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v30, -1, -1 op_sel:[1,0]
.Ltmp39:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v26, 16, v90
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v90, v54, v29
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 16, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s46, v4
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v90, v90 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v39, v12, -1, -1 op_sel:[1,0]
.Ltmp45:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v17, 16, v18
	v_lshlrev_b32_e32 v18, 16, v23
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v90, v54, v29
	v_add_f32_dpp v29, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v89, v20, -1, -1 op_sel:[1,0]
.Ltmp48:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 16, v32
	v_lshlrev_b32_e32 v32, 16, v43
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v12, v12, v39
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v20, v20, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v48, v64, v23 :: v_dual_mul_f32 v93, v77, v32
	v_mul_f32_e32 v8, v80, v17
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v93, v93 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v8, v8 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v98, v29, -1, -1 op_sel:[1,0]
.Ltmp54:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v24, 16, v36
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v93, v77, v32 :: v_dual_lshlrev_b32 v36, 16, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v64, v23 :: v_dual_add_f32 v29, v29, v98
.Ltmp56:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v85, v63, v24
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v23, v92, v92 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v8, v80, v17
	v_add_f32_dpp v17, v86, v86 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v85, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v23, v23, v23 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v85, v63, v24
	v_add_f32_dpp v24, v93, v93 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v12, 31
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v24, v24, v24 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v92, v23, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v86, v17, -1, -1 op_sel:[1,0]
.Ltmp63:
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v142, s28, v4
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v23, v23, v92
.Ltmp65:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v75, v18
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v17, v17, v86 :: v_dual_mov_b32 v12, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v93, v24, -1, -1 op_sel:[1,0]
	v_readlane_b32 s41, v29, 31
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_readlane_b32 s16, v17, 31
	v_readlane_b32 s33, v23, 31
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v24, v24, v93
.Ltmp69:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v88, v56, v27
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v38, v75, v18 :: v_dual_mov_b32 v17, s16
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v25, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s36, v24, 31
	v_mov_b32_dpp v88, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v38, v11, -1, -1 op_sel:[1,0]
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v88, v56, v27
	v_add_f32_dpp v27, v96, v96 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v11, v11, v38
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v88, v88 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v11, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v11, s10
.Ltmp78:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v95, v69, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v96, v27, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v95, v95 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v88, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v27, v27, v96
.Ltmp82:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v47, v65, v22
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v95, v69, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v19, v19, v88
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s39, v27, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v65, v22
	v_add_f32_dpp v22, v91, v91 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v14, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v91, v22, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v47, v14, -1, -1 op_sel:[1,0]
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v22, v22, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_f32_e32 v14, v14, v47
	v_add_f32_e32 v47, v30, v99
.Ltmp88:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v87, v57, v26
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v14, 31
.Ltmp90:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v87, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v14, s13
.Ltmp92:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v104, v52, v43 :: v_dual_fmac_f32 v87, v57, v26
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v26, v95, v95 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v18, v87, v87 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v95, v26, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v87, v18, -1, -1 op_sel:[1,0]
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v26, v26, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v18, v18, v87
.Ltmp98:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v70, v21
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v26, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s17, v18, 31
	v_mov_b32_dpp v46, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v46, v70, v21
	v_add_f32_dpp v21, v90, v90 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v46, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v90, v21, -1, -1 op_sel:[1,0]
.Ltmp102:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v16, 16, v16
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v40, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v21, v21, v90
.Ltmp105:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v7, v81, v16 :: v_dual_lshlrev_b32 v84, 1, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v13, v13, v40
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v7, v7 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s12, v13, 31
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v7, v81, v16
	v_add_f32_dpp v16, v85, v85 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v13, s12
.Ltmp110:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v97, v67, v36
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v67, v36
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v85, v16, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v15, 16, v15
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v36, v8, -1, -1 op_sel:[1,0]
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v16, v16, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v6, v82, v15
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v8, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v16, 31
	v_mov_b32_dpp v6, v6 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s8, v8, 31
	v_mov_b32_e32 v16, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v6, v82, v15
	v_add_f32_dpp v15, v48, v48 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v8, s8
	v_permlanex16_b32 v37, v10, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v106, v50, v45
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v10, v10, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, s38
	v_readlane_b32 s9, v10, 31
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v48, v15, -1, -1 op_sel:[1,0]
.Ltmp130:
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v4, 1, v142
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v10, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v34, v6, -1, -1 op_sel:[1,0]
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v15, v15, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp133:
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v6, v6, v34 :: v_dual_add_nc_u32 v41, 0, v84
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v15, 31
.Ltmp136:
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v4, v4, s[24:27], 0 offen
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v19, 31
	v_readlane_b32 s25, v20, 31
	v_readlane_b32 s6, v6, 31
	v_readlane_b32 s26, v21, 31
	v_readlane_b32 s27, v22, 31
	v_mov_b32_e32 v19, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v103, v53, v42 :: v_dual_mov_b32 v6, s6
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v35, v7, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v15, s14 :: v_dual_mov_b32 v18, s17
	v_dual_mov_b32 v20, s25 :: v_dual_mov_b32 v21, s26
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v7, v35
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v35, s36
	v_readlane_b32 s7, v7, 31
	v_dual_mov_b32 v38, s39 :: v_dual_mul_f32 v105, v51, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v103, v53, v42 :: v_dual_mov_b32 v34, s33
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v7, s7
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v32, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v40, s41
	s_mov_b32 s33, 0
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v32, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v105, v51, v44
	v_add_f32_dpp v32, v32, v32 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v32, -1, -1 op_sel:[1,0]
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v85, v32, v101
	v_add_f32_dpp v28, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v85, 31
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v28, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v28, v28, v97
	v_add_f32_dpp v31, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v28, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v36, s37 :: v_dual_mov_b32 v39, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v31, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v31, v100
	v_add_f32_dpp v33, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v48, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v33, v5, -1, -1 op_sel:[1,0]
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v33
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v33, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s5, v5, 31
	v_mov_b32_e32 v5, s5
	ds_store_b128 v41, v[5:8]
	ds_store_b128 v41, v[10:13] offset:16
	ds_store_b128 v41, v[14:17] offset:32
	ds_store_b128 v41, v[18:21] offset:48
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_permlanex16_b32 v6, v5, -1, -1 op_sel:[1,0]
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v104, v52, v43
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[25:28], v9 offset:16
	ds_load_b128 v[21:24], v9 offset:32
	ds_load_b128 v[17:20], v9 offset:48
	v_readlane_b32 s5, v47, 31
	s_waitcnt lgkmcnt(0)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v6
	v_add_f32_dpp v8, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s8, v5, 31
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v5, s5
.Ltmp172:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s42, 31
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp174:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v91, v29
	v_mov_b32_e32 v89, v32
	v_permlanex16_b32 v12, v7, -1, -1 op_sel:[1,0]
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v106, v50, v45
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v13, v8, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v88, v31 :: v_dual_mov_b32 v97, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v7, v12
	v_add_f32_dpp v11, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v8, v8, v13
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v98, v27 :: v_dual_mov_b32 v111, v22
	v_readlane_b32 s10, v7, 31
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v11, v6, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v7, s7
	v_readlane_b32 s11, v8, 31
	v_mov_b32_e32 v8, s8
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v6, v6, v11 :: v_dual_mov_b32 v11, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp183:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v12, s11
	v_dual_mov_b32 v112, v23 :: v_dual_mov_b32 v101, v18
	v_permlanex16_b32 v14, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_readlane_b32 s9, v6, 31
	v_dual_mov_b32 v106, v19 :: v_dual_mov_b32 v107, v20
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v10, v10, v14
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v97, v97 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v98, v98 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_readlane_b32 s12, v10, 31
	v_mov_b32_e32 v6, s6
	v_mov_b32_e32 v10, s9
	v_mov_b32_dpp v111, v111 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v112, v112 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, s12
	ds_store_b128 v41, v[33:36]
	ds_store_b128 v41, v[37:40] offset:16
	ds_store_b128 v41, v[5:8] offset:32
	ds_store_b128 v41, v[10:13] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[37:40], v9 offset:16
	ds_load_b128 v[45:48], v9 offset:32
	ds_load_b128 v[33:36], v9 offset:48
	v_mov_b32_e32 v92, v30
	v_mov_b32_e32 v96, v25
	v_mov_b32_e32 v102, v28
	v_mov_b32_e32 v110, v21
	v_mov_b32_e32 v160, v24
	v_mov_b32_e32 v100, v17
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s42, s42, s5
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s48, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s38, s42, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
.Ltmp187:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v90, v41 :: v_dual_mov_b32 v105, v39
	v_dual_mov_b32 v93, v42 :: v_dual_mov_b32 v94, v43
	v_mov_b32_e32 v103, v37
	v_dual_mov_b32 v95, v44 :: v_dual_mov_b32 v104, v38
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v159, v48
	v_mov_b32_e32 v109, v40
	v_mov_b32_e32 v161, v45
	v_dual_mov_b32 v157, v46 :: v_dual_mov_b32 v158, v47
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v108, v33
	v_dual_mov_b32 v162, v34 :: v_dual_mov_b32 v163, v35
	v_mov_b32_e32 v99, v36
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v103, v103 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v104, v104 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v105, v105 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v110, v110 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v160, v160 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v108, v108 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp188:
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
	v_cndmask_b32_e64 v5, 0, 1, s19
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s50, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s19
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s51, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v5
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
	v_bfe_u32 v149, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	v_mov_b16_e32 v5.l, 0
	s_sub_i32 s6, s6, s7
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v4.l
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s7, s39, 0x3fb8aa3b
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v151, s23, v3
	v_or_b32_e32 v1, v1, v2
	v_cndmask_b32_e64 v2, 0, 1, s18
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s47, s47, s29
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v150, 2, v149
	v_or_b32_e32 v148, 4, v149
	v_or_b32_e32 v147, 6, v149
	v_or_b32_e32 v146, 8, v149
	v_or_b32_e32 v145, 10, v149
	v_or_b32_e32 v144, 12, v149
	v_or_b32_e32 v143, 14, v149
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s23, s6, s47
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v152, s7, v5
	v_subrev_nc_u32_e32 v153, s21, v151
	v_add_nc_u32_e32 v154, s22, v151
	v_xor_b32_e32 v85, 8, v1
	v_xor_b32_e32 v86, 16, v1
	v_xor_b32_e32 v87, 24, v1
	v_add_nc_u32_e32 v155, 0, v1
	v_cmp_ne_u32_e64 s6, 1, v2
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
	v_dual_mov_b32 v156, v152 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v164, v152 :: v_dual_add_nc_u32 v167, 0, v85
	v_dual_mov_b32 v165, v152 :: v_dual_mov_b32 v166, 0xff800000
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v169, 0, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v168, 0, v86
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
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
	v_mov_b16_e64 v171.l, 0
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v172.h, v185.l
	v_mov_b16_e64 v173.h, v184.l
	v_mov_b16_e64 v172.l, v171.l
	v_mov_b16_e64 v173.l, v171.l
	v_mov_b16_e64 v174.l, v171.l
	v_mov_b16_e64 v174.h, v182.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v12, v165, v12 :: v_dual_mul_f32 v11, v164, v11
	v_mul_f32_e32 v10, v156, v10
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v9, v152, v9
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v171.h, v186.l
	v_mov_b16_e64 v175.l, v171.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v175.h, v183.l
	v_mov_b16_e64 v176.l, v171.l
	v_mov_b16_e64 v176.h, v181.l
	v_mov_b16_e64 v177.l, v171.l
	v_mov_b16_e64 v177.h, v180.l
	v_mov_b16_e64 v178.l, v171.l
	v_mov_b16_e64 v178.h, v179.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v16, v165, v16 :: v_dual_mul_f32 v13, v152, v13
	v_dual_mul_f32 v9, v9, v174 :: v_dual_mul_f32 v12, v12, v171
	v_mul_f32_e32 v11, v11, v172
	v_dual_mul_f32 v15, v164, v15 :: v_dual_mul_f32 v10, v10, v173
	v_mul_f32_e32 v14, v156, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v171, 0xff800000, v9, s55
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v16, v16, v175 :: v_dual_mul_f32 v15, v15, v176
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v13, v13, v178 :: v_dual_mul_f32 v14, v14, v177
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v12, 0xff800000, v12, s47
	v_cndmask_b32_e64 v11, 0xff800000, v11, s66
	v_cndmask_b32_e64 v10, 0xff800000, v10, s50
	v_cndmask_b32_e64 v16, 0xff800000, v16, s54
	v_cndmask_b32_e64 v14, 0xff800000, v14, s51
	v_cndmask_b32_e64 v13, 0xff800000, v13, s65
	v_cndmask_b32_e64 v15, 0xff800000, v15, s67
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v9, v171, v10, v11
.Ltmp190:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v166
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s43, s43, 16
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v172, v12, v13, v14
	v_max_f32_e32 v173, v15, v16
.Ltmp192:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s43, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v9, v9, v172, v173
.Ltmp194:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v172, v9, s29, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v9, v166, v9, v172
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v15, v15, v9
	v_sub_f32_e32 v16, v16, v9
	v_sub_f32_e32 v171, v171, v9
	v_sub_f32_e32 v10, v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v10, v10
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v15, 0, v15, s67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v16, 0, v16, s54
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v12, v12, v9
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v171, 0, v171, s55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v10, 0, v10, s50
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v10, v171, v10 :: v_dual_sub_f32 v13, v13, v9
.Ltmp197:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v12, 0, v12, s47
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v14, v14, v9
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v13, 0, v13, s65
	v_cndmask_b32_e64 v14, 0, v14, s51
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v11, v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v11, v11
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v11, 0, v11, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp198:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v11, v11, v12 :: v_dual_add_f32 v12, v13, v14
	v_dual_add_f32 v13, v15, v16 :: v_dual_sub_f32 v14, v166, v9
	v_mov_b32_e32 v166, v9
	v_dual_add_f32 v10, v10, v11 :: v_dual_add_f32 v11, v12, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp199:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v12, v14
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v10, v10, v11
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v11, v10, s29, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v11, v10, v11
.Ltmp203:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v11, v170, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v170, v11
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v9, s43, v126
	v_or_b32_e32 v10, s43, v127
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s68, s43, s64
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v11, s43, v128
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s14, s68, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v12, s43, v129
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s7, s31, v10
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v9, s14, v113
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v13, s43, v130
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s8, s31, v11
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v10, s14, v134
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v14, s43, v131
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s9, s31, v12
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v11, s14, v135
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v15, s43, v132
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s10, s31, v13
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v12, s14, v114
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v16, s43, v133
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s11, s31, v14
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v13, s14, v136
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s12, s31, v15
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v14, s14, v115
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v16
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v15, s14, v116
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v16, s14, v117
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v171, s43, v149
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v172, s43, v150
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x7
	buffer_load_u8 v9, v9, s[56:59], 0 offen
	buffer_load_u8 v10, v10, s[56:59], 0 offen
	buffer_load_u8 v11, v11, s[56:59], 0 offen
	buffer_load_u8 v12, v12, s[56:59], 0 offen
	buffer_load_u8 v13, v13, s[56:59], 0 offen
	buffer_load_u8 v14, v14, s[56:59], 0 offen
	buffer_load_u8 v15, v15, s[56:59], 0 offen
	buffer_load_u8 v16, v16, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v173, s43, v148
	v_or_b32_e32 v174, s43, v147
	v_or_b32_e32 v175, s43, v146
	v_or_b32_e32 v176, s43, v145
	v_or_b32_e32 v177, s43, v144
	v_or_b32_e32 v178, s43, v143
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s8, s31, v174
	v_cmp_gt_i32_e64 s10, s31, v173
	v_cmp_gt_i32_e64 s12, s31, v172
	v_cmp_gt_i32_e64 s14, s31, v171
	v_cmp_gt_i32_e64 s7, s31, v178
	v_cmp_gt_i32_e64 s9, s31, v177
	v_cmp_gt_i32_e64 s11, s31, v176
	v_cmp_gt_i32_e64 s13, s31, v175
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
	ds_store_b8 v137, v9
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v10 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v11
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v12 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v13
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v14 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v15
	s_waitcnt vmcnt(0)
	ds_store_b8 v140, v16 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[179:180], v155
	ds_load_b64 v[181:182], v167
	ds_load_b64 v[183:184], v168
	ds_load_b64 v[185:186], v169
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[118:119], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[120:121], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[122:123], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[124:125], v[9:16] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s15, v172, v151
	v_cmp_le_i32_e64 s16, v173, v151
	v_cmp_le_i32_e64 s17, v174, v151
	v_cmp_le_i32_e64 s18, v175, v151
	v_cmp_le_i32_e64 s19, v176, v151
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s15, s15, s50
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v171, v151
	v_cmp_le_i32_e64 s20, v177, v151
	v_cmp_le_i32_e64 s21, v178, v151
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
	v_add_lshl_u32 v179, s68, v149, 1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_add_nc_u32_e32 v180, 4, v179
	v_add_nc_u32_e32 v181, 8, v179
	v_add_nc_u32_e32 v182, 12, v179
	v_add_nc_u32_e32 v183, 16, v179
	v_add_nc_u32_e32 v184, 20, v179
	v_add_nc_u32_e32 v185, 24, v179
	v_add_nc_u32_e32 v186, 28, v179
	v_cndmask_b32_e64 v179, 0x80000000, v179, s14
	v_cndmask_b32_e64 v180, 0x80000000, v180, s12
	v_cndmask_b32_e64 v181, 0x80000000, v181, s10
	v_cndmask_b32_e64 v187, 0x80000000, v182, s8
	v_cndmask_b32_e64 v183, 0x80000000, v183, s13
	v_cndmask_b32_e64 v188, 0x80000000, v184, s11
	v_cndmask_b32_e64 v189, 0x80000000, v185, s9
	v_cndmask_b32_e64 v190, 0x80000000, v186, s7
	s_clause 0x7
	buffer_load_u16 v182, v179, s[60:63], 0 offen
	buffer_load_u16 v184, v180, s[60:63], 0 offen
	buffer_load_u16 v185, v181, s[60:63], 0 offen
	buffer_load_u16 v186, v187, s[60:63], 0 offen
	buffer_load_u16 v179, v183, s[60:63], 0 offen
	buffer_load_u16 v180, v188, s[60:63], 0 offen
	buffer_load_u16 v181, v189, s[60:63], 0 offen
	buffer_load_u16 v183, v190, s[60:63], 0 offen
	.loc	1 240 13                        ; attention_backward.py:240:13
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v171, v153
	v_cmp_ge_i32_e64 s7, v172, v153
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s14, v171, v154
	v_cmp_le_i32_e64 s15, v172, v154
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s8, v173, v153
	v_cmp_ge_i32_e64 s9, v174, v153
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s16, v173, v154
	v_cmp_le_i32_e64 s17, v174, v154
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s10, v175, v153
	v_cmp_ge_i32_e64 s11, v176, v153
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s18, v175, v154
	v_cmp_le_i32_e64 s19, v176, v154
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s7, s7, s15
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v177, v153
	v_cmp_ge_i32_e64 s13, v178, v153
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s20, v177, v154
	v_cmp_le_i32_e64 s21, v178, v154
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
	v_mov_b32_e32 v9, 0xff800000
	v_mov_b32_e32 v11, 0
.LBB0_12:                               ; %Flow178
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v11
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v29, v91 :: v_dual_add_f32 v2, v30, v92
	v_dual_add_f32 v28, v28, v102 :: v_dual_add_f32 v29, v37, v103
.Ltmp205:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v7, 0, 32, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42000000, vcc_lo
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v24, v24, v160
.Ltmp207:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v73
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v7, v11, v7
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v31, v88 :: v_dual_add_f32 v4, v32, v89
	v_dual_add_f32 v27, v27, v98 :: v_dual_add_f32 v30, v38, v104
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp209:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v7, v7
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v23, v23, v112 :: v_dual_add_f32 v38, v46, v157
.Ltmp211:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_b32 s56, s[0:1], 0x74
	v_cmp_eq_u32_e64 s0, 0, v49
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v14, v43, v94 :: v_dual_add_f32 v15, v44, v95
	v_add_f32_e32 v94, v35, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp213:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v6, v7, v6 :: v_dual_add_f32 v37, v45, v161
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshlrev_b32_e32 v7, 2, v74
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v12, v41, v90 :: v_dual_add_f32 v13, v42, v93
.Ltmp215:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v6, v9, v6 :: v_dual_add_f32 v89, v18, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add3_u32 v10, 0, v7, v84
	v_add_lshl_u32 v7, s28, v73, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v9, 0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_dual_cndmask_b32 v157, 0, v6 :: v_dual_add_f32 v88, v17, v100
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v6, v73, 2, 0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v5
	s_mov_b32 s51, 0x31027000
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v10, v157
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v6
	s_and_b32 vcc_lo, s0, vcc_lo
	s_mov_b32 s50, 0x7ffffffe
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_mov_b32 v8, 0
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v25, v25, v96 :: v_dual_add_f32 v26, v26, v97
	v_dual_add_f32 v31, v39, v105 :: v_dual_add_f32 v22, v22, v111
	v_dual_add_f32 v32, v40, v109 :: v_dual_add_f32 v21, v21, v110
.Ltmp217:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s25, 0xffff
	s_mov_b32 s12, s24
	s_mov_b32 s14, s50
	s_mov_b32 s15, s51
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v39, v47, v158 :: v_dual_add_f32 v40, v48, v159
	v_dual_add_f32 v90, v19, v106 :: v_dual_add_f32 v91, v20, v107
	v_dual_add_f32 v92, v33, v108 :: v_dual_add_f32 v93, v34, v162
	v_dual_add_f32 v95, v36, v99 :: v_dual_add_nc_u32 v158, v137, v0
.Ltmp219:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v7, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[1:4]
	ds_store_b128 v9, v[12:15] offset:16
	ds_store_b128 v9, v[25:28] offset:32
	ds_store_b128 v9, v[29:32] offset:48
	ds_store_b128 v9, v[21:24] offset:64
	ds_store_b128 v9, v[37:40] offset:80
	ds_store_b128 v9, v[88:91] offset:96
	ds_store_b128 v9, v[92:95] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v6
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v6, v83, 16, 1
	v_bfe_u32 v11, v80, 16, 1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_add3_u32 v6, v83, v6, 0x7fff
	v_add3_u32 v11, v80, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v80, v80
	v_bfe_u32 v16, v79, 16, 1
	v_cmp_o_f32_e64 s1, v81, v81
	v_bfe_u32 v17, v76, 16, 1
	v_bfe_u32 v18, v75, 16, 1
	v_bfe_u32 v19, v70, 16, 1
	v_bfe_u32 v20, v69, 16, 1
	v_bfe_u32 v33, v66, 16, 1
	v_add3_u32 v17, v76, v17, 0x7fff
	v_bfe_u32 v34, v65, 16, 1
	v_add3_u32 v19, v70, v19, 0x7fff
	v_bfe_u32 v35, v62, 16, 1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v7, s[12:15], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v5, v82, 16, 1
	v_bfe_u32 v7, v81, 16, 1
	v_add3_u32 v33, v66, v33, 0x7fff
	v_add3_u32 v35, v62, v35, 0x7fff
	v_bfe_u32 v36, v61, 16, 1
	v_add3_u32 v5, v82, v5, 0x7fff
	v_add3_u32 v7, v81, v7, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v11.h, s7
	v_add3_u32 v11, v79, v16, 0x7fff
	v_bfe_u32 v16, v77, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v78, 16, 1
	v_cmp_o_f32_e64 s1, v77, v77
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_add3_u32 v16, v77, v16, 0x7fff
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v7, v78, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v82, v82
	v_cndmask_b16 v7.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v72, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v17.h, s7
	v_add3_u32 v17, v75, v18, 0x7fff
	v_bfe_u32 v18, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_cmp_o_f32_e64 s7, v70, v70
	v_add3_u32 v16, v72, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v71, v71
	v_add3_u32 v18, v71, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s7
	v_add3_u32 v19, v69, v20, 0x7fff
	v_bfe_u32 v20, v67, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v68, 16, 1
	v_cmp_o_f32_e64 s1, v67, v67
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_add3_u32 v20, v67, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v66, v66
	v_add3_u32 v18, v68, v18, 0x7fff
	v_bfe_u32 v41, v58, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v64, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v33.h, s7
	v_add3_u32 v33, v65, v34, 0x7fff
	v_bfe_u32 v34, v63, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cmp_o_f32_e64 s7, v62, v62
	v_add3_u32 v20, v64, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v34, v63, v34, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s7
	v_add3_u32 v35, v61, v36, 0x7fff
	v_bfe_u32 v36, v59, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_cmp_o_f32_e64 s0, v78, v78
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v60, 16, 1
	v_add3_u32 v36, v59, v36, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_add3_u32 v41, v58, v41, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_bfe_u32 v42, v57, 16, 1
	v_bfe_u32 v43, v54, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v72, v72
	v_add3_u32 v34, v60, v34, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s1
	v_bfe_u32 v36, v56, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, vcc_lo
	v_cndmask_b16 v35.h, 0x7fff, v41.h, s7
	v_add3_u32 v41, v57, v42, 0x7fff
	v_bfe_u32 v42, v55, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_add3_u32 v43, v54, v43, 0x7fff
	v_cmp_o_f32_e64 s7, v54, v54
	v_bfe_u32 v44, v53, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v68, v68
	v_add3_u32 v36, v56, v36, 0x7fff
	v_add3_u32 v42, v55, v42, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_cndmask_b16 v36.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s7
	v_add3_u32 v43, v53, v44, 0x7fff
	v_bfe_u32 v44, v51, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_cmp_o_f32_e64 s0, v64, v64
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s1
	v_cmp_o_f32_e64 s1, v51, v51
	v_add3_u32 v44, v51, v44, 0x7fff
	v_bfe_u32 v45, v50, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	v_cmp_o_f32_e64 s0, v60, v60
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s1
	v_xor_b32_e32 v44, 0x90, v141
	s_barrier
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s0
	v_cmp_o_f32_e64 s0, v56, v56
	v_bfe_u32 v42, v52, 16, 1
	v_add_nc_u32_e32 v159, 0, v44
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v45, v50, v45, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s0
	ds_store_b16 v158, v5
	ds_store_b16 v158, v16 offset:1024
	ds_store_b16 v158, v20 offset:2048
	ds_store_b16 v158, v36 offset:3072
	ds_store_b16_d16_hi v159, v5
	ds_store_b16_d16_hi v159, v16 offset:1024
	ds_store_b16_d16_hi v159, v20 offset:2048
	ds_store_b16_d16_hi v159, v36 offset:3072
	v_lshlrev_b32_e32 v5, 4, v0
	v_cmp_o_f32_e64 s7, v50, v50
	v_xor_b32_e32 v44, 0x120, v141
	v_add3_u32 v42, v52, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v43.h, vcc_lo
	v_and_b32_e32 v5, 0x70, v5
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s7
	v_xor_b32_e32 v45, 0x1b0, v141
	v_add_nc_u32_e32 v160, 0, v44
	v_xor_b32_e32 v16, 0x240, v141
	v_lshl_or_b32 v162, v74, 7, v5
	v_xor_b32_e32 v20, 0x2d0, v141
	v_add_nc_u32_e32 v161, 0, v45
	v_xor_b32_e32 v36, 0x360, v141
	ds_store_b16 v160, v6
	ds_store_b16 v160, v17 offset:1024
	ds_store_b16 v160, v33 offset:2048
	ds_store_b16 v160, v41 offset:3072
	ds_store_b16_d16_hi v161, v6
	ds_store_b16_d16_hi v161, v17 offset:1024
	ds_store_b16_d16_hi v161, v33 offset:2048
	ds_store_b16_d16_hi v161, v41 offset:3072
	v_xor_b32_e32 v5, 0x3f0, v141
	v_lshl_or_b32 v6, v49, 6, v162
	v_cmp_o_f32_e64 s0, v52, v52
	v_add_nc_u32_e32 v163, 0, v16
	v_add_nc_u32_e32 v164, 0, v20
	v_dual_mov_b32 v20, v8 :: v_dual_add_nc_u32 v165, 0, v36
	v_add_nc_u32_e32 v166, 0, v5
	v_add_nc_u32_e32 v5, 0, v6
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s0
	ds_store_b16 v163, v7
	ds_store_b16 v163, v18 offset:1024
	ds_store_b16 v163, v34 offset:2048
	ds_store_b16 v163, v42 offset:3072
	ds_store_b16_d16_hi v164, v7
	ds_store_b16_d16_hi v164, v18 offset:1024
	ds_store_b16_d16_hi v164, v34 offset:2048
	ds_store_b16_d16_hi v164, v42 offset:3072
	v_xad_u32 v7, v6, 16, 0
	ds_store_b16 v165, v11
	ds_store_b16 v165, v19 offset:1024
	ds_store_b16 v165, v35 offset:2048
	ds_store_b16 v165, v43 offset:3072
	ds_store_b16_d16_hi v166, v11
	ds_store_b16_d16_hi v166, v19 offset:1024
	ds_store_b16_d16_hi v166, v35 offset:2048
	ds_store_b16_d16_hi v166, v43 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v18, v8
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[45:48], v7
	v_xad_u32 v5, v6, 32, 0
	v_xad_u32 v7, v6, 48, 0
	v_xad_u32 v11, v6, 64, 0
	v_xad_u32 v16, 0x50, v6, 0
	v_xad_u32 v17, 0x60, v6, 0
	v_xad_u32 v6, 0x70, v6, 0
	ds_load_b128 v[49:52], v5
	ds_load_b128 v[53:56], v7
	ds_load_b128 v[57:60], v11
	ds_load_b128 v[61:64], v16
	ds_load_b128 v[65:68], v17
	ds_load_b128 v[69:72], v6
	v_lshrrev_b32_e32 v156, 4, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[1:4]
	ds_store_b128 v9, v[12:15] offset:16
	ds_store_b128 v9, v[25:28] offset:32
	ds_store_b128 v9, v[29:32] offset:48
	ds_store_b128 v9, v[21:24] offset:64
	ds_store_b128 v9, v[37:40] offset:80
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
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	s_ashr_i32 s8, s42, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v9, v[88:91] offset:96
	ds_store_b128 v9, v[92:95] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v3, 0x5410 :: v_dual_and_b32 v2, 16, v0
	v_dual_mov_b32 v4, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v73
	.loc	1 167 13 is_stmt 1              ; attention_backward.py:167:13
	s_add_i32 s0, s35, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add3_u32 v167, s0, s35, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 1, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v168, v10
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s56, v1
	v_dual_cndmask_b32 v3, 0x1054, v3 :: v_dual_add_nc_u32 v176, 0, v85
	v_dual_cndmask_b32 v4, 0x3276, v4 :: v_dual_add_nc_u32 v177, 0, v86
	v_dual_mov_b32 v34, v9 :: v_dual_add_nc_u32 v169, s35, v167
	v_cmp_gt_i32_e64 s1, s56, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v3, 8, v3
	v_lshl_or_b32 v2, v4, 8, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v170, s35, v169
	v_xor_b32_e32 v3, 16, v162
	v_dual_mov_b32 v38, v9 :: v_dual_and_b32 v1, 0x540054, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v37, v9 :: v_dual_and_b32 v2, 0x760076, v2
	v_dual_mov_b32 v36, v9 :: v_dual_add_nc_u32 v171, s35, v170
	v_xor_b32_e32 v4, 32, v162
	v_xor_b32_e32 v5, 48, v162
	v_xor_b32_e32 v6, 64, v162
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v2, v2, 4, v2
	v_xor_b32_e32 v7, 0x50, v162
	v_xor_b32_e32 v8, 0x60, v162
	v_xor_b32_e32 v10, 0x70, v162
	v_dual_mov_b32 v35, v9 :: v_dual_add_nc_u32 v172, s35, v171
	v_dual_mov_b32 v40, v9 :: v_dual_and_b32 v173, 0x5040504, v1
	v_dual_mov_b32 v39, v9 :: v_dual_and_b32 v174, 0x7060706, v2
	v_lshl_add_u32 v175, v74, 1, 0
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v178, 0, v87
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v179, 0, v3
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v180, 0, v4
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v181, 0, v5
	v_dual_mov_b32 v29, v9 :: v_dual_add_nc_u32 v182, 0, v6
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v183, 0, v7
	v_dual_mov_b32 v31, v9 :: v_dual_add_nc_u32 v184, 0, v8
	v_dual_mov_b32 v32, v9 :: v_dual_add_nc_u32 v185, 0, v10
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, v9
	v_mov_b32_e32 v19, v9
	v_dual_mov_b32 v20, v9 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s30, s8, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s57, s23, s8
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
	v_bfe_i32 v10, v88, 0, 8
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v15.h, v14.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v14, v76
	v_cvt_f32_i32_e32 v76, v80
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v100.h, v12.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v88.l, v10.l
	v_bfe_i32 v10, v87, 0, 8
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v101.h, v11.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v11, v73
	v_cvt_f32_i32_e32 v12, v74
	v_cvt_f32_i32_e32 v73, v77
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v87.l, v10.l
	v_bfe_i32 v10, v86, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v74, v78
	v_mul_f32_e32 v78, v152, v12
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v99.h, v13.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v13, v75
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v86.l, v10.l
	v_bfe_i32 v10, v85, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v76, v152, v76
	v_cvt_f32_i32_e32 v75, v79
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v90.h, v89.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v103, 15, v86
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v85.l, v10.l
	v_bfe_i32 v10, v84, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v77, v152, v11
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v11.h, v86.l, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v89.h, v16.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v12.l, v85.l, 15
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v84.l, v10.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v80, v152, v14
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v14.h, 4, v87.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v10, v83, 0, 8
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v11.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v12.h, v84.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s8, 7, v12.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v109.l, v14.h, 15
	v_lshrrev_b16 v14.h, 4, v86.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v83.l, v10.l
	v_bfe_i32 v10, v82, 0, 8
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s9, 7, v12.h
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v12, -16, v103
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v110.l, v14.h, 15
	v_lshrrev_b16 v14.h, 4, v85.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v82.l, v10.l
	v_bfe_i32 v10, v81, 0, 8
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v12, v103, v12, s7
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v92.h, v91.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v111.l, v14.h, 15
	v_lshrrev_b16 v14.h, 4, v84.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v81.l, v10.l
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v10.l, 0
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v79, v152, v13 :: v_dual_and_b32 v106, 15, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v112.l, v14.h, 15
	v_lshrrev_b16 v14.h, 4, v83.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v89.l, v10.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v75, v152, v75 :: v_dual_and_b32 v108, 15, v81
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v11.l, v87.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v14.h, 15
	v_lshrrev_b16 v14.h, 4, v82.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v13.l, v83.l, 15
	v_and_b16 v13.h, v82.l, 15
	v_and_b16 v14.l, v81.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v91, 15, v87
	v_and_b32_e32 v104, 15, v85
	v_and_b32_e32 v105, 15, v84
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v187.l, v14.h, 15
	v_lshrrev_b16 v14.h, 4, v81.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v107, 15, v82
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v109.h, v10.l
	v_mov_b16_e32 v110.h, v10.l
	.loc	1 305 30 is_stmt 0              ; attention_backward.py:305:30
	v_and_b16 v188.l, v14.h, 15
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v11.l
	v_cmp_lt_u16_e64 s10, 7, v13.l
	v_cmp_lt_u16_e64 s11, 7, v13.h
	v_cmp_lt_u16_e64 s12, 7, v14.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v11, -16, v91
	v_or_b32_e32 v13, -16, v104
	v_or_b32_e32 v14, -16, v105
	v_or_b32_e32 v191, -16, v108
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v12, v12, v89
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v190, -16, v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v74, v152, v74 :: v_dual_cndmask_b32 v11, v91, v11
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v111.h, v10.l
	v_mov_b16_e32 v112.h, v10.l
	v_mov_b16_e64 v186.h, v10.l
	v_mov_b16_e64 v187.h, v10.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v189, -16, v106
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v13, v104, v13, s8
	v_cndmask_b32_e64 v14, v105, v14, s9
	v_cndmask_b32_e64 v103, v107, v190, s11
	v_cndmask_b32_e64 v104, v108, v191, s12
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v87.l
	v_cmp_gt_i16_e64 s7, 0, v86.l
	v_cmp_gt_i16_e64 s11, 0, v82.l
	v_cmp_gt_i16_e64 s12, 0, v81.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v109
	v_or_b32_e32 v82, -16, v110
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v10.h, v90.l
	v_mov_b16_e32 v90.l, v10.l
	v_mov_b16_e32 v16.h, v15.l
	v_mov_b16_e32 v15.l, v10.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v91, v106, v189, s10
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s8, 0, v85.l
	v_cmp_gt_i16_e64 s9, 0, v84.l
	v_cmp_gt_i16_e64 s10, 0, v83.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v83, -16, v111
	v_or_b32_e32 v84, -16, v112
	v_or_b32_e32 v85, -16, v186
	v_or_b32_e32 v86, -16, v187
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v82, v110, v82, s7
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v81, v109, v81, vcc_lo
	v_cndmask_b32_e64 v83, v111, v83, s8
	v_cndmask_b32_e64 v84, v112, v84, s9
	v_cndmask_b32_e64 v85, v186, v85, s10
	v_cndmask_b32_e64 v86, v187, v86, s11
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v82, v82
	v_dual_mul_f32 v11, v11, v90 :: v_dual_mul_f32 v14, v14, v15
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v16.l, v10.l
	v_mov_b16_e32 v99.l, v10.l
	v_mov_b16_e32 v100.l, v10.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_dual_mul_f32 v81, v81, v90 :: v_dual_mul_f32 v82, v82, v89
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v90, 0, v11, s0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v11.l, 4, v88.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v73, v152, v73
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v103, v103
	v_mul_f32_e32 v13, v13, v16
	v_dual_mul_f32 v16, v83, v16 :: v_dual_mul_f32 v15, v84, v15
	v_mul_f32_e32 v83, v91, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v85, v99 :: v_dual_mul_f32 v85, v103, v100
	v_mul_f32_e32 v86, v86, v100
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v91, 0, v81, s1
	v_cndmask_b32_e64 v99, 0, v82, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v81.l, v11.l, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v11.l, v88.l, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v81.h, v10.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v82, 15, v88
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v100, 0, v83, s0
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v88.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v11.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v11, -16, v81
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v83, -16, v82
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v188.h, v10.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s13, s33, 1
	s_or_b32 s19, s33, 2
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v11, v81, v11, vcc_lo
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v81, v82, v83, s7
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v87, -16, v188
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v83.h, v10.l
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s7, s33, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v87, v188, v87, s12
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s14, s33, 3
	s_or_b32 s20, s33, 4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v11, v10, v11
	v_mul_f32_e32 v81, v10, v81
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s15, s33, 5
	s_or_b32 s24, s33, 6
	s_or_b32 s16, s33, 7
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v82, 0, v81, s0
	v_mov_b16_e32 v81.h, v10.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s25, s33, 8
	s_or_b32 s17, s33, 9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v83.l, v11.h
	v_mov_b16_e32 v81.l, v82.h
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s26, s33, 10
	s_or_b32 s18, s33, 11
	s_or_b32 s27, s33, 12
	s_or_b32 s22, s33, 13
	s_or_b32 s28, s33, 14
	s_or_b32 s23, s33, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v101.l, v10.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v83, 1, v83
	v_and_b32_e32 v81, 1, v81
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s7, s30
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s8, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s7, s7, s58
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s7, s7, s35
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v89, v104, v101
	v_mul_f32_e32 v87, v87, v101
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v101, 0, v84, s1
	v_add3_u32 v84, v82, v81, 0x7fff
	v_add3_u32 v81, v11, v83, 0x7fff
	v_bfe_u32 v11, v90, 16, 1
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b16 v81.h, 0x7fff, v81.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_add3_u32 v11, v90, v11, 0x7fff
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v103, 0, v85, s0
	v_cndmask_b32_e64 v104, 0, v86, s1
	v_cndmask_b16 v81.l, 0x7fff, v84.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v97.h, v96.l
	v_mov_b16_e32 v96.l, v10.l
	v_mov_b16_e32 v96.h, v95.l
	v_mov_b16_e32 v95.h, v94.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v82.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v91, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v94.l, v10.l
	v_mov_b16_e32 v94.h, v93.l
	v_mov_b16_e32 v93.h, v92.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v11, v91, v11, 0x7fff
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v92.l, v10.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v90, s7, v172
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v105, 0, v87, s1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v102.l, v10.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v82.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v102.h, v98.l
	v_mov_b16_e32 v98.l, v10.l
	v_mov_b16_e32 v98.h, v97.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v11, v12, v11, 0x7fff
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v97.l, v10.l
	v_mov_b16_e32 v95.l, v10.l
	v_mov_b16_e32 v93.l, v10.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v12, v78, v98, -v157
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v83.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v12, v12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v11, v99, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v13, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v11, v13, v11, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v13, v79, v97, -v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v84.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v11, v16, v11, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v16, v74, v94, -v157
	v_fma_f32 v74, v76, v92, -v157
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v84.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v11, v14, v11, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v14, v80, v96, -v157
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v80, v74
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v74, 0, v12, s55
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_mov_b32 s55, s51
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v85.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v14, v14
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v78, 0, v16, s60
	.loc	1 351 21 is_stmt 1              ; attention_backward.py:351:21
	v_add_nc_u32_e32 v16, s7, v170
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v11, v15, v11, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v15, v73, v95, -v157
	v_fma_f32 v73, v75, v93, -v157
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v75, 0, v13, s65
	v_cndmask_b32_e64 v80, 0, v80, s61
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b16 v85.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v76, 0, v14, s54
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v14, s7, v167
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v89, 0, v89, s0
	v_add3_u32 v11, v100, v11, 0x7fff
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v79, v73
	v_exp_f32_e32 v15, v15
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s54, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v86.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v101, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_add3_u32 v11, v101, v11, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v79, 0, v79, s66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v86.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v103, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v103, v11, 0x7fff
	v_cndmask_b16 v87.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v104, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v104, v11, 0x7fff
	v_cndmask_b16 v87.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v89, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v89, v11, 0x7fff
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v89, s7, v171
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v88.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v105, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v105, v11, 0x7fff
	v_cndmask_b16 v88.h, 0x7fff, v11.h, vcc_lo
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v11, v77, v102, -v157
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s8
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v77, 0, v15, s63
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v15, s7, v169
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s13, s31
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v11, s62
	.loc	1 351 21 is_stmt 1              ; attention_backward.py:351:21
	v_add_nc_u32_e32 v11, s7, v0
	v_add_nc_u32_e32 v12, s35, v11
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v13, s35, v12
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v91, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	buffer_load_u8 v92, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v13, vcc_lo
	buffer_load_u8 v93, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v14, vcc_lo
	buffer_load_u8 v94, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v15, vcc_lo
	buffer_load_u8 v15, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v16, vcc_lo
	buffer_load_u8 v16, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v89, vcc_lo
	buffer_load_u8 v89, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v90, vcc_lo
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s14, s31
	s_cselect_b32 s7, -1, 0
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v90, v11, s[48:51], 0 offen
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s15, s31
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s16, s31
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s17, s31
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s18, s31
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s31
	s_cselect_b32 s23, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s33, s31
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(7)
	v_and_b16 v10.h, v91.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s11, 7, v10.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(6)
	v_and_b16 v11.l, v92.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v96, 15, v92
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v92.l, 4, v92.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v92.h, v10.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s12, 7, v11.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(5)
	v_and_b16 v11.h, v93.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v97, 15, v93
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v92, 0, v92, s7
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v93.l, 4, v93.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v93.h, v10.l
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s13, 7, v11.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(4)
	v_and_b16 v12.l, v94.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v11, -16, v96
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v98, 15, v94
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v94.h, v10.l
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_lshrrev_b16 v94.l, 4, v94.l
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s14, 7, v12.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(3)
	v_and_b16 v12.h, v15.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v99, 15, v15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v15.l, 4, v15.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v15.h, v10.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v93, 0, v93, s8
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s15, 7, v12.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(2)
	v_and_b16 v13.l, v16.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v100, 15, v16
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v16.l, 4, v16.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v16.h, v10.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v12, -16, v97
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s16, 7, v13.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	s_waitcnt vmcnt(1)
	v_and_b16 v13.h, v89.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v101, 15, v89
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v104, 0, v16, s21
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v107, -16, v100
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v103, 0, v15, s10
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s17, 7, v13.h
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v108, -16, v101
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v16, v96, v11, s12
	v_cndmask_b32_e64 v15, v97, v12, s13
	v_cndmask_b32_e64 v12, v100, v107, s16
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s12, 7, v92
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v11, v101, v108, s17
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s16, 7, v104
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v96, -16, v92
	v_or_b32_e32 v101, -16, v104
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v102, 15, v90
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v89.l, 4, v89.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v89.h, v10.l
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v96, v92, v96, s12
	v_cndmask_b32_e64 v92, v104, v101, s16
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v90.h, v10.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v14.l, v90.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v13, -16, v98
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v105, 0, v89, s22
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v95, 15, v91
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v91.l, 4, v91.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v91.h, v10.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v94, 0, v94, s9
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v99
	v_or_b32_e32 v10, -16, v95
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s18, 7, v14.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e32 v91, 0, v91, vcc_lo
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v14, v98, v13, s14
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s13, 7, v93
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v89, v95, v10, s11
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v98, -16, v93
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s11, 7, v91
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v95, -16, v91
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v13, v99, v106, s15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v94
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v99, -16, v94
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v90.l, 4, v90.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v97, v91, v95, s11
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v95, v93, v98, s13
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v94, v94, v99, s14
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v90, 0, v90, s23
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v109, -16, v102
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s15, 7, v103
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s31
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v10, v102, v109, s18
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s31
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s17, 7, v105
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s28, -1, 0
	.loc	1 378 26 is_stmt 0              ; attention_backward.py:378:26
	s_and_b32 s19, s3, s12
	s_and_b32 s12, s3, s10
	s_and_b32 s10, s3, s21
	.loc	1 376 24 is_stmt 1              ; attention_backward.py:376:24
	s_lshr_b32 s21, s33, 4
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s18, 7, v90
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s21, s21, s57
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v100, -16, v103
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s21, s21, s35
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v102, -16, v105
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v98, s21, v0, 1
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v106, -16, v90
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s24, s3, s11
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v93, v103, v100, s15
	v_cndmask_b32_e64 v91, v105, v102, s17
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v99, 0x80000000, v98, s24
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v90, v90, v106, s18
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s20, s3, vcc_lo
	s_and_b32 s18, s3, s7
	s_and_b32 s17, s3, s13
	s_and_b32 s16, s3, s8
	s_and_b32 s15, s3, s14
	s_and_b32 s14, s3, s9
	s_and_b32 s13, s3, s25
	s_and_b32 s11, s3, s26
	s_and_b32 s9, s3, s27
	s_and_b32 s8, s3, s22
	s_and_b32 s7, s3, s28
	s_and_b32 vcc_lo, s3, s23
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v99, v99, s[52:55], 0 offen
	v_cndmask_b32_e64 v100, 0x80000000, v98, s20
	v_cndmask_b32_e64 v101, 0x80000000, v98, s19
	v_cndmask_b32_e64 v102, 0x80000000, v98, s18
	v_cndmask_b32_e64 v103, 0x80000000, v98, s17
	v_cndmask_b32_e64 v104, 0x80000000, v98, s16
	v_cndmask_b32_e64 v105, 0x80000000, v98, s15
	v_cndmask_b32_e64 v106, 0x80000000, v98, s14
	v_cndmask_b32_e64 v107, 0x80000000, v98, s13
	v_cndmask_b32_e64 v108, 0x80000000, v98, s12
	v_cndmask_b32_e64 v109, 0x80000000, v98, s11
	v_cndmask_b32_e64 v110, 0x80000000, v98, s10
	v_cndmask_b32_e64 v111, 0x80000000, v98, s9
	v_cndmask_b32_e64 v112, 0x80000000, v98, s8
	v_cndmask_b32_e64 v186, 0x80000000, v98, s7
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_clause 0xe
	buffer_load_u16 v100, v100, s[52:55], 0 offen
	buffer_load_u16 v101, v101, s[52:55], 0 offen
	buffer_load_u16 v102, v102, s[52:55], 0 offen
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	buffer_load_u16 v104, v104, s[52:55], 0 offen
	buffer_load_u16 v105, v105, s[52:55], 0 offen
	buffer_load_u16 v98, v98, s[52:55], 0 offen
	buffer_load_u16 v106, v106, s[52:55], 0 offen
	buffer_load_u16 v107, v107, s[52:55], 0 offen
	buffer_load_u16 v108, v108, s[52:55], 0 offen
	buffer_load_u16 v109, v109, s[52:55], 0 offen
	buffer_load_u16 v110, v110, s[52:55], 0 offen
	buffer_load_u16 v111, v111, s[52:55], 0 offen
	buffer_load_u16 v112, v112, s[52:55], 0 offen
	buffer_load_u16 v186, v186, s[52:55], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s33, s33, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s33, s38
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v89, v89, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v97, v97, v100 :: v_dual_lshlrev_b32 v98, 16, v98
	v_mul_f32_e32 v96, v96, v102
	v_dual_mul_f32 v16, v16, v101 :: v_dual_mul_f32 v15, v15, v103
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v95, v95, v104 :: v_dual_lshlrev_b32 v186, 16, v186
	v_mul_f32_e32 v100, v12, v109
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v12, v96, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v101, v11, v111
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v11, v97, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v102, v10, v186
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v10, v89, 16, 1
	v_add3_u32 v12, v96, v12, 0x7fff
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v11, v97, v11, 0x7fff
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v99, v13, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v10, v89, v10, 0x7fff
	v_bfe_u32 v13, v95, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v14, v14, v105
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v13, v95, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v94, v94, v106 :: v_dual_mul_f32 v93, v93, v108
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v92, v92, v110
	v_mul_f32_e32 v90, v90, v98
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v11, v16, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v91, v91, v112
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v16, v92, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_bfe_u32 v89, v91, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v92, v16, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v89, v91, v89, 0x7fff
	v_add3_u32 v12, v15, v12, 0x7fff
	v_bfe_u32 v15, v93, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v15, v93, v15, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v14, v13, 0x7fff
	v_bfe_u32 v14, v94, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v94, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_cndmask_b16 v13.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v99, v14, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_cndmask_b16 v14.h, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v15, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v100, v15, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v101, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v101, v16, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_bfe_u32 v91, v90, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v102, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v91, v90, v91, 0x7fff
	v_add3_u32 v89, v102, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v89.l, 0x7fff, v89.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cndmask_b16 v89.h, 0x7fff, v91.h, vcc_lo
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	ds_store_b16 v158, v10
	ds_store_b16 v158, v14 offset:1024
	ds_store_b16_d16_hi v159, v10
	ds_store_b16_d16_hi v159, v14 offset:1024
	ds_store_b16 v160, v11
	ds_store_b16 v160, v15 offset:1024
	ds_store_b16_d16_hi v161, v11
	ds_store_b16_d16_hi v161, v15 offset:1024
	ds_store_b16 v163, v12
	ds_store_b16 v163, v16 offset:1024
	ds_store_b16_d16_hi v164, v12
	ds_store_b16_d16_hi v164, v16 offset:1024
	ds_store_b16 v165, v13
	ds_store_b16 v165, v89 offset:1024
	ds_store_b16_d16_hi v166, v13
	ds_store_b16_d16_hi v166, v89 offset:1024
	v_add_nc_u32_e32 v10, 0, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[89:92], v10
	ds_load_b128 v[93:96], v179
	ds_load_b128 v[97:100], v180
	ds_load_b128 v[101:104], v181
	ds_load_b128 v[105:108], v182
	ds_load_b128 v[109:112], v183
	ds_load_b128 v[186:189], v184
	ds_load_b128 v[190:193], v185
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v201, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v197, v12 :: v_dual_mov_b32 v198, v13
	v_dual_mov_b32 v199, v14 :: v_dual_mov_b32 v200, v15
	v_dual_mov_b32 v196, v11 :: v_dual_mov_b32 v195, v10
	v_mov_b32_e32 v194, v9
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[194:201], v[89:96], v[41:48], v[194:201]
	v_wmma_f32_16x16x16_bf16 v[194:201], v[97:104], v[49:56], v[194:201]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[105:112], v[57:64], v[194:201]
	v_wmma_f32_16x16x16_bf16 v[194:201], v[186:193], v[65:72], v[194:201]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v10, v194, v168
	v_sub_f32_e32 v11, v195, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v12, v196, v168
	v_sub_f32_e32 v13, v197, v168
	v_sub_f32_e32 v14, v198, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v10, v73, v10 :: v_dual_mul_f32 v11, v74, v11
	v_dual_mul_f32 v12, v75, v12 :: v_dual_mul_f32 v13, v76, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v15, v199, v168 :: v_dual_mul_f32 v10, s39, v10
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v11, s39, v11 :: v_dual_mul_f32 v12, s39, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v13, s39, v13 :: v_dual_mul_f32 v14, v77, v14
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v15, v78, v15 :: v_dual_sub_f32 v16, v200, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v14, s39, v14
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_add3_u32 v74, v10, v74, 0x7fff
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v89, v201, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v15, s39, v15 :: v_dual_mul_f32 v16, v79, v16
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cndmask_b16 v10.l, 0x7fff, v74.h, vcc_lo
	v_bfe_u32 v74, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v73, v80, v89 :: v_dual_mul_f32 v16, s39, v16
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v74, v11, v74, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s39, v73
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v10.h, 0x7fff, v74.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v13, v15, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v15, v13, 0x7fff
	v_add3_u32 v12, v14, v12, 0x7fff
	v_bfe_u32 v14, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v14, v73, v14, 0x7fff
	v_permlanex16_b32 v15, v11, s59, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v75, v15, v11, v173
	v_perm_b32 v76, v15, v11, v174
	v_add3_u32 v13, v16, v13, 0x7fff
	v_permlanex16_b32 v16, v12, s59, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_perm_b32 v77, v16, v12, v173
	v_perm_b32 v78, v16, v12, v174
	v_cndmask_b16 v13.h, 0x7fff, v14.h, vcc_lo
	v_permlanex16_b32 v14, v10, s59, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v80, v13, s59, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v14, v10, v173
	v_perm_b32 v74, v14, v10, v174
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add_nc_u32_e32 v10, v158, v141
	ds_store_2addr_stride64_b32 v10, v81, v82 offset1:1
	ds_store_2addr_stride64_b32 v10, v83, v84 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v10, v85, v86 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v10, v87, v88 offset0:6 offset1:7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v89, v175
	ds_load_u16_d16 v81, v175 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v89, v175 offset:128
	ds_load_u16_d16 v90, v175 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v90, v175 offset:384
	ds_load_u16_d16 v91, v175 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v91, v175 offset:640
	ds_load_u16_d16 v92, v175 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v92, v175 offset:896
	ds_load_u16_d16 v93, v175 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v93, v175 offset:1152
	ds_load_u16_d16 v94, v175 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v94, v175 offset:1408
	ds_load_u16_d16 v95, v175 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v95, v175 offset:1664
	ds_load_u16_d16 v96, v175 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v96, v175 offset:1920
	ds_load_u16_d16_hi v81, v175 offset:160
	ds_load_u16_d16 v82, v175 offset:288
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v82, v175 offset:416
	ds_load_u16_d16 v83, v175 offset:544
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v83, v175 offset:672
	ds_load_u16_d16 v84, v175 offset:800
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v84, v175 offset:928
	ds_load_u16_d16 v85, v175 offset:1056
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v85, v175 offset:1184
	ds_load_u16_d16 v86, v175 offset:1312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v86, v175 offset:1440
	ds_load_u16_d16 v87, v175 offset:1568
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v87, v175 offset:1696
	ds_load_u16_d16 v88, v175 offset:1824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v88, v175 offset:1952
	ds_load_u16_d16 v105, v175 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v105, v175 offset:192
	ds_load_u16_d16 v106, v175 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v106, v175 offset:448
	ds_load_u16_d16 v107, v175 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v107, v175 offset:704
	ds_load_u16_d16 v108, v175 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v108, v175 offset:960
	ds_load_u16_d16 v109, v175 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v109, v175 offset:1216
	ds_load_u16_d16 v110, v175 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v110, v175 offset:1472
	ds_load_u16_d16 v111, v175 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v111, v175 offset:1728
	ds_load_u16_d16 v112, v175 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v112, v175 offset:1984
	ds_load_u16_d16 v97, v175 offset:96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v97, v175 offset:224
	ds_load_u16_d16 v98, v175 offset:352
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v98, v175 offset:480
	ds_load_u16_d16 v99, v175 offset:608
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v99, v175 offset:736
	ds_load_u16_d16 v100, v175 offset:864
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v100, v175 offset:992
	ds_load_u16_d16 v101, v175 offset:1120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v101, v175 offset:1248
	ds_load_u16_d16 v102, v175 offset:1376
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v102, v175 offset:1504
	ds_load_u16_d16 v103, v175 offset:1632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v103, v175 offset:1760
	ds_load_u16_d16 v104, v175 offset:1888
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v79, v80, v13, v173
	v_perm_b32 v80, v80, v13, v174
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[33:40], v[89:96], v[73:80], v[33:40]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[73:80], v[17:24]
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v104, v175 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[73:80], v[1:8]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v10, s33, v126
	v_or_b32_e32 v11, s33, v127
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s67, s33, s64
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v12, s33, v128
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s15, s67, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v10
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v13, s33, v129
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s9, s31, v11
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v10, s15, v113
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v14, s33, v130
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s10, s31, v12
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v11, s15, v134
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v15, s33, v131
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s11, s31, v13
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v12, s15, v135
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s33, v132
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s7, s31, v14
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v13, s15, v114
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v73, s33, v133
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s8, s31, v15
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v14, s15, v136
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s12, s31, v16
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v15, s15, v115
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v73
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v16, s15, v116
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v73, s15, v117
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v99, s33, v149
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v100, s33, v150
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u8 v88, v10, s[40:43], 0 offen
	buffer_load_u8 v87, v11, s[40:43], 0 offen
	buffer_load_u8 v86, v12, s[40:43], 0 offen
	buffer_load_u8 v85, v13, s[40:43], 0 offen
	buffer_load_u8 v84, v14, s[40:43], 0 offen
	buffer_load_u8 v83, v15, s[40:43], 0 offen
	buffer_load_u8 v82, v16, s[40:43], 0 offen
	buffer_load_u8 v81, v73, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v80, v16
	v_dual_mov_b32 v76, v12 :: v_dual_mov_b32 v75, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v78, v14 :: v_dual_mov_b32 v77, v13
	v_dual_mov_b32 v79, v15 :: v_dual_mov_b32 v74, v10
	v_mov_b32_e32 v73, v9
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v101, s33, v148
	v_or_b32_e32 v102, s33, v147
	v_or_b32_e32 v103, s33, v146
	v_or_b32_e32 v10, s33, v145
	v_or_b32_e32 v104, s33, v144
	v_or_b32_e32 v105, s33, v143
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v99
	v_cmp_gt_i32_e64 s21, s31, v100
	v_cmp_gt_i32_e64 s22, s31, v101
	v_cmp_gt_i32_e64 s15, s31, v102
	v_cmp_gt_i32_e64 s16, s31, v103
	v_cmp_gt_i32_e64 s17, s31, v10
	v_cmp_gt_i32_e64 s18, s31, v104
	v_cmp_gt_i32_e64 s19, s31, v105
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
	ds_store_b8 v137, v88
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v87 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v86
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v85 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v84
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v83 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v82
	s_waitcnt vmcnt(0)
	ds_store_b8 v140, v81 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[89:90], v155
	ds_load_b64 v[91:92], v176
	ds_load_b64 v[93:94], v177
	ds_load_b64 v[11:12], v178
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[118:119], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[91:92], v[120:121], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[122:123], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[11:12], v[124:125], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s23, v100, v151
	v_cmp_le_i32_e64 s24, v101, v151
	v_cmp_le_i32_e64 s25, v102, v151
	v_cmp_le_i32_e64 s26, v103, v151
	v_cmp_le_i32_e64 s27, v10, v151
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s23, s23, s55
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v99, v151
	v_cmp_le_i32_e64 s28, v104, v151
	v_cmp_le_i32_e64 s29, v105, v151
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
	v_add_lshl_u32 v11, s67, v126, 1
	v_add_lshl_u32 v91, s67, v149, 1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_add_nc_u32_e32 v13, 4, v11
	v_add_nc_u32_e32 v14, 8, v11
	v_add_nc_u32_e32 v15, 12, v11
	v_cndmask_b32_e64 v12, 0x80000000, v11, s14
	v_add_nc_u32_e32 v16, 16, v11
	v_add_nc_u32_e32 v89, 20, v11
	v_add_nc_u32_e32 v90, 24, v11
	v_add_nc_u32_e32 v11, 28, v11
	v_add_nc_u32_e32 v95, 4, v91
	v_cndmask_b32_e64 v13, 0x80000000, v13, s9
	v_add_nc_u32_e32 v96, 8, v91
	v_cndmask_b32_e64 v14, 0x80000000, v14, s10
	v_cndmask_b32_e64 v15, 0x80000000, v15, s11
	v_cndmask_b32_e64 v92, 0x80000000, v16, s7
	v_cndmask_b32_e64 v93, 0x80000000, v89, s8
	v_cndmask_b32_e64 v11, 0x80000000, v11, s13
	v_cndmask_b32_e64 v94, 0x80000000, v90, s12
	s_clause 0x7
	buffer_load_u16 v90, v12, s[44:47], 0 offen
	buffer_load_u16 v89, v13, s[44:47], 0 offen
	buffer_load_u16 v16, v14, s[44:47], 0 offen
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	buffer_load_u16 v14, v92, s[44:47], 0 offen
	buffer_load_u16 v13, v93, s[44:47], 0 offen
	buffer_load_u16 v12, v94, s[44:47], 0 offen
	buffer_load_u16 v11, v11, s[44:47], 0 offen
	v_cndmask_b32_e64 v93, 0x80000000, v95, s21
	v_add_nc_u32_e32 v95, 12, v91
	v_cndmask_b32_e64 v92, 0x80000000, v91, s20
	v_cndmask_b32_e64 v94, 0x80000000, v96, s22
	v_add_nc_u32_e32 v96, 16, v91
	v_add_nc_u32_e32 v97, 20, v91
	v_add_nc_u32_e32 v98, 24, v91
	v_add_nc_u32_e32 v91, 28, v91
	v_cndmask_b32_e64 v95, 0x80000000, v95, s15
	v_cndmask_b32_e64 v106, 0x80000000, v96, s16
	v_cndmask_b32_e64 v107, 0x80000000, v97, s17
	v_cndmask_b32_e64 v108, 0x80000000, v98, s18
	v_cndmask_b32_e64 v91, 0x80000000, v91, s19
	s_clause 0x7
	buffer_load_u16 v98, v92, s[44:47], 0 offen
	buffer_load_u16 v97, v93, s[44:47], 0 offen
	buffer_load_u16 v96, v94, s[44:47], 0 offen
	buffer_load_u16 v95, v95, s[44:47], 0 offen
	buffer_load_u16 v94, v106, s[44:47], 0 offen
	buffer_load_u16 v93, v107, s[44:47], 0 offen
	buffer_load_u16 v92, v108, s[44:47], 0 offen
	buffer_load_u16 v91, v91, s[44:47], 0 offen
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v99, v153
	v_cmp_ge_i32_e64 s7, v100, v153
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s14, v99, v154
	v_cmp_le_i32_e64 s15, v100, v154
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s8, v101, v153
	v_cmp_ge_i32_e64 s9, v102, v153
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s16, v101, v154
	v_cmp_le_i32_e64 s17, v102, v154
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s10, v103, v153
	v_cmp_ge_i32_e64 s11, v10, v153
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s18, v103, v154
	v_cmp_le_i32_e64 s19, v10, v154
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s7, s7, s15
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s12, v104, v153
	v_cmp_ge_i32_e64 s13, v105, v153
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v104, v154
	v_cmp_le_i32_e64 s21, v105, v154
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
	v_mul_lo_u32 v56, v142, s56
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s56, v149
	v_cmp_gt_i32_e64 s2, s56, v150
	v_cmp_gt_i32_e64 s3, s56, v148
	v_cmp_gt_i32_e64 s5, s56, v147
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v57, v56, v149, 2
	v_add_lshl_u32 v58, v56, v150, 2
	v_add_lshl_u32 v59, v56, v148, 2
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s56, v146
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s7, s56, v145
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v33, v57, s[36:39], 0 offen
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	v_add_lshl_u32 v33, v56, v147, 2
	s_clause 0x1
	buffer_store_b32 v34, v58, s[36:39], 0 offen
	buffer_store_b32 v35, v59, s[36:39], 0 offen
	v_add_lshl_u32 v34, v56, v146, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s5
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s56, v144
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v35, v56, v145, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v55, 16, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v57, v56, v144, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v54, 18, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s56, v143
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v53, 20, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s56, v55
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x1
	buffer_store_b32 v36, v33, s[36:39], 0 offen
	buffer_store_b32 v37, v34, s[36:39], 0 offen
	v_add_lshl_u32 v33, v56, v143, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s56, v54
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v34, v56, v55, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s56, v53
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v38, v35, s[36:39], 0 offen
	buffer_store_b32 v39, v57, s[36:39], 0 offen
	v_add_lshl_u32 v35, v56, v54, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v52, 22, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v36, v56, v53, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v51, 24, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v50, 26, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s56, v52
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v49, 28, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s56, v51
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v40, v33, s[36:39], 0 offen
	buffer_store_b32 v25, v34, s[36:39], 0 offen
	v_add_lshl_u32 v25, v56, v52, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s56, v50
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v26, v35, s[36:39], 0 offen
	buffer_store_b32 v27, v36, s[36:39], 0 offen
	v_add_lshl_u32 v26, v56, v51, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v48, 30, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s56, v49
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v56, v50, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v47, 32, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v33, v56, v49, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v46, 34, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s56, v48
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v45, 36, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s56, v47
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v56, v48, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s56, v46
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v26, v56, v47, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s56, v45
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v30, v27, s[36:39], 0 offen
	buffer_store_b32 v31, v33, s[36:39], 0 offen
	v_add_lshl_u32 v27, v56, v46, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v44, 38, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v28, v56, v45, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v43, 40, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v42, 42, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s56, v44
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v41, 44, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s56, v43
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[36:39], 0 offen
	buffer_store_b32 v17, v26, s[36:39], 0 offen
	v_add_lshl_u32 v17, v56, v44, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 46, v149
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s56, v42
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v18, v27, s[36:39], 0 offen
	buffer_store_b32 v19, v28, s[36:39], 0 offen
	v_add_lshl_u32 v18, v56, v43, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 48, v149
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s56, v41
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v56, v42, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 50, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s56, v16
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v56, v41, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 52, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s56, v15
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v56, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s56, v14
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v56, v15, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s56, v13
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v56, v14, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 54, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v56, v13, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 56, v149
	v_or_b32_e32 v9, 60, v149
	v_or_b32_e32 v10, 58, v149
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v156
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s56, v12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s30, s56, v11
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x5
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v25, s[36:39], 0 offen
	buffer_store_b32 v24, v16, s[36:39], 0 offen
	buffer_store_b32 v1, v15, s[36:39], 0 offen
	v_add_lshl_u32 v1, v56, v12, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s56, v10
	v_cmp_gt_i32_e32 vcc_lo, s56, v9
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v2, v14, s[36:39], 0 offen
	buffer_store_b32 v3, v13, s[36:39], 0 offen
	v_add_lshl_u32 v2, v56, v11, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s56, v0
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v56, v10, 2
	v_add_lshl_u32 v9, v56, v9, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v56, v0, 2
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
.Ltmp220:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 202
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21012
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
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
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
