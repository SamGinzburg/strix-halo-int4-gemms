	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[4:7], s[0:1], 0x94
	s_load_b128 s[24:27], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x74
	s_load_b32 s38, s[0:1], 0x7c
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v107, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v106, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v108, 32, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s8, 1, s4
	s_bitcmp1_b32 s4, 8
	s_cselect_b32 s34, -1, 0
	s_cmp_eq_u32 s8, 1
	s_cselect_b32 s17, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s8, s24
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s11, s3
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s19, s2, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s9, s10
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s11, s9
	s_xor_b32 s9, s3, s24
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s10, s11, s10
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s2, s11, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s10, s25
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s9
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s11, s10
	s_sub_i32 s12, 0, s10
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s16, s2, s9
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s13, s24, s25
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s9, s16, s24
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s13, s13, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s21, s3, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s11, v1
	s_mul_f32 s11, s11, 0x4f7ffffe
	s_cvt_u32_f32 s11, s11
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s11
	s_mul_hi_u32 s12, s11, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, s12
	s_mul_hi_u32 s2, s8, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s2, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s8, s8, s11
	s_sub_i32 s11, s8, s10
	s_cmp_ge_u32 s8, s10
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s8, s11, s8
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s8, s10
	s_cselect_b32 s2, s9, s2
	.loc	1 123 19 is_stmt 0              ; attention_backward.py:123:19
	s_abs_i32 s18, s21
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s13
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s8, s19, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s22, s2, s13
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s19, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s20, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s19, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s15, s20
	s_sub_i32 s43, 0, s20
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s11, s19, 4
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
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s8, s26
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s9, s26
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s10, s26
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s11, s26
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s12, s26
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s14, s26
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s2, s26
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s13, s26
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s24, s26
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s24, s3, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s28, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s38, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s29, s26
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s15, s26
	s_load_b128 s[12:15], s[0:1], 0x38
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s30, s26
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s31, s26
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s35, s26
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s36, s26
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s37, s26
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s39, s26
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s40, s26
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s41, s26
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s65, s26
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s66, s26
	s_cselect_b32 s42, -1, 0
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
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s73, s26
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s74, s26
	s_cselect_b32 s30, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s24, s24, s19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s63, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s35, s24, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s35, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s33, v1
	v_mad_u64_u32 v[2:3], null, s33, 17, v[1:2]
	v_add_nc_u32_e32 v3, s33, v4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s33, v2
	v_add_nc_u32_e32 v7, s33, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v5, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s62, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_lshl_add_u32 v1, s33, 5, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s61, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v9, s33, v7
	v_add_nc_u32_e32 v10, s33, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v11, s33, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v13, s33, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_lshlrev_b32 v9, 1, v9
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v12, s33, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v15, s33, v13
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v14, s33, v12
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v17, s33, v15
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s33, v14
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s33, v17
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_lshlrev_b32 v15, 1, v15
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s33, v16
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x6
	buffer_load_u16 v21, v1, s[8:11], 0 offen
	buffer_load_u16 v22, v2, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s33, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x6
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v20, v3, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v15, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v18
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v23, s33, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v15, 1, v17
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v17, s33, v18
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v18, 1, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v25, s33, v23
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v23, 1, v23
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s33, v17
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s33, v25
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s33, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s33, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v24, 1, v24
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v28, s33, v26
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v30, s33, v28
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v28, 1, v28
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s37, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x2
	buffer_load_u16 v29, v1, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v1, 0x80000000, v24 :: v_dual_lshlrev_b32 v24, 1, v26
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s33, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v27
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v31, 1, v26
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v26, v26, s33, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x4
	buffer_load_u16 v32, v2, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v28, vcc_lo
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v16
	v_lshlrev_b32_e32 v16, 1, v30
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v33, v2, s[8:11], 0 offen
	v_add_lshl_u32 v2, v30, s33, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x4
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v30, v3, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v34, v1, s[8:11], 0 offen
	buffer_load_u16 v35, v2, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_lshl_b32 s8, s38, 4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s9, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v145, 0, v1
	v_xor_b32_e32 v3, 0x90, v1
	v_xor_b32_e32 v36, 0x120, v1
	v_xor_b32_e32 v37, 0x1b0, v1
	v_xor_b32_e32 v38, 0x240, v1
	v_xor_b32_e32 v39, 0x2d0, v1
	v_xor_b32_e32 v40, 0x360, v1
	v_xor_b32_e32 v41, 0x3f0, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s24, s38, v[0:1]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v146, 0, v3
	v_add_nc_u32_e32 v147, 0, v36
	v_add_nc_u32_e32 v148, 0, v37
	v_add_nc_u32_e32 v150, 0, v39
	v_add_nc_u32_e32 v151, 0, v40
	v_add_nc_u32_e32 v149, 0, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s38, 9, v[1:2]
	v_add_nc_u32_e32 v36, s38, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s38, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	v_add_nc_u32_e32 v1, s8, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v36, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s38, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v44, 0x80000000, v1 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_nc_u32_e32 v1, s8, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v152, 0, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s38, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v46, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v38 :: v_dual_lshlrev_b32 v36, 1, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v65, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v67, 0x80000000, v38 :: v_dual_lshlrev_b32 v36, 1, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v48, s38, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v68, 0x80000000, v36, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v45
	v_add_nc_u32_e32 v36, s38, v48
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v70, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s38, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v41
	v_cndmask_b32_e32 v72, 0x80000000, v43, vcc_lo
	v_add_lshl_u32 v41, v41, s38, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s38, v45
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v77, 0x80000000, v38 :: v_dual_lshlrev_b32 v36, 1, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v41, vcc_lo
	v_lshlrev_b32_e32 v41, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s8, s12
	v_cndmask_b32_e32 v83, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v48
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v85, 0x80000000, v41 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v45
	v_cndmask_b32_e32 v69, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 1, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s38, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v75, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v76, 0x80000000, v36 :: v_dual_lshlrev_b32 v41, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s38, v43
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v86, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v43
	v_cndmask_b32_e32 v97, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v41 :: v_dual_lshlrev_b32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s39, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v73, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s37, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v78, 0x80000000, v38, vcc_lo
	v_lshlrev_b32_e32 v38, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(24)
	ds_store_b16 v145, v5
	s_waitcnt vmcnt(17)
	ds_store_b16 v145, v15 offset:1024
	ds_store_b16 v145, v21 offset:2048
	s_waitcnt vmcnt(15)
	ds_store_b16 v145, v29 offset:3072
	ds_store_b16 v146, v4
	ds_store_b16 v146, v18 offset:1024
	ds_store_b16 v146, v22 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v146, v17 offset:3072
	ds_store_b16 v147, v20
	s_waitcnt vmcnt(12)
	ds_store_b16 v147, v32 offset:1024
	ds_store_b16 v147, v6 offset:2048
	ds_store_b16 v147, v19 offset:3072
	ds_store_b16 v148, v7
	s_waitcnt vmcnt(11)
	ds_store_b16 v148, v23 offset:1024
	ds_store_b16 v148, v8 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v148, v28 offset:3072
	ds_store_b16 v149, v9
	ds_store_b16 v149, v25 offset:1024
	ds_store_b16 v149, v10 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v149, v24 offset:3072
	ds_store_b16 v150, v11
	ds_store_b16 v150, v27 offset:1024
	ds_store_b16 v150, v12 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v150, v33 offset:3072
	ds_store_b16 v151, v13
	ds_store_b16 v151, v31 offset:1024
	ds_store_b16 v151, v14 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v151, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v152, v30
	s_waitcnt vmcnt(2)
	ds_store_b16 v152, v26 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v152, v34 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v35 offset:3072
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	v_cndmask_b32_e32 v82, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v88, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v38, v41, s38, 1
	v_cndmask_b32_e32 v98, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s29, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v99, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v100, 0x80000000, v38, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v49, v39, s[8:11], 0 offen
	buffer_load_u16 v50, v40, s[8:11], 0 offen
	buffer_load_u16 v51, v3, s[8:11], 0 offen
	buffer_load_u16 v52, v47, s[8:11], 0 offen
	buffer_load_u16 v53, v44, s[8:11], 0 offen
	buffer_load_u16 v54, v2, s[8:11], 0 offen
	buffer_load_u16 v55, v46, s[8:11], 0 offen
	buffer_load_u16 v56, v65, s[8:11], 0 offen
	buffer_load_u16 v57, v1, s[8:11], 0 offen
	buffer_load_u16 v58, v69, s[8:11], 0 offen
	buffer_load_u16 v59, v74, s[8:11], 0 offen
	buffer_load_u16 v60, v75, s[8:11], 0 offen
	buffer_load_u16 v93, v71, s[8:11], 0 offen
	buffer_load_u16 v94, v73, s[8:11], 0 offen
	buffer_load_u16 v95, v78, s[8:11], 0 offen
	buffer_load_u16 v96, v82, s[8:11], 0 offen
	buffer_load_u16 v61, v67, s[8:11], 0 offen
	buffer_load_u16 v62, v70, s[8:11], 0 offen
	buffer_load_u16 v63, v77, s[8:11], 0 offen
	buffer_load_u16 v64, v79, s[8:11], 0 offen
	buffer_load_u16 v89, v68, s[8:11], 0 offen
	buffer_load_u16 v90, v72, s[8:11], 0 offen
	buffer_load_u16 v91, v83, s[8:11], 0 offen
	buffer_load_u16 v92, v85, s[8:11], 0 offen
	buffer_load_u16 v43, v76, s[8:11], 0 offen
	buffer_load_u16 v41, v86, s[8:11], 0 offen
	buffer_load_u16 v38, v87, s[8:11], 0 offen
	buffer_load_u16 v37, v97, s[8:11], 0 offen
	buffer_load_u16 v36, v88, s[8:11], 0 offen
	buffer_load_u16 v35, v98, s[8:11], 0 offen
	buffer_load_u16 v34, v99, s[8:11], 0 offen
	buffer_load_u16 v33, v100, s[8:11], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_clause 0x1f
	buffer_load_u16 v45, v39, s[8:11], 0 offen
	buffer_load_u16 v42, v40, s[8:11], 0 offen
	buffer_load_u16 v40, v3, s[8:11], 0 offen
	buffer_load_u16 v39, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v44, s[8:11], 0 offen
	buffer_load_u16 v47, v2, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v44, v65, s[8:11], 0 offen
	buffer_load_u16 v66, v1, s[8:11], 0 offen
	buffer_load_u16 v71, v71, s[8:11], 0 offen
	buffer_load_u16 v80, v69, s[8:11], 0 offen
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v81, v74, s[8:11], 0 offen
	buffer_load_u16 v74, v78, s[8:11], 0 offen
	buffer_load_u16 v84, v75, s[8:11], 0 offen
	buffer_load_u16 v78, v82, s[8:11], 0 offen
	buffer_load_u16 v75, v67, s[8:11], 0 offen
	buffer_load_u16 v69, v68, s[8:11], 0 offen
	buffer_load_u16 v67, v76, s[8:11], 0 offen
	buffer_load_u16 v65, v88, s[8:11], 0 offen
	buffer_load_u16 v82, v70, s[8:11], 0 offen
	buffer_load_u16 v76, v72, s[8:11], 0 offen
	buffer_load_u16 v70, v86, s[8:11], 0 offen
	buffer_load_u16 v68, v98, s[8:11], 0 offen
	buffer_load_u16 v86, v77, s[8:11], 0 offen
	buffer_load_u16 v83, v83, s[8:11], 0 offen
	buffer_load_u16 v77, v87, s[8:11], 0 offen
	buffer_load_u16 v72, v99, s[8:11], 0 offen
	buffer_load_u16 v88, v79, s[8:11], 0 offen
	buffer_load_u16 v87, v85, s[8:11], 0 offen
	buffer_load_u16 v85, v97, s[8:11], 0 offen
	buffer_load_u16 v79, v100, s[8:11], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_b32_e32 v1, 0x70, v106
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v2, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp2:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v153, v107, 7, v1
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v1, 64, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v108, 6, v153
	v_xad_u32 v99, v2, 16, 0
	v_xad_u32 v100, v2, 32, 0
	v_xad_u32 v101, v2, 48, 0
	v_xad_u32 v102, v2, 64, 0
	v_xad_u32 v103, 0x50, v2, 0
	v_xad_u32 v104, 0x60, v2, 0
	v_xad_u32 v105, 0x70, v2, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v135, 16, v45
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v136, 16, v42
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v137, 16, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v118, 16, v56
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v138, 16, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v120, 16, v58
	v_lshlrev_b32_e32 v121, 16, v59
	v_lshlrev_b32_e32 v122, 16, v60
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v139, 16, v48
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v140, 16, v47
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v142, 16, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v123, 16, v61
	v_lshlrev_b32_e32 v124, 16, v62
	v_lshlrev_b32_e32 v125, 16, v63
	v_lshlrev_b32_e32 v126, 16, v64
	v_lshlrev_b32_e32 v90, 16, v90
	v_lshlrev_b32_e32 v92, 16, v92
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v110, 0, v1
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v128, 16, v41
	v_lshlrev_b32_e32 v127, 16, v43
	v_lshlrev_b32_e32 v130, 16, v37
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v98, 0, v2
	ds_load_b128 v[1:4], v98
	ds_load_b128 v[5:8], v99
	ds_load_b128 v[9:12], v100
	ds_load_b128 v[13:16], v101
	ds_load_b128 v[17:20], v102
	ds_load_b128 v[21:24], v103
	ds_load_b128 v[25:28], v104
	ds_load_b128 v[29:32], v105
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v145, v45
	ds_store_b16 v145, v48 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v145, v66 offset:2048
	ds_store_b16 v146, v42
	ds_store_b16 v146, v47 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v145, v71 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b16 v146, v80 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v146, v73 offset:3072
	ds_store_b16 v147, v40
	ds_store_b16 v147, v46 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v147, v81 offset:2048
	ds_store_b16 v148, v39
	ds_store_b16 v148, v44 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v147, v74 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v148, v84 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v148, v78 offset:3072
	s_waitcnt vmcnt(15)
	ds_store_b16 v149, v75
	s_waitcnt vmcnt(14)
	ds_store_b16 v149, v69 offset:1024
	s_waitcnt vmcnt(13)
	ds_store_b16 v149, v67 offset:2048
	s_waitcnt vmcnt(12)
	ds_store_b16 v149, v65 offset:3072
	s_waitcnt vmcnt(11)
	ds_store_b16 v150, v82
	s_waitcnt vmcnt(10)
	ds_store_b16 v150, v76 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v150, v70 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v150, v68 offset:3072
	s_waitcnt vmcnt(7)
	ds_store_b16 v151, v86
	s_waitcnt vmcnt(6)
	ds_store_b16 v151, v83 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v151, v77 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v151, v72 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v152, v88
	s_waitcnt vmcnt(2)
	ds_store_b16 v152, v87 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v152, v85 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v79 offset:3072
	v_lshlrev_b32_e32 v87, 16, v87
	v_lshlrev_b32_e32 v88, 16, v88
	v_lshlrev_b32_e32 v84, 16, v84
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v167, v92, v87 :: v_dual_lshlrev_b32 v80, 16, v80
	v_mul_f32_e32 v163, v126, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v155, v122, v84
	v_mul_f32_e32 v161, v124, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v144, v120, v80
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v161, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v167, v92, v87 :: v_dual_lshlrev_b32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v163, v126, v88
	v_fmac_f32_e32 v155, v122, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v161, v124, v82
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v144, v144 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v88, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v169, v128, v70 :: v_dual_lshlrev_b32 v132, 16, v35
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v144, v120, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v88, v88, v88 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v169, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v114, 16, v52
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v85, 16, v85
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v88, v88, v88 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v169, v128, v70 :: v_dual_lshlrev_b32 v68, 16, v68
.Ltmp16:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v134, 16, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v124, v88, -1, -1 op_sel:[1,0]
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v117, 16, v55
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v84, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v113, 16, v51
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v88, v88, v124 :: v_dual_lshlrev_b32 v79, 16, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v171, v130, v85 :: v_dual_add_f32 v84, v84, v120
	v_mul_f32_e32 v173, v132, v68
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v82, v161, v161 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s48, v88, 31
.Ltmp25:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v76, 16, v76
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s44, v84, 31
.Ltmp27:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v175, v134, v79 :: v_dual_lshlrev_b32 v86, 16, v86
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v171, v171 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v165, v90, v76
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v173, v173 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v162, v125, v86
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v112, 16, v50
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v129, 16, v38
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v131, 16, v36
	v_lshlrev_b32_e32 v133, 16, v34
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v165, v90, v76
	v_add_f32_dpp v90, v169, v169 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v162, v125, v86
	v_add_f32_dpp v76, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v86, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v90, v90, v90 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v175, v175 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v116, 16, v54
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v90, v90, v90 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v171, v130, v85
	v_fmac_f32_e32 v173, v132, v68
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v86, v86 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v126, v90, -1, -1 op_sel:[1,0]
.Ltmp45:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v119, 16, v57
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v111, 16, v49
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v86, -1, -1 op_sel:[1,0]
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v90, v90, v126 :: v_dual_lshlrev_b32 v115, 16, v53
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v66, 16, v66
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s50, v90, 31
.Ltmp52:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v141, 16, v46
	ds_load_b128 v[33:36], v98
	ds_load_b128 v[37:40], v99
	ds_load_b128 v[41:44], v100
	ds_load_b128 v[45:48], v101
	ds_load_b128 v[49:52], v102
	ds_load_b128 v[53:56], v103
	ds_load_b128 v[57:60], v104
	ds_load_b128 v[61:64], v105
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v99, v112, v136
	v_mul_f32_e32 v101, v114, v138
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v86, v86, v122
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v102, v115, v139
	v_mul_f32_e32 v143, v119, v66
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v67, 16, v67
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v143, v143 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v99, v112, v136
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v112, v76, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v101, v114, v138 :: v_dual_fmac_f32 v102, v115, v139
.Ltmp61:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v100, v113, v137 :: v_dual_fmac_f32 v143, v119, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v112
	v_add_f32_dpp v68, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v168, v127, v67
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s31, v76, 31
.Ltmp65:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v89, 16, v89
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v71, 16, v71
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v76, s31
.Ltmp69:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v164, v89, v69
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v100, v113, v137
	v_fmac_f32_e32 v168, v127, v67
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v99, v68, -1, -1 op_sel:[1,0]
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v81, 16, v81
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v164, v89, v69
	v_add_f32_dpp v69, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v68, v68, v99 :: v_dual_lshlrev_b32 v65, 16, v65
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v85, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v68, 31
.Ltmp76:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v172, v131, v65
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v68, s11
.Ltmp79:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v156, v93, v71
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v172, v172 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v69, -1, -1 op_sel:[1,0]
.Ltmp83:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v94, 16, v94
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v72, 16, v72
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v69, v100 :: v_dual_fmac_f32 v172, v131, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v156, v93, v71
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v93, v66, -1, -1 op_sel:[1,0]
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v175, v134, v79
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v69, 31
.Ltmp91:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v104, v117, v141 :: v_dual_lshlrev_b32 v75, 16, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v66, v66, v93
.Ltmp93:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v77, 16, v77
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s12
.Ltmp95:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v105, v118, v142
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s9, v66, 31
.Ltmp97:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v73, 16, v73
	v_lshlrev_b32_e32 v83, 16, v83
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v104, v117, v141
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v66, s9
.Ltmp101:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v121, v81
	v_mul_f32_e32 v157, v94, v73
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v105, v118, v142
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v118, v82, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v89, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v82, v82, v118
.Ltmp107:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v98, v111, v135
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v154, v121, v81
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v121, v85, -1, -1 op_sel:[1,0]
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v157, v94, v73
	v_add_f32_dpp v73, v143, v143 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v85, v85, v121
	v_add_f32_dpp v89, v89, v89 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v98, v111, v135
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s45, v85, 31
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v89, v89, v89 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v98, v67, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v102, v71, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v94, v171, v171 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v104, v73, -1, -1 op_sel:[1,0]
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v67, v67, v98 :: v_dual_mov_b32 v98, s45
.Ltmp119:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v174, v133, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v73, v73, v104
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v67, 31
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v71, v71, v102
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v174, v174 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s28, v73, 31
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v67, s10
.Ltmp124:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v103, v116, v140
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v174, v133, v72
	v_add_f32_dpp v72, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v73, s28
	v_readlane_b32 s14, v71, 31
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_barrier
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s42, v82, 31
	v_mov_b32_e32 v71, s14
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v103, v116, v140
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s46, v86, 31
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v93, s44
.Ltmp133:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s31, s27, 15
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v99, s46
	v_permlanex16_b32 v103, v72, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v72, v72, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v72, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v101, v70, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v72, s15
.Ltmp138:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v160, v123, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v70, v70, v101 :: v_dual_mov_b32 v101, s48
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v160, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s13, v70, 31
.Ltmp141:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v95, 16, v95
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v160, v123, v75
	v_add_f32_dpp v75, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v70, s13
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v160, v160 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v81, v81, v81 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v81, v81, v81 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v111, v75, -1, -1 op_sel:[1,0]
.Ltmp146:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v96, 16, v96
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v117, v81, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v75, v75, v111
	v_add_f32_e32 v81, v81, v117
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v92, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s30, v75, 31
	v_readlane_b32 s41, v81, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v65, v65, v92
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v75, s30 :: v_dual_mov_b32 v90, s41
.Ltmp152:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v170, v129, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v65, 31
	v_mov_b32_dpp v170, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v65, s8 :: v_dual_fmac_f32 v170, v129, v77
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v113, v77, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v77, v113
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v77, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v77, s36 :: v_dual_lshlrev_b32 v74, 16, v74
.Ltmp158:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v158, v95, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v158, v95, v74
	v_add_f32_dpp v74, v144, v144 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v95, v172, v172 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v79, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v105, v74, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v115, v79, -1, -1 op_sel:[1,0]
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v74, v74, v105 :: v_dual_add_f32 v79, v79, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s29, v74, 31
	v_readlane_b32 s39, v79, 31
.Ltmp164:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v74, s29
	v_permlanex16_b32 v125, v89, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v79, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp166:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v159, v96, v78
	s_mov_b32 s39, 0
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v89, v89, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s49, v89, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v159, v96, v78
	v_add_f32_dpp v78, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v96, v173, v173 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v114, v78, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v109, 1, v108
	v_permlanex16_b32 v116, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v78, v114 :: v_dual_add_nc_u32 v97, 0, v109
	v_add_f32_e32 v80, v80, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v78, 31
.Ltmp173:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v91, 16, v91
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v80, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v78, s37
.Ltmp175:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v166, v91, v83
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v80, s40
	ds_store_b128 v97, v[65:68]
	ds_store_b128 v97, v[69:72] offset:16
	ds_store_b128 v97, v[73:76] offset:32
	ds_store_b128 v97, v[77:80] offset:48
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v65, v174, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v175, v175 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v94, v94 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v95, v95 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v166, v91, v83
	v_add_f32_dpp v83, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v91, v170, v170 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v96, v96 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v91, v91, v91 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v91, v91, v91 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v119, v83, -1, -1 op_sel:[1,0]
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v123, v87, -1, -1 op_sel:[1,0]
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v83, v83, v119
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	v_permlanex16_b32 v127, v91, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
.Ltmp183:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v87, v87, v123
.Ltmp184:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s43, v83, 31
	v_permlanex16_b32 v71, v68, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v72, v69, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v73, v65, -1, -1 op_sel:[1,0]
	v_readlane_b32 s47, v87, 31
	ds_load_b128 v[86:89], v110
	ds_load_b128 v[82:85], v110 offset:16
	ds_load_b128 v[78:81], v110 offset:32
	ds_load_b128 v[74:77], v110 offset:48
	v_permlanex16_b32 v94, v66, -1, -1 op_sel:[1,0]
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v91, v91, v127
	v_dual_add_f32 v67, v67, v70 :: v_dual_add_f32 v68, v68, v71
	v_add_f32_e32 v69, v69, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v65, v65, v73 :: v_dual_add_f32 v66, v66, v94
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s51, v91, 31
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s8, v67, 31
	v_readlane_b32 s9, v68, 31
	v_readlane_b32 s10, v69, 31
	v_readlane_b32 s11, v65, 31
	v_readlane_b32 s12, v66, 31
	v_dual_mov_b32 v91, s42 :: v_dual_mov_b32 v92, s43
	v_dual_mov_b32 v100, s47 :: v_dual_mov_b32 v65, s49
	v_dual_mov_b32 v66, s50 :: v_dual_mov_b32 v67, s51
	v_dual_mov_b32 v68, s8 :: v_dual_mov_b32 v69, s9
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v132, v75
	v_dual_mov_b32 v70, s10 :: v_dual_mov_b32 v71, s11
	v_mov_b32_e32 v138, v77
	v_mov_b32_e32 v72, s12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v97, v[90:93]
	ds_store_b128 v97, v[98:101] offset:16
	ds_store_b128 v97, v[65:68] offset:32
	ds_store_b128 v97, v[69:72] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[98:101], v110
	ds_load_b128 v[94:97], v110 offset:16
	ds_load_b128 v[102:105], v110 offset:32
	ds_load_b128 v[90:93], v110 offset:48
	v_mov_b32_e32 v121, v86
	v_dual_mov_b32 v117, v87 :: v_dual_mov_b32 v118, v88
	v_mov_b32_e32 v119, v89
	v_dual_mov_b32 v125, v82 :: v_dual_mov_b32 v126, v83
	v_dual_mov_b32 v127, v84 :: v_dual_mov_b32 v134, v85
	v_dual_mov_b32 v144, v78 :: v_dual_mov_b32 v167, v79
	v_dual_mov_b32 v140, v80 :: v_dual_mov_b32 v169, v81
	v_mov_b32_e32 v131, v74
	v_mov_b32_e32 v133, v76
.Ltmp187:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s8, s31, 31
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v118, v118 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v120, v98
	v_dual_mov_b32 v122, v99 :: v_dual_mov_b32 v123, v100
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v130, v93
	v_dual_mov_b32 v124, v101 :: v_dual_mov_b32 v135, v94
	v_dual_mov_b32 v136, v95 :: v_dual_mov_b32 v137, v96
	v_mov_b32_e32 v143, v97
	v_dual_mov_b32 v141, v102 :: v_dual_mov_b32 v142, v103
	v_dual_mov_b32 v128, v104 :: v_dual_mov_b32 v129, v105
	v_dual_mov_b32 v139, v90 :: v_dual_mov_b32 v170, v91
	v_mov_b32_e32 v168, v92
.Ltmp189:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s8, s8, 28
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v117, v117 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v122, v122 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v134, v134 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v129, v129 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp191:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s31, s31, s8
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s8, s18, s23
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s52, s31, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s4, s4, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s19, s6
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s10, s19, s5
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, s7
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s10, s10, s7
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s4, s27, s4
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s4, s4, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s9, s4, 31
	s_lshr_b32 s9, s9, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s9
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s9, s10, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s4, s4, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s39, s9, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s52, s52, s4
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x8
	s_load_b32 s53, s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v65, 0, 1, s17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s9, s21, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s10, s22, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v65
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s11, s19, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, 32
	s_min_i32 s11, s27, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s12, s11, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 28
	s_add_i32 s11, s11, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s11, s11, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s52, s52, s11
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s11, s8, s20
	s_xor_b32 s9, s9, s10
	s_sub_i32 s10, s18, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s10, s20
	s_cmp_ge_u32 s10, s20
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v65, 1, v108
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s20
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[20:23], s[0:1], 0x48
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v162, v65, v107
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x10
	s_load_b64 s[44:45], s[0:1], 0x28
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s8, s11, s8
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v154, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s8, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v65, s19, v162
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s1, s8, s9
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s16, s16, s25
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v155, 2, v154
	v_or_b32_e32 v156, 4, v154
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v163, s7, v65
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v157, 6, v154
	v_or_b32_e32 v158, 8, v154
	v_or_b32_e32 v159, 10, v154
	v_or_b32_e32 v160, 12, v154
	v_or_b32_e32 v161, 14, v154
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, s26, v65
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s25, s1, s16
	v_subrev_nc_u32_e32 v164, s5, v163
	v_add_nc_u32_e32 v165, s6, v163
	v_xor_b32_e32 v110, 16, v153
	v_xor_b32_e32 v111, 32, v153
	v_xor_b32_e32 v112, 48, v153
	v_xor_b32_e32 v113, 64, v153
	v_xor_b32_e32 v114, 0x50, v153
	v_xor_b32_e32 v115, 0x60, v153
	v_xor_b32_e32 v116, 0x70, v153
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
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_mov_b32 v65, 0
	v_add_nc_u32_e32 v166, 0, v110
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v171, 0, v111
	v_add_nc_u32_e32 v173, 0, v112
	v_add_nc_u32_e32 v174, 0, v113
	v_add_nc_u32_e32 v175, 0, v114
	v_add_nc_u32_e32 v176, 0, v115
	v_add_nc_u32_e32 v177, 0, v116
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s49, s29, 0xffff
	s_mov_b32 s48, s28
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s43, s39
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v66, s54, v66 :: v_dual_mul_f32 v67, s54, v67
	v_dual_mul_f32 v68, s54, v68 :: v_dual_mul_f32 v69, s54, v69
	v_dual_mul_f32 v70, s54, v70 :: v_dual_mul_f32 v71, s54, v71
	v_dual_mul_f32 v72, s54, v72 :: v_dual_mul_f32 v73, s54, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v179, 0xff800000, v66, s58
	v_cndmask_b32_e64 v67, 0xff800000, v67, s47
	v_cndmask_b32_e64 v68, 0xff800000, v68, s60
	v_cndmask_b32_e64 v69, 0xff800000, v69, s46
	v_cndmask_b32_e64 v70, 0xff800000, v70, s59
	v_cndmask_b32_e64 v71, 0xff800000, v71, s56
	v_cndmask_b32_e64 v72, 0xff800000, v72, s61
	v_cndmask_b32_e64 v73, 0xff800000, v73, s57
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v179, v67, v68
.Ltmp193:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v172
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v180, v69, v70, v71
.Ltmp195:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s43, s43, 16
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v181, v72, v73
.Ltmp197:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s43, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v66, v180, v181
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v180, v66, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v172, v66, v180
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v68, v68, v66
	v_sub_f32_e32 v69, v69, v66
	v_sub_f32_e32 v70, v70, v66
	v_sub_f32_e32 v71, v71, v66
	v_sub_f32_e32 v73, v73, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v73, v73
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v68, 0, v68, s60
	v_cndmask_b32_e64 v69, 0, v69, s46
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v70, 0, v70, s59
	v_cndmask_b32_e64 v71, 0, v71, s56
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v72, v72, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_sub_f32 v179, v179, v66 :: v_dual_add_f32 v68, v68, v69
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v73, 0, v73, s57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp201:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v70, v71
.Ltmp202:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v179, v179
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v71, v172, v66 :: v_dual_mov_b32 v172, v66
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s61
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_sub_f32_e32 v67, v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v179, 0, v179, s58
.Ltmp203:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp204:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v179, v67
	v_dual_add_f32 v67, v67, v68 :: v_dual_add_f32 v68, v69, v70
.Ltmp206:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v68, v67, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp209:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v67, v178, v69
	v_mov_b32_e32 v178, v67
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
	v_add_nc_u32_e32 v191, 0, v153
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
	v_mad_u64_u32 v[66:67], null, s18, s33, v[0:1]
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s1, s2, s1
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v67, s33, v66
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s7, s2, s7
	s_and_b32 s9, s2, s9
	s_and_b32 s14, s2, s14
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v68, s33, v67
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_lshlrev_b32 v67, 1, v67
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s56
	s_and_b32 s8, s2, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v69, s33, v68
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_lshlrev_b32_e32 v68, 1, v68
	buffer_load_u16 v182, v66, s[48:51], 0 offen
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s10, s2, s10
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v70, s33, v69
	.loc	1 229 28                        ; attention_backward.py:229:28
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	v_lshlrev_b32_e32 v66, 1, v69
	v_cndmask_b32_e64 v68, 0x80000000, v68, s5
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 s1, s2, s15
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v71, s33, v70
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v70, 1, v70
	v_cndmask_b32_e64 v66, 0x80000000, v66, s6
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v72, s33, v71
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	buffer_load_u16 v183, v66, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v73, s33, v72
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v69, s33, v73
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v73, 1, v73
	v_cndmask_b32_e64 v72, 0x80000000, v72, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v179, s33, v69
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v69, 1, v69
	v_cndmask_b32_e64 v73, 0x80000000, v73, s10
	s_clause 0x1
	buffer_load_u16 v72, v72, s[48:51], 0 offen
	buffer_load_u16 v73, v73, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v66, s33, v179
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v179, 1, v179
	v_cndmask_b32_e64 v69, 0x80000000, v69, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v180, s33, v66
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v66, 1, v66
	v_cndmask_b32_e64 v179, 0x80000000, v179, s12
	buffer_load_u16 v69, v69, s[48:51], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v181, s33, v180
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	buffer_load_u16 v185, v179, s[48:51], 0 offen
	v_lshlrev_b32_e32 v180, 1, v180
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v184, s33, v181
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v179, 1, v181
	buffer_load_u16 v186, v66, s[48:51], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v180, s14
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v181, s33, v184
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v179, 0x80000000, v179 :: v_dual_lshlrev_b32 v66, 1, v184
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v184, 1, v181
	v_add_lshl_u32 v181, v181, s33, 1
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v71, 0x80000000, v71, s8
	v_cndmask_b32_e32 v184, 0x80000000, v184, vcc_lo
	v_cndmask_b32_e64 v181, 0x80000000, v181, s1
	s_clause 0x6
	buffer_load_u16 v70, v70, s[48:51], 0 offen
	buffer_load_u16 v71, v71, s[48:51], 0 offen
	buffer_load_u16 v187, v180, s[48:51], 0 offen
	buffer_load_u16 v188, v179, s[48:51], 0 offen
	buffer_load_u16 v189, v66, s[48:51], 0 offen
	buffer_load_u16 v184, v184, s[48:51], 0 offen
	buffer_load_u16 v190, v181, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v179, s43, v154
	v_or_b32_e32 v180, s43, v155
	v_or_b32_e32 v181, s43, v156
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v145, v182
	s_waitcnt vmcnt(14)
	ds_store_b16 v146, v67
	s_waitcnt vmcnt(13)
	ds_store_b16 v147, v68
	s_waitcnt vmcnt(12)
	ds_store_b16 v148, v183
	s_waitcnt vmcnt(6)
	ds_store_b16 v149, v70
	s_waitcnt vmcnt(5)
	ds_store_b16 v150, v71
	ds_store_b16 v151, v72
	ds_store_b16 v152, v73
	ds_store_b16 v145, v69 offset:1024
	ds_store_b16 v146, v185 offset:1024
	ds_store_b16 v147, v186 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v148, v187 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v149, v188 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v150, v189 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v151, v184 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v190 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[187:190], v191
	ds_load_b128 v[191:194], v166
	ds_load_b128 v[195:198], v171
	ds_load_b128 v[199:202], v173
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[203:206], v174
	ds_load_b128 v[207:210], v175
	.loc	1 234 26                        ; attention_backward.py:234:26
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
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[211:214], v176
	ds_load_b128 v[215:218], v177
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v182, s43, v157
	v_or_b32_e32 v183, s43, v158
	v_or_b32_e32 v184, s43, v159
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[187:194], v[1:8], v[66:73]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v185, s43, v160
	v_or_b32_e32 v186, s43, v161
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e32 vcc_lo, s27, v179
	v_cmp_gt_i32_e64 s1, s27, v180
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[195:202], v[9:16], v[66:73]
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s5, s27, v181
	v_cmp_gt_i32_e64 s6, s27, v182
	v_cmp_gt_i32_e64 s7, s27, v183
	v_cmp_gt_i32_e64 s8, s27, v184
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[203:210], v[17:24], v[66:73]
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s9, s27, v185
	v_cmp_gt_i32_e64 s10, s27, v186
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s58, s0, vcc_lo
	s_and_b32 s47, s0, s1
	s_and_b32 s60, s0, s5
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[211:218], v[25:32], v[66:73]
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
	v_cmp_le_i32_e32 vcc_lo, v179, v163
	v_cmp_le_i32_e64 s1, v180, v163
	v_cmp_le_i32_e64 s5, v181, v163
	v_cmp_le_i32_e64 s6, v182, v163
	v_cmp_le_i32_e64 s7, v183, v163
	v_cmp_le_i32_e64 s8, v184, v163
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s11, vcc_lo, s58
	s_and_b32 s1, s1, s47
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s9, v185, v163
	v_cmp_le_i32_e64 s10, v186, v163
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
	v_cmp_ge_i32_e32 vcc_lo, v179, v164
	v_cmp_ge_i32_e64 s1, v180, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s11, v179, v165
	v_cmp_le_i32_e64 s12, v180, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s5, v181, v164
	v_cmp_ge_i32_e64 s6, v182, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s13, v181, v165
	v_cmp_le_i32_e64 s14, v182, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v183, v164
	v_cmp_ge_i32_e64 s8, v184, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s15, v183, v165
	v_cmp_le_i32_e64 s16, v184, v165
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s9, v185, v164
	v_cmp_ge_i32_e64 s10, v186, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v185, v165
	v_cmp_le_i32_e64 s18, v186, v165
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
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v67, 0
.LBB0_12:                               ; %Flow139
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v67
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v86, v121 :: v_dual_and_b32 v65, 31, v0
	v_dual_add_f32 v69, v87, v117 :: v_dual_add_f32 v70, v88, v118
.Ltmp213:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v73, 0, 32, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v67
.Ltmp214:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v71, v89, v119 :: v_dual_add_f32 v86, v98, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp215:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v73, v67, v73
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v89, v101, v124 :: v_dual_add_f32 v98, v82, v125
	v_dual_add_f32 v117, v78, v144 :: v_dual_add_f32 v118, v79, v167
.Ltmp217:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v73, v73
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e64 s1, 0, v108
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v87, v99, v122 :: v_dual_add_f32 v88, v100, v123
	v_dual_add_f32 v99, v83, v126 :: v_dual_add_f32 v100, v84, v127
	v_dual_add_f32 v119, v80, v140 :: v_dual_add_f32 v120, v81, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp219:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v72, v73, v72 :: v_dual_lshlrev_b32 v73, 2, v107
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v127, v92, v168
	v_dual_add_f32 v101, v85, v134 :: v_dual_add_f32 v94, v94, v135
.Ltmp221:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v66, v66, v72 :: v_dual_add_f32 v103, v103, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add3_u32 v82, 0, v73, v109
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v72, s19, v65
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v95, v95, v136 :: v_dual_add_f32 v96, v96, v137
.Ltmp223:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_dual_cndmask_b32 v167, 0, v66 :: v_dual_add_f32 v104, v104, v128
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v66, v65, 2, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s26, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v65, s24, v65, 2
	ds_store_b32 v82, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v67, v66
	s_and_b32 vcc_lo, s1, vcc_lo
	v_dual_mov_b32 v72, 0 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v81, 0
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v97, v97, v143 :: v_dual_add_f32 v102, v102, v141
.Ltmp225:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v105, v105, v129 :: v_dual_add_f32 v122, v75, v132
	v_dual_add_f32 v121, v74, v131 :: v_dual_add_f32 v124, v77, v138
	v_dual_add_f32 v123, v76, v133 :: v_dual_add_f32 v126, v91, v170
	v_dual_add_f32 v125, v90, v139 :: v_dual_add_f32 v128, v93, v130
	v_lshrrev_b32_e32 v166, 4, v0
.Ltmp227:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v67, v65, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v81, v[68:71]
	ds_store_b128 v81, v[86:89] offset:16
	ds_store_b128 v81, v[98:101] offset:32
	ds_store_b128 v81, v[94:97] offset:48
	ds_store_b128 v81, v[117:120] offset:64
	ds_store_b128 v81, v[102:105] offset:80
	ds_store_b128 v81, v[121:124] offset:96
	ds_store_b128 v81, v[125:128] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v66, v66
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_mov_b32_e32 v67, v72
	v_mov_b32_e32 v80, v72
	v_mov_b32_e32 v79, v72
	v_mov_b32_e32 v78, v72
	v_mov_b32_e32 v77, v72
	v_mov_b32_e32 v76, v72
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	s_ashr_i32 s5, s31, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v66, v65, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v81, v[68:71]
	ds_store_b128 v81, v[86:89] offset:16
	ds_store_b128 v81, v[98:101] offset:32
	ds_store_b128 v81, v[94:97] offset:48
	ds_store_b128 v81, v[117:120] offset:64
	ds_store_b128 v81, v[102:105] offset:80
	v_mov_b32_e32 v71, v72
	v_mov_b32_e32 v70, v72
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v68, v72
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v65, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v89, v72
	v_mov_b32_e32 v104, v72
	v_mov_b32_e32 v103, v72
	v_mov_b32_e32 v102, v72
	v_mov_b32_e32 v101, v72
	v_mov_b32_e32 v100, v72
	v_mov_b32_e32 v99, v72
	v_mov_b32_e32 v98, v72
	v_mov_b32_e32 v97, v72
	ds_store_b128 v81, v[121:124] offset:96
	ds_store_b128 v81, v[125:128] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v66, 0x5410 :: v_dual_and_b32 v65, 16, v0
	.loc	1 167 13 is_stmt 1              ; attention_backward.py:167:13
	s_add_i32 s1, s38, s38
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v168, v82
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v169, s1, s38, v0
	v_mov_b32_e32 v67, 0x7632
	v_cmp_eq_u32_e32 vcc_lo, 0, v65
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v178, 0, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v170, s38, v169
	v_add_nc_u32_e32 v173, 0, v106
	v_dual_cndmask_b32 v65, 0x1054, v66 :: v_dual_add_nc_u32 v180, 0, v112
	v_cndmask_b32_e32 v66, 0x3276, v67, vcc_lo
	v_dual_mov_b32 v100, v81 :: v_dual_add_nc_u32 v171, s38, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v65, v65, 8, v65
	v_dual_mov_b32 v98, v81 :: v_dual_lshlrev_b32 v67, 4, v107
	v_lshl_or_b32 v66, v66, 8, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v99, v81 :: v_dual_add_nc_u32 v172, s38, v171
	v_dual_mov_b32 v102, v81 :: v_dual_and_b32 v65, 0x540054, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v66, 0x760076, v66
	v_dual_mov_b32 v101, v81 :: v_dual_add_nc_u32 v174, s38, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v65, v65, 4, v65
	v_lshl_or_b32 v66, v66, 4, v66
	v_dual_mov_b32 v90, v81 :: v_dual_add_nc_u32 v177, 0, v67
	v_dual_mov_b32 v92, v81 :: v_dual_add_nc_u32 v179, 0, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v104, v81 :: v_dual_and_b32 v175, 0x5040504, v65
	v_dual_mov_b32 v103, v81 :: v_dual_and_b32 v176, 0x7060706, v66
	v_dual_mov_b32 v94, v81 :: v_dual_add_nc_u32 v181, 0, v113
	v_dual_mov_b32 v91, v81 :: v_dual_add_nc_u32 v182, 0, v114
	v_dual_mov_b32 v96, v81 :: v_dual_add_nc_u32 v183, 0, v115
	v_dual_mov_b32 v93, v81 :: v_dual_add_nc_u32 v184, 0, v116
	v_mov_b32_e32 v95, v81
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, v81
	v_mov_b32_e32 v75, v81
	v_dual_mov_b32 v76, v81 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v77, v81
	v_mov_b32_e32 v78, v81
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v80, v81
	v_mov_b32_e32 v66, v81
	v_mov_b32_e32 v67, v81
	v_mov_b32_e32 v68, v81
	v_mov_b32_e32 v69, v81
	v_mov_b32_e32 v70, v81
	v_mov_b32_e32 v71, v81
	v_mov_b32_e32 v72, v81
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s48, s5, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s49, s25, s5
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
	v_add_nc_u32_e32 v82, s12, v0
	v_add_nc_u32_e32 v83, s12, v169
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s14, s14, s49
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v84, s12, v170
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s14, s14, s38
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v86, s38, v82
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v187, s14, v0, 1
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v87, s12, v172
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v88, 0x80000000, v86, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v86, s38, v86
	v_add_nc_u32_e32 v186, s12, v174
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_clause 0x1
	buffer_load_u8 v188, v82, s[40:43], 0 offen
	buffer_load_u8 v88, v88, s[40:43], 0 offen
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v82, 0x80000000, v86
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s39, s39, 16
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v212, 15, v188
	.loc	1 362 32                        ; attention_backward.py:362:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b16 v137.l, 4, v88.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v212
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v85, s12, v171
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s71
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v86, 0x80000000, v187, s12
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s12, s3, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
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
	buffer_load_u16 v86, v86, s[44:47], 0 offen
	buffer_load_u16 v189, v189, s[44:47], 0 offen
	buffer_load_u16 v190, v190, s[44:47], 0 offen
	buffer_load_u16 v191, v191, s[44:47], 0 offen
	buffer_load_u16 v192, v192, s[44:47], 0 offen
	buffer_load_u16 v193, v193, s[44:47], 0 offen
	buffer_load_u16 v194, v194, s[44:47], 0 offen
	buffer_load_u16 v195, v195, s[44:47], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
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
	buffer_load_u8 v203, v82, s[40:43], 0 offen
	buffer_load_u8 v204, v83, s[40:43], 0 offen
	buffer_load_u8 v205, v84, s[40:43], 0 offen
	buffer_load_u8 v206, v85, s[40:43], 0 offen
	buffer_load_u8 v87, v87, s[40:43], 0 offen
	buffer_load_u8 v186, v186, s[40:43], 0 offen
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v84.h, 0
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v83.l, v188.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v84.l, 4, v188.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v83.h, v88.l, 15
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v82, v81
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v209.h, v84.h
	v_mov_b16_e64 v137.h, v84.h
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v83.l
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v208.h, v84.h
	v_mov_b16_e64 v211.h, v84.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v188, 16, v86
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v138.h, v84.h
	v_mov_b16_e64 v207.h, v84.h
	v_mov_b16_e64 v210.h, v84.h
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
	v_and_b16 v85.h, v206.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v218, 15, v206
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(1)
	v_and_b16 v86.l, v87.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v86.h, v186.l, 15
	.loc	1 360 32 is_stmt 0              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v206, 0, v209, s8
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v213, 15, v88
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v88, 0, v84, s11
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v219, 15, v87
	v_and_b32_e32 v220, 15, v186
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v210.l, 4, v87.l
	v_lshrrev_b16 v211.l, 4, v186.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v87, 0, v137, s5
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v137, -16, v213
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v186, v212, v214, vcc_lo
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v83.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v84.l, v203.l, 15
	v_and_b16 v85.l, v205.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v217, 15, v205
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v205, 0, v208, s7
	v_cndmask_b32_e64 v208, 0, v211, s10
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v215, 15, v203
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v203, -16, v88
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v83, v213, v137, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v88
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v84.h, v204.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v207.l, 4, v204.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v209, -16, v215
	v_or_b32_e32 v211, -16, v217
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v88, v88, v203, vcc_lo
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v84.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v204, 0, v207, s6
	v_cndmask_b32_e64 v207, 0, v210, s9
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v210, -16, v216
	v_or_b32_e32 v212, -16, v218
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v203, v215, v209, vcc_lo
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v84.h
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v221, -16, v220
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v138, 0, v138, s1
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v84, v216, v210, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v85.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_mul_f32_e32 v88, v88, v189
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v219
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v137, -16, v87
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v186, v186
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v209, v217, v211, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v85.h
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v211, -16, v138
	v_or_b32_e32 v213, -16, v205
	v_or_b32_e32 v215, -16, v207
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v85, v218, v212, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v86.l
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
	v_cmp_lt_u16_e32 vcc_lo, 7, v86.h
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v199, 16, v199
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v214, -16, v206
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v86, v220, v221, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v87
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v88, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v87, v87, v137, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v138
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_dual_mul_f32 v86, v86, v202 :: v_dual_lshlrev_b32 v197, 16, v197
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v138, v138, v211, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v204
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v201, 16, v201
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v86, v86
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v87, v87, v191 :: v_dual_lshlrev_b32 v190, 16, v190
	v_mul_f32_e32 v137, v186, v188
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v186, v204, v212, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v205
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v189, v83, v190 :: v_dual_lshlrev_b32 v192, 16, v192
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v188, v205, v213, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v206
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_dual_mul_f32 v191, v203, v192 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v83, v137, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v138, v138, v193
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v204, v206, v214, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v207
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v188, v188
	v_mul_f32_e32 v192, v84, v194
	v_cvt_f32_i32_e32 v190, v204
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v205, v207, v215, vcc_lo
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v208
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v207, v209
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v83, v137, v83, 0x7fff
	v_bfe_u32 v84, v88, 16, 1
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
	v_mul_f32_e32 v85, v85, v198
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
	v_add3_u32 v84, v88, v84, 0x7fff
	v_add3_u32 v88, v189, v137, 0x7fff
	v_bfe_u32 v137, v87, 16, 1
	v_bfe_u32 v189, v191, 16, 1
	v_bfe_u32 v195, v192, 16, 1
	v_bfe_u32 v197, v194, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v190, v190, v199
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v198, v85, 16, 1
	v_bfe_u32 v199, v196, 16, 1
	v_bfe_u32 v200, v86, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v83.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_cmp_o_f32_e64 s6, v191, v191
	v_cmp_o_f32_e64 s7, v192, v192
	v_cmp_o_f32_e64 s8, v194, v194
	v_cndmask_b16 v84.l, 0x7fff, v88.h, s5
	v_add3_u32 v87, v87, v137, 0x7fff
	v_add3_u32 v88, v191, v189, 0x7fff
	v_bfe_u32 v137, v138, 16, 1
	v_add3_u32 v189, v192, v195, 0x7fff
	v_add3_u32 v192, v194, v197, 0x7fff
	v_bfe_u32 v194, v188, 16, 1
	v_cmp_o_f32_e64 s10, v196, v196
	v_bfe_u32 v191, v186, 16, 1
	v_add3_u32 v195, v85, v198, 0x7fff
	v_bfe_u32 v197, v190, 16, 1
	v_add3_u32 v196, v196, v199, 0x7fff
	v_bfe_u32 v198, v193, 16, 1
	v_add3_u32 v199, v86, v200, 0x7fff
	v_bfe_u32 v200, v187, 16, 1
	v_cmp_o_f32_e64 s9, v85, v85
	v_cndmask_b16 v83.h, 0x7fff, v84.h, s1
	v_cmp_o_f32_e64 s1, v138, v138
	v_cmp_o_f32_e64 s12, v188, v188
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s6
	v_add3_u32 v88, v138, v137, 0x7fff
	v_add3_u32 v138, v188, v194, 0x7fff
	v_cmp_o_f32_e64 s5, v186, v186
	v_cmp_o_f32_e64 s13, v190, v190
	v_cmp_o_f32_e64 s14, v193, v193
	v_cmp_o_f32_e64 s15, v187, v187
	v_add3_u32 v137, v186, v191, 0x7fff
	v_add3_u32 v186, v190, v197, 0x7fff
	v_add3_u32 v188, v193, v198, 0x7fff
	v_add3_u32 v187, v187, v200, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v192.h, s8
	v_cndmask_b16 v137.l, 0x7fff, v138.h, s12
	v_cndmask_b16 v84.h, 0x7fff, v87.h, vcc_lo
	v_cndmask_b16 v85.h, 0x7fff, v189.h, s7
	v_cndmask_b16 v86.h, 0x7fff, v195.h, s9
	v_cndmask_b16 v87.l, 0x7fff, v196.h, s10
	v_cndmask_b16 v87.h, 0x7fff, v199.h, s11
	v_cndmask_b16 v88.l, 0x7fff, v88.h, s1
	v_cndmask_b16 v88.h, 0x7fff, v137.h, s5
	v_cndmask_b16 v137.h, 0x7fff, v186.h, s13
	v_cndmask_b16 v138.l, 0x7fff, v188.h, s14
	v_cndmask_b16 v138.h, 0x7fff, v187.h, s15
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	ds_store_b16 v145, v83
	ds_store_b16 v145, v86 offset:1024
	ds_store_b16_d16_hi v146, v83
	ds_store_b16 v146, v137 offset:1024
	ds_store_b16 v147, v84
	ds_store_b16_d16_hi v147, v86 offset:1024
	ds_store_b16_d16_hi v148, v84
	ds_store_b16_d16_hi v148, v137 offset:1024
	ds_store_b16 v149, v85
	ds_store_b16 v149, v87 offset:1024
	ds_store_b16 v150, v88
	ds_store_b16 v150, v138 offset:1024
	ds_store_b16_d16_hi v151, v85
	ds_store_b16_d16_hi v151, v87 offset:1024
	ds_store_b16_d16_hi v152, v88
	ds_store_b16_d16_hi v152, v138 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[185:188], v185
	ds_load_b128 v[189:192], v178
	ds_load_b128 v[193:196], v179
	ds_load_b128 v[197:200], v180
	v_mov_b32_e32 v88, v81
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v84, v81
	v_mov_b32_e32 v85, v81
	v_mov_b32_e32 v86, v81
	v_mov_b32_e32 v87, v81
	ds_load_b128 v[201:204], v181
	ds_load_b128 v[205:208], v182
	v_dual_mov_b32 v216, v88 :: v_dual_mov_b32 v213, v85
	v_dual_mov_b32 v214, v86 :: v_dual_mov_b32 v215, v87
	v_dual_mov_b32 v212, v84 :: v_dual_mov_b32 v211, v83
	v_dual_mov_b32 v210, v82 :: v_dual_mov_b32 v209, v81
	ds_load_b128 v[217:220], v183
	ds_load_b128 v[221:224], v184
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v85, s54, v144, -v167
	v_fma_f32 v137, s54, v139, -v167
	v_fma_f32 v138, s54, v140, -v167
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[185:192], v[33:40], v[209:216]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v82, s54, v141, -v167
	v_fma_f32 v83, s54, v142, -v167
	v_fma_f32 v84, s54, v143, -v167
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v85, v85
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[193:200], v[41:48], v[209:216]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v86, v225
	v_exp_f32_e32 v87, v226
	v_exp_f32_e32 v88, v137
	v_exp_f32_e32 v137, v138
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[201:208], v[49:56], v[209:216]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v84, v84
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v85, 0, v85, s57
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[217:224], v[57:64], v[209:216]
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v86, 0, v86, s62
	v_cndmask_b32_e64 v87, 0, v87, s61
	v_cndmask_b32_e64 v88, 0, v88, s63
	v_cndmask_b32_e64 v137, 0, v137, s60
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v185, v216, v168
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v82, 0, v82, s58
	v_cndmask_b32_e64 v83, 0, v83, s56
	v_cndmask_b32_e64 v84, 0, v84, s59
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v139, v210, v168
	v_sub_f32_e32 v140, v211, v168
	v_sub_f32_e32 v141, v212, v168
	v_sub_f32_e32 v142, v213, v168
	v_sub_f32_e32 v143, v214, v168
	v_dual_sub_f32 v144, v215, v168 :: v_dual_mul_f32 v85, v85, v185
	v_dual_sub_f32 v138, v209, v168 :: v_dual_mul_f32 v87, v87, v139
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v88, v88, v140 :: v_dual_mul_f32 v137, v137, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v82, v82, v142 :: v_dual_mul_f32 v83, v83, v143
	v_dual_mul_f32 v84, v84, v144 :: v_dual_mul_f32 v85, s53, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v86, v86, v138 :: v_dual_mul_f32 v87, s53, v87
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v88, s53, v88 :: v_dual_mul_f32 v137, s53, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v82, s53, v82
	v_dual_mul_f32 v86, s53, v86 :: v_dual_mul_f32 v83, s53, v83
	v_mul_f32_e32 v84, s53, v84
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v139, v87, 16, 1
	v_bfe_u32 v140, v88, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v138, v86, 16, 1
	v_bfe_u32 v141, v137, 16, 1
	v_bfe_u32 v142, v82, 16, 1
	v_bfe_u32 v143, v83, 16, 1
	v_bfe_u32 v144, v84, 16, 1
	v_bfe_u32 v185, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cmp_o_f32_e64 s1, v87, v87
	v_cmp_o_f32_e64 s5, v88, v88
	v_cmp_o_f32_e64 s6, v137, v137
	v_cmp_o_f32_e64 s7, v82, v82
	v_cmp_o_f32_e64 s8, v83, v83
	v_cmp_o_f32_e64 s9, v84, v84
	v_cmp_o_f32_e64 s10, v85, v85
	v_add3_u32 v86, v86, v138, 0x7fff
	v_add3_u32 v87, v87, v139, 0x7fff
	v_add3_u32 v88, v88, v140, 0x7fff
	v_add3_u32 v137, v137, v141, 0x7fff
	v_add3_u32 v82, v82, v142, 0x7fff
	v_add3_u32 v83, v83, v143, 0x7fff
	v_add3_u32 v84, v84, v144, 0x7fff
	v_add3_u32 v85, v85, v185, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v86.h, vcc_lo
	v_cndmask_b16 v86.h, 0x7fff, v87.h, s1
	v_cndmask_b16 v87.l, 0x7fff, v88.h, s5
	v_cndmask_b16 v87.h, 0x7fff, v137.h, s6
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s7
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s8
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s10
	v_permlanex16_b32 v84, v86, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v85, v87, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v88, v82, s51, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v144, v83, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v84, v86, v175
	v_perm_b32 v138, v84, v86, v176
	v_perm_b32 v139, v85, v87, v175
	v_perm_b32 v140, v85, v87, v176
	v_perm_b32 v141, v88, v82, v175
	v_perm_b32 v142, v88, v82, v176
	v_perm_b32 v143, v144, v83, v175
	v_perm_b32 v144, v144, v83, v176
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[97:104], v[129:136], v[137:144], v[97:104]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[121:128], v[137:144], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[137:144], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[137:144], v[65:72]
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
	v_mad_u64_u32 v[82:83], null, s12, s33, v[0:1]
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s12, s27, v187
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s63, s0, s13
	s_and_b32 s61, s0, s12
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v83, s33, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v84, s33, v83
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v83, 1, v83
	v_lshlrev_b32_e32 v82, 1, v82
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v85, s33, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v86, s33, v85
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v105, 0x80000000, v83, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v85, 1, v85
	v_lshlrev_b32_e32 v84, 1, v84
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v87, s33, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v88, s33, v87
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s5
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v83, s33, v88
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v87, 1, v87
	v_lshlrev_b32_e32 v86, 1, v86
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v106, s33, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v107, s33, v106
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v83, 1, v83
	v_lshlrev_b32_e32 v88, 1, v88
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s33, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s33, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v109, 0x80000000, v83, vcc_lo
	s_clause 0x7
	buffer_load_u16 v83, v82, s[28:31], 0 offen
	buffer_load_u16 v141, v105, s[28:31], 0 offen
	buffer_load_u16 v84, v84, s[28:31], 0 offen
	buffer_load_u16 v142, v85, s[28:31], 0 offen
	buffer_load_u16 v85, v86, s[28:31], 0 offen
	buffer_load_u16 v87, v87, s[28:31], 0 offen
	buffer_load_u16 v86, v88, s[28:31], 0 offen
	buffer_load_u16 v88, v109, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v105, s33, v110
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v109, 1, v110
	v_lshlrev_b32_e32 v82, 1, v107
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
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
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
	buffer_load_u16 v143, v82, s[28:31], 0 offen
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
	v_mov_b32_e32 v82, v81
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e32 vcc_lo, s27, v186
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s62, s0, vcc_lo
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v83.h, v141.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v84.h, v142.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v85.h, v87.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v86.h, v88.l
	ds_store_b128 v173, v[83:86]
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
	ds_store_b16 v145, v83
	ds_store_b16 v145, v137 offset:1024
	ds_store_b16 v146, v141
	ds_store_b16 v146, v143 offset:1024
	ds_store_b16 v147, v84
	ds_store_b16 v147, v138 offset:1024
	ds_store_b16 v148, v142
	ds_store_b16 v148, v144 offset:1024
	ds_store_b16 v149, v85
	ds_store_b16 v149, v139 offset:1024
	ds_store_b16 v150, v87
	ds_store_b16 v150, v189 offset:1024
	ds_store_b16 v151, v86
	ds_store_b16 v151, v140 offset:1024
	ds_store_b16 v152, v88
	ds_store_b16 v152, v190 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[191:194], v185
	ds_load_b128 v[195:198], v178
	ds_load_b128 v[199:202], v179
	ds_load_b128 v[203:206], v180
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v88, v81
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v84, v81
	v_mov_b32_e32 v85, v81
	v_mov_b32_e32 v86, v81
	v_mov_b32_e32 v87, v81
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[207:210], v181
	ds_load_b128 v[211:214], v182
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v88 :: v_dual_mov_b32 v141, v85
	v_dual_mov_b32 v142, v86 :: v_dual_mov_b32 v143, v87
	v_dual_mov_b32 v140, v84 :: v_dual_mov_b32 v139, v83
	v_dual_mov_b32 v138, v82 :: v_dual_mov_b32 v137, v81
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[215:218], v183
	ds_load_b128 v[219:222], v184
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v189, s39, v157
	v_or_b32_e32 v190, s39, v158
	v_or_b32_e32 v82, s39, v159
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[191:198], v[1:8], v[137:144]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v83, s39, v160
	v_or_b32_e32 v84, s39, v161
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s14, s27, v189
	v_cmp_gt_i32_e64 s15, s27, v190
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[199:206], v[9:16], v[137:144]
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s16, s27, v82
	v_cmp_gt_i32_e64 s17, s27, v83
	v_cmp_gt_i32_e64 s18, s27, v84
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
	v_cmp_le_i32_e64 s16, v82, v163
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s19, vcc_lo, s62
	s_and_b32 s12, s12, s61
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s17, v83, v163
	v_cmp_le_i32_e64 s18, v84, v163
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
	v_cmp_ge_i32_e64 s16, v82, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s23, v190, v165
	v_cmp_le_i32_e64 s24, v82, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s12, s12, s20
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v83, v164
	v_cmp_ge_i32_e64 s18, v84, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s25, v83, v165
	v_cmp_le_i32_e64 s26, v84, v165
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
	buffer_store_b32 v97, v25, s[36:39], 0 offen
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
	buffer_store_b32 v98, v26, s[36:39], 0 offen
	buffer_store_b32 v99, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v30, s35, 2
	s_clause 0x1
	buffer_store_b32 v100, v24, s[36:39], 0 offen
	buffer_store_b32 v101, v25, s[36:39], 0 offen
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
	buffer_store_b32 v102, v26, s[36:39], 0 offen
	buffer_store_b32 v103, v27, s[36:39], 0 offen
	buffer_store_b32 v104, v24, s[36:39], 0 offen
	buffer_store_b32 v89, v23, s[36:39], 0 offen
	buffer_store_b32 v90, v22, s[36:39], 0 offen
	buffer_store_b32 v91, v21, s[36:39], 0 offen
	buffer_store_b32 v92, v20, s[36:39], 0 offen
	buffer_store_b32 v93, v19, s[36:39], 0 offen
	buffer_store_b32 v94, v18, s[36:39], 0 offen
	buffer_store_b32 v95, v17, s[36:39], 0 offen
	buffer_store_b32 v96, v16, s[36:39], 0 offen
	buffer_store_b32 v73, v15, s[36:39], 0 offen
	buffer_store_b32 v74, v14, s[36:39], 0 offen
	buffer_store_b32 v75, v13, s[36:39], 0 offen
	buffer_store_b32 v76, v12, s[36:39], 0 offen
	buffer_store_b32 v77, v11, s[36:39], 0 offen
	buffer_store_b32 v78, v10, s[36:39], 0 offen
	buffer_store_b32 v79, v9, s[36:39], 0 offen
	buffer_store_b32 v80, v8, s[36:39], 0 offen
	buffer_store_b32 v65, v7, s[36:39], 0 offen
	buffer_store_b32 v66, v6, s[36:39], 0 offen
	buffer_store_b32 v67, v5, s[36:39], 0 offen
	buffer_store_b32 v68, v4, s[36:39], 0 offen
	buffer_store_b32 v69, v3, s[36:39], 0 offen
	buffer_store_b32 v70, v2, s[36:39], 0 offen
	buffer_store_b32 v71, v1, s[36:39], 0 offen
	buffer_store_b32 v72, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp228:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 227
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17408
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
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
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
