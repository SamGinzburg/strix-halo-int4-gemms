	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x94
	s_load_b128 s[24:27], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x74
	s_load_b32 s38, s[0:1], 0x7c
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s34, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s17, -1, 0
.Ltmp0:
	.loc	1 123 34 prologue_end           ; attention_backward.py:123:34
	s_abs_i32 s4, s24
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s19, s2, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s5
	s_xor_b32 s5, s3, s24
	s_mul_i32 s6, s2, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s12, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s12, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s25
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s12, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s16, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s13, s24, s25
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s16, s24
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s13, s13, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s21, s3, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s7
	s_mul_hi_u32 s12, s7, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s12
	s_mul_hi_u32 s2, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s2, s6
	s_add_i32 s5, s2, 1
	s_sub_i32 s4, s4, s7
	s_sub_i32 s7, s4, s6
	s_cmp_ge_u32 s4, s6
	s_cselect_b32 s2, s5, s2
	s_cselect_b32 s4, s7, s4
	s_add_i32 s5, s2, 1
	s_cmp_ge_u32 s4, s6
	s_cselect_b32 s2, s5, s2
	.loc	1 123 19 is_stmt 0              ; attention_backward.py:123:19
	s_abs_i32 s18, s21
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s13
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s19, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s22, s2, s13
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s19, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s20, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s19, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s15, s20
	s_sub_i32 s43, 0, s20
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s19, 4
	s_or_b32 s12, s19, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s15
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s14, s19, 6
	s_or_b32 s2, s19, 7
	s_or_b32 s13, s19, 8
	s_or_b32 s24, s19, 9
	s_or_b32 s28, s19, 10
	s_or_b32 s29, s19, 11
	s_or_b32 s15, s19, 12
	s_or_b32 s30, s19, 13
	s_or_b32 s31, s19, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s23, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s35, s19, 15
	s_or_b32 s36, s19, 16
	s_or_b32 s37, s19, 17
	s_or_b32 s39, s19, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s23, s23, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s40, s19, 19
	s_or_b32 s41, s19, 20
	s_or_b32 s42, s19, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s23, s23
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s65, s19, 22
	s_or_b32 s66, s19, 23
	s_or_b32 s67, s19, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s43, s43, s23
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s19, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s43, s23, s43
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s69, s19, 26
	s_or_b32 s70, s19, 27
	s_or_b32 s71, s19, 28
	s_or_b32 s72, s19, 29
	s_or_b32 s73, s19, 30
	s_or_b32 s74, s19, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s23, s23, s43
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s19, s26
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s4, s26
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s5, s26
	s_load_b64 s[4:5], s[0:1], 0x0
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s6, s26
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s7, s26
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s12, s26
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s14, s26
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s2, s26
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s13, s26
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s24, s26
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s24, s3, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s28, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s38, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s29, s26
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s15, s26
	s_load_b128 s[12:15], s[0:1], 0x38
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s30, s26
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s31, s26
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s35, s26
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s36, s26
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s37, s26
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s39, s26
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s40, s26
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s41, s26
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s65, s26
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s66, s26
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s67, s26
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s68, s26
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s69, s26
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s70, s26
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s71, s26
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s72, s26
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s73, s26
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s74, s26
	s_cselect_b32 s28, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s24, s24, s19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s35, s24, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s35, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s33, v1
	v_mad_u64_u32 v[2:3], null, s33, 17, v[1:2]
	v_add_nc_u32_e32 v3, s33, v4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s33, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v7, s33, v3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v5, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s61, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_lshl_add_u32 v1, s33, 5, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v9, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v11, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v6
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s33, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s33, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v12, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s33, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v13, 0x80000000, v6, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s33, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v14, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v23, 1, v14
	v_lshlrev_b32_e32 v1, 1, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s33, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s33, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s33, v8
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v1 :: v_dual_lshlrev_b32 v20, 1, v10
	v_lshlrev_b32_e32 v1, 1, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s33, v10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v22, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_load_u16 v10, v5, s[4:7], 0 offen
	buffer_load_u16 v8, v4, s[4:7], 0 offen
	buffer_load_u16 v6, v3, s[4:7], 0 offen
	buffer_load_u16 v4, v7, s[4:7], 0 offen
	buffer_load_u16 v3, v13, s[4:7], 0 offen
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v1, v19, s[4:7], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s33, v18
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x6
	buffer_load_u16 v14, v9, s[4:7], 0 offen
	buffer_load_u16 v13, v11, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v11, v15, s[4:7], 0 offen
	buffer_load_u16 v9, v16, s[4:7], 0 offen
	buffer_load_u16 v7, v17, s[4:7], 0 offen
	buffer_load_u16 v5, v22, s[4:7], 0 offen
	v_lshlrev_b32_e32 v15, 1, v21
	v_lshlrev_b32_e32 v18, 1, v18
	v_cndmask_b32_e32 v26, 0x80000000, v20, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s33, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s33, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v28, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s63, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s33, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s33, v16
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s62, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v20
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v23, 0x80000000, v19 :: v_dual_lshlrev_b32 v16, 1, v16
	v_lshlrev_b32_e32 v19, 1, v20
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s33, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s33, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v25, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 1, v22
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s33, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v29, s33, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v31, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v27
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v27, 1, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v32, 0x80000000, v20 :: v_dual_lshlrev_b32 v33, 1, v29
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v34, v29, s33, 1
	s_clause 0x7
	buffer_load_u16 v19, v17, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	buffer_load_u16 v17, v16, s[4:7], 0 offen
	buffer_load_u16 v16, v21, s[4:7], 0 offen
	buffer_load_u16 v29, v23, s[4:7], 0 offen
	buffer_load_u16 v23, v25, s[4:7], 0 offen
	buffer_load_u16 v21, v30, s[4:7], 0 offen
	buffer_load_u16 v20, v24, s[4:7], 0 offen
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v22
	v_add_lshl_u32 v35, v22, s33, 1
	s_clause 0x1
	buffer_load_u16 v24, v31, s[4:7], 0 offen
	buffer_load_u16 v22, v32, s[4:7], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v33, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v30, v25, s[4:7], 0 offen
	buffer_load_u16 v25, v31, s[4:7], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v34, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v33, 0x80000000, v35, vcc_lo
	s_clause 0x4
	buffer_load_u16 v31, v27, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v32, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v32, v33, s[4:7], 0 offen
	v_lshlrev_b32_e32 v33, 1, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	s_and_b32 s4, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v145, 0, v33
	v_xor_b32_e32 v35, 0x90, v33
	v_xor_b32_e32 v36, 0x120, v33
	v_xor_b32_e32 v37, 0x1b0, v33
	v_xor_b32_e32 v38, 0x240, v33
	v_xor_b32_e32 v39, 0x2d0, v33
	v_xor_b32_e32 v40, 0x360, v33
	v_xor_b32_e32 v41, 0x3f0, v33
	v_add_nc_u32_e32 v146, 0, v35
	v_add_nc_u32_e32 v147, 0, v36
	v_add_nc_u32_e32 v148, 0, v37
	v_add_nc_u32_e32 v149, 0, v38
	v_add_nc_u32_e32 v151, 0, v40
	v_add_nc_u32_e32 v152, 0, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(25)
	v_mad_u64_u32 v[33:34], null, s24, s38, v[0:1]
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v34, s38, v33
	v_lshl_add_u32 v35, s38, 3, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v150, 0, v39
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_lshlrev_b32 v39, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v65, 0x80000000, v33, vcc_lo
	v_lshlrev_b32_e32 v33, 2, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v67, 0x80000000, v33, vcc_lo
	v_lshlrev_b32_e32 v33, 2, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v68, 0x80000000, v33 :: v_dual_lshlrev_b32 v33, 2, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v66, 0x80000000, v34, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v46, 0x80000000, v42, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v70, 0x80000000, v33, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v45, 0x80000000, v43, s4
	v_lshlrev_b32_e32 v43, 1, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v41
	v_cndmask_b32_e64 v69, 0x80000000, v34, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s38, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	v_cndmask_b32_e64 v47, 0x80000000, v43, s4
	v_lshlrev_b32_e32 v43, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v38
	v_cndmask_b32_e64 v71, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v48, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v41
	v_cndmask_b32_e64 v52, 0x80000000, v43, s4
	v_lshlrev_b32_e32 v43, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v72, 0x80000000, v33, s4
	v_lshlrev_b32_e32 v33, 2, v41
	v_cndmask_b32_e32 v73, 0x80000000, v35, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	s_and_b32 s4, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v53, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v38
	v_cndmask_b32_e64 v54, 0x80000000, v43, s4
	v_lshlrev_b32_e32 v43, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	v_cndmask_b32_e32 v82, 0x80000000, v33, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s38, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	v_cndmask_b32_e64 v83, 0x80000000, v34, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	s_and_b32 s4, s54, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v34, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v41
	v_cndmask_b32_e64 v55, 0x80000000, v43, s4
	v_lshlrev_b32_e32 v43, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v98, 0x80000000, v37, s4
	v_lshlrev_b32_e32 v35, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v84, 0x80000000, v38 :: v_dual_lshlrev_b32 v41, 2, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	s_and_b32 s4, s52, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v38, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	v_cndmask_b32_e64 v99, 0x80000000, v35, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v85, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	v_cndmask_b32_e32 v100, 0x80000000, v33, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_store_b16 v145, v10
	s_waitcnt vmcnt(17)
	ds_store_b16 v145, v19 offset:1024
	ds_store_b16 v145, v14 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v145, v15 offset:3072
	ds_store_b16 v146, v8
	ds_store_b16 v146, v18 offset:1024
	ds_store_b16 v146, v13 offset:2048
	ds_store_b16 v146, v29 offset:3072
	ds_store_b16 v147, v6
	ds_store_b16 v147, v17 offset:1024
	ds_store_b16 v147, v12 offset:2048
	ds_store_b16 v147, v23 offset:3072
	ds_store_b16 v148, v4
	ds_store_b16 v148, v16 offset:1024
	ds_store_b16 v148, v11 offset:2048
	ds_store_b16 v148, v21 offset:3072
	ds_store_b16 v149, v3
	ds_store_b16 v149, v24 offset:1024
	ds_store_b16 v149, v9 offset:2048
	ds_store_b16 v149, v20 offset:3072
	ds_store_b16 v150, v2
	ds_store_b16 v150, v22 offset:1024
	ds_store_b16 v150, v7 offset:2048
	ds_store_b16 v150, v30 offset:3072
	ds_store_b16 v151, v1
	ds_store_b16 v151, v25 offset:1024
	ds_store_b16 v151, v5 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v151, v31 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v152, v26
	s_waitcnt vmcnt(2)
	ds_store_b16 v152, v27 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v152, v28 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v32 offset:3072
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v57, 0x80000000, v41, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v75, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v58, 0x80000000, v42, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v76, 0x80000000, v35, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v77, 0x80000000, v33, vcc_lo
	v_lshlrev_b32_e32 v33, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v59, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v78, 0x80000000, v33 :: v_dual_lshlrev_b32 v41, 1, v35
	v_lshlrev_b32_e32 v33, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v60, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	v_cndmask_b32_e32 v101, 0x80000000, v33, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v102, 0x80000000, v37 :: v_dual_lshlrev_b32 v35, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v80, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v81, 0x80000000, v41 :: v_dual_lshlrev_b32 v2, 6, v0
	v_lshlrev_b32_e32 v41, 1, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v103, 0x80000000, v35, vcc_lo
	v_lshlrev_b32_e32 v33, 2, v33
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	v_cndmask_b32_e32 v105, 0x80000000, v33, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v86, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v90, 0x80000000, v37 :: v_dual_lshlrev_b32 v41, 1, v35
	v_lshlrev_b32_e32 v35, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v61, 0x80000000, v42 :: v_dual_lshlrev_b32 v42, 1, v33
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s39, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	v_cndmask_b32_e32 v91, 0x80000000, v35, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v62, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s37, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v93, 0x80000000, v33, vcc_lo
	v_lshlrev_b32_e32 v33, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v63, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v94, 0x80000000, v33 :: v_dual_lshlrev_b32 v33, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v64, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	v_cndmask_b32_e32 v106, 0x80000000, v33, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v87, 0x80000000, v42 :: v_dual_lshlrev_b32 v42, 1, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v108, 0x80000000, v37 :: v_dual_lshlrev_b32 v35, 2, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v33
	v_cndmask_b32_e32 v88, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s29, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v56, 0x80000000, v43, s4
	v_cndmask_b32_e32 v89, 0x80000000, v42, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v109, 0x80000000, v35, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s4, s12
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v92, 2, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v33, 0x80000000, v37, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v41, v36, s[4:7], 0 offen
	buffer_load_u16 v42, v39, s[4:7], 0 offen
	buffer_load_u16 v43, v44, s[4:7], 0 offen
	buffer_load_u16 v44, v46, s[4:7], 0 offen
	buffer_load_u16 v49, v40, s[4:7], 0 offen
	buffer_load_u16 v50, v45, s[4:7], 0 offen
	buffer_load_u16 v51, v47, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v45, v48, s[4:7], 0 offen
	buffer_load_u16 v46, v53, s[4:7], 0 offen
	buffer_load_u16 v47, v34, s[4:7], 0 offen
	buffer_load_u16 v48, v38, s[4:7], 0 offen
	buffer_load_u16 v53, v54, s[4:7], 0 offen
	buffer_load_u16 v54, v55, s[4:7], 0 offen
	buffer_load_u16 v55, v56, s[4:7], 0 offen
	buffer_load_u16 v56, v74, s[4:7], 0 offen
	buffer_load_u16 v40, v79, s[4:7], 0 offen
	buffer_load_u16 v39, v80, s[4:7], 0 offen
	buffer_load_u16 v38, v81, s[4:7], 0 offen
	buffer_load_u16 v37, v86, s[4:7], 0 offen
	buffer_load_u16 v36, v87, s[4:7], 0 offen
	buffer_load_u16 v35, v88, s[4:7], 0 offen
	buffer_load_u16 v34, v89, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	v_cndmask_b32_e32 v1, 0x80000000, v92, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v97, v65, s[4:7], 0 offen
	buffer_load_b32 v96, v67, s[4:7], 0 offen
	buffer_load_b32 v95, v68, s[4:7], 0 offen
	buffer_load_b32 v92, v70, s[4:7], 0 offen
	buffer_load_b32 v89, v66, s[4:7], 0 offen
	buffer_load_b32 v88, v69, s[4:7], 0 offen
	buffer_load_b32 v87, v71, s[4:7], 0 offen
	buffer_load_b32 v86, v72, s[4:7], 0 offen
	buffer_load_b32 v81, v75, s[4:7], 0 offen
	buffer_load_b32 v80, v76, s[4:7], 0 offen
	buffer_load_b32 v79, v77, s[4:7], 0 offen
	buffer_load_b32 v78, v78, s[4:7], 0 offen
	buffer_load_b32 v77, v90, s[4:7], 0 offen
	buffer_load_b32 v76, v91, s[4:7], 0 offen
	buffer_load_b32 v75, v93, s[4:7], 0 offen
	buffer_load_b32 v74, v94, s[4:7], 0 offen
	buffer_load_b32 v94, v73, s[4:7], 0 offen
	buffer_load_b32 v93, v82, s[4:7], 0 offen
	buffer_load_b32 v91, v84, s[4:7], 0 offen
	buffer_load_b32 v90, v85, s[4:7], 0 offen
	buffer_load_b32 v85, v83, s[4:7], 0 offen
	buffer_load_b32 v84, v98, s[4:7], 0 offen
	buffer_load_b32 v83, v99, s[4:7], 0 offen
	buffer_load_b32 v82, v100, s[4:7], 0 offen
	buffer_load_b32 v107, v101, s[4:7], 0 offen
	buffer_load_b32 v104, v102, s[4:7], 0 offen
	buffer_load_b32 v103, v103, s[4:7], 0 offen
	buffer_load_b32 v102, v105, s[4:7], 0 offen
	buffer_load_b32 v101, v106, s[4:7], 0 offen
	buffer_load_b32 v100, v108, s[4:7], 0 offen
	buffer_load_b32 v99, v109, s[4:7], 0 offen
	buffer_load_b32 v98, v1, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v105, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v106, 15, v0
	v_and_b32_e32 v108, 32, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_b32_e32 v1, 0x70, v105
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v117, 1, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v153, v106, 7, v1
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v1, 64, v2
	v_add_nc_u32_e32 v66, 0, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v108, 6, v153
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v118, 0, v1
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp6:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v6, 0x50, v2
	v_add_nc_u32_e32 v109, 0, v2
	v_xor_b32_e32 v1, 16, v2
	v_xor_b32_e32 v3, 32, v2
	v_xor_b32_e32 v4, 48, v2
	v_xor_b32_e32 v5, 64, v2
	v_xor_b32_e32 v7, 0x60, v2
	v_xor_b32_e32 v2, 0x70, v2
	v_add_nc_u32_e32 v111, 0, v3
	v_add_nc_u32_e32 v112, 0, v4
	v_add_nc_u32_e32 v113, 0, v5
	v_add_nc_u32_e32 v115, 0, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v41, 16, v41
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(31)
	v_mul_f32_e32 v65, v97, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v68, v95, v43 :: v_dual_lshlrev_b32 v57, 16, v57
	s_waitcnt vmcnt(27)
	v_mul_f32_e32 v70, v89, v49
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(25)
	v_mul_f32_e32 v72, v87, v51
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v61, 16, v61
	v_lshlrev_b32_e32 v63, 16, v63
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v68, v95, v43
.Ltmp13:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v125, v75, v63 :: v_dual_fmac_f32 v70, v89, v49
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v72, v87, v51 :: v_dual_lshlrev_b32 v45, 16, v45
.Ltmp15:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(13)
	v_mul_f32_e32 v129, v91, v47
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v125, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v123, v77, v61
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v36, 16, v36
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v129, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v125, v75, v63
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v136, v104, v39
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v138, v102, v37 :: v_dual_mul_f32 v139, v101, v36
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v129, v91, v47
	v_add_f32_dpp v47, v125, v125 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v136, v136 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v138, v138 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v139, v139 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v50, 16, v50
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v136, v104, v39
	v_add_f32_dpp v39, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v139, v101, v36
.Ltmp25:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v71, v88, v50
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 16, v38
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 16, v35
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v138, v102, v37 :: v_dual_mul_f32 v137, v103, v38
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v71, v88, v50
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v140, v100, v35
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v137, v137 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 16, v44
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v127, v94, v45
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v140, v140 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v137, v103, v38
	v_add_f32_dpp v38, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v39, -1, -1 op_sel:[1,0]
.Ltmp40:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v64, 16, v64
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v140, v100, v35
	v_add_f32_dpp v35, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v39, v39, v71 :: v_dual_mul_f32 v126, v74, v64
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v123, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v114, 0, v6
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v127, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v126, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v123, v77, v61 :: v_dual_add_nc_u32 v116, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v126, v74, v64 :: v_dual_lshlrev_b32 v53, 16, v53
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v37, -1, -1 op_sel:[1,0]
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v127, v94, v45 :: v_dual_lshlrev_b32 v62, 16, v62
	v_add_f32_dpp v45, v123, v123 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v129, v129 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v37, v37, v64 :: v_dual_mul_f32 v124, v76, v62
.Ltmp49:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v69, v92, v44
	v_mul_f32_e32 v131, v85, v53
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v124, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v131, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v124, v76, v62
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v62, v35, -1, -1 op_sel:[1,0]
.Ltmp54:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v34, 16, v34
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v131, v85, v53 :: v_dual_lshlrev_b32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v35, v35, v62 :: v_dual_mul_f32 v122, v78, v60
.Ltmp56:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v141, v99, v34
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v69, v92, v44
.Ltmp58:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v119, v81, v57
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v131, v131 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v122, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v141, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v52, 16, v52
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v119, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v122, v78, v60 :: v_dual_fmac_f32 v141, v99, v34
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v73, v86, v52
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v33, 16, v33
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v119, v81, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v44, v122, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v45, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v48, 16, v48
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v142, v98, v33 :: v_dual_add_f32 v45, v45, v122
	v_dual_mul_f32 v130, v90, v48 :: v_dual_fmac_f32 v65, v97, v41
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v73, v86, v52
	v_add_f32_dpp v41, v119, v119 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v127, v127 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v130, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v142, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v138, v138 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v130, v90, v48
	v_fmac_f32_e32 v142, v98, v33
	v_add_f32_dpp v33, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v130, v130 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v130, v53, -1, -1 op_sel:[1,0]
.Ltmp75:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 16, v40
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v126, v126 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v126, v49, -1, -1 op_sel:[1,0]
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v53, v130
.Ltmp79:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v135, v107, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v56, 16, v56
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v59, 16, v59
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v135, v135 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v49, v126 :: v_dual_add_nc_u32 v110, 0, v1
.Ltmp84:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v134, v82, v56
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v135, v107, v40
	v_add_f32_dpp v40, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v73, v41, -1, -1 op_sel:[1,0]
.Ltmp87:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v46, 16, v46
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v60, v33, -1, -1 op_sel:[1,0]
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v135, v135 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v41, v41, v73 :: v_dual_lshlrev_b32 v58, 16, v58
.Ltmp90:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v128, v93, v46 :: v_dual_mul_f32 v121, v79, v59
	v_mul_f32_e32 v67, v96, v42
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v134, v134 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v128, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v60 :: v_dual_mul_f32 v120, v80, v58
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v128, v93, v46
	v_fmac_f32_e32 v134, v82, v56
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v121, v79, v59
	v_fmac_f32_e32 v67, v96, v42
	v_add_f32_dpp v50, v128, v128 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v134, v134 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v128, v51, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v134, v57, -1, -1 op_sel:[1,0]
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v120, v80, v58
	v_add_f32_dpp v43, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v124, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v51, v51, v128
	v_add_f32_dpp v34, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v71, v57, v134
	v_add_f32_dpp v36, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v55, 16, v55
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v43, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v54, 16, v54
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v61, v34, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v63, v36, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v65, v38, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v72, v40, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v119, v42, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v121, v44, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v133, v83, v55
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v123, v46, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v124, v47, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v125, v48, -1, -1 op_sel:[1,0]
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v43, v120 :: v_dual_mul_f32 v132, v84, v54
	v_add_f32_e32 v34, v34, v61
	v_add_f32_e32 v36, v36, v63
	v_add_f32_e32 v38, v38, v65
	v_add_f32_e32 v40, v40, v72
	v_add_f32_e32 v42, v42, v119
	v_add_f32_e32 v44, v44, v121
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v132, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v133, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v46, v46, v123 :: v_dual_add_f32 v47, v47, v124
	v_add_f32_e32 v48, v48, v125
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v33, 31
	v_readlane_b32 s5, v34, 31
	v_readlane_b32 s6, v35, 31
	v_readlane_b32 s7, v36, 31
	v_readlane_b32 s12, v37, 31
	v_readlane_b32 s13, v38, 31
	v_readlane_b32 s14, v39, 31
	v_readlane_b32 s15, v40, 31
	v_readlane_b32 s28, v41, 31
	v_readlane_b32 s29, v42, 31
	v_readlane_b32 s30, v43, 31
	v_readlane_b32 s31, v44, 31
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v132, v84, v54 :: v_dual_fmac_f32 v133, v83, v55
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v45, 31
	v_readlane_b32 s37, v46, 31
	v_readlane_b32 s39, v47, 31
	v_readlane_b32 s40, v48, 31
	v_dual_mov_b32 v33, s4 :: v_dual_mov_b32 v34, s5
	v_dual_mov_b32 v35, s6 :: v_dual_mov_b32 v36, s7
	v_dual_mov_b32 v37, s12 :: v_dual_mov_b32 v38, s13
	v_dual_mov_b32 v39, s14 :: v_dual_mov_b32 v40, s15
	v_dual_mov_b32 v41, s28 :: v_dual_mov_b32 v42, s29
	v_dual_mov_b32 v43, s30 :: v_dual_mov_b32 v44, s31
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v132, v132 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v133, v133 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v45, s36 :: v_dual_mov_b32 v46, s37
	v_dual_mov_b32 v47, s39 :: v_dual_mov_b32 v48, s40
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v136, v136 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v137, v137 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp117:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v109
	ds_load_b128 v[5:8], v110
	ds_load_b128 v[9:12], v111
	ds_load_b128 v[13:16], v112
	ds_load_b128 v[17:20], v113
	ds_load_b128 v[21:24], v114
	ds_load_b128 v[25:28], v115
	ds_load_b128 v[29:32], v116
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v139, v139 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v140, v140 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v141, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_store_b128 v66, v[33:36]
	ds_store_b128 v66, v[37:40] offset:16
	ds_store_b128 v66, v[41:44] offset:32
	ds_store_b128 v66, v[45:48] offset:48
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v142, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v127, v50, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v129, v52, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v131, v54, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v132, v55, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v133, v56, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v135, v58, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v136, v59, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v137, v70, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v40, v37, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v41, v33, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v50, v50, v127
	v_add_f32_e32 v52, v52, v129
	v_dual_add_f32 v54, v54, v131 :: v_dual_add_f32 v55, v55, v132
	v_add_f32_e32 v56, v56, v133
	v_dual_add_f32 v72, v58, v135 :: v_dual_add_f32 v73, v59, v136
	v_dual_add_f32 v34, v70, v137 :: v_dual_add_f32 v35, v35, v38
	v_dual_add_f32 v36, v36, v39 :: v_dual_add_f32 v37, v37, v40
	v_add_f32_e32 v33, v33, v41
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v49, 31
	v_readlane_b32 s42, v50, 31
	v_readlane_b32 s43, v51, 31
	v_readlane_b32 s44, v52, 31
	v_readlane_b32 s45, v53, 31
	v_readlane_b32 s46, v54, 31
	v_readlane_b32 s47, v55, 31
	v_readlane_b32 s48, v56, 31
	v_readlane_b32 s4, v71, 31
	v_readlane_b32 s5, v72, 31
	v_readlane_b32 s6, v73, 31
	v_readlane_b32 s7, v34, 31
	v_readlane_b32 s12, v35, 31
	v_readlane_b32 s13, v36, 31
	v_readlane_b32 s14, v37, 31
	v_readlane_b32 s15, v33, 31
	v_dual_mov_b32 v58, s41 :: v_dual_mov_b32 v59, s42
	v_dual_mov_b32 v60, s43 :: v_dual_mov_b32 v61, s44
	v_dual_mov_b32 v62, s45 :: v_dual_mov_b32 v63, s46
	v_dual_mov_b32 v64, s47 :: v_dual_mov_b32 v65, s48
	v_dual_mov_b32 v33, s4 :: v_dual_mov_b32 v34, s5
	v_dual_mov_b32 v35, s6 :: v_dual_mov_b32 v36, s7
	v_dual_mov_b32 v37, s12 :: v_dual_mov_b32 v38, s13
	v_dual_mov_b32 v39, s14 :: v_dual_mov_b32 v40, s15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v118
	ds_load_b128 v[50:53], v118 offset:16
	ds_load_b128 v[46:49], v118 offset:32
	ds_load_b128 v[42:45], v118 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v66, v[58:61]
	ds_store_b128 v66, v[62:65] offset:16
	ds_store_b128 v66, v[33:36] offset:32
	ds_store_b128 v66, v[37:40] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v118
	ds_load_b128 v[62:65], v118 offset:16
	ds_load_b128 v[70:73], v118 offset:32
	ds_load_b128 v[58:61], v118 offset:48
.Ltmp125:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s31, s27, 15
	s_mov_b32 s39, 0
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s4, s31, 31
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s18, s23
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s31, s31, s4
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v129, v54
	v_dual_mov_b32 v125, v55 :: v_dual_mov_b32 v126, v56
	v_mov_b32_e32 v127, v57
	v_dual_mov_b32 v133, v50 :: v_dual_mov_b32 v134, v51
	v_dual_mov_b32 v135, v52 :: v_dual_mov_b32 v142, v53
	v_mov_b32_e32 v174, v46
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v128, v66
	v_dual_mov_b32 v130, v67 :: v_dual_mov_b32 v131, v68
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v132, v69 :: v_dual_mov_b32 v143, v62
	v_dual_mov_b32 v144, v63 :: v_dual_mov_b32 v167, v64
	v_mov_b32_e32 v173, v65
	v_dual_mov_b32 v175, v47 :: v_dual_mov_b32 v170, v48
	v_mov_b32_e32 v177, v49
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v171, v70 :: v_dual_mov_b32 v172, v71
	v_dual_mov_b32 v136, v72 :: v_dual_mov_b32 v137, v73
	v_dual_mov_b32 v139, v42 :: v_dual_mov_b32 v140, v43
	v_dual_mov_b32 v141, v44 :: v_dual_mov_b32 v168, v45
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v169, v58 :: v_dual_mov_b32 v178, v59
	v_mov_b32_e32 v176, v60
	v_mov_b32_e32 v138, v61
	v_mov_b32_dpp v129, v129 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v134, v134 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s52, s31, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s4, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s19, s10
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s7, s19, s9
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, s11
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s7, s7, s11
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s4, s27, s4
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s4, s4, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s6, s4, 31
	s_lshr_b32 s6, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s6
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s6, s7, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s4, s4, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s39, s6, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s52, s52, s4
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x8
	s_load_b32 s53, s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v33, 0, 1, s17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s6, s21, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s7, s22, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v33
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s8, s19, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 32
	s_min_i32 s8, s27, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s12, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 28
	s_add_i32 s8, s8, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s8, s8, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s52, s52, s8
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s8, s5, s20
	s_xor_b32 s6, s6, s7
	s_sub_i32 s7, s18, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s12, s7, s20
	s_cmp_ge_u32 s7, s20
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v33, 1, v108
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s12, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s20
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[20:23], s[0:1], 0x48
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v162, v33, v106
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x10
	s_load_b64 s[44:45], s[0:1], 0x28
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v154, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s5, s5, s6
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s19, v162
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s1, s5, s6
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s16, s16, s25
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v155, 2, v154
	v_or_b32_e32 v156, 4, v154
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v163, s11, v33
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v157, 6, v154
	v_or_b32_e32 v158, 8, v154
	v_or_b32_e32 v159, 10, v154
	v_or_b32_e32 v160, 12, v154
	v_or_b32_e32 v161, 14, v154
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, s26, v33
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s25, s1, s16
	v_subrev_nc_u32_e32 v164, s9, v163
	v_add_nc_u32_e32 v165, s10, v163
	v_xor_b32_e32 v118, 16, v153
	v_xor_b32_e32 v119, 32, v153
	v_xor_b32_e32 v120, 48, v153
	v_xor_b32_e32 v121, 64, v153
	v_xor_b32_e32 v122, 0x50, v153
	v_xor_b32_e32 v123, 0x60, v153
	v_xor_b32_e32 v124, 0x70, v153
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s54, s53, 0x3fb8aa3b
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s39, s52
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_mul_i32 s55, s25, s27
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s30, -1, 0
	s_cmp_ge_i32 s39, s52
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_mov_b32 v33, 0
	v_add_nc_u32_e32 v166, 0, v118
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v179, 0, v119
	v_add_nc_u32_e32 v181, 0, v120
	v_add_nc_u32_e32 v182, 0, v121
	v_add_nc_u32_e32 v183, 0, v122
	v_add_nc_u32_e32 v184, 0, v123
	v_add_nc_u32_e32 v185, 0, v124
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s49, s29, 0xffff
	s_mov_b32 s48, s28
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s43, s39
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v34, s54, v34 :: v_dual_mul_f32 v35, s54, v35
	v_dual_mul_f32 v36, s54, v36 :: v_dual_mul_f32 v37, s54, v37
	v_dual_mul_f32 v38, s54, v38 :: v_dual_mul_f32 v39, s54, v39
	v_dual_mul_f32 v40, s54, v40 :: v_dual_mul_f32 v41, s54, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v187, 0xff800000, v34, s58
	v_cndmask_b32_e64 v35, 0xff800000, v35, s47
	v_cndmask_b32_e64 v36, 0xff800000, v36, s60
	v_cndmask_b32_e64 v37, 0xff800000, v37, s46
	v_cndmask_b32_e64 v38, 0xff800000, v38, s59
	v_cndmask_b32_e64 v39, 0xff800000, v39, s56
	v_cndmask_b32_e64 v40, 0xff800000, v40, s61
	v_cndmask_b32_e64 v41, 0xff800000, v41, s57
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v187, v35, v36
.Ltmp129:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v180
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v188, v37, v38, v39
.Ltmp131:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s43, s43, 16
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v189, v40, v41
.Ltmp133:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s43, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v34, v188, v189
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v188, v34, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v180, v34, v188
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v36, v36, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v38, v38, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v41, v41, v34
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v41, v41
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s60
	v_cndmask_b32_e64 v37, 0, v37, s46
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s59
	v_cndmask_b32_e64 v39, 0, v39, s56
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v40, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_sub_f32 v187, v187, v34 :: v_dual_add_f32 v36, v36, v37
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v41, 0, v41, s57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v38, v39
.Ltmp138:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v187, v187
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v39, v180, v34 :: v_dual_mov_b32 v180, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s61
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v187, 0, v187, s58
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp140:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v187, v35
	v_dual_add_f32 v35, v35, v36 :: v_dual_add_f32 v36, v37, v38
.Ltmp142:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp145:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v35, v186, v37
	v_mov_b32_e32 v186, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_or_b32 s1, s43, 1
	s_or_b32 s5, s43, 2
	s_or_b32 s6, s43, 3
	s_or_b32 s7, s43, 4
	s_or_b32 s8, s43, 5
	s_or_b32 s9, s43, 6
	s_or_b32 s10, s43, 7
	s_or_b32 s11, s43, 8
	s_or_b32 s12, s43, 9
	s_or_b32 s13, s43, 10
	s_or_b32 s14, s43, 11
	s_or_b32 s15, s43, 12
	s_or_b32 s16, s43, 13
	s_or_b32 s18, s43, 14
	s_or_b32 s46, s43, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s43, s27
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v199, 0, v153
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s1, s27
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s5, s27
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s7, s27
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s9, s27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s27
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s11, s27
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s12, s27
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s27
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s16, s27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s46, s27
	s_cselect_b32 s15, -1, 0
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_add_i32 s18, s43, s55
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s47
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_mad_u64_u32 v[34:35], null, s18, s33, v[0:1]
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s1, s2, s1
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v35, s33, v34
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s7, s2, s7
	s_and_b32 s9, s2, s9
	s_and_b32 s14, s2, s14
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v36, s33, v35
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_lshlrev_b32 v35, 1, v35
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s56
	s_and_b32 s8, s2, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v37, s33, v36
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_lshlrev_b32_e32 v36, 1, v36
	buffer_load_u16 v190, v34, s[48:51], 0 offen
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s10, s2, s10
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v38, s33, v37
	.loc	1 229 28                        ; attention_backward.py:229:28
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	v_lshlrev_b32_e32 v34, 1, v37
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s1, s2, s15
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v39, s33, v38
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e64 v34, 0x80000000, v34, s6
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v40, s33, v39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v38, 0x80000000, v38, s7
	buffer_load_u16 v191, v34, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v41, s33, v40
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v37, s33, v41
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v41, 1, v41
	v_cndmask_b32_e64 v40, 0x80000000, v40, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v187, s33, v37
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e64 v41, 0x80000000, v41, s10
	s_clause 0x1
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v34, s33, v187
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v187, 1, v187
	v_cndmask_b32_e64 v37, 0x80000000, v37, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v188, s33, v34
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v34, 1, v34
	v_cndmask_b32_e64 v187, 0x80000000, v187, s12
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v189, s33, v188
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v34, 0x80000000, v34, s13
	buffer_load_u16 v193, v187, s[48:51], 0 offen
	v_lshlrev_b32_e32 v188, 1, v188
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v192, s33, v189
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v187, 1, v189
	buffer_load_u16 v194, v34, s[48:51], 0 offen
	v_cndmask_b32_e64 v188, 0x80000000, v188, s14
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v189, s33, v192
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v187, 0x80000000, v187 :: v_dual_lshlrev_b32 v34, 1, v192
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v192, 1, v189
	v_add_lshl_u32 v189, v189, s33, 1
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v39, 0x80000000, v39, s8
	v_cndmask_b32_e32 v192, 0x80000000, v192, vcc_lo
	v_cndmask_b32_e64 v189, 0x80000000, v189, s1
	s_clause 0x6
	buffer_load_u16 v38, v38, s[48:51], 0 offen
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	buffer_load_u16 v195, v188, s[48:51], 0 offen
	buffer_load_u16 v196, v187, s[48:51], 0 offen
	buffer_load_u16 v197, v34, s[48:51], 0 offen
	buffer_load_u16 v192, v192, s[48:51], 0 offen
	buffer_load_u16 v198, v189, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v34, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v187, s43, v154
	v_or_b32_e32 v188, s43, v155
	v_or_b32_e32 v189, s43, v156
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v145, v190
	s_waitcnt vmcnt(14)
	ds_store_b16 v146, v35
	s_waitcnt vmcnt(13)
	ds_store_b16 v147, v36
	s_waitcnt vmcnt(12)
	ds_store_b16 v148, v191
	s_waitcnt vmcnt(6)
	ds_store_b16 v149, v38
	s_waitcnt vmcnt(5)
	ds_store_b16 v150, v39
	ds_store_b16 v151, v40
	ds_store_b16 v152, v41
	ds_store_b16 v145, v37 offset:1024
	ds_store_b16 v146, v193 offset:1024
	ds_store_b16 v147, v194 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v148, v195 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v149, v196 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v150, v197 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v151, v192 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v198 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[195:198], v199
	ds_load_b128 v[199:202], v166
	ds_load_b128 v[203:206], v179
	ds_load_b128 v[207:210], v181
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v40, v33
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[211:214], v182
	ds_load_b128 v[215:218], v183
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[219:222], v184
	ds_load_b128 v[223:226], v185
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v190, s43, v157
	v_or_b32_e32 v191, s43, v158
	v_or_b32_e32 v192, s43, v159
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[195:202], v[1:8], v[34:41]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v193, s43, v160
	v_or_b32_e32 v194, s43, v161
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e32 vcc_lo, s27, v187
	v_cmp_gt_i32_e64 s1, s27, v188
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[203:210], v[9:16], v[34:41]
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s5, s27, v189
	v_cmp_gt_i32_e64 s6, s27, v190
	v_cmp_gt_i32_e64 s7, s27, v191
	v_cmp_gt_i32_e64 s8, s27, v192
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[211:218], v[17:24], v[34:41]
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s9, s27, v193
	v_cmp_gt_i32_e64 s10, s27, v194
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s58, s0, vcc_lo
	s_and_b32 s47, s0, s1
	s_and_b32 s60, s0, s5
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[219:226], v[25:32], v[34:41]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s46, s0, s6
	s_and_b32 s59, s0, s7
	s_and_b32 s56, s0, s8
	s_and_b32 s61, s0, s9
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s57, s0, s10
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v187, v163
	v_cmp_le_i32_e64 s1, v188, v163
	v_cmp_le_i32_e64 s5, v189, v163
	v_cmp_le_i32_e64 s6, v190, v163
	v_cmp_le_i32_e64 s7, v191, v163
	v_cmp_le_i32_e64 s8, v192, v163
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s11, vcc_lo, s58
	s_and_b32 s1, s1, s47
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s9, v193, v163
	v_cmp_le_i32_e64 s10, v194, v163
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s5, s5, s60
	s_and_b32 s6, s6, s46
	s_and_not1_b32 s12, s58, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s47, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s59
	s_and_b32 s8, s8, s56
	s_or_b32 s58, s12, s11
	s_or_b32 s47, s13, s1
	s_and_not1_b32 s1, s60, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s46, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s61
	s_and_b32 s10, s10, s57
	s_or_b32 s60, s1, s5
	s_or_b32 s46, s11, s6
	s_and_not1_b32 s1, s59, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s56, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s59, s1, s5
	s_or_b32 s56, s6, s7
	s_and_not1_b32 s1, s61, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s61, s1, s5
	s_or_b32 s57, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s34
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v187, v164
	v_cmp_ge_i32_e64 s1, v188, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s11, v187, v165
	v_cmp_le_i32_e64 s12, v188, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s5, v189, v164
	v_cmp_ge_i32_e64 s6, v190, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s13, v189, v165
	v_cmp_le_i32_e64 s14, v190, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v191, v164
	v_cmp_ge_i32_e64 s8, v192, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s15, v191, v165
	v_cmp_le_i32_e64 s16, v192, v165
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s9, v193, v164
	v_cmp_ge_i32_e64 s10, v194, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v193, v165
	v_cmp_le_i32_e64 s18, v194, v165
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s11, s11, s58
	s_and_b32 s1, s1, s47
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s5, s5, s60
	s_and_b32 s6, s6, s46
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s58, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s47, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s59
	s_and_b32 s8, s8, s56
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_or_b32 s58, s12, s11
	s_or_b32 s47, s13, s1
	s_and_not1_b32 s1, s60, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s46, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s61
	s_and_b32 s10, s10, s57
	s_or_b32 s60, s1, s5
	s_or_b32 s46, s11, s6
	s_and_not1_b32 s1, s59, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s56, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s59, s1, s5
	s_or_b32 s56, s6, s7
	s_and_not1_b32 s1, s61, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s61, s1, s5
	s_or_b32 s57, s6, s7
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v35, 0
.LBB0_12:                               ; %Flow203
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v35
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v55, v125 :: v_dual_add_f32 v38, v56, v126
	v_dual_add_f32 v55, v67, v130 :: v_dual_add_f32 v56, v68, v131
.Ltmp149:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v41, 0, 32, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42000000, vcc_lo
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v54, v129 :: v_dual_and_b32 v33, 31, v0
.Ltmp151:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_ldexp_f32 v41, v35, v41
.Ltmp152:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v39, v57, v127 :: v_dual_add_f32 v54, v66, v128
	v_dual_add_f32 v63, v63, v144 :: v_dual_add_f32 v64, v64, v167
.Ltmp153:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v41, v41
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v47, v175
	v_dual_add_f32 v65, v65, v173 :: v_dual_add_f32 v66, v46, v174
.Ltmp155:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e64 s1, 0, v108
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v131, v60, v176
	v_dual_add_f32 v57, v69, v132 :: v_dual_add_f32 v50, v50, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp157:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v40, v41, v40 :: v_dual_lshlrev_b32 v41, 2, v106
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v51, v51, v134 :: v_dual_add_f32 v52, v52, v135
	v_dual_add_f32 v53, v53, v142 :: v_dual_add_f32 v62, v62, v143
.Ltmp159:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v34, v34, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add3_u32 v46, 0, v41, v117
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v40, s19, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s21, 0xffff
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v128, v73, v137 :: v_dual_cndmask_b32 v167, 0, v34
.Ltmp161:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v33, 2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s26, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, s24, v33, 2
	v_mov_b32_e32 v40, 0
	ds_store_b32 v46, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v35, v34
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v41, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v48, v170 :: v_dual_add_f32 v69, v49, v177
	v_dual_add_f32 v125, v70, v171 :: v_dual_add_f32 v126, v71, v172
	v_dual_add_f32 v127, v72, v136 :: v_dual_add_f32 v42, v42, v139
	v_dual_add_f32 v43, v43, v140 :: v_dual_add_f32 v44, v44, v141
	v_dual_add_f32 v45, v45, v168 :: v_dual_add_f32 v130, v59, v178
	v_dual_add_f32 v129, v58, v169 :: v_dual_add_f32 v132, v61, v138
.Ltmp163:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v47, v96, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v35, v33, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[36:39]
	ds_store_b128 v41, v[54:57] offset:16
	ds_store_b128 v41, v[50:53] offset:32
	ds_store_b128 v41, v[62:65] offset:48
	ds_store_b128 v41, v[66:69] offset:64
	ds_store_b128 v41, v[125:128] offset:80
	ds_store_b128 v41, v[42:45] offset:96
	ds_store_b128 v41, v[129:132] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v34, v34
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v35, v97, 16, 1
	v_cmp_o_f32_e64 s1, v96, v96
	v_cmp_o_f32_e64 s5, v95, v95
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_bfe_u32 v48, v92, 16, 1
	v_bfe_u32 v49, v90, 16, 1
	v_bfe_u32 v59, v88, 16, 1
	v_bfe_u32 v60, v84, 16, 1
	v_bfe_u32 v70, v82, 16, 1
	v_add3_u32 v48, v92, v48, 0x7fff
	v_add3_u32 v49, v90, v49, 0x7fff
	v_add3_u32 v59, v88, v59, 0x7fff
	v_add3_u32 v60, v84, v60, 0x7fff
	v_add3_u32 v70, v82, v70, 0x7fff
	v_bfe_u32 v71, v78, 16, 1
	v_bfe_u32 v73, v104, 16, 1
	v_cmp_o_f32_e64 s6, v99, v99
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v34, v33, s[8:11], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v33, v95, 16, 1
	v_add3_u32 v34, v97, v35, 0x7fff
	v_add3_u32 v35, v96, v47, 0x7fff
	v_add3_u32 v71, v78, v71, 0x7fff
	v_add3_u32 v73, v104, v73, 0x7fff
	v_add3_u32 v47, v95, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v94, 16, 1
	v_cmp_o_f32_e64 s1, v94, v94
	v_cndmask_b16 v34.l, 0x7fff, v47.h, s5
	v_bfe_u32 v47, v93, 16, 1
	v_cmp_o_f32_e64 s5, v93, v93
	v_add3_u32 v35, v94, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_cmp_o_f32_e64 s7, v98, v98
	v_add3_u32 v47, v93, v47, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v48.h, vcc_lo
	v_bfe_u32 v48, v91, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v47.h, s5
	v_bfe_u32 v47, v89, 16, 1
	v_cmp_o_f32_e64 s1, v90, v90
	v_cmp_o_f32_e64 s5, v89, v89
	v_add3_u32 v48, v91, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v58, v89, v47, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s1
	v_bfe_u32 v49, v87, 16, 1
	v_cmp_o_f32_e64 s1, v87, v87
	v_cndmask_b16 v47.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v48.l, 0x7fff, v58.h, s5
	v_bfe_u32 v58, v86, 16, 1
	v_add3_u32 v49, v87, v49, 0x7fff
	v_cmp_o_f32_e64 s5, v86, v86
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	s_barrier
	v_add3_u32 v58, v86, v58, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s1
	v_cmp_o_f32_e64 s1, v84, v84
	v_cndmask_b16 v48.h, 0x7fff, v59.h, vcc_lo
	v_bfe_u32 v59, v85, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v58.h, s5
	v_bfe_u32 v58, v83, 16, 1
	v_cmp_o_f32_e64 s5, v83, v83
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_add3_u32 v59, v85, v59, 0x7fff
	v_lshrrev_b32_e32 v166, 4, v0
	v_add3_u32 v61, v83, v58, 0x7fff
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s1
	v_bfe_u32 v60, v81, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v59.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_cndmask_b16 v59.l, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v80, 16, 1
	v_add3_u32 v60, v81, v60, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_cmp_o_f32_e64 s5, v80, v80
	v_cndmask_b16 v59.h, 0x7fff, v70.h, vcc_lo
	v_add3_u32 v61, v80, v61, 0x7fff
	v_bfe_u32 v70, v79, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cmp_o_f32_e64 s1, v78, v78
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v107, 16, 1
	v_add3_u32 v70, v79, v70, 0x7fff
	v_cmp_o_f32_e64 s5, v107, v107
	v_bfe_u32 v78, v76, 16, 1
	s_ashr_i32 s12, s31, 4
	v_add3_u32 v72, v107, v61, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v61.h, 0x7fff, v71.h, s1
	v_bfe_u32 v71, v103, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s5
	v_bfe_u32 v72, v102, 16, 1
	v_cmp_o_f32_e64 s1, v103, v103
	v_add3_u32 v71, v103, v71, 0x7fff
	v_cmp_o_f32_e64 s5, v102, v102
	v_cndmask_b16 v70.h, 0x7fff, v73.h, vcc_lo
	v_add3_u32 v72, v102, v72, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s1
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_cmp_o_f32_e64 s1, v76, v76
	v_cndmask_b16 v71.h, 0x7fff, v72.h, s5
	v_bfe_u32 v72, v75, 16, 1
	v_add3_u32 v73, v77, v73, 0x7fff
	v_add3_u32 v77, v76, v78, 0x7fff
	v_cmp_o_f32_e64 s5, v75, v75
	v_bfe_u32 v78, v98, 16, 1
	v_add3_u32 v76, v75, v72, 0x7fff
	v_bfe_u32 v75, v74, 16, 1
	v_cndmask_b16 v72.h, 0x7fff, v77.h, s1
	v_bfe_u32 v77, v101, 16, 1
	v_cndmask_b16 v72.l, 0x7fff, v73.h, vcc_lo
	v_cndmask_b16 v73.l, 0x7fff, v76.h, s5
	v_add3_u32 v75, v74, v75, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_bfe_u32 v74, v100, 16, 1
	v_add3_u32 v76, v101, v77, 0x7fff
	v_bfe_u32 v77, v99, 16, 1
	v_cmp_o_f32_e64 s1, v101, v101
	v_cmp_o_f32_e64 s5, v100, v100
	v_add3_u32 v74, v100, v74, 0x7fff
	v_add3_u32 v78, v98, v78, 0x7fff
	v_add3_u32 v77, v99, v77, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v75.h, vcc_lo
	v_cndmask_b16 v74.l, 0x7fff, v76.h, s1
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s5
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s7
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s6
	ds_store_b16 v145, v33
	ds_store_b16 v145, v48 offset:1024
	ds_store_b16 v145, v60 offset:2048
	ds_store_b16 v145, v72 offset:3072
	ds_store_b16_d16_hi v146, v33
	ds_store_b16_d16_hi v146, v48 offset:1024
	ds_store_b16_d16_hi v146, v60 offset:2048
	ds_store_b16_d16_hi v146, v72 offset:3072
	ds_store_b16 v147, v34
	ds_store_b16 v147, v49 offset:1024
	ds_store_b16 v147, v61 offset:2048
	ds_store_b16 v147, v73 offset:3072
	ds_store_b16_d16_hi v148, v34
	ds_store_b16_d16_hi v148, v49 offset:1024
	ds_store_b16_d16_hi v148, v61 offset:2048
	ds_store_b16_d16_hi v148, v73 offset:3072
	ds_store_b16 v149, v35
	ds_store_b16 v149, v58 offset:1024
	ds_store_b16 v149, v70 offset:2048
	ds_store_b16 v149, v74 offset:3072
	ds_store_b16_d16_hi v150, v35
	ds_store_b16_d16_hi v150, v58 offset:1024
	ds_store_b16_d16_hi v150, v70 offset:2048
	ds_store_b16_d16_hi v150, v74 offset:3072
	ds_store_b16 v151, v47
	ds_store_b16 v151, v59 offset:1024
	ds_store_b16 v151, v71 offset:2048
	ds_store_b16 v151, v75 offset:3072
	ds_store_b16_d16_hi v152, v47
	ds_store_b16_d16_hi v152, v59 offset:1024
	ds_store_b16_d16_hi v152, v71 offset:2048
	ds_store_b16_d16_hi v152, v75 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v109
	ds_load_b128 v[77:80], v110
	ds_load_b128 v[81:84], v111
	ds_load_b128 v[85:88], v112
	ds_load_b128 v[89:92], v113
	ds_load_b128 v[93:96], v114
	ds_load_b128 v[97:100], v115
	ds_load_b128 v[101:104], v116
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[36:39]
	ds_store_b128 v41, v[54:57] offset:16
	ds_store_b128 v41, v[50:53] offset:32
	ds_store_b128 v41, v[62:65] offset:48
	ds_store_b128 v41, v[66:69] offset:64
	ds_store_b128 v41, v[125:128] offset:80
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
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
	v_mov_b32_e32 v57, v40
	v_mov_b32_e32 v72, v40
	v_mov_b32_e32 v71, v40
	v_mov_b32_e32 v70, v40
	v_mov_b32_e32 v69, v40
	v_mov_b32_e32 v68, v40
	v_mov_b32_e32 v67, v40
	v_mov_b32_e32 v66, v40
	v_mov_b32_e32 v65, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v41, v[42:45] offset:96
	ds_store_b128 v41, v[129:132] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v34, 0x5410 :: v_dual_and_b32 v33, 16, v0
	.loc	1 167 13 is_stmt 1              ; attention_backward.py:167:13
	s_add_i32 s1, s38, s38
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v168, v46
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v169, s1, s38, v0
	v_mov_b32_e32 v35, 0x7632
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_dual_mov_b32 v70, v41 :: v_dual_add_nc_u32 v173, 0, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v170, s38, v169
	v_dual_cndmask_b32 v33, 0x1054, v34 :: v_dual_add_nc_u32 v180, 0, v120
	v_dual_cndmask_b32 v34, 0x3276, v35 :: v_dual_lshlrev_b32 v35, 4, v106
	v_dual_mov_b32 v66, v41 :: v_dual_add_nc_u32 v171, s38, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v33, v33, 8, v33
	v_lshl_or_b32 v34, v34, 8, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v58, v41 :: v_dual_add_nc_u32 v177, 0, v35
	v_dual_mov_b32 v67, v41 :: v_dual_add_nc_u32 v172, s38, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v68, v41 :: v_dual_and_b32 v33, 0x540054, v33
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v34, 0x760076, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v69, v41 :: v_dual_add_nc_u32 v174, s38, v172
	v_lshl_or_b32 v33, v33, 4, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v34, v34, 4, v34
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v178, 0, v118
	v_dual_mov_b32 v60, v41 :: v_dual_add_nc_u32 v179, 0, v119
	v_dual_mov_b32 v72, v41 :: v_dual_and_b32 v175, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v71, v41 :: v_dual_and_b32 v176, 0x7060706, v34
	v_dual_mov_b32 v62, v41 :: v_dual_add_nc_u32 v181, 0, v121
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v182, 0, v122
	v_dual_mov_b32 v64, v41 :: v_dual_add_nc_u32 v183, 0, v123
	v_dual_mov_b32 v61, v41 :: v_dual_add_nc_u32 v184, 0, v124
	v_mov_b32_e32 v63, v41
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, v41
	v_mov_b32_e32 v51, v41
	v_dual_mov_b32 v52, v41 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s48, s12, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s49, s25, s12
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s50, s25, s48
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s42, s10
	s_mov_b32 s43, s11
	s_mov_b32 s46, s10
	s_mov_b32 s47, s11
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s12, s39, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v225, s54, v137, -v167
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s12, s48
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v226, s54, v138, -v167
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s13, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s12, s12, s50
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s12, s12, s38
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s14, s39, 4
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v42, s12, v0
	v_add_nc_u32_e32 v43, s12, v169
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s14, s14, s49
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v44, s12, v170
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s14, s14, s38
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v46, s38, v42
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v187, s14, v0, 1
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v47, s12, v172
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v48, 0x80000000, v46, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v46, s38, v46
	v_add_nc_u32_e32 v186, s12, v174
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_clause 0x1
	buffer_load_u8 v188, v42, s[40:43], 0 offen
	buffer_load_u8 v48, v48, s[40:43], 0 offen
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v42, 0x80000000, v46
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s39, s39, 16
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v212, 15, v188
	.loc	1 362 32                        ; attention_backward.py:362:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b16 v137.l, 4, v48.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v212
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v45, s12, v171
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s71
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v46, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v189, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s70
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v190, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v191, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s69
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v192, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v193, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s68
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v194, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v195, 0x80000000, v187, s12
	s_clause 0x7
	buffer_load_u16 v46, v46, s[44:47], 0 offen
	buffer_load_u16 v189, v189, s[44:47], 0 offen
	buffer_load_u16 v190, v190, s[44:47], 0 offen
	buffer_load_u16 v191, v191, s[44:47], 0 offen
	buffer_load_u16 v192, v192, s[44:47], 0 offen
	buffer_load_u16 v193, v193, s[44:47], 0 offen
	buffer_load_u16 v194, v194, s[44:47], 0 offen
	buffer_load_u16 v195, v195, s[44:47], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e32 v186, 0x80000000, v186, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v196, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s7
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v197, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v198, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s8
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v199, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v200, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s9
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v201, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s64
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v202, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s10
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s39, s52
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v187, 0x80000000, v187, s12
	s_clause 0x7
	buffer_load_u16 v196, v196, s[44:47], 0 offen
	buffer_load_u16 v197, v197, s[44:47], 0 offen
	buffer_load_u16 v198, v198, s[44:47], 0 offen
	buffer_load_u16 v199, v199, s[44:47], 0 offen
	buffer_load_u16 v200, v200, s[44:47], 0 offen
	buffer_load_u16 v201, v201, s[44:47], 0 offen
	buffer_load_u16 v202, v202, s[44:47], 0 offen
	buffer_load_u16 v187, v187, s[44:47], 0 offen
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_clause 0x5
	buffer_load_u8 v203, v42, s[40:43], 0 offen
	buffer_load_u8 v204, v43, s[40:43], 0 offen
	buffer_load_u8 v205, v44, s[40:43], 0 offen
	buffer_load_u8 v206, v45, s[40:43], 0 offen
	buffer_load_u8 v47, v47, s[40:43], 0 offen
	buffer_load_u8 v186, v186, s[40:43], 0 offen
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v44.h, 0
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v43.l, v188.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v44.l, 4, v188.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v43.h, v48.l, 15
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v42, v41
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v209.h, v44.h
	v_mov_b16_e64 v137.h, v44.h
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v43.l
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v208.h, v44.h
	v_mov_b16_e64 v211.h, v44.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v188, 16, v46
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v138.h, v44.h
	v_mov_b16_e64 v207.h, v44.h
	v_mov_b16_e64 v210.h, v44.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v202, 16, v202
	.loc	1 362 32                        ; attention_backward.py:362:32
	s_waitcnt vmcnt(5)
	v_lshrrev_b16 v138.l, 4, v203.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v216, 15, v204
	.loc	1 362 32                        ; attention_backward.py:362:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v208.l, 4, v205.l
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v209.l, 4, v206.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v45.h, v206.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v218, 15, v206
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(1)
	v_and_b16 v46.l, v47.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v46.h, v186.l, 15
	.loc	1 360 32 is_stmt 0              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v206, 0, v209, s8
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v213, 15, v48
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v48, 0, v44, s11
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v219, 15, v47
	v_and_b32_e32 v220, 15, v186
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v210.l, 4, v47.l
	v_lshrrev_b16 v211.l, 4, v186.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v47, 0, v137, s5
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v137, -16, v213
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v186, v212, v214, vcc_lo
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v43.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v44.l, v203.l, 15
	v_and_b16 v45.l, v205.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v217, 15, v205
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v205, 0, v208, s7
	v_cndmask_b32_e64 v208, 0, v211, s10
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v215, 15, v203
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v203, -16, v48
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v43, v213, v137, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v48
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v44.h, v204.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v207.l, 4, v204.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v209, -16, v215
	v_or_b32_e32 v211, -16, v217
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v48, v48, v203, vcc_lo
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v44.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v204, 0, v207, s6
	v_cndmask_b32_e64 v207, 0, v210, s9
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v210, -16, v216
	v_or_b32_e32 v212, -16, v218
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v203, v215, v209, vcc_lo
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v44.h
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v221, -16, v220
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v138, 0, v138, s1
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v44, v216, v210, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v45.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_mul_f32_e32 v48, v48, v189
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v219
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v137, -16, v47
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v186, v186
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v209, v217, v211, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v45.h
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v211, -16, v138
	v_or_b32_e32 v213, -16, v205
	v_or_b32_e32 v215, -16, v207
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v45, v218, v212, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v46.l
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v212, -16, v204
	v_or_b32_e32 v216, -16, v208
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v203, v203
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v210, v219, v214, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v46.h
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v199, 16, v199
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v214, -16, v206
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v46, v220, v221, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v47
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v47, v47, v137, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v138
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_dual_mul_f32 v46, v46, v202 :: v_dual_lshlrev_b32 v197, 16, v197
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v138, v138, v211, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v204
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v201, 16, v201
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v46, v46
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v47, v47, v191 :: v_dual_lshlrev_b32 v190, 16, v190
	v_mul_f32_e32 v137, v186, v188
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v186, v204, v212, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v205
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v189, v43, v190 :: v_dual_lshlrev_b32 v192, 16, v192
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v188, v205, v213, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v206
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_dual_mul_f32 v191, v203, v192 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v43, v137, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v138, v138, v193
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v204, v206, v214, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v207
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v188, v188
	v_mul_f32_e32 v192, v44, v194
	v_cvt_f32_i32_e32 v190, v204
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v205, v207, v215, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v208
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v207, v209
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v43, v137, v43, 0x7fff
	v_bfe_u32 v44, v48, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v204, v205
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v206, v208, v216, vcc_lo
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v198, 16, v198
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v208, v210
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v193, v204, v201 :: v_dual_lshlrev_b32 v196, 16, v196
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v45, v198
	v_cvt_f32_i32_e32 v205, v206
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v200, 16, v200
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v137, v189, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v194, v207, v196
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v189, v189
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v187, v205, v187 :: v_dual_mul_f32 v196, v208, v200
	v_mul_f32_e32 v186, v186, v195
	v_mul_f32_e32 v188, v188, v197
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v44, v48, v44, 0x7fff
	v_add3_u32 v48, v189, v137, 0x7fff
	v_bfe_u32 v137, v47, 16, 1
	v_bfe_u32 v189, v191, 16, 1
	v_bfe_u32 v195, v192, 16, 1
	v_bfe_u32 v197, v194, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v190, v190, v199
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v198, v45, 16, 1
	v_bfe_u32 v199, v196, 16, 1
	v_bfe_u32 v200, v46, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cmp_o_f32_e64 s6, v191, v191
	v_cmp_o_f32_e64 s7, v192, v192
	v_cmp_o_f32_e64 s8, v194, v194
	v_cndmask_b16 v44.l, 0x7fff, v48.h, s5
	v_add3_u32 v47, v47, v137, 0x7fff
	v_add3_u32 v48, v191, v189, 0x7fff
	v_bfe_u32 v137, v138, 16, 1
	v_add3_u32 v189, v192, v195, 0x7fff
	v_add3_u32 v192, v194, v197, 0x7fff
	v_bfe_u32 v194, v188, 16, 1
	v_cmp_o_f32_e64 s10, v196, v196
	v_bfe_u32 v191, v186, 16, 1
	v_add3_u32 v195, v45, v198, 0x7fff
	v_bfe_u32 v197, v190, 16, 1
	v_add3_u32 v196, v196, v199, 0x7fff
	v_bfe_u32 v198, v193, 16, 1
	v_add3_u32 v199, v46, v200, 0x7fff
	v_bfe_u32 v200, v187, 16, 1
	v_cmp_o_f32_e64 s9, v45, v45
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s1
	v_cmp_o_f32_e64 s1, v138, v138
	v_cmp_o_f32_e64 s12, v188, v188
	v_cndmask_b16 v45.l, 0x7fff, v48.h, s6
	v_add3_u32 v48, v138, v137, 0x7fff
	v_add3_u32 v138, v188, v194, 0x7fff
	v_cmp_o_f32_e64 s5, v186, v186
	v_cmp_o_f32_e64 s13, v190, v190
	v_cmp_o_f32_e64 s14, v193, v193
	v_cmp_o_f32_e64 s15, v187, v187
	v_add3_u32 v137, v186, v191, 0x7fff
	v_add3_u32 v186, v190, v197, 0x7fff
	v_add3_u32 v188, v193, v198, 0x7fff
	v_add3_u32 v187, v187, v200, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v192.h, s8
	v_cndmask_b16 v137.l, 0x7fff, v138.h, s12
	v_cndmask_b16 v44.h, 0x7fff, v47.h, vcc_lo
	v_cndmask_b16 v45.h, 0x7fff, v189.h, s7
	v_cndmask_b16 v46.h, 0x7fff, v195.h, s9
	v_cndmask_b16 v47.l, 0x7fff, v196.h, s10
	v_cndmask_b16 v47.h, 0x7fff, v199.h, s11
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v137.h, s5
	v_cndmask_b16 v137.h, 0x7fff, v186.h, s13
	v_cndmask_b16 v138.l, 0x7fff, v188.h, s14
	v_cndmask_b16 v138.h, 0x7fff, v187.h, s15
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	ds_store_b16 v145, v43
	ds_store_b16 v145, v46 offset:1024
	ds_store_b16_d16_hi v146, v43
	ds_store_b16 v146, v137 offset:1024
	ds_store_b16 v147, v44
	ds_store_b16_d16_hi v147, v46 offset:1024
	ds_store_b16_d16_hi v148, v44
	ds_store_b16_d16_hi v148, v137 offset:1024
	ds_store_b16 v149, v45
	ds_store_b16 v149, v47 offset:1024
	ds_store_b16 v150, v48
	ds_store_b16 v150, v138 offset:1024
	ds_store_b16_d16_hi v151, v45
	ds_store_b16_d16_hi v151, v47 offset:1024
	ds_store_b16_d16_hi v152, v48
	ds_store_b16_d16_hi v152, v138 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[185:188], v185
	ds_load_b128 v[189:192], v178
	ds_load_b128 v[193:196], v179
	ds_load_b128 v[197:200], v180
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	ds_load_b128 v[201:204], v181
	ds_load_b128 v[205:208], v182
	v_dual_mov_b32 v216, v48 :: v_dual_mov_b32 v213, v45
	v_dual_mov_b32 v214, v46 :: v_dual_mov_b32 v215, v47
	v_dual_mov_b32 v212, v44 :: v_dual_mov_b32 v211, v43
	v_dual_mov_b32 v210, v42 :: v_dual_mov_b32 v209, v41
	ds_load_b128 v[217:220], v183
	ds_load_b128 v[221:224], v184
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v45, s54, v144, -v167
	v_fma_f32 v137, s54, v139, -v167
	v_fma_f32 v138, s54, v140, -v167
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[185:192], v[73:80], v[209:216]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v42, s54, v141, -v167
	v_fma_f32 v43, s54, v142, -v167
	v_fma_f32 v44, s54, v143, -v167
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v45, v45
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[193:200], v[81:88], v[209:216]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v46, v225
	v_exp_f32_e32 v47, v226
	v_exp_f32_e32 v48, v137
	v_exp_f32_e32 v137, v138
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[201:208], v[89:96], v[209:216]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v45, 0, v45, s57
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[217:224], v[97:104], v[209:216]
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v46, 0, v46, s62
	v_cndmask_b32_e64 v47, 0, v47, s61
	v_cndmask_b32_e64 v48, 0, v48, s63
	v_cndmask_b32_e64 v137, 0, v137, s60
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v185, v216, v168
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v42, 0, v42, s58
	v_cndmask_b32_e64 v43, 0, v43, s56
	v_cndmask_b32_e64 v44, 0, v44, s59
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v139, v210, v168
	v_sub_f32_e32 v140, v211, v168
	v_sub_f32_e32 v141, v212, v168
	v_sub_f32_e32 v142, v213, v168
	v_sub_f32_e32 v143, v214, v168
	v_dual_sub_f32 v144, v215, v168 :: v_dual_mul_f32 v45, v45, v185
	v_dual_sub_f32 v138, v209, v168 :: v_dual_mul_f32 v47, v47, v139
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v48, v48, v140 :: v_dual_mul_f32 v137, v137, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v42, v42, v142 :: v_dual_mul_f32 v43, v43, v143
	v_dual_mul_f32 v44, v44, v144 :: v_dual_mul_f32 v45, s53, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v46, v46, v138 :: v_dual_mul_f32 v47, s53, v47
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v48, s53, v48 :: v_dual_mul_f32 v137, s53, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, s53, v42
	v_dual_mul_f32 v46, s53, v46 :: v_dual_mul_f32 v43, s53, v43
	v_mul_f32_e32 v44, s53, v44
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v139, v47, 16, 1
	v_bfe_u32 v140, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v138, v46, 16, 1
	v_bfe_u32 v141, v137, 16, 1
	v_bfe_u32 v142, v42, 16, 1
	v_bfe_u32 v143, v43, 16, 1
	v_bfe_u32 v144, v44, 16, 1
	v_bfe_u32 v185, v45, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_cmp_o_f32_e64 s1, v47, v47
	v_cmp_o_f32_e64 s5, v48, v48
	v_cmp_o_f32_e64 s6, v137, v137
	v_cmp_o_f32_e64 s7, v42, v42
	v_cmp_o_f32_e64 s8, v43, v43
	v_cmp_o_f32_e64 s9, v44, v44
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v46, v46, v138, 0x7fff
	v_add3_u32 v47, v47, v139, 0x7fff
	v_add3_u32 v48, v48, v140, 0x7fff
	v_add3_u32 v137, v137, v141, 0x7fff
	v_add3_u32 v42, v42, v142, 0x7fff
	v_add3_u32 v43, v43, v143, 0x7fff
	v_add3_u32 v44, v44, v144, 0x7fff
	v_add3_u32 v45, v45, v185, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s1
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s5
	v_cndmask_b16 v47.h, 0x7fff, v137.h, s6
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s7
	v_cndmask_b16 v42.h, 0x7fff, v43.h, s8
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s9
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s10
	v_permlanex16_b32 v44, v46, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v47, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v42, s51, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v144, v43, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v44, v46, v175
	v_perm_b32 v138, v44, v46, v176
	v_perm_b32 v139, v45, v47, v175
	v_perm_b32 v140, v45, v47, v176
	v_perm_b32 v141, v48, v42, v175
	v_perm_b32 v142, v48, v42, v176
	v_perm_b32 v143, v144, v43, v175
	v_perm_b32 v144, v144, v43, v176
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[65:72], v[129:136], v[137:144], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[57:64], v[121:128], v[137:144], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[113:120], v[137:144], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[137:144], v[33:40]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s1, s39, 1
	s_or_b32 s5, s39, 2
	s_or_b32 s6, s39, 3
	s_or_b32 s7, s39, 4
	s_or_b32 s8, s39, 5
	s_or_b32 s9, s39, 6
	s_or_b32 s10, s39, 7
	s_or_b32 s12, s39, 8
	s_or_b32 s13, s39, 9
	s_or_b32 s14, s39, 10
	s_or_b32 s15, s39, 11
	s_or_b32 s16, s39, 12
	s_or_b32 s17, s39, 13
	s_or_b32 s18, s39, 14
	s_or_b32 s19, s39, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s39, s27
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v186, s39, v154
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s1, s27
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v187, s39, v155
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s5, s27
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v188, s39, v156
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s6, s27
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v185, 0, v153
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s7, s27
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s8, s27
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s9, s27
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s10, s27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s12, s27
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s13, s27
	v_cmp_gt_i32_e64 s13, s27, v188
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s14, s27
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s15, s27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s16, s27
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s17, s27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s18, s27
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s19, s27
	s_cselect_b32 s10, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s12, s39, s55
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[42:43], null, s12, s33, v[0:1]
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s12, s27, v187
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s63, s0, s13
	s_and_b32 s61, s0, s12
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v43, s33, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v44, s33, v43
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v43, 1, v43
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v45, s33, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v46, s33, v45
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v105, 0x80000000, v43, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v45, 1, v45
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v47, s33, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v48, s33, v47
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s5
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v43, s33, v48
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v47, 1, v47
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v106, s33, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v107, s33, v106
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v43, 1, v43
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s33, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s33, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v109, 0x80000000, v43, vcc_lo
	s_clause 0x7
	buffer_load_u16 v43, v42, s[28:31], 0 offen
	buffer_load_u16 v141, v105, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v142, v45, s[28:31], 0 offen
	buffer_load_u16 v45, v46, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v46, v48, s[28:31], 0 offen
	buffer_load_u16 v48, v109, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v105, s33, v110
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v109, 1, v110
	v_lshlrev_b32_e32 v42, 1, v107
	v_lshlrev_b32_e32 v107, 1, v108
	v_lshlrev_b32_e32 v106, 1, v106
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s67
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s33, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v106, 0x80000000, v106 :: v_dual_lshlrev_b32 v105, 1, v105
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s33, v108
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s66
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v111, v110, s33, 1
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s65
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_lshlrev_b32 v108, 1, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_lshlrev_b32 v110, 1, v110
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s64
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x7
	buffer_load_u16 v143, v42, s[28:31], 0 offen
	buffer_load_u16 v144, v109, s[28:31], 0 offen
	buffer_load_u16 v189, v108, s[28:31], 0 offen
	buffer_load_u16 v190, v111, s[28:31], 0 offen
	buffer_load_u16 v137, v106, s[28:31], 0 offen
	buffer_load_u16 v138, v107, s[28:31], 0 offen
	buffer_load_u16 v139, v105, s[28:31], 0 offen
	buffer_load_u16 v140, v110, s[28:31], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v42, v41
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e32 vcc_lo, s27, v186
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s62, s0, vcc_lo
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v43.h, v141.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v44.h, v142.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v45.h, v47.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v46.h, v48.l
	ds_store_b128 v173, v[43:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v177
	ds_load_b128 v[121:124], v177 offset:256
	ds_load_b128 v[113:116], v177 offset:512
	ds_load_b128 v[105:108], v177 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v137.h, v143.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v138.h, v144.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v139.h, v189.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v140.h, v190.l
	ds_store_b128 v173, v[137:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v177
	ds_load_b128 v[125:128], v177 offset:256
	ds_load_b128 v[117:120], v177 offset:512
	ds_load_b128 v[109:112], v177 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v145, v43
	ds_store_b16 v145, v137 offset:1024
	ds_store_b16 v146, v141
	ds_store_b16 v146, v143 offset:1024
	ds_store_b16 v147, v44
	ds_store_b16 v147, v138 offset:1024
	ds_store_b16 v148, v142
	ds_store_b16 v148, v144 offset:1024
	ds_store_b16 v149, v45
	ds_store_b16 v149, v139 offset:1024
	ds_store_b16 v150, v47
	ds_store_b16 v150, v189 offset:1024
	ds_store_b16 v151, v46
	ds_store_b16 v151, v140 offset:1024
	ds_store_b16 v152, v48
	ds_store_b16 v152, v190 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[191:194], v185
	ds_load_b128 v[195:198], v178
	ds_load_b128 v[199:202], v179
	ds_load_b128 v[203:206], v180
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[207:210], v181
	ds_load_b128 v[211:214], v182
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v48 :: v_dual_mov_b32 v141, v45
	v_dual_mov_b32 v142, v46 :: v_dual_mov_b32 v143, v47
	v_dual_mov_b32 v140, v44 :: v_dual_mov_b32 v139, v43
	v_dual_mov_b32 v138, v42 :: v_dual_mov_b32 v137, v41
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[215:218], v183
	ds_load_b128 v[219:222], v184
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v189, s39, v157
	v_or_b32_e32 v190, s39, v158
	v_or_b32_e32 v42, s39, v159
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[191:198], v[1:8], v[137:144]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v43, s39, v160
	v_or_b32_e32 v44, s39, v161
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s14, s27, v189
	v_cmp_gt_i32_e64 s15, s27, v190
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[199:206], v[9:16], v[137:144]
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s16, s27, v42
	v_cmp_gt_i32_e64 s17, s27, v43
	v_cmp_gt_i32_e64 s18, s27, v44
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s60, s0, s14
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[207:214], v[17:24], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s58, s0, s15
	s_and_b32 s56, s0, s16
	s_and_b32 s59, s0, s17
	s_and_b32 s57, s0, s18
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[215:222], v[25:32], v[137:144]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v186, v163
	v_cmp_le_i32_e64 s12, v187, v163
	v_cmp_le_i32_e64 s13, v188, v163
	v_cmp_le_i32_e64 s14, v189, v163
	v_cmp_le_i32_e64 s15, v190, v163
	v_cmp_le_i32_e64 s16, v42, v163
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s19, vcc_lo, s62
	s_and_b32 s12, s12, s61
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s17, v43, v163
	v_cmp_le_i32_e64 s18, v44, v163
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s13, s63
	s_and_b32 s14, s14, s60
	s_and_not1_b32 s20, s62, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s61, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s58
	s_and_b32 s16, s16, s56
	s_or_b32 s62, s20, s19
	s_or_b32 s61, s21, s12
	s_and_not1_b32 s12, s63, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s60, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s59
	s_and_b32 s18, s18, s57
	s_or_b32 s63, s12, s13
	s_or_b32 s60, s19, s14
	s_and_not1_b32 s12, s58, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s56, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s58, s12, s13
	s_or_b32 s56, s14, s15
	s_and_not1_b32 s12, s59, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s57, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s59, s12, s13
	s_or_b32 s57, s14, s15
.LBB0_17:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s34
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v186, v164
	v_cmp_ge_i32_e64 s12, v187, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s19, v186, v165
	v_cmp_le_i32_e64 s20, v187, v165
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v188, v164
	v_cmp_ge_i32_e64 s14, v189, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s21, v188, v165
	v_cmp_le_i32_e64 s22, v189, v165
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v190, v164
	v_cmp_ge_i32_e64 s16, v42, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s23, v190, v165
	v_cmp_le_i32_e64 s24, v42, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s12, s12, s20
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v43, v164
	v_cmp_ge_i32_e64 s18, v44, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s25, v43, v165
	v_cmp_le_i32_e64 s26, v44, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s19, s19, s62
	s_and_b32 s12, s12, s61
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_b32 s13, s13, s63
	s_and_b32 s14, s14, s60
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_and_not1_b32 s20, s62, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s61, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s58
	s_and_b32 s16, s16, s56
	s_and_b32 s17, s17, s25
	s_and_b32 s18, s18, s26
	s_or_b32 s62, s20, s19
	s_or_b32 s61, s21, s12
	s_and_not1_b32 s12, s63, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s60, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s59
	s_and_b32 s18, s18, s57
	s_or_b32 s63, s12, s13
	s_or_b32 s60, s19, s14
	s_and_not1_b32 s12, s58, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s56, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s58, s12, s13
	s_or_b32 s56, s14, s15
	s_and_not1_b32 s12, s59, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s57, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s59, s12, s13
	s_or_b32 s57, s14, s15
	s_branch .LBB0_14
.LBB0_19:                               ; %._crit_edge68
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_mul_lo_u32 v24, s33, v162
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v0, 62, v166
	v_cmp_gt_i32_e64 s31, s33, v154
	v_or_b32_e32 v1, 60, v154
	v_or_b32_e32 v2, 58, v154
	v_or_b32_e32 v3, 56, v154
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 s31, s0, s31
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v24, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v4, 54, v154
	v_or_b32_e32 v5, 52, v154
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v6, 50, v154
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v0, s35, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v25, v24, v154
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v7, 48, v154
	v_or_b32_e32 v8, 46, v154
	v_or_b32_e32 v9, 44, v154
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v25, v25, s35, 2
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v10, 42, v154
	v_or_b32_e32 v11, 40, v154
	v_or_b32_e32 v12, 38, v154
	v_or_b32_e32 v13, 36, v154
	v_or_b32_e32 v14, 34, v154
	v_or_b32_e32 v15, 32, v154
	v_or_b32_e32 v16, 30, v154
	v_or_b32_e32 v17, 28, v154
	v_or_b32_e32 v18, 26, v154
	v_or_b32_e32 v19, 24, v154
	v_or_b32_e32 v20, 22, v154
	v_or_b32_e32 v21, 20, v154
	v_or_b32_e32 v22, 18, v154
	v_or_b32_e32 v23, 16, v154
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v26, v24, v155
	v_add_nc_u32_e32 v28, v24, v157
	v_add_nc_u32_e32 v27, v24, v156
	v_add_nc_u32_e32 v29, v24, v158
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s31
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s28, s33, v157
	v_cmp_gt_i32_e64 s30, s33, v155
	v_cmp_gt_i32_e64 s27, s33, v158
	v_cmp_gt_i32_e64 s29, s33, v156
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s1, s33, v1
	v_cmp_gt_i32_e64 s2, s33, v2
	v_cmp_gt_i32_e64 s3, s33, v3
	v_cmp_gt_i32_e64 s4, s33, v4
	v_cmp_gt_i32_e64 s5, s33, v5
	v_cmp_gt_i32_e64 s6, s33, v6
	v_cmp_gt_i32_e64 s7, s33, v7
	v_cmp_gt_i32_e64 s8, s33, v8
	v_cmp_gt_i32_e64 s9, s33, v9
	v_cmp_gt_i32_e64 s10, s33, v10
	v_cmp_gt_i32_e64 s11, s33, v11
	v_cmp_gt_i32_e64 s12, s33, v12
	v_cmp_gt_i32_e64 s13, s33, v13
	v_cmp_gt_i32_e64 s14, s33, v14
	v_cmp_gt_i32_e64 s15, s33, v15
	v_cmp_gt_i32_e64 s16, s33, v16
	v_cmp_gt_i32_e64 s17, s33, v17
	v_cmp_gt_i32_e64 s18, s33, v18
	v_cmp_gt_i32_e64 s19, s33, v19
	v_cmp_gt_i32_e64 s20, s33, v20
	v_cmp_gt_i32_e64 s21, s33, v21
	v_cmp_gt_i32_e64 s22, s33, v22
	v_cmp_gt_i32_e64 s23, s33, v23
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v30, v24, v159
	v_add_nc_u32_e32 v31, v24, v160
	v_add_nc_u32_e32 v32, v24, v161
	v_add_nc_u32_e32 v23, v24, v23
	v_add_nc_u32_e32 v22, v24, v22
	v_add_nc_u32_e32 v21, v24, v21
	v_add_nc_u32_e32 v20, v24, v20
	v_add_nc_u32_e32 v19, v24, v19
	v_add_nc_u32_e32 v18, v24, v18
	v_add_nc_u32_e32 v17, v24, v17
	v_add_nc_u32_e32 v16, v24, v16
	v_add_nc_u32_e32 v15, v24, v15
	v_add_nc_u32_e32 v14, v24, v14
	v_add_nc_u32_e32 v13, v24, v13
	v_add_nc_u32_e32 v12, v24, v12
	v_add_nc_u32_e32 v11, v24, v11
	v_add_nc_u32_e32 v10, v24, v10
	v_add_nc_u32_e32 v9, v24, v9
	v_add_nc_u32_e32 v8, v24, v8
	v_add_nc_u32_e32 v7, v24, v7
	v_add_nc_u32_e32 v6, v24, v6
	v_add_nc_u32_e32 v5, v24, v5
	v_add_nc_u32_e32 v4, v24, v4
	v_add_nc_u32_e32 v3, v24, v3
	v_add_nc_u32_e32 v2, v24, v2
	v_add_nc_u32_e32 v1, v24, v1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v26, v26, s35, 2
	v_add_lshl_u32 v24, v28, s35, 2
	v_add_lshl_u32 v27, v27, s35, 2
	buffer_store_b32 v65, v25, s[36:39], 0 offen
	v_add_lshl_u32 v25, v29, s35, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s30, s0, s30
	s_and_b32 s28, s0, s28
	s_and_b32 s29, s0, s29
	s_and_b32 s27, s0, s27
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s30
	v_cndmask_b32_e64 v24, 0x80000000, v24, s28
	v_cndmask_b32_e64 v27, 0x80000000, v27, s29
	v_cndmask_b32_e64 v25, 0x80000000, v25, s27
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s24, s33, v161
	v_cmp_gt_i32_e64 s26, s33, v159
	v_cmp_gt_i32_e64 s25, s33, v160
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v66, v26, s[36:39], 0 offen
	buffer_store_b32 v67, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v30, s35, 2
	s_clause 0x1
	buffer_store_b32 v68, v24, s[36:39], 0 offen
	buffer_store_b32 v69, v25, s[36:39], 0 offen
	v_add_lshl_u32 v24, v32, s35, 2
	v_add_lshl_u32 v22, v22, s35, 2
	v_add_lshl_u32 v20, v20, s35, 2
	v_add_lshl_u32 v18, v18, s35, 2
	v_add_lshl_u32 v16, v16, s35, 2
	v_add_lshl_u32 v14, v14, s35, 2
	v_add_lshl_u32 v12, v12, s35, 2
	v_add_lshl_u32 v10, v10, s35, 2
	v_add_lshl_u32 v8, v8, s35, 2
	v_add_lshl_u32 v6, v6, s35, 2
	v_add_lshl_u32 v4, v4, s35, 2
	v_add_lshl_u32 v27, v31, s35, 2
	v_add_lshl_u32 v23, v23, s35, 2
	v_add_lshl_u32 v21, v21, s35, 2
	v_add_lshl_u32 v19, v19, s35, 2
	v_add_lshl_u32 v17, v17, s35, 2
	v_add_lshl_u32 v15, v15, s35, 2
	v_add_lshl_u32 v13, v13, s35, 2
	v_add_lshl_u32 v11, v11, s35, 2
	v_add_lshl_u32 v9, v9, s35, 2
	v_add_lshl_u32 v7, v7, s35, 2
	v_add_lshl_u32 v5, v5, s35, 2
	v_add_lshl_u32 v3, v3, s35, 2
	v_add_lshl_u32 v2, v2, s35, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s26, s0, s26
	s_and_b32 s24, s0, s24
	s_and_b32 s22, s0, s22
	s_and_b32 s20, s0, s20
	s_and_b32 s18, s0, s18
	s_and_b32 s16, s0, s16
	s_and_b32 s14, s0, s14
	s_and_b32 s12, s0, s12
	s_and_b32 s10, s0, s10
	s_and_b32 s8, s0, s8
	s_and_b32 s6, s0, s6
	s_and_b32 s4, s0, s4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v1, s35, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s25, s0, s25
	s_and_b32 s23, s0, s23
	s_and_b32 s21, s0, s21
	s_and_b32 s19, s0, s19
	s_and_b32 s17, s0, s17
	s_and_b32 s15, s0, s15
	s_and_b32 s13, s0, s13
	s_and_b32 s11, s0, s11
	s_and_b32 s9, s0, s9
	s_and_b32 s7, s0, s7
	s_and_b32 s5, s0, s5
	s_and_b32 s3, s0, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s26
	v_cndmask_b32_e64 v24, 0x80000000, v24, s24
	v_cndmask_b32_e64 v22, 0x80000000, v22, s22
	v_cndmask_b32_e64 v20, 0x80000000, v20, s20
	v_cndmask_b32_e64 v18, 0x80000000, v18, s18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	v_cndmask_b32_e64 v14, 0x80000000, v14, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s12
	v_cndmask_b32_e64 v10, 0x80000000, v10, s10
	v_cndmask_b32_e64 v8, 0x80000000, v8, s8
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s2, s0, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s25
	v_cndmask_b32_e64 v23, 0x80000000, v23, s23
	v_cndmask_b32_e64 v21, 0x80000000, v21, s21
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	v_cndmask_b32_e64 v15, 0x80000000, v15, s15
	v_cndmask_b32_e64 v13, 0x80000000, v13, s13
	v_cndmask_b32_e64 v11, 0x80000000, v11, s11
	v_cndmask_b32_e64 v9, 0x80000000, v9, s9
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s1, s0, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_clause 0x1a
	buffer_store_b32 v70, v26, s[36:39], 0 offen
	buffer_store_b32 v71, v27, s[36:39], 0 offen
	buffer_store_b32 v72, v24, s[36:39], 0 offen
	buffer_store_b32 v57, v23, s[36:39], 0 offen
	buffer_store_b32 v58, v22, s[36:39], 0 offen
	buffer_store_b32 v59, v21, s[36:39], 0 offen
	buffer_store_b32 v60, v20, s[36:39], 0 offen
	buffer_store_b32 v61, v19, s[36:39], 0 offen
	buffer_store_b32 v62, v18, s[36:39], 0 offen
	buffer_store_b32 v63, v17, s[36:39], 0 offen
	buffer_store_b32 v64, v16, s[36:39], 0 offen
	buffer_store_b32 v49, v15, s[36:39], 0 offen
	buffer_store_b32 v50, v14, s[36:39], 0 offen
	buffer_store_b32 v51, v13, s[36:39], 0 offen
	buffer_store_b32 v52, v12, s[36:39], 0 offen
	buffer_store_b32 v53, v11, s[36:39], 0 offen
	buffer_store_b32 v54, v10, s[36:39], 0 offen
	buffer_store_b32 v55, v9, s[36:39], 0 offen
	buffer_store_b32 v56, v8, s[36:39], 0 offen
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
.Ltmp164:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 227
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 227
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18676
; TotalNumSgprs: 77
; NumVgprs: 227
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 227
; Occupancy: 6
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
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
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     227
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
