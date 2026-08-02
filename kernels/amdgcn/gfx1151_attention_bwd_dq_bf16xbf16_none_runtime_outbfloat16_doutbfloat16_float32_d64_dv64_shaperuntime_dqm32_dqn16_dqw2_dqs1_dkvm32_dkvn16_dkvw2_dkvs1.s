	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[4:7], s[0:1], 0x94
	s_load_b128 s[20:23], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x74
	s_load_b32 s35, s[0:1], 0x7c
.Ltmp0:
	.loc	1 159 29 prologue_end           ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v106, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v108, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s8, 1, s4
	s_bitcmp1_b32 s4, 8
	s_cselect_b32 s19, -1, 0
	s_cmp_eq_u32 s8, 1
	s_cselect_b32 s17, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s8, s20
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s11, s3
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s26, s2, 5
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
	s_xor_b32 s9, s3, s20
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
	s_abs_i32 s10, s21
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s9
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s11, s10
	s_sub_i32 s12, 0, s10
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s16, s2, s9
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s13, s20, s21
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s9, s16, s20
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s13, s13, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s28, s3, s9
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
	s_abs_i32 s27, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s13
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s8, s26, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s29, s2, s13
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s26, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s18, s29
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s26, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s15, s18
	s_sub_i32 s36, 0, s18
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s11, s26, 4
	s_or_b32 s12, s26, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s15
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s14, s26, 6
	s_or_b32 s2, s26, 7
	s_or_b32 s13, s26, 8
	s_or_b32 s20, s26, 9
	s_or_b32 s25, s26, 10
	s_or_b32 s30, s26, 11
	s_or_b32 s15, s26, 12
	s_or_b32 s31, s26, 13
	s_or_b32 s34, s26, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s24, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s39, s26, 15
	s_or_b32 s40, s26, 16
	s_or_b32 s42, s26, 17
	s_or_b32 s44, s26, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s24, s24, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s46, s26, 19
	s_or_b32 s48, s26, 20
	s_or_b32 s50, s26, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s24, s24
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s52, s26, 22
	s_or_b32 s54, s26, 23
	s_or_b32 s65, s26, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s36, s36, s24
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s66, s26, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s36, s24, s36
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s67, s26, 26
	s_or_b32 s68, s26, 27
	s_or_b32 s69, s26, 28
	s_or_b32 s70, s26, 29
	s_or_b32 s71, s26, 30
	s_or_b32 s72, s26, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s24, s24, s36
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s26, s22
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s8, s22
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s9, s22
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s10, s22
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s11, s22
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s12, s22
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s14, s22
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s2, s22
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s13, s22
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s20, s22
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s20, s3, s22
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s25, s22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s30, s22
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s15, s22
	s_load_b128 s[12:15], s[0:1], 0x38
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s31, s22
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s34, s22
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s39, s22
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s40, s22
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s42, s22
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s44, s22
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s46, s22
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s48, s22
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s50, s22
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s52, s22
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s54, s22
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s65, s22
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s66, s22
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s67, s22
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s68, s22
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s69, s22
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s70, s22
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s71, s22
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s72, s22
	s_cselect_b32 s40, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s20, s20, s26
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s34, s20, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s34, v0
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
	s_and_b32 vcc_lo, s58, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_lshl_add_u32 v1, s33, 5, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s63, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v9, s33, v7
	v_add_nc_u32_e32 v10, s33, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s62, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v11, s33, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s61, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v13, s33, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_lshlrev_b32 v9, 1, v9
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v12, s33, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v15, s33, v13
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v14, s33, v12
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v17, s33, v15
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s33, v14
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s33, v17
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
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
	s_and_b32 vcc_lo, s45, s2
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
	s_and_b32 vcc_lo, s43, s2
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
	s_and_b32 vcc_lo, s52, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s33, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v24, 1, v24
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v28, s33, v26
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s38, s2
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
	s_and_b32 vcc_lo, s48, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x2
	buffer_load_u16 v29, v1, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v1, 0x80000000, v24 :: v_dual_lshlrev_b32 v24, 1, v26
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s33, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v27
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v31, 1, v26
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v26, v26, s33, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x4
	buffer_load_u16 v32, v2, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v28, vcc_lo
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v16
	v_lshlrev_b32_e32 v16, 1, v30
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v33, v2, s[8:11], 0 offen
	v_add_lshl_u32 v2, v30, s33, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x4
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v30, v3, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v34, v1, s[8:11], 0 offen
	buffer_load_u16 v35, v2, s[8:11], 0 offen
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s8, s12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v42, 0x3f0, v3
	v_xor_b32_e32 v36, 0x90, v3
	v_add_nc_u32_e32 v145, 0, v3
	v_xor_b32_e32 v37, 0x120, v3
	v_xor_b32_e32 v38, 0x1b0, v3
	v_add_nc_u32_e32 v152, 0, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s20, s35, v[0:1]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v39, 0x240, v3
	v_xor_b32_e32 v40, 0x2d0, v3
	v_xor_b32_e32 v41, 0x360, v3
	v_add_nc_u32_e32 v146, 0, v36
	v_add_nc_u32_e32 v147, 0, v37
	v_add_nc_u32_e32 v149, 0, v39
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s35, v1
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v150, 0, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	v_dual_cndmask_b32 v39, 0x80000000, v1 :: v_dual_add_nc_u32 v148, 0, v38
	v_lshl_add_u32 v1, s35, 5, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v151, 0, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v65, 0x80000000, v37 :: v_dual_lshlrev_b32 v36, 1, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v67, 0x80000000, v36 :: v_dual_lshlrev_b32 v38, 1, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v68, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v72, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v77, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v85, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v97, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v69, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v47, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v73, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s38, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v66, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s37, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v71, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v75, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v76, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v82, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v83, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v38, v38, s35, 1
	v_cndmask_b32_e32 v86, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v41
	v_cndmask_b32_e32 v88, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v41, v41, s35, 1
	v_cndmask_b32_e32 v98, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s39, s3
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
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v99, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v100, 0x80000000, v41, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_u16 v49, v39, s[8:11], 0 offen
	buffer_load_u16 v50, v40, s[8:11], 0 offen
	buffer_load_u16 v51, v3, s[8:11], 0 offen
	buffer_load_u16 v52, v44, s[8:11], 0 offen
	buffer_load_u16 v53, v46, s[8:11], 0 offen
	buffer_load_u16 v54, v47, s[8:11], 0 offen
	buffer_load_u16 v55, v66, s[8:11], 0 offen
	buffer_load_u16 v56, v71, s[8:11], 0 offen
	buffer_load_u16 v57, v1, s[8:11], 0 offen
	buffer_load_u16 v58, v2, s[8:11], 0 offen
	buffer_load_u16 v59, v65, s[8:11], 0 offen
	buffer_load_u16 v60, v67, s[8:11], 0 offen
	buffer_load_u16 v93, v69, s[8:11], 0 offen
	buffer_load_u16 v94, v73, s[8:11], 0 offen
	buffer_load_u16 v95, v74, s[8:11], 0 offen
	buffer_load_u16 v96, v75, s[8:11], 0 offen
	buffer_load_u16 v61, v68, s[8:11], 0 offen
	buffer_load_u16 v62, v72, s[8:11], 0 offen
	buffer_load_u16 v63, v79, s[8:11], 0 offen
	buffer_load_u16 v64, v87, s[8:11], 0 offen
	buffer_load_u16 v89, v76, s[8:11], 0 offen
	buffer_load_u16 v90, v83, s[8:11], 0 offen
	buffer_load_u16 v91, v88, s[8:11], 0 offen
	buffer_load_u16 v92, v98, s[8:11], 0 offen
	buffer_load_u16 v43, v70, s[8:11], 0 offen
	buffer_load_u16 v41, v77, s[8:11], 0 offen
	buffer_load_u16 v38, v85, s[8:11], 0 offen
	buffer_load_u16 v37, v97, s[8:11], 0 offen
	buffer_load_u16 v36, v82, s[8:11], 0 offen
	buffer_load_u16 v35, v86, s[8:11], 0 offen
	buffer_load_u16 v34, v99, s[8:11], 0 offen
	buffer_load_u16 v33, v100, s[8:11], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_clause 0x1f
	buffer_load_u16 v45, v39, s[8:11], 0 offen
	buffer_load_u16 v42, v40, s[8:11], 0 offen
	buffer_load_u16 v40, v3, s[8:11], 0 offen
	buffer_load_u16 v39, v44, s[8:11], 0 offen
	buffer_load_u16 v48, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v46, v66, s[8:11], 0 offen
	buffer_load_u16 v44, v71, s[8:11], 0 offen
	buffer_load_u16 v66, v1, s[8:11], 0 offen
	buffer_load_u16 v71, v69, s[8:11], 0 offen
	buffer_load_u16 v80, v2, s[8:11], 0 offen
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v81, v65, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v84, v67, s[8:11], 0 offen
	buffer_load_u16 v78, v75, s[8:11], 0 offen
	buffer_load_u16 v75, v68, s[8:11], 0 offen
	buffer_load_u16 v69, v76, s[8:11], 0 offen
	buffer_load_u16 v67, v70, s[8:11], 0 offen
	buffer_load_u16 v65, v82, s[8:11], 0 offen
	buffer_load_u16 v82, v72, s[8:11], 0 offen
	buffer_load_u16 v76, v83, s[8:11], 0 offen
	buffer_load_u16 v70, v77, s[8:11], 0 offen
	buffer_load_u16 v68, v86, s[8:11], 0 offen
	buffer_load_u16 v86, v79, s[8:11], 0 offen
	buffer_load_u16 v83, v88, s[8:11], 0 offen
	buffer_load_u16 v77, v85, s[8:11], 0 offen
	buffer_load_u16 v72, v99, s[8:11], 0 offen
	buffer_load_u16 v88, v87, s[8:11], 0 offen
	buffer_load_u16 v87, v98, s[8:11], 0 offen
	buffer_load_u16 v85, v97, s[8:11], 0 offen
	buffer_load_u16 v79, v100, s[8:11], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 64, v1
	v_add_nc_u32_e32 v111, 0, v1
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v130, 16, v45
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v131, 16, v42
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v132, 16, v40
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v133, 16, v39
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v135, 16, v47
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v136, 16, v46
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v137, 16, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v123, 16, v60
	v_lshlrev_b32_e32 v95, 16, v95
	v_lshlrev_b32_e32 v125, 16, v62
	v_lshlrev_b32_e32 v126, 16, v63
	v_lshlrev_b32_e32 v89, 16, v89
	v_lshlrev_b32_e32 v90, 16, v90
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v107, 7, v108
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v129, 16, v41
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v109, 32, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v128, 16, v43
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_or_b32 v153, 0x70, v106, v107
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 16, v35
	v_lshlrev_b32_e32 v33, 16, v33
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v109, 6, v153
	v_add_nc_u32_e32 v98, 0, v2
	v_xad_u32 v99, v2, 16, 0
	v_xad_u32 v100, v2, 32, 0
	v_xad_u32 v101, v2, 48, 0
	v_xad_u32 v102, v2, 64, 0
	v_xad_u32 v103, 0x50, v2, 0
	v_xad_u32 v104, 0x60, v2, 0
	v_xad_u32 v105, 0x70, v2, 0
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v98
	ds_load_b128 v[43:46], v99
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[39:42], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[43:46], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[39:42], v100
	ds_load_b128 v[43:46], v101
	v_lshlrev_b32_e32 v70, 16, v70
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[39:42], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[43:46], off offset:48 ; 16-byte Folded Spill
	v_lshlrev_b32_e32 v39, 16, v66
	v_lshlrev_b32_e32 v66, 16, v81
	v_lshlrev_b32_e32 v81, 16, v82
	v_lshlrev_b32_e32 v82, 16, v86
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v162, v129, v70 :: v_dual_lshlrev_b32 v83, 16, v83
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v79, 16, v79
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v155, v126, v82
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v159, v91, v83
	v_mul_f32_e32 v168, v33, v79
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v71, 16, v71
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v162, v129, v70
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v142, v95, v74
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v155, v126, v82
	v_add_f32_dpp v82, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v159, v91, v83
	v_fmac_f32_e32 v168, v33, v79
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v142, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v67, 16, v67
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v68, 16, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v142, v95, v74 :: v_dual_mul_f32 v161, v128, v67
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v93, 16, v93
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v166, v35, v68
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v161, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v140, v93, v71 :: v_dual_lshlrev_b32 v77, 16, v77
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v122, 16, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v161, v128, v67
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v140, v140 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v125, v81
	v_dual_mul_f32 v138, v122, v66 :: v_dual_lshlrev_b32 v73, 16, v73
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v166, v35, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v140, v93, v71
	v_add_f32_dpp v71, v142, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v138, v138 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v69, 16, v69
	v_lshlrev_b32_e32 v86, 16, v87
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v138, v122, v66
	v_fmac_f32_e32 v154, v125, v81
.Ltmp29:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v157, v89, v69 :: v_dual_lshlrev_b32 v40, 16, v80
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v114, 16, v51
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v138, v138 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v80, 16, v84
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v98, v114, v132
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v157, v89, v69 :: v_dual_lshlrev_b32 v84, 16, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v117, 16, v54
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v161, v161 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v98, v114, v132 :: v_dual_lshlrev_b32 v75, 16, v75
.Ltmp40:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v101, v117, v135 :: v_dual_lshlrev_b32 v78, 16, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v98, v67, -1, -1 op_sel:[1,0]
.Ltmp43:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v112, 16, v49
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v76, 16, v76
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v67, v67, v98
.Ltmp47:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v87, v112, v130
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v101, v117, v135 :: v_dual_lshlrev_b32 v96, 16, v96
.Ltmp49:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s31, v67, 31
.Ltmp51:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 16, v38
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v87, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v143, v96, v78 :: v_dual_mul_f32 v158, v90, v76
	v_mul_f32_e32 v167, v34, v72
	v_mul_f32_e32 v163, v38, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v87, v112, v130
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v143, v143 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v87, v87 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v143, v96, v78 :: v_dual_fmac_f32 v158, v90, v76
	v_fmac_f32_e32 v167, v34, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v163, v38, v77
	v_add_f32_dpp v38, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v143, v143 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v94, 16, v94
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v89, v38, -1, -1 op_sel:[1,0]
.Ltmp59:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v115, 16, v52
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v120, 16, v57
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v141, v94, v73
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v89
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v121, 16, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v65, 16, v65
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v141, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s13, v38, 31
.Ltmp65:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v127, 16, v64
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v165, v36, v65
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v141, v94, v73
	v_add_f32_dpp v69, v140, v140 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v139, v123, v80
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v141, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v139, v139 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v165, v36, v65
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v139, v123, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v139, v139 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v70, -1, -1 op_sel:[1,0]
.Ltmp74:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v113, 16, v50
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v70, v70, v101
.Ltmp76:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v88, v113, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v70, 31
	v_mov_b32_e32 v70, s13
.Ltmp79:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v156, v127, v84
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v88, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v88, v113, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v156, v127, v84
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v84, v33, -1, -1 op_sel:[1,0]
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v33, v33, v84
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v33, 31
.Ltmp87:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v124, 16, v61
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v144, v124, v75
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v113, v76, -1, -1 op_sel:[1,0]
.Ltmp92:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v119, 16, v56
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v144, v144 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v76, v76, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v144, v124, v75
	v_add_f32_dpp v75, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s44, v76, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v144, v144 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v112, v75, -1, -1 op_sel:[1,0]
.Ltmp98:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v118, 16, v55
	v_lshlrev_b32_e32 v116, 16, v53
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[49:52], v102
	ds_load_b128 v[53:56], v103
	ds_load_b128 v[57:60], v104
	ds_load_b128 v[61:64], v105
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v104, v120, v39 :: v_dual_add_f32 v75, v75, v112
	v_dual_mul_f32 v102, v118, v136 :: v_dual_mul_f32 v103, v119, v137
	v_mul_f32_e32 v105, v121, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s43, v75, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v104, v120, v39 :: v_dual_mov_b32 v75, s31
	v_dual_fmac_f32 v102, v118, v136 :: v_dual_fmac_f32 v103, v119, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v105, v121, v40
	v_add_f32_dpp v65, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v104, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v71, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v103, v72, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v73, v73, v104
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v71, v71, v102
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v114, v77, -1, -1 op_sel:[1,0]
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v72, v72, v103
	v_add_f32_dpp v66, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s39, v71, 31
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v77, v114
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v119, v82, -1, -1 op_sel:[1,0]
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s45, v77, 31
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v82, v82, v119
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v105, v74, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v98, s45 :: v_dual_mul_f32 v99, v115, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v93, v66, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v74, v74, v105
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v83, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v66, v66, v93
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v118, v81, -1, -1 op_sel:[1,0]
	v_readlane_b32 s42, v74, 31
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v83, v83, v120
	v_fmac_f32_e32 v99, v115, v133
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v115, v78, -1, -1 op_sel:[1,0]
	v_readlane_b32 s30, v66, 31
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v81, v81, v118
	v_add_f32_dpp v96, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v72, 31
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v78, v78, v115
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v74, s30
	v_permlanex16_b32 v91, v40, -1, -1 op_sel:[1,0]
	v_readlane_b32 s41, v73, 31
	s_waitcnt lgkmcnt(0)
	v_readlane_b32 s46, v78, 31
.Ltmp126:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v134, 16, v48
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, s38
.Ltmp128:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v164, v37, v85
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v40, v91
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
.Ltmp131:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v100, v116, v134
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s49, v81, 31
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s15, v40, 31
	v_readlane_b32 s50, v82, 31
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s51, v83, 31
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v164, v37, v85
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v72, s15 :: v_dual_mov_b32 v91, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v100, v116, v134
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v116, v79, -1, -1 op_sel:[1,0]
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v94, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v93, s44
	s_mov_b32 s38, 0
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v79, v79, v116
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s47, v79, 31
	v_mov_b32_e32 v79, s39
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v88, v88 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v69, v69, v100
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v100, s47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v69, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v88, v37, -1, -1 op_sel:[1,0]
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, s37
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v88
	v_add_f32_dpp v36, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v68, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v85, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s12, v37, 31
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v68, v68, v99
	v_add_f32_e32 v34, v34, v85
	v_add_f32_dpp v37, v96, v96 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s12
	v_permlanex16_b32 v90, v39, -1, -1 op_sel:[1,0]
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v34, 31
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v68, 31
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v39, v90
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v87, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v66, s9
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v95, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v39, 31
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v87
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v76, s36
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v71, s14 :: v_dual_mul_f32 v160, v92, v86
	v_readlane_b32 s11, v36, 31
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v95, v95 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v40, v37, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v90, s41
	v_mov_b32_dpp v160, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v68, s11
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v37, v37, v40
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v99, s46 :: v_dual_fmac_f32 v160, v92, v86
	v_permlanex16_b32 v92, v65, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v110, 1, v109
	v_permlanex16_b32 v86, v35, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v160, v160 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v65, v65, v92
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v97, 0, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v35, v86 :: v_dual_add_f32 v36, v36, v39
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v65, 31
	v_mov_b32_e32 v65, s8
	v_readlane_b32 s10, v35, 31
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v94, v94 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v73, s25
	v_readlane_b32 s9, v36, 31
	v_mov_b32_e32 v67, s10
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v117, v80, -1, -1 op_sel:[1,0]
	v_readlane_b32 s10, v37, 31
	v_mov_b32_e32 v92, s43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v80, v80, v117 :: v_dual_add_f32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s48, v80, 31
	v_mov_b32_e32 v80, s40
	ds_store_b128 v97, v[65:68]
	ds_store_b128 v97, v[69:72] offset:16
	ds_store_b128 v97, v[73:76] offset:32
	ds_store_b128 v97, v[77:80] offset:48
	v_permlanex16_b32 v65, v33, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v66, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v35, 31
	v_mov_b32_e32 v101, s48
	v_mov_b32_e32 v67, s51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v65 :: v_dual_add_f32 v34, v34, v66
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v65, s49 :: v_dual_mov_b32 v66, s50
	v_mov_b32_e32 v68, s8
	v_readlane_b32 s11, v33, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_readlane_b32 s12, v34, 31
	v_dual_mov_b32 v69, s9 :: v_dual_mov_b32 v70, s10
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v71, s11 :: v_dual_mov_b32 v72, s12
	s_barrier
	ds_load_b128 v[86:89], v111
	ds_load_b128 v[82:85], v111 offset:16
	ds_load_b128 v[78:81], v111 offset:32
	ds_load_b128 v[74:77], v111 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v97, v[90:93]
	ds_store_b128 v97, v[98:101] offset:16
	ds_store_b128 v97, v[65:68] offset:32
	ds_store_b128 v97, v[69:72] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[98:101], v111
	ds_load_b128 v[94:97], v111 offset:16
	ds_load_b128 v[102:105], v111 offset:32
	ds_load_b128 v[90:93], v111 offset:48
.Ltmp181:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s8, s23, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s9, s8, 31
	s_lshr_b32 s9, s9, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s9, s8, s9
.Ltmp182:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v121, v86 :: v_dual_mov_b32 v122, v87
	v_dual_mov_b32 v118, v88 :: v_dual_mov_b32 v119, v89
	v_dual_mov_b32 v126, v82 :: v_dual_mov_b32 v127, v83
	v_mov_b32_e32 v128, v84
	v_dual_mov_b32 v136, v85 :: v_dual_mov_b32 v143, v78
	v_mov_b32_e32 v144, v79
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v120, v98 :: v_dual_mov_b32 v123, v99
	v_dual_mov_b32 v124, v100 :: v_dual_mov_b32 v125, v101
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v137, v94 :: v_dual_mov_b32 v138, v95
	v_dual_mov_b32 v139, v96 :: v_dual_mov_b32 v142, v97
	v_dual_mov_b32 v167, v80 :: v_dual_mov_b32 v170, v81
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v141, v102 :: v_dual_mov_b32 v168, v103
	v_dual_mov_b32 v129, v104 :: v_dual_mov_b32 v130, v105
	v_dual_mov_b32 v132, v74 :: v_dual_mov_b32 v133, v75
	v_dual_mov_b32 v134, v76 :: v_dual_mov_b32 v135, v77
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v140, v90 :: v_dual_mov_b32 v171, v91
	v_mov_b32_e32 v169, v92
	v_mov_b32_e32 v131, v93
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v122, v122 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v118, v118 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v129, v129 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v134, v134 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp183:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s8, s27, s24
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s39, s9, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s4, s4, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s26, s6
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s10, s26, s5
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, s7
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s10, s10, s7
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s4, s23, s4
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
	s_and_b32 s38, s9, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s39, s39, s4
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x8
	s_load_b32 s48, s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v33, 0, 1, s17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s9, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s10, s29, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v33
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s11, s26, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, 32
	s_min_i32 s11, s23, s11
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
	s_min_i32 s39, s39, s11
.LBB0_4:
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v33, 1, v109
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s11, s8, s18
	s_xor_b32 s9, s9, s10
	s_sub_i32 s10, s27, s11
	s_load_b64 s[36:37], s[0:1], 0x58
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v162, v33, v108
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x48
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s10, s18
	s_cmp_ge_u32 s10, s18
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s26, v162
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s18
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v154, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s8, s11, s8
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v163, s7, v33
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s8, s8, s9
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s16, s16, s21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s1, s8, s9
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v155, 2, v154
	v_or_b32_e32 v156, 4, v154
	v_or_b32_e32 v157, 6, v154
	v_or_b32_e32 v158, 8, v154
	v_or_b32_e32 v159, 10, v154
	v_or_b32_e32 v160, 12, v154
	v_or_b32_e32 v161, 14, v154
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, s22, v33
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s49, s1, s16
	v_subrev_nc_u32_e32 v164, s5, v163
	v_add_nc_u32_e32 v165, s6, v163
	v_xor_b32_e32 v111, 16, v153
	v_xor_b32_e32 v112, 32, v153
	v_xor_b32_e32 v113, 48, v153
	v_xor_b32_e32 v114, 64, v153
	v_xor_b32_e32 v115, 0x50, v153
	v_xor_b32_e32 v116, 0x60, v153
	v_xor_b32_e32 v117, 0x70, v153
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s21, s48, 0x3fb8aa3b
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s38, s39
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_mul_i32 s49, s49, s23
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s27, -1, 0
	s_cmp_ge_i32 s38, s39
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v166, 0, v111
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v172, 0, v112
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v174, 0, v113
	v_add_nc_u32_e32 v175, 0, v114
	v_add_nc_u32_e32 v176, 0, v115
	v_add_nc_u32_e32 v177, 0, v116
	v_add_nc_u32_e32 v178, 0, v117
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s45, s25, 0xffff
	s_mov_b32 s44, s24
	s_mov_b32 s30, 0x76543210
	s_mov_b32 s31, s38
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v33, s21, v66 :: v_dual_mul_f32 v34, s21, v67
	v_dual_mul_f32 v35, s21, v68 :: v_dual_mul_f32 v36, s21, v69
	v_dual_mul_f32 v37, s21, v70 :: v_dual_mul_f32 v38, s21, v71
	v_dual_mul_f32 v39, s21, v72 :: v_dual_mul_f32 v40, s21, v73
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v33, 0xff800000, v33, s54
	v_cndmask_b32_e64 v34, 0xff800000, v34, s51
	v_cndmask_b32_e64 v35, 0xff800000, v35, s56
	v_cndmask_b32_e64 v36, 0xff800000, v36, s50
	v_cndmask_b32_e64 v37, 0xff800000, v37, s55
	v_cndmask_b32_e64 v38, 0xff800000, v38, s52
	v_cndmask_b32_e64 v39, 0xff800000, v39, s57
	v_cndmask_b32_e64 v40, 0xff800000, v40, s53
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v33, v34, v35
.Ltmp185:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v173
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v67, v36, v37, v38
.Ltmp187:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s31, s31, 16
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v68, v39, v40
.Ltmp189:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s31, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v66, v67, v68
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v67, v66, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v173, v66, v67
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v33, v33, v66
	v_sub_f32_e32 v34, v34, v66
	v_sub_f32_e32 v35, v35, v66
	v_sub_f32_e32 v36, v36, v66
	v_sub_f32_e32 v39, v39, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v39, v39
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v66
	v_sub_f32_e32 v40, v40, v66
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v33, 0, v33, s54
	v_cndmask_b32_e64 v34, 0, v34, s51
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v35, 0, v35, s56
	v_cndmask_b32_e64 v36, 0, v36, s50
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v37, v37, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v39, 0, v39, s57
.Ltmp193:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_add_f32 v34, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp194:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v37, v37
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v37, 0, v37, s55
.Ltmp195:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v37, v38
.Ltmp196:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v37, v173, v66
	v_mov_b32_e32 v173, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s53
.Ltmp197:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v36, v39, v40 :: v_dual_add_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v34, v35, v36
.Ltmp198:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v35, v37
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v34, v33, s30, 0xfedcba98 op_sel:[1,0]
.Ltmp201:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v35, 0, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v33, v34
.Ltmp203:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v67, v179, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v179, v67
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_or_b32 s1, s31, 1
	s_or_b32 s5, s31, 2
	s_or_b32 s6, s31, 3
	s_or_b32 s7, s31, 4
	s_or_b32 s8, s31, 5
	s_or_b32 s9, s31, 6
	s_or_b32 s10, s31, 7
	s_or_b32 s11, s31, 8
	s_or_b32 s12, s31, 9
	s_or_b32 s13, s31, 10
	s_or_b32 s14, s31, 11
	s_or_b32 s15, s31, 12
	s_or_b32 s16, s31, 13
	s_or_b32 s17, s31, 14
	s_or_b32 s18, s31, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s31, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v180, s31, v154
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s1, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v181, s31, v155
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s5, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v182, s31, v156
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v185, s31, v159
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s7, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v186, s31, v160
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v187, s31, v161
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s9, s23
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s23
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s11, s23
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s12, s23
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s23
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s23
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s23
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s23
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s23
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s23
	s_cselect_b32 s18, -1, 0
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_add_i32 s51, s31, s49
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s50
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_mad_u64_u32 v[66:67], null, s51, s33, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v33, s33, v66
	v_add_nc_u32_e32 v34, s33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v35, s33, v34
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v34, 1, v34
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v36, s33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v38, s33, v36
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v37, 1, v66
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v39, s33, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v40, s33, v39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s5
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s1, s23, v181
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v66, s33, v40
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s5, s23, v182
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v67, s33, v66
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s8, s23, v185
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v68, s33, v67
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v40, 1, v40
	v_lshlrev_b32_e32 v39, 1, v39
	s_clause 0x5
	buffer_load_u16 v37, v37, s[44:47], 0 offen
	buffer_load_u16 v33, v33, s[44:47], 0 offen
	buffer_load_u16 v34, v34, s[44:47], 0 offen
	buffer_load_u16 v35, v35, s[44:47], 0 offen
	buffer_load_u16 v36, v36, s[44:47], 0 offen
	buffer_load_u16 v38, v38, s[44:47], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v69, s33, v68
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s9, s23, v186
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s51, s0, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v70, s33, v69
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v67, 1, v67
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v71, s33, v70
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s10, s23, v187
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s56, s0, s5
	s_and_b32 s52, s0, s8
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v72, s33, v71
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v69, 1, v69
	v_lshlrev_b32_e32 v68, 1, v68
	v_lshlrev_b32_e32 v71, 1, v71
	v_lshlrev_b32_e32 v70, 1, v70
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s57, s0, s9
	s_and_b32 s53, s0, s10
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x4
	buffer_load_u16 v73, v66, s[44:47], 0 offen
	buffer_load_u16 v67, v67, s[44:47], 0 offen
	buffer_load_u16 v68, v68, s[44:47], 0 offen
	buffer_load_u16 v69, v69, s[44:47], 0 offen
	buffer_load_u16 v70, v70, s[44:47], 0 offen
	v_lshlrev_b32_e32 v66, 1, v72
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_lshl_u32 v72, v72, s33, 1
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	s_clause 0x4
	buffer_load_u16 v71, v71, s[44:47], 0 offen
	buffer_load_u16 v39, v39, s[44:47], 0 offen
	buffer_load_u16 v183, v66, s[44:47], 0 offen
	buffer_load_u16 v40, v40, s[44:47], 0 offen
	buffer_load_u16 v72, v72, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e32 vcc_lo, s23, v180
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v145, v37
	s_waitcnt vmcnt(9)
	ds_store_b16 v145, v73 offset:1024
	ds_store_b16 v146, v33
	s_waitcnt vmcnt(8)
	ds_store_b16 v146, v67 offset:1024
	ds_store_b16 v147, v34
	s_waitcnt vmcnt(7)
	ds_store_b16 v147, v68 offset:1024
	ds_store_b16 v148, v35
	s_waitcnt vmcnt(6)
	ds_store_b16 v148, v69 offset:1024
	ds_store_b16 v149, v36
	s_waitcnt vmcnt(5)
	ds_store_b16 v149, v70 offset:1024
	ds_store_b16 v150, v38
	s_waitcnt vmcnt(4)
	ds_store_b16 v150, v71 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v151, v39
	s_waitcnt vmcnt(2)
	ds_store_b16 v151, v183 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v152, v40
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v72 offset:1024
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v72, v71
	v_dual_mov_b32 v71, v70 :: v_dual_add_nc_u32 v184, 0, v153
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[188:191], v184
	ds_load_b128 v[192:195], v166
	ds_load_b128 v[196:199], v172
	ds_load_b128 v[200:203], v174
	ds_load_b128 v[204:207], v175
	ds_load_b128 v[208:211], v176
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[212:215], v177
	ds_load_b128 v[216:219], v178
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v183, s31, v157
	v_or_b32_e32 v184, s31, v158
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s54, s0, vcc_lo
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s6, s23, v183
	v_cmp_gt_i32_e64 s7, s23, v184
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s50, s0, s6
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[188:195], v[1:8], v[66:73]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s55, s0, s7
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[196:203], v[9:16], v[66:73]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[204:211], v[17:24], v[66:73]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[212:219], v[25:32], v[66:73]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v180, v163
	v_cmp_le_i32_e64 s1, v181, v163
	v_cmp_le_i32_e64 s5, v182, v163
	v_cmp_le_i32_e64 s6, v183, v163
	v_cmp_le_i32_e64 s7, v184, v163
	v_cmp_le_i32_e64 s8, v185, v163
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s11, vcc_lo, s54
	s_and_b32 s1, s1, s51
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s9, v186, v163
	v_cmp_le_i32_e64 s10, v187, v163
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s5, s5, s56
	s_and_b32 s6, s6, s50
	s_and_not1_b32 s12, s54, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s51, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s55
	s_and_b32 s8, s8, s52
	s_or_b32 s54, s12, s11
	s_or_b32 s51, s13, s1
	s_and_not1_b32 s1, s56, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s50, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s57
	s_and_b32 s10, s10, s53
	s_or_b32 s56, s1, s5
	s_or_b32 s50, s11, s6
	s_and_not1_b32 s1, s55, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s52, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s55, s1, s5
	s_or_b32 s52, s6, s7
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s53, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s57, s1, s5
	s_or_b32 s53, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v180, v164
	v_cmp_ge_i32_e64 s1, v181, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s11, v180, v165
	v_cmp_le_i32_e64 s12, v181, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s5, v182, v164
	v_cmp_ge_i32_e64 s6, v183, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s13, v182, v165
	v_cmp_le_i32_e64 s14, v183, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v184, v164
	v_cmp_ge_i32_e64 s8, v185, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s15, v184, v165
	v_cmp_le_i32_e64 s16, v185, v165
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s9, v186, v164
	v_cmp_ge_i32_e64 s10, v187, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v186, v165
	v_cmp_le_i32_e64 s18, v187, v165
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s11, s11, s54
	s_and_b32 s1, s1, s51
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s5, s5, s56
	s_and_b32 s6, s6, s50
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s54, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s51, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s55
	s_and_b32 s8, s8, s52
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_or_b32 s54, s12, s11
	s_or_b32 s51, s13, s1
	s_and_not1_b32 s1, s56, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s50, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s57
	s_and_b32 s10, s10, s53
	s_or_b32 s56, s1, s5
	s_or_b32 s50, s11, s6
	s_and_not1_b32 s1, s55, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s52, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s55, s1, s5
	s_or_b32 s52, s6, s7
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s53, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s57, s1, s5
	s_or_b32 s53, s6, s7
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v67, 0
.LBB0_12:                               ; %Flow171
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v67
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v86, v121 :: v_dual_and_b32 v33, 31, v0
	v_dual_add_f32 v69, v87, v122 :: v_dual_add_f32 v86, v98, v120
.Ltmp205:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42000000, vcc_lo
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v70, v88, v118 :: v_dual_add_f32 v71, v89, v119
	v_dual_add_f32 v87, v99, v123 :: v_dual_add_f32 v88, v100, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp207:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v67, v35
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v89, v101, v125 :: v_dual_add_f32 v98, v82, v126
	v_dual_add_f32 v99, v83, v127 :: v_dual_add_f32 v100, v84, v128
.Ltmp209:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v121, v81, v170 :: v_dual_lshlrev_b32 v82, 2, v108
.Ltmp211:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v67
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v119, v79, v144 :: v_dual_add_f32 v120, v80, v167
.Ltmp213:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v83, 0, v82, v110
	s_barrier
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v125, v77, v135 :: v_dual_sub_f32 v34, v35, v34
.Ltmp215:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v35, s26, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s1, 0, v109
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v124, v76, v134 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp217:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v34, v66, v34 :: v_dual_add_f32 v123, v75, v133
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshlrev_b32_e32 v84, 2, v33
	v_add_lshl_u32 v33, s20, v33, 2
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v105, v105, v130
.Ltmp219:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e32 v167, 0, v34, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s22, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v34, 0, v84
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v101, v85, v136 :: v_dual_add_f32 v94, v94, v137
.Ltmp221:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v83, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v35, v34
	s_and_b32 vcc_lo, s1, vcc_lo
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v122, v74, v132 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	v_dual_add_f32 v95, v95, v138 :: v_dual_add_f32 v96, v96, v139
	v_dual_add_f32 v97, v97, v142 :: v_dual_add_f32 v118, v78, v143
.Ltmp223:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s41, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s40
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v102, v102, v141 :: v_dual_add_f32 v103, v103, v168
	v_dual_add_f32 v104, v104, v129 :: v_dual_add_f32 v127, v91, v171
	v_dual_add_f32 v126, v90, v140 :: v_dual_add_f32 v129, v93, v131
	v_add_f32_e32 v128, v92, v169
	v_mov_b32_e32 v72, 0
.Ltmp225:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v35, v33, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v81, v[68:71]
	ds_store_b128 v81, v[86:89] offset:16
	ds_store_b128 v81, v[98:101] offset:32
	ds_store_b128 v81, v[94:97] offset:48
	ds_store_b128 v81, v[118:121] offset:64
	ds_store_b128 v81, v[102:105] offset:80
	ds_store_b128 v81, v[122:125] offset:96
	ds_store_b128 v81, v[126:129] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v34, v34
	s_and_b32 s9, s43, 0xffff
	s_mov_b32 s8, s42
	v_lshrrev_b32_e32 v166, 4, v0
	v_mov_b32_e32 v67, v72
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v65, v72
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
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v34, v33, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v81, v[68:71]
	ds_store_b128 v81, v[86:89] offset:16
	ds_store_b128 v81, v[98:101] offset:32
	ds_store_b128 v81, v[94:97] offset:48
	ds_store_b128 v81, v[118:121] offset:64
	ds_store_b128 v81, v[102:105] offset:80
	v_mov_b32_e32 v71, v72
	v_mov_b32_e32 v70, v72
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v68, v72
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
	ds_store_b128 v81, v[122:125] offset:96
	ds_store_b128 v81, v[126:129] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_lshrrev_b32_e32 v33, 4, v109
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v169, v83
	v_or_b32_e32 v170, v107, v82
	v_dual_mov_b32 v102, v81 :: v_dual_add_nc_u32 v173, 0, v106
	v_or_b32_e32 v168, v33, v84
	v_dual_mov_b32 v74, 0x5410 :: v_dual_lshlrev_b32 v33, 4, v108
	v_and_b32_e32 v71, 16, v0
	v_xor_b32_e32 v75, 4, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v34, 0x84, v168
	v_add_nc_u32_e32 v174, 0, v33
	v_xor_b32_e32 v35, 0x108, v168
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	v_dual_mov_b32 v71, 0x7632 :: v_dual_add_nc_u32 v176, 0, v112
	v_xor_b32_e32 v36, 0x18c, v168
	v_xor_b32_e32 v37, 0x210, v168
	v_cndmask_b32_e32 v74, 0x1054, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v71, 0x3276, v71, vcc_lo
	v_xor_b32_e32 v38, 0x294, v168
	v_xor_b32_e32 v39, 0x318, v168
	v_xor_b32_e32 v40, 0x39c, v168
	v_lshl_or_b32 v74, v74, 8, v74
	v_lshl_or_b32 v71, v71, 8, v71
	v_xor_b32_e32 v65, 0x420, v168
	v_xor_b32_e32 v66, 0x4a4, v168
	v_xor_b32_e32 v67, 0x528, v168
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v74, 0x540054, v74
	v_dual_mov_b32 v98, v81 :: v_dual_and_b32 v71, 0x760076, v71
	v_xor_b32_e32 v68, 0x5ac, v168
	v_xor_b32_e32 v69, 0x630, v168
	v_xor_b32_e32 v70, 0x6b4, v168
	v_xor_b32_e32 v72, 0x738, v168
	v_xor_b32_e32 v73, 0x7bc, v168
	v_xor_b32_e32 v76, 8, v170
	v_xor_b32_e32 v77, 12, v170
	v_xor_b32_e32 v78, 16, v170
	v_xor_b32_e32 v79, 20, v170
	v_xor_b32_e32 v80, 24, v170
	v_xor_b32_e32 v82, 28, v170
	v_xor_b32_e32 v83, 32, v170
	v_xor_b32_e32 v84, 36, v170
	v_xor_b32_e32 v85, 40, v170
	v_xor_b32_e32 v86, 44, v170
	v_xor_b32_e32 v87, 48, v170
	v_lshl_or_b32 v74, v74, 4, v74
	v_lshl_or_b32 v71, v71, 4, v71
	v_xor_b32_e32 v88, 52, v170
	v_xor_b32_e32 v89, 56, v170
	v_xor_b32_e32 v90, 60, v170
	v_dual_mov_b32 v100, v81 :: v_dual_and_b32 v171, 0x5040504, v74
	v_dual_mov_b32 v99, v81 :: v_dual_and_b32 v172, 0x7060706, v71
	v_dual_mov_b32 v104, v81 :: v_dual_add_nc_u32 v175, 0, v111
	v_add_nc_u32_e32 v177, 0, v113
	v_dual_mov_b32 v101, v81 :: v_dual_add_nc_u32 v178, 0, v114
	v_dual_mov_b32 v92, v81 :: v_dual_add_nc_u32 v179, 0, v115
	v_dual_mov_b32 v103, v81 :: v_dual_add_nc_u32 v180, 0, v116
	v_dual_mov_b32 v94, v81 :: v_dual_add_nc_u32 v181, 0, v117
	v_add_nc_u32_e32 v182, 0, v34
	v_dual_mov_b32 v96, v81 :: v_dual_add_nc_u32 v183, 0, v35
	v_dual_mov_b32 v91, v81 :: v_dual_add_nc_u32 v184, 0, v36
	v_dual_mov_b32 v74, v81 :: v_dual_add_nc_u32 v185, 0, v37
	v_dual_mov_b32 v93, v81 :: v_dual_add_nc_u32 v186, 0, v38
	v_add_nc_u32_e32 v187, 0, v39
	v_dual_mov_b32 v95, v81 :: v_dual_add_nc_u32 v188, 0, v40
	v_add_nc_u32_e32 v189, 0, v65
	v_add_nc_u32_e32 v190, 0, v66
	v_add_nc_u32_e32 v191, 0, v67
	v_add_nc_u32_e32 v192, 0, v68
	v_dual_mov_b32 v66, v81 :: v_dual_add_nc_u32 v193, 0, v69
	v_add_nc_u32_e32 v194, 0, v70
	v_dual_mov_b32 v68, v81 :: v_dual_add_nc_u32 v195, 0, v72
	v_add_nc_u32_e32 v196, 0, v73
	v_dual_mov_b32 v70, v81 :: v_dual_add_nc_u32 v197, 0, v75
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v198, 0, v76
	v_dual_mov_b32 v72, v81 :: v_dual_add_nc_u32 v199, 0, v77
	v_dual_mov_b32 v67, v81 :: v_dual_add_nc_u32 v200, 0, v78
	v_add_nc_u32_e32 v201, 0, v79
	v_dual_mov_b32 v69, v81 :: v_dual_add_nc_u32 v202, 0, v80
	v_add_nc_u32_e32 v203, 0, v82
	v_dual_mov_b32 v71, v81 :: v_dual_add_nc_u32 v204, 0, v83
	v_add_nc_u32_e32 v205, 0, v84
	v_add_nc_u32_e32 v206, 0, v85
	v_add_nc_u32_e32 v207, 0, v86
	v_add_nc_u32_e32 v208, 0, v87
	v_add_nc_u32_e32 v209, 0, v88
	v_add_nc_u32_e32 v210, 0, v89
	v_add_nc_u32_e32 v211, 0, v90
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, v81
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v75, v81
	v_mov_b32_e32 v76, v81
	v_mov_b32_e32 v77, v81
	v_mov_b32_e32 v78, v81
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v80, v81
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s20, 0x76543210
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 386 21 is_stmt 1              ; attention_backward.py:386:21
	v_mad_u64_u32 v[82:83], null, s65, s35, v[0:1]
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s64
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v213, 0, v168
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s38, s38, 16
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v33, s35, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v35, s35, v33
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v82
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v36, s35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v37, s35, v36
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v38, s35, v37
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v39, s35, v38
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v38, 1, v38
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v40, s35, v39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s59
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s58
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v82, 1, v40
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v40, s35, v40
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v83, s35, v40
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s57
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v84, s35, v83
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s56
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v83, 1, v83
	v_lshlrev_b32_e32 v40, 1, v40
	s_clause 0x7
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	buffer_load_u16 v82, v82, s[28:31], 0 offen
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v85, s35, v84
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v86, s35, v85
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v85, 1, v85
	v_lshlrev_b32_e32 v84, 1, v84
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v87, s35, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s53
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v88, s35, v87
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s52
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v87, 1, v87
	v_lshlrev_b32_e32 v86, 1, v86
	v_lshlrev_b32_e32 v212, 1, v88
	v_add_lshl_u32 v88, v88, s35, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s47
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s50
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v212, 0x80000000, v212, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s51
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s38, s39
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	s_clause 0x7
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v83, v83, s[28:31], 0 offen
	buffer_load_u16 v84, v84, s[28:31], 0 offen
	buffer_load_u16 v85, v85, s[28:31], 0 offen
	buffer_load_u16 v86, v86, s[28:31], 0 offen
	buffer_load_u16 v87, v87, s[28:31], 0 offen
	buffer_load_u16 v212, v212, s[28:31], 0 offen
	buffer_load_u16 v88, v88, s[28:31], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v213, v34
	s_waitcnt vmcnt(14)
	ds_store_b16 v182, v33
	s_waitcnt vmcnt(13)
	ds_store_b16 v183, v35
	s_waitcnt vmcnt(12)
	ds_store_b16 v184, v36
	s_waitcnt vmcnt(11)
	ds_store_b16 v185, v37
	s_waitcnt vmcnt(10)
	ds_store_b16 v186, v38
	s_waitcnt vmcnt(9)
	ds_store_b16 v187, v39
	s_waitcnt vmcnt(8)
	ds_store_b16 v188, v82
	s_waitcnt vmcnt(7)
	ds_store_b16 v189, v40
	s_waitcnt vmcnt(6)
	ds_store_b16 v190, v83
	s_waitcnt vmcnt(5)
	ds_store_b16 v191, v84
	s_waitcnt vmcnt(4)
	ds_store_b16 v192, v85
	s_waitcnt vmcnt(3)
	ds_store_b16 v193, v86
	s_waitcnt vmcnt(2)
	ds_store_b16 v194, v87
	s_waitcnt vmcnt(1)
	ds_store_b16 v195, v212
	s_waitcnt vmcnt(0)
	ds_store_b16 v196, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[37:40], off, off
	scratch_load_b128 v[41:44], off, off offset:16
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v33, 0, v170
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[212:213], v197 offset1:16
	ds_load_2addr_b32 v[214:215], v201 offset1:16
	ds_load_2addr_b32 v[216:217], v205 offset1:16
	ds_load_2addr_b32 v[218:219], v209 offset1:16
	ds_load_2addr_b32 v[240:241], v198 offset1:16
	ds_load_2addr_b32 v[242:243], v199 offset1:16
	ds_load_2addr_b32 v[244:245], v200 offset1:16
	ds_load_2addr_b32 v[238:239], v33 offset1:16
	ds_load_2addr_b32 v[246:247], v202 offset1:16
	ds_load_2addr_b32 v[248:249], v203 offset1:16
	ds_load_2addr_b32 v[250:251], v204 offset1:16
	ds_load_2addr_b32 v[252:253], v206 offset1:16
	ds_load_2addr_b32 v[254:255], v207 offset1:16
	ds_load_2addr_b32 v[33:34], v208 offset1:16
	ds_load_2addr_b32 v[35:36], v210 offset1:16
	ds_load_2addr_b32 v[228:229], v211 offset1:16
	v_mov_b32_e32 v88, v81
	v_mov_b32_e32 v82, v81
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v84, v81
	v_mov_b32_e32 v85, v81
	v_mov_b32_e32 v86, v81
	v_mov_b32_e32 v87, v81
	v_mov_b32_e32 v237, v88
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v220.h, v212.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v221.l, v240.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v221.h, v242.l
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v220.l, v238.l
	v_mov_b16_e64 v222.l, v244.l
	v_mov_b16_e64 v222.h, v214.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v223.l, v246.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v223.h, v248.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v224.l, v250.l
	v_mov_b16_e64 v224.h, v216.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v225.l, v252.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v225.h, v254.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v226.l, v33.l
	v_mov_b16_e64 v226.h, v218.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v227.l, v35.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v227.h, v228.l
	v_dual_mov_b32 v236, v87 :: v_dual_mov_b32 v235, v86
	v_dual_mov_b32 v234, v85 :: v_dual_mov_b32 v233, v84
	v_dual_mov_b32 v232, v83 :: v_dual_mov_b32 v231, v82
	v_mov_b32_e32 v230, v81
	v_mov_b16_e64 v212.l, v238.h
	v_mov_b16_e64 v242.l, v240.h
	v_mov_b16_e64 v214.l, v244.h
	v_mov_b16_e64 v248.l, v246.h
	v_mov_b16_e64 v216.l, v250.h
	v_mov_b16_e64 v254.l, v252.h
	v_mov_b16_e64 v218.l, v33.h
	v_mov_b16_e64 v228.l, v35.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v33, s21, v137, -v167
	v_fma_f32 v35, s21, v139, -v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v33
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v33, 0, v33, s46
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[230:237], v[220:227], v[37:44], v[230:237]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[37:40], off, off offset:32
	scratch_load_b128 v[41:44], off, off offset:48
	v_mov_b16_e64 v220.l, v239.l
	v_mov_b16_e64 v220.h, v213.l
	v_mov_b16_e64 v221.l, v241.l
	v_mov_b16_e64 v221.h, v243.l
	v_mov_b16_e64 v222.l, v245.l
	v_mov_b16_e64 v222.h, v215.l
	v_mov_b16_e64 v223.l, v247.l
	v_mov_b16_e64 v223.h, v249.l
	v_mov_b16_e64 v224.l, v251.l
	v_mov_b16_e64 v224.h, v217.l
	v_mov_b16_e64 v225.l, v253.l
	v_mov_b16_e64 v225.h, v255.l
	v_mov_b16_e64 v226.l, v34.l
	v_mov_b16_e64 v226.h, v219.l
	v_mov_b16_e64 v227.l, v36.l
	v_mov_b16_e64 v227.h, v229.l
	v_mov_b16_e64 v229.l, v36.h
	v_mov_b16_e64 v243.l, v241.h
	v_mov_b16_e64 v249.l, v247.h
	v_mov_b16_e64 v255.l, v253.h
	v_mov_b16_e64 v213.l, v239.h
	v_mov_b16_e64 v215.l, v245.h
	v_mov_b16_e64 v217.l, v251.h
	v_mov_b16_e64 v219.l, v34.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v34, s21, v138, -v167
	v_fma_f32 v36, s21, v140, -v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v34, v34
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v34, 0, v34, s45
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[230:237], v[220:227], v[37:44], v[230:237]
	v_dual_mov_b32 v221, v212 :: v_dual_mov_b32 v222, v242
	v_dual_mov_b32 v223, v214 :: v_dual_mov_b32 v224, v248
	v_dual_mov_b32 v225, v216 :: v_dual_mov_b32 v226, v254
	v_dual_mov_b32 v227, v218 :: v_dual_mov_b32 v220, v229
	v_mov_b32_e32 v214, v243
	v_mov_b32_e32 v216, v249
	v_mov_b32_e32 v218, v255
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[230:237], v[221:228], v[49:56], v[230:237]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v37, s21, v141, -v167
	v_fma_f32 v38, s21, v142, -v167
	v_fma_f32 v39, s21, v143, -v167
	v_fma_f32 v40, s21, v144, -v167
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[230:237], v[213:220], v[57:64], v[230:237]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v84, v232, v169
	v_sub_f32_e32 v82, v230, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v83, v231, v169
	v_sub_f32_e32 v85, v233, v169
	v_sub_f32_e32 v87, v235, v169
	v_sub_f32_e32 v143, v237, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v82 :: v_dual_mul_f32 v34, v34, v83
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s48, v33 :: v_dual_mul_f32 v34, s48, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v82, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v82, 0x7fff
	v_bfe_u32 v82, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v82, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v34, v33, v171
	v_perm_b32 v138, v34, v33, v172
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v35
	v_exp_f32_e32 v34, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v33, 0, v33, s44
	v_cndmask_b32_e64 v34, 0, v34, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v84 :: v_dual_mul_f32 v34, v34, v85
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s48, v33 :: v_dual_mul_f32 v34, s48, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v34, v33, v171
	v_perm_b32 v140, v34, v33, v172
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v37
	v_exp_f32_e32 v34, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v33, 0, v33, s42
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v88, v236, v169
	v_sub_f32_e32 v86, v234, v169
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v34, 0, v34, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v86 :: v_dual_mul_f32 v34, v34, v87
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s48, v33 :: v_dual_mul_f32 v34, s48, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v141, v34, v33, v171
	v_perm_b32 v142, v34, v33, v172
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v39
	v_exp_f32_e32 v34, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v33, 0, v33, s40
	v_cndmask_b32_e64 v34, 0, v34, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v88 :: v_dual_mul_f32 v34, v34, v143
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s48, v33 :: v_dual_mul_f32 v34, s48, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v34, v33, v171
	v_perm_b32 v144, v34, v33, v172
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[97:104], v[129:136], v[137:144], v[97:104]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[121:128], v[137:144], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[137:144], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[137:144], v[65:72]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s1, s38, 1
	s_or_b32 s5, s38, 2
	s_or_b32 s6, s38, 3
	s_or_b32 s7, s38, 4
	s_or_b32 s8, s38, 5
	s_or_b32 s9, s38, 6
	s_or_b32 s10, s38, 7
	s_or_b32 s11, s38, 8
	s_or_b32 s12, s38, 9
	s_or_b32 s13, s38, 10
	s_or_b32 s14, s38, 11
	s_or_b32 s15, s38, 12
	s_or_b32 s16, s38, 13
	s_or_b32 s17, s38, 14
	s_or_b32 s18, s38, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s38, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v212, s38, v154
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s1, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v213, s38, v155
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s5, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v214, s38, v156
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s6, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v215, s38, v157
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s7, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v216, s38, v158
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s8, s23
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s9, s23
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s10, s23
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s11, s23
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s12, s23
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s13, s23
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s14, s23
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s15, s23
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s16, s23
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s17, s23
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s18, s23
	s_cselect_b32 s51, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s65, s38, s49
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s64
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[82:83], null, s65, s33, v[0:1]
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s1, s2, s63
	s_and_b32 s5, s2, s62
	s_and_b32 s6, s2, s61
	s_and_b32 s7, s2, s60
	s_and_b32 s8, s2, s59
	s_and_b32 s12, s2, s55
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v33, s33, v82
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v39, 1, v82
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s9, s2, s58
	s_and_b32 s10, s2, s57
	s_and_b32 s14, s2, s53
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v34, s33, v33
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v33, 1, v33
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s51
	s_and_b32 s16, s2, s47
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v35, s33, v34
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v34, 1, v34
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	buffer_load_u16 v83, v39, s[24:27], 0 offen
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s11, s2, s56
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v36, s33, v35
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v35, 1, v35
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s13, s2, s54
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v37, s33, v36
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	buffer_load_u16 v84, v34, s[24:27], 0 offen
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s15, s2, s52
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v38, s33, v37
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_lshlrev_b32_e32 v34, 1, v37
	v_cndmask_b32_e64 v36, 0x80000000, v36, s7
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s17, s2, s50
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v40, s33, v38
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e64 v34, 0x80000000, v34, s8
	buffer_load_u16 v85, v36, s[24:27], 0 offen
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s1, s23, v213
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v82, s33, v40
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v40, 1, v40
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s5, s23, v214
	v_cmp_gt_i32_e64 s6, s23, v215
	v_cmp_gt_i32_e64 s7, s23, v216
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v39, s33, v82
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v40, 0x80000000, v40, s10
	v_lshlrev_b32_e32 v82, 1, v82
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s45, s0, s1
	s_and_b32 s44, s0, s5
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v37, s33, v39
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v39, 1, v39
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s43, s0, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v87, s33, v37
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v39, 0x80000000, v39, s12
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s42, s0, s7
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v38, s9
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v38, s33, v87
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v87, 1, v87
	v_cndmask_b32_e64 v37, 0x80000000, v37, s13
	buffer_load_u16 v86, v36, s[24:27], 0 offen
	v_cndmask_b32_e64 v87, 0x80000000, v87, s14
	buffer_load_u16 v87, v87, s[24:27], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v36, s33, v38
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v88, s33, v36
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v36, 1, v36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v105, v88, s33, 1
	v_lshlrev_b32_e32 v88, 1, v88
	v_cndmask_b32_e64 v36, 0x80000000, v36, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	v_cndmask_b32_e64 v88, 0x80000000, v88, s17
	s_clause 0x5
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	buffer_load_u16 v141, v105, s[24:27], 0 offen
	buffer_load_u16 v137, v82, s[24:27], 0 offen
	buffer_load_u16 v138, v37, s[24:27], 0 offen
	buffer_load_u16 v139, v38, s[24:27], 0 offen
	buffer_load_u16 v140, v88, s[24:27], 0 offen
	v_add_nc_u32_e32 v37, 0, v153
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v88, v81
	v_mov_b32_e32 v82, v81
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e32 vcc_lo, s23, v212
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s46, s0, vcc_lo
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v83.h, v33.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v84.h, v35.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v86.h, v40.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v137.h, v39.l
	v_mov_b16_e32 v85.h, v34.l
	ds_store_b128 v173, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v174
	ds_load_b128 v[121:124], v174 offset:256
	ds_load_b128 v[113:116], v174 offset:512
	ds_load_b128 v[105:108], v174 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v138.h, v87.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v139.h, v36.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v140.h, v141.l
	ds_store_b128 v173, v[137:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v174
	ds_load_b128 v[125:128], v174 offset:256
	ds_load_b128 v[117:120], v174 offset:512
	ds_load_b128 v[109:112], v174 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v145, v83
	ds_store_b16 v145, v137 offset:1024
	ds_store_b16 v146, v33
	ds_store_b16 v146, v39 offset:1024
	ds_store_b16 v147, v84
	ds_store_b16 v147, v138 offset:1024
	ds_store_b16 v148, v35
	ds_store_b16 v148, v87 offset:1024
	ds_store_b16 v149, v85
	ds_store_b16 v149, v139 offset:1024
	ds_store_b16 v150, v34
	ds_store_b16 v150, v36 offset:1024
	ds_store_b16 v151, v86
	ds_store_b16 v151, v140 offset:1024
	ds_store_b16 v152, v40
	ds_store_b16 v152, v141 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[217:220], v37
	ds_load_b128 v[221:224], v175
	ds_load_b128 v[225:228], v176
	ds_load_b128 v[229:232], v177
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v84, v81
	v_mov_b32_e32 v85, v81
	v_mov_b32_e32 v86, v81
	v_mov_b32_e32 v87, v81
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[233:236], v178
	ds_load_b128 v[237:240], v179
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v88 :: v_dual_mov_b32 v141, v85
	v_dual_mov_b32 v142, v86 :: v_dual_mov_b32 v143, v87
	v_dual_mov_b32 v140, v84 :: v_dual_mov_b32 v139, v83
	v_dual_mov_b32 v138, v82 :: v_dual_mov_b32 v137, v81
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[241:244], v180
	ds_load_b128 v[245:248], v181
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, s38, v159
	v_or_b32_e32 v83, s38, v160
	v_or_b32_e32 v84, s38, v161
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[217:224], v[1:8], v[137:144]
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s8, s23, v82
	v_cmp_gt_i32_e64 s9, s23, v83
	v_cmp_gt_i32_e64 s10, s23, v84
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[225:232], v[9:16], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s41, s0, s8
	s_and_b32 s40, s0, s9
	s_and_b32 s22, s0, s10
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[233:240], v[17:24], v[137:144]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[241:248], v[25:32], v[137:144]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v212, v163
	v_cmp_le_i32_e64 s1, v213, v163
	v_cmp_le_i32_e64 s5, v214, v163
	v_cmp_le_i32_e64 s6, v215, v163
	v_cmp_le_i32_e64 s7, v216, v163
	v_cmp_le_i32_e64 s8, v82, v163
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s11, vcc_lo, s46
	s_and_b32 s1, s1, s45
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s9, v83, v163
	v_cmp_le_i32_e64 s10, v84, v163
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s5, s5, s44
	s_and_b32 s6, s6, s43
	s_and_not1_b32 s12, s46, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s45, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s42
	s_and_b32 s8, s8, s41
	s_or_b32 s46, s12, s11
	s_or_b32 s45, s13, s1
	s_and_not1_b32 s1, s44, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s43, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s40
	s_and_b32 s10, s10, s22
	s_or_b32 s44, s1, s5
	s_or_b32 s43, s11, s6
	s_and_not1_b32 s1, s42, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s41, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s42, s1, s5
	s_or_b32 s41, s6, s7
	s_and_not1_b32 s1, s40, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s22, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s40, s1, s5
	s_or_b32 s22, s6, s7
.LBB0_17:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v212, v164
	v_cmp_ge_i32_e64 s1, v213, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s11, v212, v165
	v_cmp_le_i32_e64 s12, v213, v165
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s5, v214, v164
	v_cmp_ge_i32_e64 s6, v215, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s13, v214, v165
	v_cmp_le_i32_e64 s14, v215, v165
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s7, v216, v164
	v_cmp_ge_i32_e64 s8, v82, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s15, v216, v165
	v_cmp_le_i32_e64 s16, v82, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v83, v164
	v_cmp_ge_i32_e64 s10, v84, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s17, v83, v165
	v_cmp_le_i32_e64 s18, v84, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s11, s11, s46
	s_and_b32 s1, s1, s45
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s5, s5, s44
	s_and_b32 s6, s6, s43
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s46, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s45, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s42
	s_and_b32 s8, s8, s41
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_or_b32 s46, s12, s11
	s_or_b32 s45, s13, s1
	s_and_not1_b32 s1, s44, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s43, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s40
	s_and_b32 s10, s10, s22
	s_or_b32 s44, s1, s5
	s_or_b32 s43, s11, s6
	s_and_not1_b32 s1, s42, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s41, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s42, s1, s5
	s_or_b32 s41, s6, s7
	s_and_not1_b32 s1, s40, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s22, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s40, s1, s5
	s_or_b32 s22, s6, s7
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
	v_add_lshl_u32 v0, v0, s34, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v25, v24, v154
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v7, 48, v154
	v_or_b32_e32 v8, 46, v154
	v_or_b32_e32 v9, 44, v154
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v25, v25, s34, 2
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
	v_add_lshl_u32 v26, v26, s34, 2
	v_add_lshl_u32 v24, v28, s34, 2
	v_add_lshl_u32 v27, v27, s34, 2
	buffer_store_b32 v97, v25, s[36:39], 0 offen
	v_add_lshl_u32 v25, v29, s34, 2
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
	v_add_lshl_u32 v26, v30, s34, 2
	s_clause 0x1
	buffer_store_b32 v100, v24, s[36:39], 0 offen
	buffer_store_b32 v101, v25, s[36:39], 0 offen
	v_add_lshl_u32 v24, v32, s34, 2
	v_add_lshl_u32 v22, v22, s34, 2
	v_add_lshl_u32 v20, v20, s34, 2
	v_add_lshl_u32 v18, v18, s34, 2
	v_add_lshl_u32 v16, v16, s34, 2
	v_add_lshl_u32 v14, v14, s34, 2
	v_add_lshl_u32 v12, v12, s34, 2
	v_add_lshl_u32 v10, v10, s34, 2
	v_add_lshl_u32 v8, v8, s34, 2
	v_add_lshl_u32 v6, v6, s34, 2
	v_add_lshl_u32 v4, v4, s34, 2
	v_add_lshl_u32 v27, v31, s34, 2
	v_add_lshl_u32 v23, v23, s34, 2
	v_add_lshl_u32 v21, v21, s34, 2
	v_add_lshl_u32 v19, v19, s34, 2
	v_add_lshl_u32 v17, v17, s34, 2
	v_add_lshl_u32 v15, v15, s34, 2
	v_add_lshl_u32 v13, v13, s34, 2
	v_add_lshl_u32 v11, v11, s34, 2
	v_add_lshl_u32 v9, v9, s34, 2
	v_add_lshl_u32 v7, v7, s34, 2
	v_add_lshl_u32 v5, v5, s34, 2
	v_add_lshl_u32 v3, v3, s34, 2
	v_add_lshl_u32 v2, v2, s34, 2
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
	v_add_lshl_u32 v1, v1, s34, 2
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
	s_endpgm
.Ltmp226:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 68
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
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 68
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16824
; TotalNumSgprs: 75
; NumVgprs: 256
; ScratchSize: 68
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 75
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
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
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
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
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
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
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
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
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 68
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 16
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
