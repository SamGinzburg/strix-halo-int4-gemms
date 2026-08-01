	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[12:15], s[0:1], 0x94
	s_load_b128 s[36:39], s[0:1], 0x64
	s_load_b32 s35, s[0:1], 0x74
	s_load_b32 s67, s[0:1], 0x7c
.Ltmp0:
	.loc	1 159 29 prologue_end           ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v159, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v202, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v114, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v39, 0x2d0, v65
	v_xor_b32_e32 v37, 0x1b0, v65
	v_xor_b32_e32 v36, 0x120, v65
	v_xor_b32_e32 v40, 0x360, v65
	v_xor_b32_e32 v38, 0x240, v65
	v_add_nc_u32_e32 v156, 0, v39
	v_add_nc_u32_e32 v154, 0, v37
	v_add_nc_u32_e32 v153, 0, v36
	v_add_nc_u32_e32 v157, 0, v40
	v_add_nc_u32_e32 v155, 0, v38
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s36
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s66, s2, 5
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
	s_xor_b32 s5, s3, s36
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
	s_cselect_b32 s2, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s37
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s16, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s9, s36, s37
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s16, s36
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s9, s9, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s17, s3, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
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
	s_abs_i32 s20, s17
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s9
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s66, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s21, s2, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s66, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s19, s21
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s66, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s19
	s_sub_i32 s40, 0, s19
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s66, 4
	s_or_b32 s8, s66, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s66, 6
	s_or_b32 s2, s66, 7
	s_or_b32 s9, s66, 8
	s_or_b32 s23, s66, 9
	s_or_b32 s24, s66, 10
	s_or_b32 s25, s66, 11
	s_or_b32 s11, s66, 12
	s_or_b32 s26, s66, 13
	s_or_b32 s27, s66, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s22, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s28, s66, 15
	s_or_b32 s29, s66, 16
	s_or_b32 s30, s66, 17
	s_or_b32 s31, s66, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s22, s22, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s33, s66, 19
	s_or_b32 s34, s66, 20
	s_or_b32 s36, s66, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s22, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s61, s66, 22
	s_or_b32 s62, s66, 23
	s_or_b32 s63, s66, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s40, s40, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s65, s66, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s40, s22, s40
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s66, 26
	s_or_b32 s69, s66, 27
	s_or_b32 s70, s66, 28
	s_or_b32 s71, s66, 29
	s_or_b32 s72, s66, 30
	s_or_b32 s73, s66, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s22, s22, s40
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s66, s38
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s4, s38
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s5, s38
	s_load_b64 s[4:5], s[0:1], 0x0
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s6, s38
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s7, s38
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s8, s38
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s10, s38
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s2, s38
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s35, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s9, s38
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s23, s38
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s24, s38
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s25, s38
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s11, s38
	s_load_b128 s[8:11], s[0:1], 0x38
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s26, s38
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s27, s38
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s27, s3, s38
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s28, s38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s67, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s29, s38
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s30, s38
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s31, s38
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s33, s38
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s34, s38
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s36, s38
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s61, s38
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s62, s38
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s63, s38
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s65, s38
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s68, s38
	s_mov_b32 s68, 0
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s69, s38
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s70, s38
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s71, s38
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s72, s38
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s73, s38
	s_cselect_b32 s25, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s27, s27, s66
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s65, s27, s35
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s35, v1
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	v_add_nc_u32_e32 v3, s35, v4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s35, v2
	v_add_nc_u32_e32 v7, s35, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v5, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s35, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_lshl_add_u32 v1, s35, 5, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v9, s35, v7
	v_add_nc_u32_e32 v10, s35, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v11, s35, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v13, s35, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_lshlrev_b32 v9, 1, v9
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v12, s35, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v15, s35, v13
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v14, s35, v12
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v17, s35, v15
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s35, v14
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s35, v17
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_lshlrev_b32 v15, 1, v15
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s35, v16
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x6
	buffer_load_u16 v21, v1, s[4:7], 0 offen
	buffer_load_u16 v22, v2, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s35, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x6
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v20, v3, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v15, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v18
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v23, s35, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v15, 1, v17
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v17, s35, v18
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v18, 1, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v25, s35, v23
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v23, 1, v23
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s35, v17
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s35, v25
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s35, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s35, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v24, 1, v24
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v28, s35, v26
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v30, s35, v28
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v28, 1, v28
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x2
	buffer_load_u16 v29, v1, s[4:7], 0 offen
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v1, 0x80000000, v24 :: v_dual_lshlrev_b32 v24, 1, v26
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s35, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v27
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v31, 1, v26
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v26, v26, s35, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x4
	buffer_load_u16 v32, v2, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v28, vcc_lo
	buffer_load_u16 v28, v1, s[4:7], 0 offen
	v_lshlrev_b32_e32 v1, 1, v16
	v_lshlrev_b32_e32 v16, 1, v30
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v33, v2, s[4:7], 0 offen
	v_add_lshl_u32 v2, v30, s35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x4
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v30, v3, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v34, v1, s[4:7], 0 offen
	buffer_load_u16 v35, v2, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s27, s67, v[0:1]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v3, 0x90, v65
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_lshl_b32 s4, s67, 4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v152, 0, v3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s67, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[2:3], null, s67, 9, v[1:2]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s67, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v1 :: v_dual_lshlrev_b32 v36, 1, v36
	v_add_nc_u32_e32 v1, s4, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v2
	v_cndmask_b32_e32 v40, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v48, 0x80000000, v1 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_nc_u32_e32 v1, s4, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e32 v50, 0x80000000, v37, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v41, 0x3f0, v65
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v44, s67, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v55, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v158, 0, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s67, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v151, 0, v65
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s4, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s67, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v41
	v_lshlrev_b32_e32 v38, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v43
	v_add_nc_u32_e32 v41, s67, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v67, 0x80000000, v38, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v44
	v_cndmask_b32_e32 v69, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v45, s67, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v70, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s67, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v72, 0x80000000, v43, vcc_lo
	v_add_lshl_u32 v41, v41, s67, 1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v44, s67, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v81, 0x80000000, v41 :: v_dual_lshlrev_b32 v36, 1, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s67, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(24)
	ds_store_b16 v151, v5
	s_waitcnt vmcnt(17)
	ds_store_b16 v151, v15 offset:1024
	ds_store_b16 v151, v21 offset:2048
	s_waitcnt vmcnt(15)
	ds_store_b16 v151, v29 offset:3072
	ds_store_b16 v152, v4
	ds_store_b16 v152, v18 offset:1024
	ds_store_b16 v152, v22 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v152, v17 offset:3072
	ds_store_b16 v153, v20
	s_waitcnt vmcnt(12)
	ds_store_b16 v153, v32 offset:1024
	ds_store_b16 v153, v6 offset:2048
	ds_store_b16 v153, v19 offset:3072
	ds_store_b16 v154, v7
	s_waitcnt vmcnt(11)
	ds_store_b16 v154, v23 offset:1024
	ds_store_b16 v154, v8 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v154, v28 offset:3072
	ds_store_b16 v155, v9
	ds_store_b16 v155, v25 offset:1024
	ds_store_b16 v155, v10 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v155, v24 offset:3072
	ds_store_b16 v156, v11
	ds_store_b16 v156, v27 offset:1024
	ds_store_b16 v156, v12 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v156, v33 offset:3072
	ds_store_b16 v157, v13
	ds_store_b16 v157, v31 offset:1024
	ds_store_b16 v157, v14 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v157, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v158, v30
	s_waitcnt vmcnt(2)
	ds_store_b16 v158, v26 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v158, v34 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v35 offset:3072
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v45
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v44
	v_dual_cndmask_b32 v71, 0x80000000, v37 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v76, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 1, v43
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v43, s67, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v77, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v78, 0x80000000, v36 :: v_dual_lshlrev_b32 v41, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s67, v43
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v85, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s33, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v89, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s34, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 1, v43
	v_cndmask_b32_e32 v99, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v73, 0x80000000, v41 :: v_dual_lshlrev_b32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v75, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s29, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s67, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v80, 0x80000000, v38, vcc_lo
	v_lshlrev_b32_e32 v38, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s67, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v36
	v_cndmask_b32_e32 v84, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v88, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s23, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v38, v41, s67, 1
	v_cndmask_b32_e32 v90, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s24, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v100, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v101, 0x80000000, v38, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v43, v39, s[4:7], 0 offen
	buffer_load_u16 v44, v40, s[4:7], 0 offen
	buffer_load_u16 v45, v3, s[4:7], 0 offen
	buffer_load_u16 v46, v55, s[4:7], 0 offen
	buffer_load_u16 v51, v48, s[4:7], 0 offen
	buffer_load_u16 v52, v2, s[4:7], 0 offen
	buffer_load_u16 v53, v50, s[4:7], 0 offen
	buffer_load_u16 v54, v66, s[4:7], 0 offen
	buffer_load_u16 v56, v1, s[4:7], 0 offen
	buffer_load_u16 v57, v71, s[4:7], 0 offen
	buffer_load_u16 v58, v76, s[4:7], 0 offen
	buffer_load_u16 v59, v77, s[4:7], 0 offen
	buffer_load_u16 v95, v73, s[4:7], 0 offen
	buffer_load_u16 v96, v75, s[4:7], 0 offen
	buffer_load_u16 v97, v80, s[4:7], 0 offen
	buffer_load_u16 v98, v84, s[4:7], 0 offen
	buffer_load_u16 v61, v67, s[4:7], 0 offen
	buffer_load_u16 v62, v70, s[4:7], 0 offen
	buffer_load_u16 v63, v74, s[4:7], 0 offen
	buffer_load_u16 v64, v81, s[4:7], 0 offen
	buffer_load_u16 v91, v69, s[4:7], 0 offen
	buffer_load_u16 v92, v72, s[4:7], 0 offen
	buffer_load_u16 v93, v79, s[4:7], 0 offen
	buffer_load_u16 v94, v87, s[4:7], 0 offen
	buffer_load_u16 v47, v78, s[4:7], 0 offen
	buffer_load_u16 v41, v85, s[4:7], 0 offen
	buffer_load_u16 v38, v89, s[4:7], 0 offen
	buffer_load_u16 v37, v99, s[4:7], 0 offen
	buffer_load_u16 v36, v88, s[4:7], 0 offen
	buffer_load_u16 v35, v90, s[4:7], 0 offen
	buffer_load_u16 v34, v100, s[4:7], 0 offen
	buffer_load_u16 v33, v101, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_clause 0x1f
	buffer_load_u16 v49, v39, s[4:7], 0 offen
	buffer_load_u16 v42, v40, s[4:7], 0 offen
	buffer_load_u16 v40, v3, s[4:7], 0 offen
	buffer_load_u16 v39, v55, s[4:7], 0 offen
	buffer_load_u16 v60, v48, s[4:7], 0 offen
	buffer_load_u16 v55, v2, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v48, v66, s[4:7], 0 offen
	buffer_load_u16 v68, v1, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v82, v71, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v83, v76, s[4:7], 0 offen
	buffer_load_u16 v76, v80, s[4:7], 0 offen
	buffer_load_u16 v86, v77, s[4:7], 0 offen
	buffer_load_u16 v80, v84, s[4:7], 0 offen
	buffer_load_u16 v77, v67, s[4:7], 0 offen
	buffer_load_u16 v71, v69, s[4:7], 0 offen
	buffer_load_u16 v69, v78, s[4:7], 0 offen
	buffer_load_u16 v67, v88, s[4:7], 0 offen
	buffer_load_u16 v84, v70, s[4:7], 0 offen
	buffer_load_u16 v78, v72, s[4:7], 0 offen
	buffer_load_u16 v72, v85, s[4:7], 0 offen
	buffer_load_u16 v70, v90, s[4:7], 0 offen
	buffer_load_u16 v88, v74, s[4:7], 0 offen
	buffer_load_u16 v85, v79, s[4:7], 0 offen
	buffer_load_u16 v79, v89, s[4:7], 0 offen
	buffer_load_u16 v74, v100, s[4:7], 0 offen
	buffer_load_u16 v90, v81, s[4:7], 0 offen
	buffer_load_u16 v89, v87, s[4:7], 0 offen
	buffer_load_u16 v87, v99, s[4:7], 0 offen
	buffer_load_u16 v81, v101, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_b32_e32 v1, 0x70, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v159, 7, v1
	v_lshl_or_b32 v1, v114, 6, v160
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v101, v1, 16, 0
	v_xad_u32 v102, v1, 32, 0
	v_xad_u32 v103, v1, 48, 0
	v_xad_u32 v104, v1, 64, 0
	v_xad_u32 v105, 0x50, v1, 0
	v_xad_u32 v106, 0x60, v1, 0
	v_xad_u32 v107, 0x70, v1, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v137, 16, v49
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v112, 16, v51
	v_lshlrev_b32_e32 v118, 16, v52
	v_lshlrev_b32_e32 v120, 16, v54
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v138, 16, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v122, 16, v57
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v140, 16, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v124, 16, v59
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v142, 16, v55
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v143, 16, v50
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v144, 16, v48
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v125, 16, v61
	v_lshlrev_b32_e32 v126, 16, v62
	v_lshlrev_b32_e32 v127, 16, v63
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v93, 16, v93
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v129, 16, v47
	v_lshlrev_b32_e32 v130, 16, v41
	v_lshlrev_b32_e32 v131, 16, v38
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v100, 0, v1
	ds_load_b128 v[1:4], v100
	ds_load_b128 v[5:8], v101
	ds_load_b128 v[9:12], v102
	ds_load_b128 v[13:16], v103
	ds_load_b128 v[17:20], v104
	ds_load_b128 v[21:24], v105
	ds_load_b128 v[25:28], v106
	ds_load_b128 v[29:32], v107
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v151, v49
	ds_store_b16 v151, v60 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v151, v68 offset:2048
	ds_store_b16 v152, v42
	ds_store_b16 v152, v55 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v151, v73 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b16 v152, v82 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v152, v75 offset:3072
	ds_store_b16 v153, v40
	ds_store_b16 v153, v50 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v153, v83 offset:2048
	ds_store_b16 v154, v39
	ds_store_b16 v154, v48 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v153, v76 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v154, v86 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v154, v80 offset:3072
	s_waitcnt vmcnt(15)
	ds_store_b16 v155, v77
	s_waitcnt vmcnt(14)
	ds_store_b16 v155, v71 offset:1024
	s_waitcnt vmcnt(13)
	ds_store_b16 v155, v69 offset:2048
	s_waitcnt vmcnt(12)
	ds_store_b16 v155, v67 offset:3072
	s_waitcnt vmcnt(11)
	ds_store_b16 v156, v84
	s_waitcnt vmcnt(10)
	ds_store_b16 v156, v78 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v156, v72 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v156, v70 offset:3072
	s_waitcnt vmcnt(7)
	ds_store_b16 v157, v88
	s_waitcnt vmcnt(6)
	ds_store_b16 v157, v85 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v79 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v157, v74 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v158, v90
	s_waitcnt vmcnt(2)
	ds_store_b16 v158, v89 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v158, v87 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v81 offset:3072
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v132, 16, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v87, 16, v87
	v_lshlrev_b32_e32 v88, 16, v88
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v167, v91, v71 :: v_dual_lshlrev_b32 v78, 16, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v174, v132, v87 :: v_dual_mul_f32 v165, v127, v88
	v_mul_f32_e32 v169, v93, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v90, 16, v90
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v174, v174 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v169, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v167, v91, v71 :: v_dual_lshlrev_b32 v86, 16, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v174, v132, v87 :: v_dual_fmac_f32 v165, v127, v88
	v_fmac_f32_e32 v169, v93, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v87, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v148, v124, v86
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v82, 16, v82
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v85, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v83, 16, v83
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v87, v87, v87 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v89, 16, v89
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v72, 16, v72
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v87, v87, v87 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v92, 16, v92
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v148, v124, v86
	v_add_f32_dpp v85, v85, v85 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v128, 16, v64
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v146, v122, v82
	v_mul_f32_e32 v168, v92, v78
	v_mul_f32_e32 v170, v94, v89
	v_mul_f32_e32 v172, v130, v72
	v_mul_f32_e32 v166, v128, v90
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v170, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v172, v172 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v68, 16, v68
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v168, v92, v78
	v_fmac_f32_e32 v146, v122, v82
	v_fmac_f32_e32 v170, v94, v89
	v_fmac_f32_e32 v166, v128, v90
	v_fmac_f32_e32 v172, v130, v72
	v_add_f32_dpp v88, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v84, 16, v84
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v90, v170, v170 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v73, 16, v73
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v88, v88, v88 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v164, v126, v84
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v90, v90, v90 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v86, v86 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v136, 16, v33
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v88, v88, v88 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v90, v90, v90 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v86, v86 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v79, 16, v79
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v124, v88, -1, -1 op_sel:[1,0]
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v164, v126, v84 :: v_dual_lshlrev_b32 v123, 16, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v86, -1, -1 op_sel:[1,0]
.Ltmp34:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v121, 16, v56
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v88, v88, v124 :: v_dual_mul_f32 v147, v123, v83
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v126, v90, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v86, v86, v122 :: v_dual_mul_f32 v145, v121, v68
.Ltmp38:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v95, 16, v95
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v81, 16, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v86, 31
	v_mov_b32_dpp v145, v145 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v147, v123, v83 :: v_dual_lshlrev_b32 v76, 16, v76
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v123, v87, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v90, v90, v126 :: v_dual_fmac_f32 v145, v121, v68
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v121, v85, -1, -1 op_sel:[1,0]
.Ltmp46:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v149, v95, v73
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v87, v87, v123
	v_add_f32_dpp v92, v172, v172 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v173, v131, v79
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v85, v85, v121
.Ltmp50:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v178, v136, v81
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v92, v92, v92 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v173, v173 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s42, v88, 31
	v_mov_b32_dpp v178, v178 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v149, v95, v73
	v_add_f32_dpp v92, v92, v92 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v173, v131, v79 :: v_dual_lshlrev_b32 v80, 16, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v178, v136, v81
	v_add_f32_dpp v79, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v128, v92, -1, -1 op_sel:[1,0]
.Ltmp56:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v133, 16, v36
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v67, 16, v67
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v92, v92, v128
.Ltmp58:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v161, v97, v76
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v135, 16, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v74, 16, v74
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v96, 16, v96
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v161, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s46, v92, 31
.Ltmp62:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v175, v133, v67
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v84, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v161, v97, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v177, v135, v74 :: v_dual_mul_f32 v150, v96, v75
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v175, v175 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v110, 16, v45
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v161, v161 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s36, v85, 31
.Ltmp69:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v139, 16, v40
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v134, 16, v35
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v150, v96, v75
.Ltmp73:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v69, 16, v69
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v177, v177 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v108, 16, v43
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v175, v133, v67 :: v_dual_mul_f32 v162, v98, v80
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v111, 16, v46
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v87, 31
.Ltmp81:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v141, 16, v60
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v171, v129, v69
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v75, v145, v145 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v162, v98, v80 :: v_dual_lshlrev_b32 v77, 16, v77
	v_add_f32_dpp v80, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v171, v171 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_lshlrev_b32_e32 v116, 1, v114
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v171, v129, v69 :: v_dual_mul_f32 v176, v134, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v109, 16, v44
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v176, v176 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v89, v169, v169 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v119, 16, v53
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[33:36], v100
	ds_load_b128 v[37:40], v101
	ds_load_b128 v[41:44], v102
	ds_load_b128 v[45:48], v103
	ds_load_b128 v[49:52], v104
	ds_load_b128 v[53:56], v105
	ds_load_b128 v[57:60], v106
	ds_load_b128 v[61:64], v107
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v102, v110, v139
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v176, v134, v70
	v_add_f32_dpp v89, v89, v89 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v106, v119, v143
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(0)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v89, v89, v89 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v102, v110, v139
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v110, v79, -1, -1 op_sel:[1,0]
	s_barrier
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v106, v119, v143
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v79, v79, v110
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s44, v90, 31
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s28, v79, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v79, s28
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v96, v69, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v102, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v69, v96 :: v_dual_mul_f32 v104, v112, v141
	v_dual_add_f32 v73, v73, v102 :: v_dual_mov_b32 v102, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v69, 31
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s10, v73, 31
	v_dual_mov_b32 v69, s6 :: v_dual_fmac_f32 v104, v112, v141
	v_permlanex16_b32 v112, v81, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v73, s10
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v104, v75, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v81, v81, v112
	v_add_f32_dpp v98, v174, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v75, v75, v104
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s30, v81, 31
	v_mov_b32_e32 v104, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s23, v75, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v81, s30
	v_mov_b32_e32 v75, s23
.Ltmp117:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v105, v118, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v105, v118, v142
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v118, v82, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v82, v82, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s31, v82, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v82, s31 :: v_dual_fmac_f32 v177, v135, v74
.Ltmp125:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v100, v108, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v100, v108, v137
	v_add_f32_dpp v108, v175, v175 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v71, -1, -1 op_sel:[1,0]
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v71, v71, v100
.Ltmp130:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v107, v120, v144
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v71, 31
	v_mov_b32_dpp v107, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v71, s8
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v107, v120, v144
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v84, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v107, v107 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v84, v84, v120
.Ltmp136:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v103, v111, v140
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v107, v78, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s34, v84, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v78, v107 :: v_dual_mov_b32 v107, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v103, v111, v140
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v111, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s26, v78, 31
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v80, v80, v111 :: v_dual_mul_f32 v101, v109, v138
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v103, v74, -1, -1 op_sel:[1,0]
	v_and_b32_e32 v115, 1, v0
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s29, v80, 31
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v74, v74, v103 :: v_dual_mov_b32 v103, s40
	v_add_f32_dpp v76, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v101, v109, v138
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v74, 31
	v_mov_b32_e32 v78, s26
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v70, -1, -1 op_sel:[1,0]
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v72, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v74, s11
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v70, v70, v97
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v72, v72, v101
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v80, s29
	v_permlanex16_b32 v105, v76, -1, -1 op_sel:[1,0]
	v_add_nc_u32_e32 v99, 0, v116
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v70, 31
	v_readlane_b32 s9, v72, 31
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v105
	v_add_f32_dpp v93, v173, v173 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v95, v68, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v70, s7
	v_mov_b32_e32 v72, s9
	v_readlane_b32 s24, v76, 31
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v91, v171, v171 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v68, v68, v95
	v_add_f32_dpp v109, v176, v176 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v93, v93, v93 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v76, s24
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v91, v91, v91 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v68, 31
	v_mov_b32_e32 v101, s34
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v93, v93, v93 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v105, s42
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v91, v91, v91 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v68, s5 :: v_dual_mul_f32 v163, v125, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v129, v93, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v127, v91, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v93, v93, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v91, v91, v127
	v_fmac_f32_e32 v163, v125, v77
	v_add_f32_dpp v77, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v125, v89, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_readlane_b32 s45, v91, 31
	v_readlane_b32 s47, v93, 31
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v89, v89, v125
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v94, v67, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v66, 6, v115
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s43, v89, 31
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v67, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v117, 0, v66
	v_permlanex16_b32 v106, v77, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v67, 31
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v77, v77, v106 :: v_dual_mov_b32 v106, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v67, s4
	v_readlane_b32 s25, v77, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v77, s25
	ds_store_b128 v99, v[67:70]
	ds_store_b128 v99, v[71:74] offset:16
	ds_store_b128 v99, v[75:78] offset:32
	ds_store_b128 v99, v[79:82] offset:48
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v70, v108, v108 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v177, v177 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v178, v178 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v98, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v109, v109 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v73, v70, -1, -1 op_sel:[1,0]
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v69, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v78, v71, -1, -1 op_sel:[1,0]
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v70, v70, v73
	v_add_f32_dpp v83, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v67, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v80, v68, -1, -1 op_sel:[1,0]
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v69, v69, v72
	v_add_f32_e32 v71, v71, v78
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v67, v67, v79 :: v_dual_add_f32 v68, v68, v80
.Ltmp183:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v69, 31
	v_readlane_b32 s5, v70, 31
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v71, 31
	v_readlane_b32 s7, v67, 31
	v_readlane_b32 s8, v68, 31
	v_mov_b32_e32 v67, s45
	v_permlanex16_b32 v119, v83, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v68, s46 :: v_dual_mov_b32 v69, s47
	v_mov_b32_e32 v70, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v78, s5 :: v_dual_add_f32 v83, v83, v119
	v_dual_mov_b32 v79, s6 :: v_dual_mov_b32 v80, s7
	v_mov_b32_e32 v81, s8
	s_waitcnt lgkmcnt(0)
	v_readlane_b32 s33, v83, 31
	s_barrier
	ds_load_b128 v[94:97], v117
	ds_load_b128 v[90:93], v117 offset:16
	ds_load_b128 v[86:89], v117 offset:32
	ds_load_b128 v[74:77], v117 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v100, s33
	ds_store_b128 v99, v[100:103]
	ds_store_b128 v99, v[104:107] offset:16
	ds_store_b128 v99, v[67:70] offset:32
	ds_store_b128 v99, v[78:81] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v117
	ds_load_b128 v[98:101], v117 offset:16
	ds_load_b128 v[82:85], v117 offset:32
	ds_load_b128 v[78:81], v117 offset:48
.Ltmp186:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s46, s39, 15
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s20, s22
.Ltmp187:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v147, v94 :: v_dual_mov_b32 v148, v95
	v_dual_mov_b32 v149, v96 :: v_dual_mov_b32 v146, v89
	v_dual_mov_b32 v145, v97 :: v_dual_mov_b32 v190, v90
	v_dual_mov_b32 v191, v91 :: v_dual_mov_b32 v192, v92
	v_dual_mov_b32 v194, v93 :: v_dual_mov_b32 v199, v86
	v_mov_b32_e32 v193, v87
	v_dual_mov_b32 v143, v88 :: v_dual_mov_b32 v134, v74
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v135, v75 :: v_dual_mov_b32 v150, v102
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v187, v103 :: v_dual_mov_b32 v142, v84
	v_dual_mov_b32 v188, v104 :: v_dual_mov_b32 v189, v105
	v_dual_mov_b32 v195, v98 :: v_dual_mov_b32 v136, v76
	v_dual_mov_b32 v196, v99 :: v_dual_mov_b32 v197, v100
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v138, v78
	v_mov_b32_e32 v198, v101
	v_dual_mov_b32 v144, v82 :: v_dual_mov_b32 v141, v83
	v_mov_b32_e32 v132, v85
	v_mov_b32_e32 v137, v77
	v_dual_mov_b32 v139, v79 :: v_dual_mov_b32 v140, v80
	v_mov_b32_e32 v133, v81
.Ltmp188:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s4, s46, 31
.Ltmp189:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp190:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s4, s4, 28
.Ltmp191:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v134, v134 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp192:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s46, s46, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 179 14 is_stmt 0              ; attention_backward.py:179:14
	s_and_b32 s69, s46, -16
	.loc	1 180 9 is_stmt 1               ; attention_backward.py:180:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s66, s14
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s7, s66, s13
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, s15
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s7, s7, s15
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s4, s39, s4
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
	s_and_b32 s68, s6, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s69, s69, s4
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_load_b64 s[6:7], s[0:1], 0x84
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v67, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s8, s17, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s9, s21, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v67
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s10, s66, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, 32
	s_min_i32 s10, s39, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s11, s10, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 28
	s_add_i32 s10, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s10, s10, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s69, s69, s10
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s10, s5, s19
	s_xor_b32 s8, s8, s9
	s_sub_i32 s9, s20, s10
	s_clause 0x3
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x30
	s_load_b32 s33, s[0:1], 0x8c
	s_load_b32 s70, s[0:1], 0x80
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s9, s19
	s_cmp_ge_u32 s9, s19
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v67, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s9, s19
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v69, s66, v67
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	v_lshlrev_b32_e32 v170, 5, v0
	s_xor_b32 s5, s5, s8
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s42, s17, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v70, 16, v69
	v_or_b32_e32 v71, 20, v69
	v_or_b32_e32 v73, 4, v69
	v_or_b32_e32 v72, 24, v69
	v_or_b32_e32 v106, 8, v69
	v_or_b32_e32 v108, 12, v69
	v_or_b32_e32 v68, 28, v69
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s34, s5, s8
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s5, s16, s37
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v161, s15, v69
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s34, s34, s5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s68, s69
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v162, s15, v73
	v_add_nc_u32_e32 v163, s15, v106
	v_add_nc_u32_e32 v164, s15, v108
	v_add_nc_u32_e32 v165, s15, v70
	v_add_nc_u32_e32 v166, s15, v71
	v_add_nc_u32_e32 v168, s15, v72
	v_add_nc_u32_e32 v169, s15, v68
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s50, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s16, s16, s6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s50
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v107, 5, v0
	s_mov_b32 s12, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s12, -1
                                        ; implicit-def: $vgpr107
.LBB0_7:                                ; %Flow217
	s_clause 0x4
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[28:31], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	s_load_b32 s71, s[0:1], 0x90
	v_cmp_gt_i32_e64 s10, s38, v68
	v_subrev_nc_u32_e32 v68, s13, v166
	v_and_b32_e32 v171, 16, v0
	v_cmp_gt_i32_e64 s5, s38, v106
	v_mul_lo_u32 v106, s33, v67
	v_and_b32_e32 v200, 48, v0
	scratch_store_b32 off, v68, off         ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s13, v168
	v_cmp_gt_i32_e64 s0, s38, v69
	v_cmp_gt_i32_e64 s1, s38, v73
	v_cmp_gt_i32_e64 s6, s38, v108
	v_cmp_gt_i32_e64 s7, s38, v70
	v_cmp_gt_i32_e64 s8, s38, v71
	v_cmp_gt_i32_e64 s9, s38, v72
	v_subrev_nc_u32_e32 v253, s13, v161
	v_subrev_nc_u32_e32 v254, s13, v162
	v_subrev_nc_u32_e32 v255, s13, v163
	v_subrev_nc_u32_e32 v167, s13, v164
	v_subrev_nc_u32_e32 v186, s13, v165
	scratch_store_b32 off, v68, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s13, v169
	v_add_nc_u32_e32 v178, s14, v161
	v_add_nc_u32_e32 v179, s14, v162
	v_add_nc_u32_e32 v180, s14, v163
	v_add_nc_u32_e32 v181, s14, v164
	v_add_nc_u32_e32 v182, s14, v165
	v_add_nc_u32_e32 v183, s14, v166
	v_add_nc_u32_e32 v184, s14, v168
	v_add_nc_u32_e32 v185, s14, v169
	v_xor_b32_e32 v118, 16, v160
	v_xor_b32_e32 v119, 32, v160
	v_xor_b32_e32 v120, 48, v160
	v_xor_b32_e32 v121, 64, v160
	v_xor_b32_e32 v122, 0x50, v160
	v_xor_b32_e32 v123, 0x60, v160
	v_xor_b32_e32 v124, 0x70, v160
	v_cmp_eq_u32_e64 s11, 0, v114
	v_and_b32_e32 v131, 14, v0
	v_lshlrev_b32_e32 v126, 3, v159
	v_lshrrev_b32_e32 v127, 2, v171
	v_lshrrev_b32_e32 v128, 4, v114
	v_lshlrev_b32_e32 v172, 2, v0
	v_lshrrev_b32_e32 v125, 1, v171
	v_lshrrev_b32_e32 v129, 5, v114
	s_mul_f32 s73, s70, 0x3fb8aa3b
	s_mul_i32 s72, s34, s39
	s_add_i32 s42, s42, s16
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mul_i32 s43, s33, s66
	scratch_store_b32 off, v68, off offset:8 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[107:108], null, s71, v159, v[106:107]
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_and_b32 v65, 60, v65
	v_cndmask_b32_e64 v67, 0x104, 0, s11
	v_lshlrev_b32_e32 v68, 5, v115
	v_mov_b32_e32 v220, 0xff800000
	v_mov_b32_e32 v222, 0xff800000
	v_mad_u64_u32 v[108:109], null, s33, 12, v[107:108]
	v_xor_b32_e32 v201, v67, v65
	v_lshlrev_b32_e32 v65, 2, v200
	v_lshlrev_b32_e32 v67, 1, v131
	v_or3_b32 v202, v127, v128, v126
	v_mov_b32_e32 v229, 0
	v_or_b32_e32 v66, v201, v66
	v_lshl_or_b32 v65, v131, 7, v65
	v_mad_u64_u32 v[109:110], null, s33, 20, v[107:108]
	v_mad_u64_u32 v[110:111], null, s33, 24, v[107:108]
	v_mad_u64_u32 v[111:112], null, s33, 28, v[107:108]
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v112, v65, v68, v67
	v_dual_mov_b32 v242, 0 :: v_dual_and_b32 v65, 0x180, v170
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_and_b32 v67, 52, v172
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_and_b32 v68, 2, v0
	v_xor_b32_e32 v69, 0x208, v66
	v_xor_b32_e32 v70, 0x410, v66
	v_xor_b32_e32 v66, 0x618, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v65, v67, v68, v65
	v_xor_b32_e32 v71, 4, v112
	v_xor_b32_e32 v72, 8, v112
	v_xor_b32_e32 v73, 12, v112
	v_xor_b32_e32 v67, 16, v112
	v_or3_b32 v203, v65, v125, v129
	v_xor_b32_e32 v68, 20, v112
	v_xor_b32_e32 v171, 24, v112
	v_xor_b32_e32 v172, 28, v112
	v_xor_b32_e32 v173, 0x90, v202
	v_xor_b32_e32 v174, 0x120, v202
	v_xor_b32_e32 v175, 0x1b0, v202
	v_xor_b32_e32 v176, 16, v203
	v_xor_b32_e32 v177, 32, v203
	v_xor_b32_e32 v219, 48, v203
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v204, 0, v69
	v_mov_b32_e32 v223, 0xff800000
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v205, 0, v70
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v206, 0, v66
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v207, 0, v71
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v208, 0, v72
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v209, 0, v73
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v210, 0, v67
	v_dual_mov_b32 v234, 0 :: v_dual_add_nc_u32 v211, 0, v68
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v212, 0, v171
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v213, 0, v172
	v_add_nc_u32_e32 v214, 0, v173
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v174
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v175
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v176
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v177
	v_add_nc_u32_e32 v219, 0, v219
	v_mov_b32_e32 v235, 0xff800000
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 s57, s41, 0xffff
	s_mov_b32 s56, s40
	s_add_i32 s47, s42, s43
	s_and_b32 s61, s45, 0xffff
	s_mov_b32 s60, s44
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s51, s68
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s12, s51, s71
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v175, s33, 3, v107
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s12, s47, s12
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v173, s33, 2, v107
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v177, s12, v111, 1
	v_add_lshl_u32 v244, s12, v108, 1
	v_add_lshl_u32 v175, s12, v175, 1
	v_add_lshl_u32 v176, s12, v110, 1
	v_add_lshl_u32 v173, s12, v173, 1
	v_cndmask_b32_e64 v177, 0x80000000, v177, s55
	v_cndmask_b32_e64 v244, 0x80000000, v244, s54
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v172, s33, 4, v107
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v174, s12, v109, 1
	v_cndmask_b32_e64 v175, 0x80000000, v175, s74
	s_clause 0x1
	buffer_load_u16 v177, v177, s[60:63], 0 offen
	buffer_load_u16 v245, v244, s[60:63], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s75
	v_add_lshl_u32 v171, s12, v107, 1
	v_cndmask_b32_e64 v173, 0x80000000, v173, s76
	v_add_lshl_u32 v172, s12, v172, 1
	v_cndmask_b32_e64 v174, 0x80000000, v174, s77
	s_clause 0x1
	buffer_load_u16 v175, v175, s[60:63], 0 offen
	buffer_load_u16 v176, v176, s[60:63], 0 offen
	v_cndmask_b32_e64 v171, 0x80000000, v171, s78
	s_clause 0x1
	buffer_load_u16 v173, v173, s[60:63], 0 offen
	buffer_load_u16 v174, v174, s[60:63], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v172, s79
	s_clause 0x1
	buffer_load_u16 v171, v171, s[60:63], 0 offen
	buffer_load_u16 v172, v172, s[60:63], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v252, 0, v112
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s51, s51, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v245, 16, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v177, 0xff800000, v177, s55
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v175, 16, v175
	v_cndmask_b32_e64 v113, 0xff800000, v245, s54
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v174, 16, v174
	v_cndmask_b32_e64 v175, 0xff800000, v175, s74
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v245, 0x3fb8aa3b, v113
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v176, 0xff800000, v176, s75
	v_cndmask_b32_e64 v174, 0xff800000, v174, s77
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v172, 16, v172
	v_cndmask_b32_e64 v173, 0xff800000, v173, s76
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v175
	v_cmp_neq_f32_e64 s15, 0xff800000, v174
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v172, 0xff800000, v172, s79
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v244, v117, v201
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v171, 0xff800000, v171, s78
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v173
	v_cmp_neq_f32_e64 s20, 0xff800000, v177
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v247, 0x3fb8aa3b, v172
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v172
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v246, 0x3fb8aa3b, v171
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v171
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s17, s74, s16
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v113
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s12, s79, vcc_lo
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v244, v246, v247 offset1:32
	v_dual_mul_f32 v246, 0x3fb8aa3b, v173 :: v_dual_mul_f32 v247, 0x3fb8aa3b, v174
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s18, s78, s13
	s_and_b32 vcc_lo, s77, s15
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v176
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s76, s14
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v204, v246, v247 offset1:32
	v_dual_mul_f32 v246, 0x3fb8aa3b, v175 :: v_dual_mul_f32 v247, 0x3fb8aa3b, v176
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s14, s75, s13
	s_and_b32 s13, s55, s20
	s_and_b32 s16, s54, s19
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s51, s69
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v205, v246, v247 offset1:32
	v_mul_f32_e32 v246, 0x3fb8aa3b, v177
	ds_store_2addr_b32 v206, v245, v246 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v130, v252
	ds_load_b32 v251, v207
	ds_load_b32 v250, v208
	ds_load_b32 v249, v209
	ds_load_b32 v248, v210
	ds_load_b32 v247, v211
	ds_load_b32 v246, v212
	ds_load_b32 v245, v213
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v130, s73, v66
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v66, 0, 1, s12
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v251, s73, v67
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v67, 0, 1, s18
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v250, s73, v68
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v68, 0, 1, s15
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v249, s73, v69 :: v_dual_fmac_f32 v248, s73, v70
	v_dual_fmac_f32 v247, s73, v71 :: v_dual_fmac_f32 v246, s73, v72
	v_fmac_f32_e32 v245, s73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, vcc_lo
	v_lshlrev_b16 v66.h, 8, v67.l
	v_add_nc_u32_e32 v67, 0, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v66.h, v68.l, v66.h
	ds_store_b16 v67, v66
	v_cndmask_b32_e64 v67, 0, 1, s14
	v_cndmask_b32_e64 v68, 0, 1, s16
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v66.l, 8, v66.l
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v67.l, 8, v67.l
	v_or_b16 v67.l, v68.l, v67.l
	ds_store_b16_d16_hi v214, v66
	ds_store_b16 v215, v66
	ds_store_b16 v216, v67
	v_add_nc_u32_e32 v67, 0, v203
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v66, v67
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v67 offset:64
	ds_load_u8_d16 v67, v217
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v219 offset:64
	ds_load_u8_d16 v68, v218 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v217 offset:64
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v67.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v66.l
	ds_load_u8_d16 v66, v218
	ds_load_u8_d16 v69, v219
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v70, 0xff800000, v130, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v67.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v252, v70
	v_cndmask_b32_e64 v70, 0xff800000, v251, s19
	ds_store_b32 v207, v70
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v66.l
	v_and_b16 v66.l, 1, v69.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v70, 0xff800000, v250, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v66.l
	v_and_b16 v66.l, 1, v66.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v208, v70
	v_cndmask_b32_e64 v69, 0xff800000, v249, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v209, v69
	v_cndmask_b32_e64 v66, 0xff800000, v248, s19
	ds_store_b32 v210, v66
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v66.l, 1, v68.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v66, 0xff800000, v247, s19
	ds_store_b32 v211, v66
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v66.l, 1, v68.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v66, 0xff800000, v246, s19
	ds_store_b32 v212, v66
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v66.l, 1, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v66, 0xff800000, v245, s19
	ds_store_b32 v213, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[66:67], v244 offset1:32
	ds_load_2addr_b32 v[171:172], v204 offset1:32
	ds_load_2addr_b32 v[173:174], v205 offset1:32
	ds_load_2addr_b32 v[175:176], v206 offset1:32
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v68, v66
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v69, v66, v66 :: v_dual_max_f32 v70, v171, v171
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v113, v175, v175 :: v_dual_max_f32 v72, v173, v173
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v68, v68 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp203:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v69, v220, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v220, v69, v68
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v66, v66, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v66, v66
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v66, 0, v66, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp204:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v69, v66
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v66, v69
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v69, v66
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v66, v66, v69 :: v_dual_max_f32 v69, v240, v240
.Ltmp210:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v68, v69, v68 :: v_dual_mov_b32 v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v66, v66, v69 :: v_dual_sub_f32 v69, v240, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp213:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v69, v69
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v69, 0, v69, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v66, v243, v69
.Ltmp214:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v171
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	v_dual_max_f32 v69, v70, v69 :: v_dual_mov_b32 v240, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
.Ltmp222:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v70, v221, v221 :: v_dual_mov_b32 v243, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v221, v70, v69
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v70, v171, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v70, v70
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v70, 0, v70, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v71, v70
	v_mov_b32_dpp v71, v71 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v71, v70
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v71, v70, v71
.Ltmp229:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v70, v239, v239
	v_dual_max_f32 v70, v70, v69 :: v_dual_mov_b32 v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v71, v239, v70
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v71, 0, v71, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v237
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v69, v242, v71
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v71, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v239, v70 :: v_dual_mov_b32 v242, v69
	v_mov_b32_dpp v71, v71 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v72, v71
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v72, v71
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v72, v71
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v72, v72, v72
	v_dual_max_f32 v71, v71, v72 :: v_dual_max_f32 v72, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v222, v72, v71
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v72, v173, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v72, v72
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v73, v72
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v72, v72, v73
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v73, v72
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v72, v73
.Ltmp248:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v72, v237, v237
	v_dual_max_f32 v72, v72, v71 :: v_dual_mov_b32 v71, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v71, v73, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v73, v237, v72
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v73, 0, v73, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v235
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v71, v241, v73
.Ltmp252:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v73, v175
	v_mov_b32_e32 v237, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v241, v71
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v73, v113, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v73
	v_mov_b32_dpp v113, v113 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v73, v73, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v73
	v_mov_b32_dpp v113, v113 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v73, v73, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v73
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v73, v73, v113
.Ltmp260:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v113, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v223, v113, v73
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v113, v175, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v113, v113
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v113, 0, v113, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v130, v113
	v_mov_b32_dpp v130, v130 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v113, v113, v130
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v113, v113, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v130, v113
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v113, v113, v130 :: v_dual_max_f32 v130, v235, v235
.Ltmp267:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v244, v130, v73 :: v_dual_mov_b32 v73, v113
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v113, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp271:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v113, v235, v244
	v_mov_b32_e32 v235, v244
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v113, 0, v113, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v73, v238, v113
.Ltmp272:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp273:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v130, v113
.Ltmp274:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	v_mov_b32_e32 v238, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp275:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp276:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp277:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp278:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp279:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v113, v113, v130 :: v_dual_max_f32 v130, v224, v224
.Ltmp280:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v224, v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v67, v67, v224
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s12, 0xff800000, v233
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v130, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v130, v67
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v130
.Ltmp285:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v130, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v67, v67, v130 :: v_dual_max_f32 v130, v233, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp287:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v245, v130, v113
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_dual_mov_b32 v113, v67 :: v_dual_max_f32 v130, v172, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v113, v233, v245
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v113, 0, v113, s12
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v67, v236, v113
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v130, v113
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp299:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v130, v225, v225
	v_max_f32_e32 v225, v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v130, v172, v225
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v130, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v130, 0, v130, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
.Ltmp304:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp305:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
.Ltmp306:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v171, v231, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v247, v171, v113
.Ltmp307:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v246, v130, v113 :: v_dual_sub_f32 v113, v231, v247
.Ltmp309:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v174, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp310:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v113, 0, v113, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v246, v234, v113
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v174
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v113, v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	v_mov_b32_e32 v233, v245
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	v_dual_max_f32 v113, v113, v130 :: v_dual_mov_b32 v234, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	v_max_f32_e32 v113, v113, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	v_mov_b32_e32 v236, v67
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	v_max_f32_e32 v113, v113, v130
.Ltmp319:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v130, v226, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v226, v130, v113
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v130, v174, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v130, v130
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v130, 0, v130, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp320:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	v_mov_b32_dpp v171, v171 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp321:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
.Ltmp322:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp323:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp325:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v130, v130, v171 :: v_dual_max_f32 v171, v228, v228
.Ltmp326:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v249, v171, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp327:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v130
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp328:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v248, v130, v113
.Ltmp329:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v113, v228, v249
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v176, v176
	v_mov_b32_e32 v228, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp331:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v113, 0, v113, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v248, v232, v113
.Ltmp332:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v176
	v_mov_b32_e32 v232, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp333:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v130, v113
.Ltmp334:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp335:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v130, v130, v130 :: v_dual_mov_b32 v231, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp336:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp337:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v130
.Ltmp338:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp339:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v130, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v113, v113, v130 :: v_dual_max_f32 v130, v227, v227
.Ltmp340:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v227, v130, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v130, v176, v227
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v130, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v130, 0, v130, s13
.Ltmp341:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp342:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp343:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp344:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
.Ltmp345:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp346:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v130, v171
.Ltmp347:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v171, v230, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v251, v171, v113
.Ltmp348:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp349:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v250, v130, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp350:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v113, v230, v251 :: v_dual_mov_b32 v230, v251
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v113, 0, v113, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v250, v229, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v229, v250
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_or_b32 s12, s51, 1
	s_or_b32 s13, s51, 2
	s_or_b32 s14, s51, 3
	s_or_b32 s15, s51, 4
	s_or_b32 s16, s51, 5
	s_or_b32 s17, s51, 6
	s_or_b32 s18, s51, 7
	s_or_b32 s19, s51, 8
	s_or_b32 s20, s51, 9
	s_or_b32 s21, s51, 10
	s_or_b32 s22, s51, 11
	s_or_b32 s23, s51, 12
	s_or_b32 s24, s51, 13
	s_or_b32 s25, s51, 14
	s_or_b32 s26, s51, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s51, s39
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s12, s39
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s13, s39
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s14, s39
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s15, s39
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s16, s39
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s17, s39
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s18, s39
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s39
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s39
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s39
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s22, s39
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s23, s39
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s24, s39
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s25, s39
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s26, s39
	s_cselect_b32 s12, -1, 0
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_add_i32 s21, s51, s72
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s54
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_mad_u64_u32 v[66:67], null, s21, s35, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v67, s35, v66
	v_add_nc_u32_e32 v68, s35, v67
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v67, 1, v67
	v_lshlrev_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v69, s35, v68
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v70, s35, v69
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s74
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v69, 1, v69
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v71, s35, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	v_lshlrev_b32_e32 v72, 1, v71
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v71, s35, v71
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s75
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s76
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v73, s35, v71
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x3
	buffer_load_u16 v66, v66, s[56:59], 0 offen
	buffer_load_u16 v67, v67, s[56:59], 0 offen
	buffer_load_u16 v68, v68, s[56:59], 0 offen
	buffer_load_u16 v69, v69, s[56:59], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v171, s35, v73
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v172, s35, v171
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v171, 1, v171
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v173, s35, v172
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v172, 1, v172
	v_lshlrev_b32_e32 v71, 1, v71
	v_lshlrev_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v174, s35, v173
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v175, s35, v174
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s78
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v176, s35, v175
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v171, 0x80000000, v171, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v177, s35, v176
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v174, 1, v174
	v_lshlrev_b32_e32 v173, 1, v173
	v_lshlrev_b32_e32 v244, 1, v177
	v_add_lshl_u32 v177, v177, s35, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v173, 0x80000000, v173, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v174, 0x80000000, v174, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v176, 1, v176
	v_lshlrev_b32_e32 v175, 1, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v176, 0x80000000, v176, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v244, 0x80000000, v244, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v177, 0x80000000, v177, vcc_lo
	s_clause 0xb
	buffer_load_u16 v171, v171, s[56:59], 0 offen
	buffer_load_u16 v172, v172, s[56:59], 0 offen
	buffer_load_u16 v173, v173, s[56:59], 0 offen
	buffer_load_u16 v174, v174, s[56:59], 0 offen
	buffer_load_u16 v70, v70, s[56:59], 0 offen
	buffer_load_u16 v72, v72, s[56:59], 0 offen
	buffer_load_u16 v71, v71, s[56:59], 0 offen
	buffer_load_u16 v73, v73, s[56:59], 0 offen
	buffer_load_u16 v175, v175, s[56:59], 0 offen
	buffer_load_u16 v176, v176, s[56:59], 0 offen
	buffer_load_u16 v244, v244, s[56:59], 0 offen
	buffer_load_u16 v177, v177, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v151, v66
	s_waitcnt vmcnt(14)
	ds_store_b16 v152, v67
	s_waitcnt vmcnt(13)
	ds_store_b16 v153, v68
	s_waitcnt vmcnt(12)
	ds_store_b16 v154, v69
	s_waitcnt vmcnt(11)
	ds_store_b16 v151, v171 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v152, v172 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v153, v173 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b16 v154, v174 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v155, v70
	s_waitcnt vmcnt(6)
	ds_store_b16 v156, v72
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v71
	s_waitcnt vmcnt(4)
	ds_store_b16 v158, v73
	s_waitcnt vmcnt(3)
	ds_store_b16 v155, v175 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v156, v176 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v157, v244 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v177 offset:1024
	v_add_nc_u32_e32 v66, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v67, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[244:247], v66
	v_add_nc_u32_e32 v66, 0, v118
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[248:251], v66
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v171, 0, v119
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[244:251], v[1:8], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[244:247], v171
	v_add_nc_u32_e32 v171, 0, v120
	ds_load_b128 v[248:251], v171
	v_add_nc_u32_e32 v171, 0, v121
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[244:251], v[9:16], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[244:247], v171
	v_add_nc_u32_e32 v171, 0, v122
	ds_load_b128 v[248:251], v171
	v_add_nc_u32_e32 v171, 0, v123
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[244:251], v[17:24], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[244:247], v171
	v_add_nc_u32_e32 v171, 0, v124
	ds_load_b128 v[248:251], v171
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[244:251], v[25:32], v[66:73]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v244, s51, v159
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s12, s39, v244
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s78, s0, s12
	s_and_b32 s76, s1, s12
	s_and_b32 s74, s5, s12
	s_and_b32 s54, s6, s12
	s_and_b32 s79, s7, s12
	s_and_b32 s77, s8, s12
	s_and_b32 s75, s9, s12
	s_and_b32 s55, s10, s12
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v244, v161
	v_cmp_le_i32_e64 s12, v244, v162
	v_cmp_le_i32_e64 s13, v244, v163
	v_cmp_le_i32_e64 s14, v244, v164
	v_cmp_le_i32_e64 s15, v244, v165
	v_cmp_le_i32_e64 s16, v244, v166
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s19, vcc_lo, s78
	s_and_b32 s12, s12, s76
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s17, v244, v168
	v_cmp_le_i32_e64 s18, v244, v169
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s13, s13, s74
	s_and_b32 s14, s14, s54
	s_and_not1_b32 s20, s78, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s76, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s79
	s_and_b32 s16, s16, s77
	s_or_b32 s78, s20, s19
	s_or_b32 s76, s21, s12
	s_and_not1_b32 s12, s74, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s75
	s_and_b32 s18, s18, s55
	s_or_b32 s74, s12, s13
	s_or_b32 s54, s19, s14
	s_and_not1_b32 s12, s79, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s77, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s79, s12, s13
	s_or_b32 s77, s14, s15
	s_and_not1_b32 s12, s75, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s55, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s75, s12, s13
	s_or_b32 s55, s14, s15
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s64
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v113, off, off         ; 4-byte Folded Reload
	v_cmp_ge_i32_e32 vcc_lo, v244, v253
	v_cmp_ge_i32_e64 s12, v244, v254
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s19, v244, v178
	v_cmp_le_i32_e64 s20, v244, v179
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v244, v255
	v_cmp_ge_i32_e64 s14, v244, v167
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s21, v244, v180
	v_cmp_le_i32_e64 s22, v244, v181
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s15, v244, v186
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s23, v244, v182
	v_cmp_le_i32_e64 s24, v244, v183
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s12, s12, s20
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s25, v244, v184
	v_cmp_le_i32_e64 s26, v244, v185
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s19, s19, s78
	s_and_b32 s12, s12, s76
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_b32 s13, s13, s74
	s_and_b32 s14, s14, s54
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s20, s78, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s76, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s79
	s_or_b32 s78, s20, s19
	s_or_b32 s76, s21, s12
	s_and_not1_b32 s12, s74, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_or_b32 s74, s12, s13
	s_or_b32 s54, s19, s14
	s_and_not1_b32 s12, s79, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s77, exec_lo
	s_or_b32 s79, s12, s13
	s_and_not1_b32 s12, s75, exec_lo
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v244, v113
	scratch_load_b32 v113, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s77
	s_and_b32 s15, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s77, s14, s15
	s_and_not1_b32 s14, s55, exec_lo
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v244, v113
	scratch_load_b32 v113, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s75
	s_and_b32 s13, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s75, s12, s13
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v244, v113
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s55, s14, s15
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v244, 0xff800000
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v72, 0xff800000
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v70, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v68, 0xff800000
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow216
	v_dual_mov_b32 v107, v170 :: v_dual_lshlrev_b32 v202, 4, v0
	v_and_b32_e32 v171, 16, v0
	v_lshlrev_b32_e32 v172, 2, v0
.LBB0_16:                               ; %Flow218
.Ltmp351:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v108, v94, v147 :: v_dual_and_b32 v65, 31, v0
.Ltmp352:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s12, 0x800000, v66
.Ltmp353:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v109, v95, v148 :: v_dual_add_f32 v110, v96, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp354:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v94, s66, v65
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s13, 0x800000, v69
	v_cndmask_b32_e64 v95, 0, 32, s12
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v252, 1, v114
.Ltmp355:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v111, v97, v145 :: v_dual_add_f32 v102, v102, v150
.Ltmp356:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s38, v94
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v94, 0, 0x42000000, s12
	v_cmp_gt_f32_e64 s12, 0x800000, v73
	v_cmp_gt_f32_e64 s14, 0x800000, v71
	v_cndmask_b32_e64 v96, 0, 0x42000000, s13
	v_cndmask_b32_e64 v97, 0, 32, s13
	v_cmp_gt_f32_e64 s13, 0x800000, v67
	v_cndmask_b32_e64 v114, 0, 0x42000000, s12
	v_cndmask_b32_e64 v117, 0, 32, s12
	v_cmp_gt_f32_e64 s12, 0x800000, v246
.Ltmp357:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v87, v87, v193 :: v_dual_add_f32 v88, v88, v143
.Ltmp358:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v113, 0, 32, s14
	v_ldexp_f32 v95, v66, v95
	v_cndmask_b32_e64 v143, 0, 32, s13
	v_cndmask_b32_e64 v145, 0, 32, s12
	v_cndmask_b32_e64 v112, 0, 0x42000000, s14
	v_ldexp_f32 v97, v69, v97
	v_ldexp_f32 v113, v71, v113
	v_log_f32_e32 v95, v95
	v_cndmask_b32_e64 v130, 0, 0x42000000, s13
	v_cmp_gt_f32_e64 s13, 0x800000, v248
	v_cmp_gt_f32_e64 s14, 0x800000, v250
	v_ldexp_f32 v143, v67, v143
	v_ldexp_f32 v145, v246, v145
	v_log_f32_e32 v97, v97
	v_log_f32_e32 v113, v113
	v_cndmask_b32_e64 v147, 0, 32, s13
	v_cndmask_b32_e64 v149, 0, 32, s14
	v_ldexp_f32 v117, v73, v117
	v_log_f32_e32 v143, v143
	v_log_f32_e32 v145, v145
.Ltmp359:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v89, v89, v146 :: v_dual_add_f32 v82, v82, v144
.Ltmp360:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v144, 0, 0x42000000, s12
	v_ldexp_f32 v147, v248, v147
	v_ldexp_f32 v149, v250, v149
	v_log_f32_e32 v117, v117
	v_dual_sub_f32 v94, v95, v94 :: v_dual_sub_f32 v95, v97, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_log_f32_e32 v147, v147
	v_log_f32_e32 v149, v149
	v_dual_sub_f32 v96, v113, v112 :: v_dual_add_f32 v135, v75, v135
	v_dual_sub_f32 v112, v143, v130 :: v_dual_sub_f32 v113, v145, v144
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v68, v68, v94
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v66
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v146, 0, 0x42000000, s13
	v_cndmask_b32_e64 v148, 0, 0x42000000, s14
	v_dual_sub_f32 v97, v117, v114 :: v_dual_add_f32 v70, v70, v95
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v95, v245, v112
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v68, 0, v68, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v69
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v114, v147, v146 :: v_dual_sub_f32 v117, v149, v148
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v72, v72, v96
	v_add_f32_e32 v94, v244, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v69, 0, v70, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v71
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v97, v249, v114
.Ltmp361:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v83, v83, v141 :: v_dual_add_f32 v84, v84, v142
.Ltmp362:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v96, v247, v113
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	v_cndmask_b32_e64 v70, 0, v72, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v73
.Ltmp363:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v137, v77, v137 :: v_dual_and_b32 v66, 0x60, v107
.Ltmp364:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v112, v251, v117 :: v_dual_and_b32 v73, 28, v0
.Ltmp365:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v85, v85, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp366:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v71, 0, v94, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v67
.Ltmp367:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v139, v79, v139 :: v_dual_add_nc_u32 v66, 0, v66
.Ltmp368:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v67, v200, 1, 0
.Ltmp369:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v103, v103, v187 :: v_dual_add_f32 v104, v104, v188
.Ltmp370:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v141, 0, v95, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v246
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s11, vcc_lo
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v134, v74, v134
.Ltmp372:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v142, 0, v96, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v248
.Ltmp373:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v136, v76, v136
	s_ashr_i32 s15, s46, 4
	v_dual_add_f32 v105, v105, v189 :: v_dual_add_f32 v90, v90, v190
.Ltmp374:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v143, 0, v97, s12
	v_and_b32_e32 v97, 12, v0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v250
.Ltmp375:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v140, v80, v140
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
.Ltmp376:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v72, v66, v252, v97
	v_cndmask_b32_e64 v144, 0, v112, s12
	ds_store_b128 v67, v[68:71]
	ds_store_b128 v67, v[141:144] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v187, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v67, v[68:71]
	ds_store_b128 v67, v[141:144] offset:16
	v_add_lshl_u32 v67, s27, v65, 2
	v_add_nc_u32_e32 v66, v66, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_dual_mov_b32 v72, 0 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v66, v66
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v65, v65, 2, 0
.Ltmp377:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v138, v78, v138 :: v_dual_mov_b32 v71, v72
	v_add_f32_e32 v141, v81, v133
	v_dual_add_f32 v91, v91, v191 :: v_dual_add_f32 v92, v92, v192
	v_dual_add_f32 v93, v93, v194 :: v_dual_add_f32 v98, v98, v195
	v_dual_add_f32 v99, v99, v196 :: v_dual_add_f32 v100, v100, v197
	v_dual_add_f32 v101, v101, v198 :: v_dual_add_f32 v86, v86, v199
.Ltmp378:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s17, s29, 0xffff
	s_mov_b32 s16, s28
	s_mov_b32 s18, s46
	s_mov_b32 s19, s47
	v_mov_b32_e32 v70, v72
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v68, v72
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v66, v67, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[108:111]
	ds_store_b128 v72, v[102:105] offset:16
	ds_store_b128 v72, v[90:93] offset:32
	ds_store_b128 v72, v[98:101] offset:48
	ds_store_b128 v72, v[86:89] offset:64
	ds_store_b128 v72, v[82:85] offset:80
	ds_store_b128 v72, v[134:137] offset:96
	ds_store_b128 v72, v[138:141] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v65, v65
	s_and_b32 s17, s31, 0xffff
	s_mov_b32 s16, s30
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v80, v72
	v_mov_b32_e32 v79, v72
	v_mov_b32_e32 v78, v72
	v_mov_b32_e32 v77, v72
	v_mov_b32_e32 v76, v72
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v81, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s50
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v65, v67, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[108:111]
	ds_store_b128 v72, v[102:105] offset:16
	ds_store_b128 v72, v[90:93] offset:32
	ds_store_b128 v72, v[98:101] offset:48
	ds_store_b128 v72, v[86:89] offset:64
	ds_store_b128 v72, v[82:85] offset:80
	v_mov_b32_e32 v67, v72
	v_mov_b32_e32 v65, v72
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v87, v72
	v_mov_b32_e32 v86, v72
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
	ds_store_b128 v72, v[134:137] offset:96
	ds_store_b128 v72, v[138:141] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_24
; %bb.17:                               ; %.lr.ph81
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[145:146], null, s71, v159, v[106:107]
	v_dual_mov_b32 v74, 0x5410 :: v_dual_lshlrev_b32 v65, 2, v159
	v_dual_mov_b32 v75, 0x7632 :: v_dual_lshlrev_b32 v66, 4, v159
	v_cmp_eq_u32_e32 vcc_lo, 0, v171
	v_cndmask_b32_e64 v67, 0x90, 0, s11
	v_mad_u64_u32 v[146:147], null, s33, 12, v[145:146]
	v_mul_u32_u24_e32 v68, 0x48, v131
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v65, 0, v65, v116
	v_dual_cndmask_b32 v74, 0x1054, v74 :: v_dual_and_b32 v77, 52, v172
	v_dual_cndmask_b32 v75, 0x3276, v75 :: v_dual_add_nc_u32 v202, 0, v202
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_add_i32 s12, s67, s67
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v194, v65
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v188, s12, s67, v0
	v_xor_b32_e32 v65, v67, v126
	v_lshl_or_b32 v67, v115, 2, v68
	v_and_or_b32 v78, v0, 2, v129
	v_lshl_or_b32 v77, v97, 5, v77
	v_lshl_or_b32 v74, v74, 8, v74
	v_lshl_or_b32 v75, v75, 8, v75
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[147:148], null, s33, 20, v[145:146]
	v_mad_u64_u32 v[148:149], null, s33, 24, v[145:146]
	v_mad_u64_u32 v[149:150], null, s33, 28, v[145:146]
	v_or_b32_e32 v196, v65, v127
	v_or3_b32 v150, v67, v125, v128
	v_or3_b32 v197, v127, v128, v126
	v_or3_b32 v198, v78, v77, v125
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v74, 0x540054, v74
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v189, s67, v188
	v_and_b32_e32 v75, 0x760076, v75
	v_xor_b32_e32 v65, 0x120, v196
	v_xor_b32_e32 v67, 0x240, v196
	v_xor_b32_e32 v68, 0x360, v196
	v_xor_b32_e32 v69, 16, v150
	v_xor_b32_e32 v70, 32, v150
	v_xor_b32_e32 v71, 48, v150
	v_xor_b32_e32 v72, 64, v150
	v_xor_b32_e32 v73, 0x50, v150
	v_xor_b32_e32 v76, 0x60, v150
	v_xor_b32_e32 v79, 0x70, v150
	v_xor_b32_e32 v80, 0x90, v197
	v_xor_b32_e32 v77, 0x120, v197
	v_xor_b32_e32 v78, 0x1b0, v197
	v_xor_b32_e32 v81, 16, v198
	v_xor_b32_e32 v82, 32, v198
	v_lshl_or_b32 v74, v74, 4, v74
	v_xor_b32_e32 v83, 48, v198
	v_mov_b32_e32 v90, v97
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_mov_b32 v201, v187 :: v_dual_add_nc_u32 v190, s67, v189
	v_mov_b32_e32 v92, v97
	v_lshl_or_b32 v75, v75, 4, v75
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v191, s33, 2, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v192, s67, v190
	v_lshl_add_u32 v193, s33, 3, v145
	v_lshl_add_u32 v195, s33, 4, v145
	v_dual_mov_b32 v94, v97 :: v_dual_and_b32 v199, 0x5040504, v74
	v_dual_mov_b32 v91, v97 :: v_dual_and_b32 v200, 0x7060706, v75
	v_dual_mov_b32 v96, v97 :: v_dual_add_nc_u32 v203, 0, v66
	v_dual_mov_b32 v93, v97 :: v_dual_add_nc_u32 v204, 0, v65
	v_add_nc_u32_e32 v205, 0, v67
	v_dual_mov_b32 v95, v97 :: v_dual_add_nc_u32 v206, 0, v68
	v_dual_mov_b32 v84, v97 :: v_dual_add_nc_u32 v207, 0, v69
	v_add_nc_u32_e32 v208, 0, v70
	v_dual_mov_b32 v86, v97 :: v_dual_add_nc_u32 v209, 0, v71
	v_add_nc_u32_e32 v210, 0, v72
	v_dual_mov_b32 v88, v97 :: v_dual_add_nc_u32 v211, 0, v73
	v_dual_mov_b32 v85, v97 :: v_dual_add_nc_u32 v212, 0, v76
	v_dual_mov_b32 v74, v97 :: v_dual_add_nc_u32 v213, 0, v79
	v_dual_mov_b32 v87, v97 :: v_dual_add_nc_u32 v214, 0, v80
	v_dual_mov_b32 v76, v97 :: v_dual_add_nc_u32 v215, 0, v77
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v216, 0, v78
	v_dual_mov_b32 v78, v97 :: v_dual_add_nc_u32 v217, 0, v81
	v_dual_mov_b32 v75, v97 :: v_dual_add_nc_u32 v218, 0, v82
	v_dual_mov_b32 v80, v97 :: v_dual_add_nc_u32 v219, 0, v83
	v_dual_mov_b32 v77, v97 :: v_dual_add_nc_u32 v220, 0, v118
	v_dual_mov_b32 v66, v97 :: v_dual_add_nc_u32 v221, 0, v119
	v_dual_mov_b32 v79, v97 :: v_dual_add_nc_u32 v222, 0, v120
	v_dual_mov_b32 v68, v97 :: v_dual_add_nc_u32 v223, 0, v121
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v224, 0, v122
	v_dual_mov_b32 v70, v97 :: v_dual_add_nc_u32 v225, 0, v123
	v_dual_mov_b32 v67, v97 :: v_dual_add_nc_u32 v226, 0, v124
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, v97
	v_mov_b32_e32 v83, v97
	v_mov_b32_e32 v69, v97
	v_mov_b32_e32 v71, v97
	v_mov_b32_e32 v72, v97
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s56, s15, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s57, s34, s15
	s_and_b32 s41, s41, 0xffff
	s_add_i32 s58, s42, s43
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s59, s34, s56
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s53, s53, 0xffff
	.loc	1 322 17                        ; attention_backward.py:322:17
	s_mov_b32 s60, s73
	s_mov_b32 s61, 0x76543210
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	scratch_store_b32 off, v171, off offset:12 ; 4-byte Folded Spill
	s_branch .LBB0_19
.LBB0_18:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s19, s68, s71
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s19, s58, s19
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v98, s19, v195, 1
	v_add_lshl_u32 v99, s19, v145, 1
	v_add_lshl_u32 v100, s19, v147, 1
	v_add_lshl_u32 v101, s19, v191, 1
	v_add_lshl_u32 v102, s19, v148, 1
	v_add_lshl_u32 v103, s19, v193, 1
	v_add_lshl_u32 v104, s19, v149, 1
	v_add_lshl_u32 v170, s19, v146, 1
	v_cndmask_b32_e64 v98, 0x80000000, v98, s83
	v_cndmask_b32_e64 v99, 0x80000000, v99, s82
	v_cndmask_b32_e64 v100, 0x80000000, v100, s81
	v_cndmask_b32_e64 v101, 0x80000000, v101, s80
	v_cndmask_b32_e64 v102, 0x80000000, v102, s55
	v_cndmask_b32_e64 v103, 0x80000000, v103, s54
	v_cndmask_b32_e64 v104, 0x80000000, v104, s51
	v_cndmask_b32_e64 v170, 0x80000000, v170, s50
	s_clause 0x7
	buffer_load_u16 v98, v98, s[44:47], 0 offen
	buffer_load_u16 v99, v99, s[44:47], 0 offen
	buffer_load_u16 v100, v100, s[44:47], 0 offen
	buffer_load_u16 v101, v101, s[44:47], 0 offen
	buffer_load_u16 v102, v102, s[44:47], 0 offen
	buffer_load_u16 v103, v103, s[44:47], 0 offen
	buffer_load_u16 v104, v104, s[44:47], 0 offen
	buffer_load_u16 v170, v170, s[44:47], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v99.h, 0xff80, v98.l, s83
	v_cndmask_b16 v99.l, 0xff80, v99.l, s82
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v98, 0, v196
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v100.h, 0xff80, v100.l, s81
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v100.l, 0xff80, v101.l, s80
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v102.h, 0xff80, v102.l, s55
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v102.l, 0xff80, v103.l, s54
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v98, v99
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v98.l, 0
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v98.h, v99.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v204, v100
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v103.h, 0xff80, v104.l, s51
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v103.l, 0xff80, v170.l, s50
	v_mov_b16_e32 v99.l, v98.l
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v98
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v98.h, v100.l
	v_mov_b16_e32 v100.l, v98.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v205, v102
	ds_store_b32 v206, v103
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s19, s82, s19
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s20, 0xff800000, v100
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_and_b32 s21, s83, vcc_lo
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v99, 0, 1, s21
	s_and_b32 s19, s81, s20
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	s_barrier
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v104, s67, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v99.l, 8, v99.l
	v_or_b16 v99.l, v100.l, v99.l
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_and_b32 s19, s80, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v101, 0, 1, s19
	v_lshlrev_b16 v98.h, 8, v100.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v100, 0, v150
	.loc	1 342 32                        ; attention_backward.py:342:32
	ds_load_u16 v233, v100
	ds_load_u16 v232, v207
	ds_load_u16 v230, v209
	ds_load_u16 v229, v211
	ds_load_u16 v228, v213
	ds_load_u16 v231, v212
	ds_load_u16 v234, v210
	ds_load_u16 v235, v208
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v99.h, v101.l, v98.h
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v98.h, v102.l
	v_mov_b16_e32 v102.l, v98.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v100, 0, v197
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v98
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16 v100, v99
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_mov_b16_e32 v98.h, v103.l
	v_mov_b16_e32 v103.l, v98.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s19, s54, s19
	s_and_b32 s21, s55, vcc_lo
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s54, s46
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v100, 0, 1, s21
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s20, 0xff800000, v103
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_mov_b32 s55, s47
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_mov_b16_e32 v99.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_and_b32 s19, s51, s20
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s51, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v99.l, 8, v99.l
	v_or_b16 v99.l, v100.l, v99.l
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_and_b32 s19, s50, vcc_lo
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s50, s46
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v101, 0, 1, s19
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s19, s68, 1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v98.h, 8, v100.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s19, s56
	s_cselect_b32 s21, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s20, s19, s59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v98.h, v101.l, v98.h
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s20, s20, s67
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v214, v99
	ds_store_b16 v215, v99
	ds_store_b16_d16_hi v216, v98
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v99, s20, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v101, s20, v189
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v100, 0x80000000, v99, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v99, s67, v99
	v_add_nc_u32_e32 v102, s20, v190
	v_add_nc_u32_e32 v103, s20, v192
	v_add_nc_u32_e32 v104, s20, v104
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v100, v100, s[48:51], 0 offen
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v170, s67, v99
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v170, 0x80000000, v170
	s_clause 0x5
	buffer_load_u8 v171, v101, s[48:51], 0 offen
	buffer_load_u8 v172, v102, s[48:51], 0 offen
	buffer_load_u8 v173, v103, s[48:51], 0 offen
	buffer_load_u8 v174, v104, s[48:51], 0 offen
	buffer_load_u8 v175, v99, s[48:51], 0 offen
	buffer_load_u8 v170, v170, s[48:51], 0 offen
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v99, 15, v100
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.h, v100.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v100.l, 4, v100.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v100.h, v98.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v101, -16, v99
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s19, 7, v98.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v100, 0, v100, s15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v176, v99, v101, s19
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v99, s20, v188
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s19, s68, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s68, s68, 16
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s19, s19, s57
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v176, v176
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s19, s19, s67
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v101, v99, s[48:51], 0 offen
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v99, 15, v101
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.h, v101.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v101.l, 4, v101.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v101.h, v98.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v99
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.h, v171.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 360 32 is_stmt 0              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v101, 0, v101, s17
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v177, v99, v102, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v99, 15, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.h, v172.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v177, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v99
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v240, v99, v102 :: v_dual_and_b32 v99, 15, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.h, v173.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v240, v240
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v99
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v241, v99, v102, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v99, 15, v173
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.h, v174.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v241, v241
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v239, v99, v102, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v99, 15, v174
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.h, v175.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v239, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v99
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v237, v99, v102, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v99, 15, v175
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v99
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v99, v99, v102, vcc_lo
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v102, -16, v100
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v100, v100, v102, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v102, -16, v101
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v101
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v101, v101, v102, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v102.l, 4, v171.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v102.h, v98.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v102, 0, v102, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v103, -16, v102
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v102
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v102, v102, v103, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v103.l, 4, v172.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v103.h, v98.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v103, 0, v103, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v104, -16, v103
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v103
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v103, v103, v104, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v104.l, 4, v173.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v104.h, v98.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v173, 15, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v104, 0, v104, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v171, -16, v104
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v104
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v104, v104, v171, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v171.l, 4, v174.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v171.h, v98.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v171, 0, v171, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v172, -16, v171
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v171
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v236, v171, v172, vcc_lo
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_mov_b16_e64 v171.h, v98.l
	v_mov_b16_e64 v172.h, v98.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.l, v170.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v171.l, 4, v175.l
	v_lshrrev_b16 v172.l, 4, v170.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v170, -16, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v172, 0, v172, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v98, v173, v170, vcc_lo
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v170, 0, v171, s18
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v171, -16, v170
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v170
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v238, v170, v171, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_add_lshl_u32 v170, s19, v0, 1
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s79
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v171, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v173, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s78
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v171, v171, s[52:55], 0 offen
	v_cndmask_b32_e32 v174, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v173, v173, s[52:55], 0 offen
	v_cndmask_b32_e32 v175, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s11
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v174, v174, s[52:55], 0 offen
	v_cndmask_b32_e32 v242, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v175, v175, s[52:55], 0 offen
	v_cndmask_b32_e32 v243, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s77
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v242, v242, s[52:55], 0 offen
	buffer_load_u16 v243, v243, s[52:55], 0 offen
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v171, 16, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v171, v176, v171 :: v_dual_cndmask_b32 v176, 0x80000000, v170
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s76
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v171, v171
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v176, v176, s[52:55], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v98, v98, v174
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v174, v171, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s24, v98, v98
	v_add3_u32 v171, v171, v174, 0x7fff
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v237, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v176, v177, v176 :: v_dual_cndmask_b32 v177, 0x80000000, v170
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v174, v176, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v177, v177, s[52:55], 0 offen
	v_cndmask_b32_e32 v244, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v245, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v244, v244, s[52:55], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v174, v176, v174, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v245, v245, s[52:55], 0 offen
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v246, 0x80000000, v170 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s12
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v247, 0x80000000, v170, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v177, v240, v177 :: v_dual_cndmask_b32 v240, 0x80000000, v170
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s74
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v246, v246, s[52:55], 0 offen
	buffer_load_u16 v247, v247, s[52:55], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v177, v177
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v240, v240, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v240, 16, v240
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v240, v241, v240 :: v_dual_cndmask_b32 v241, 0x80000000, v170
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v240, v240
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v241, 16, v241
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v239, v239, v241
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v241, 0x80000000, v170, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v172
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v241, 16, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v237, v237, v241
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v241, -16, v172
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v172, v172, v241, vcc_lo
	.loc	1 378 26 is_stmt 1              ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s62
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v170, 0x80000000, v170, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v176, v240, 16, 1
	v_cmp_o_f32_e64 s12, v239, v239
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	buffer_load_u16 v170, v170, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s68, s69
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v176, v240, v176, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v237, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v99, v99, v170 :: v_dual_lshlrev_b32 v170, 16, v243
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v100, v100, v170
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v170, 16, v175
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v175, v236
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v236, v237, 16, 1
	v_cmp_o_f32_e64 s20, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v101, v101, v170 :: v_dual_lshlrev_b32 v170, 16, v247
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v236, v237, v236, 0x7fff
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v237, 16, v242
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v101, v101
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v102, v102, v170
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v170, 16, v246
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v172, v172, v237
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v237, v99, 16, 1
	v_cmp_o_f32_e64 s21, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v103, v103, v170 :: v_dual_lshlrev_b32 v170, 16, v245
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v99, v99, v237, 0x7fff
	v_bfe_u32 v237, v100, 16, 1
	v_cndmask_b16 v99.l, 0x7fff, v176.h, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s16, v103, v103
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v104, v104, v170
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v170, 16, v244
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v100, v100, v237, 0x7fff
	v_bfe_u32 v237, v101, 16, 1
	v_cmp_o_f32_e64 s22, v104, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v170, v175, v170
	v_cvt_f32_i32_e32 v175, v238
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v101, v101, v237, 0x7fff
	v_bfe_u32 v237, v102, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s15, v170, v170
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v173, v175, v173
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v175, v177, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v102, v102, v237, 0x7fff
	v_bfe_u32 v237, v103, 16, 1
	v_cmp_o_f32_e64 s23, v173, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v175, v177, v175, 0x7fff
	v_bfe_u32 v177, v239, 16, 1
	v_add3_u32 v103, v103, v237, 0x7fff
	v_bfe_u32 v237, v104, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v177, v239, v177, 0x7fff
	v_add3_u32 v104, v104, v237, 0x7fff
	v_bfe_u32 v237, v170, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v170, v170, v237, 0x7fff
	v_bfe_u32 v237, v173, 16, 1
	v_add3_u32 v173, v173, v237, 0x7fff
	v_bfe_u32 v237, v98, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v237, v98, v237, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v171.h, s17
	v_cndmask_b16 v98.h, 0x7fff, v175.h, s18
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_add_nc_u32_e32 v171, 0, v198
	ds_load_u8_d16 v244, v171
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v244, v171 offset:64
	ds_load_u8_d16 v245, v217
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v245, v217 offset:64
	ds_load_u8_d16 v246, v218
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v246, v218 offset:64
	ds_load_u8_d16 v247, v219
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v247, v219 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v151, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v100.h, s20
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v151, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v102.h, s21
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v153, v99 offset:1024
	ds_store_b16_d16_hi v152, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v177.h, s12
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v152, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s19
	v_bfe_u32 v100, v172, 16, 1
	v_cmp_o_f32_e64 s17, v172, v172
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v155, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v174.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v153, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v173.h, s23
	v_add3_u32 v100, v172, v100, 0x7fff
	v_cndmask_b16 v100.l, 0x7fff, v236.h, s11
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v157, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v103.h, s16
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v154, v98
	ds_store_b16_d16_hi v154, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v101.h, s14
	v_cndmask_b16 v99.l, 0x7fff, v237.h, s24
	v_cndmask_b16 v98.h, 0x7fff, v170.h, s15
	v_cndmask_b16 v99.h, 0x7fff, v100.h, s17
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s22
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v157, v100 offset:1024
	ds_store_b16 v155, v99
	ds_store_b16_d16_hi v156, v100 offset:1024
	ds_store_b16 v158, v98
	ds_store_b16_d16_hi v158, v98 offset:1024
	ds_store_b16_d16_hi v156, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[170:173], v227
	ds_load_b128 v[174:177], v220
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_dual_mov_b32 v243, v104 :: v_dual_mov_b32 v238, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v240, v101 :: v_dual_mov_b32 v241, v102
	v_mov_b32_e32 v236, v97
	v_dual_mov_b32 v242, v103 :: v_dual_mov_b32 v239, v100
	v_dual_mov_b32 v237, v98 :: v_dual_lshlrev_b32 v104, 16, v231
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v102, 16, v234
	v_lshlrev_b32_e32 v98, 16, v233
	v_lshlrev_b32_e32 v99, 16, v232
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[170:177], v[33:40], v[236:243]
	ds_load_b128 v[170:173], v221
	ds_load_b128 v[174:177], v222
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v100, 16, v235
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v102, 0x3fb8aa3b, v102 :: v_dual_lshlrev_b32 v103, 16, v229
	v_dual_mul_f32 v104, 0x3fb8aa3b, v104 :: v_dual_lshlrev_b32 v101, 16, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v100, 0x3fb8aa3b, v100 :: v_dual_mul_f32 v103, 0x3fb8aa3b, v103
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v102, s73, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v104, s73, v143
	v_fmac_f32_e32 v100, s73, v139
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[170:177], v[41:48], v[236:243]
	ds_load_b128 v[170:173], v223
	ds_load_b128 v[174:177], v224
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[170:177], v[49:56], v[236:243]
	ds_load_b128 v[170:173], v225
	ds_load_b128 v[174:177], v226
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[170:177], v[57:64], v[236:243]
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v171, 0x3fb8aa3b, v99 :: v_dual_lshlrev_b32 v170, 16, v228
	v_mul_f32_e32 v99, 0x3fb8aa3b, v98
	v_mul_f32_e32 v101, 0x3fb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v139, v238, v194
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v170, 0x3fb8aa3b, v170
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v103, s60, v142
	v_dual_fmac_f32 v99, s73, v137 :: v_dual_sub_f32 v142, v241, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v171, s60, v138 :: v_dual_fmac_f32 v170, s60, v144
	v_dual_fmac_f32 v101, s60, v140 :: v_dual_sub_f32 v138, v237, v194
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v99, v187
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v137, v236, v194
	v_sub_f32_e32 v141, v240, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v144, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v244.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v140, v239, v194 :: v_dual_cndmask_b32 v99, 0, v144
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v137, v99, v137
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v171, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v137, s70, v137
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v144, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v245.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v98, v243, v194 :: v_dual_cndmask_b32 v99, 0, v144
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v99, v138
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v138, v137, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s70, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v137, v137, v138, 0x7fff
	v_bfe_u32 v138, v99, 16, 1
	v_cmp_o_f32_e64 s11, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v99, v99, v138, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v137.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s11
	v_permlanex16_b32 v138, v99, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v137, v138, v99, v199
	v_perm_b32 v138, v138, v99, v200
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v100, v187
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v246.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v100, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v100, v99, v139 :: v_dual_sub_f32 v99, v101, v201
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v100, s70, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v101, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v247.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v101, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v101, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v99, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v100, v100, v101, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s70, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v101, v99, 16, 1
	v_cmp_o_f32_e64 s11, v99, v99
	v_add3_u32 v99, v99, v101, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v100.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s11
	v_permlanex16_b32 v100, v99, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v139, v100, v99, v199
	v_perm_b32 v140, v100, v99, v200
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v102, v187
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v244.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v100, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v143, v242, v194 :: v_dual_mul_f32 v100, v99, v141
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_sub_f32 v99, v103, v201 :: v_dual_mul_f32 v100, s70, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v101, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v245.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v101, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v101, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v99, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v100, v100, v101, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s70, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v101, v99, 16, 1
	v_cmp_o_f32_e64 s11, v99, v99
	v_add3_u32 v99, v99, v101, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v100.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s11
	v_permlanex16_b32 v100, v99, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v141, v100, v99, v199
	v_perm_b32 v142, v100, v99, v200
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v104, v187
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v246.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v100, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v100, v99, v143 :: v_dual_sub_f32 v99, v170, v201
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v101, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v247.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v101, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v98, v99, v98 :: v_dual_mul_f32 v99, s70, v100
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v98, s70, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v100, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_cmp_o_f32_e64 s11, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v99, v99, v100, 0x7fff
	v_bfe_u32 v100, v98, 16, 1
	v_add3_u32 v98, v98, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.l, 0x7fff, v99.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v99, v98, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v99, v98, v199
	v_perm_b32 v144, v99, v98, v200
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[137:144], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[137:144], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[137:144], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[137:144], v[65:72]
	s_cbranch_scc0 .LBB0_23
.LBB0_19:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s11, s68, 1
	s_or_b32 s12, s68, 2
	s_or_b32 s13, s68, 3
	s_or_b32 s14, s68, 4
	s_or_b32 s16, s68, 5
	s_or_b32 s17, s68, 6
	s_or_b32 s19, s68, 7
	s_or_b32 s20, s68, 8
	s_or_b32 s21, s68, 9
	s_or_b32 s22, s68, 10
	s_or_b32 s23, s68, 11
	s_or_b32 s24, s68, 12
	s_or_b32 s25, s68, 13
	s_or_b32 s26, s68, 14
	s_or_b32 s27, s68, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s68, s39
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v227, 0, v160
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s11, s39
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s12, s39
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s13, s39
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s14, s39
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s16, s39
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s17, s39
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s19, s39
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s20, s39
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s21, s39
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s22, s39
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s23, s39
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s24, s39
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s25, s39
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s26, s39
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s27, s39
	s_cselect_b32 s16, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s19, s68, s72
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s79
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[98:99], null, s19, s35, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v99, s35, v98
	v_add_nc_u32_e32 v100, s35, v99
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v99, 1, v99
	v_lshlrev_b32_e32 v98, 1, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v101, s35, v100
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v102, s35, v101
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v105, 0x80000000, v99, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s62
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v101, 1, v101
	v_lshlrev_b32_e32 v100, 1, v100
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v103, s35, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v104, s35, v103
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v99, s35, v104
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v103, 1, v103
	v_lshlrev_b32_e32 v102, 1, v102
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v106, s35, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v107, s35, v106
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s77
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v99, 1, v99
	v_lshlrev_b32_e32 v104, 1, v104
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s35, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s35, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v109, 0x80000000, v99, vcc_lo
	s_clause 0x7
	buffer_load_u16 v99, v98, s[40:43], 0 offen
	buffer_load_u16 v141, v105, s[40:43], 0 offen
	buffer_load_u16 v100, v100, s[40:43], 0 offen
	buffer_load_u16 v142, v101, s[40:43], 0 offen
	buffer_load_u16 v101, v102, s[40:43], 0 offen
	buffer_load_u16 v103, v103, s[40:43], 0 offen
	buffer_load_u16 v102, v104, s[40:43], 0 offen
	buffer_load_u16 v104, v109, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v105, s35, v110
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v109, 1, v110
	v_lshlrev_b32_e32 v98, 1, v107
	v_lshlrev_b32_e32 v107, 1, v108
	v_lshlrev_b32_e32 v106, 1, v106
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s76
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s35, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v106, 0x80000000, v106 :: v_dual_lshlrev_b32 v105, 1, v105
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s35, v108
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s75
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v111, v110, s35, 1
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s74
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_lshlrev_b32 v108, 1, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_lshlrev_b32 v110, 1, v110
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s63
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x7
	buffer_load_u16 v143, v98, s[40:43], 0 offen
	buffer_load_u16 v144, v109, s[40:43], 0 offen
	buffer_load_u16 v170, v108, s[40:43], 0 offen
	buffer_load_u16 v171, v111, s[40:43], 0 offen
	buffer_load_u16 v140, v110, s[40:43], 0 offen
	buffer_load_u16 v139, v105, s[40:43], 0 offen
	buffer_load_u16 v138, v107, s[40:43], 0 offen
	buffer_load_u16 v137, v106, s[40:43], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v98, v97
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v99.h, v141.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v100.h, v142.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v101.h, v103.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v102.h, v104.l
	ds_store_b128 v202, v[99:102]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v203
	ds_load_b128 v[121:124], v203 offset:256
	ds_load_b128 v[113:116], v203 offset:512
	ds_load_b128 v[105:108], v203 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v137.h, v143.l
	v_mov_b16_e64 v138.h, v144.l
	v_mov_b16_e64 v139.h, v170.l
	v_mov_b16_e64 v140.h, v171.l
	ds_store_b128 v202, v[137:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v203
	ds_load_b128 v[125:128], v203 offset:256
	ds_load_b128 v[117:120], v203 offset:512
	ds_load_b128 v[109:112], v203 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v151, v99
	ds_store_b16 v151, v137 offset:1024
	ds_store_b16 v152, v141
	ds_store_b16 v152, v143 offset:1024
	ds_store_b16 v153, v100
	ds_store_b16 v153, v138 offset:1024
	ds_store_b16 v154, v142
	ds_store_b16 v154, v144 offset:1024
	ds_store_b16 v155, v101
	ds_store_b16 v155, v139 offset:1024
	ds_store_b16 v156, v103
	ds_store_b16 v156, v170 offset:1024
	ds_store_b16 v157, v102
	ds_store_b16 v157, v140 offset:1024
	ds_store_b16 v158, v104
	ds_store_b16 v158, v171 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[228:231], v227
	ds_load_b128 v[232:235], v220
	ds_load_b128 v[236:239], v221
	ds_load_b128 v[240:243], v222
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[244:247], v223
	ds_load_b128 v[248:251], v224
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v104 :: v_dual_mov_b32 v141, v101
	v_dual_mov_b32 v142, v102 :: v_dual_mov_b32 v143, v103
	v_dual_mov_b32 v140, v100 :: v_dual_mov_b32 v139, v99
	v_dual_mov_b32 v138, v98 :: v_dual_mov_b32 v137, v97
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[170:173], v225
	ds_load_b128 v[174:177], v226
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v98, s68, v159
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[228:235], v[1:8], v[137:144]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s19, s39, v98
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[236:243], v[9:16], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s82, s0, s19
	s_and_b32 s80, s1, s19
	s_and_b32 s54, s5, s19
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[244:251], v[17:24], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s50, s6, s19
	s_and_b32 s83, s7, s19
	s_and_b32 s81, s8, s19
	s_and_b32 s55, s9, s19
	s_and_b32 s51, s10, s19
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[170:177], v[25:32], v[137:144]
	s_cbranch_vccnz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v98, v161
	v_cmp_le_i32_e64 s19, v98, v162
	v_cmp_le_i32_e64 s20, v98, v163
	v_cmp_le_i32_e64 s21, v98, v164
	v_cmp_le_i32_e64 s22, v98, v165
	v_cmp_le_i32_e64 s23, v98, v166
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s26, vcc_lo, s82
	s_and_b32 s19, s19, s80
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s24, v98, v168
	v_cmp_le_i32_e64 s25, v98, v169
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s20, s20, s54
	s_and_b32 s21, s21, s50
	s_and_not1_b32 s27, s82, exec_lo
	s_and_b32 s26, s26, exec_lo
	s_and_not1_b32 s28, s80, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_b32 s22, s22, s83
	s_and_b32 s23, s23, s81
	s_or_b32 s82, s27, s26
	s_or_b32 s80, s28, s19
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s26, s50, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_b32 s24, s24, s55
	s_and_b32 s25, s25, s51
	s_or_b32 s54, s19, s20
	s_or_b32 s50, s26, s21
	s_and_not1_b32 s19, s83, exec_lo
	s_and_b32 s20, s22, exec_lo
	s_and_not1_b32 s21, s81, exec_lo
	s_and_b32 s22, s23, exec_lo
	s_or_b32 s83, s19, s20
	s_or_b32 s81, s21, s22
	s_and_not1_b32 s19, s55, exec_lo
	s_and_b32 s20, s24, exec_lo
	s_and_not1_b32 s21, s51, exec_lo
	s_and_b32 s22, s25, exec_lo
	s_or_b32 s55, s19, s20
	s_or_b32 s51, s21, s22
.LBB0_21:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s64
	s_cbranch_vccnz .LBB0_18
; %bb.22:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v99, off, off          ; 4-byte Folded Reload
	v_cmp_ge_i32_e32 vcc_lo, v98, v253
	v_cmp_ge_i32_e64 s19, v98, v254
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v98, v178
	v_cmp_le_i32_e64 s27, v98, v179
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s20, v98, v255
	v_cmp_ge_i32_e64 s21, v98, v167
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s28, v98, v180
	v_cmp_le_i32_e64 s29, v98, v181
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s22, v98, v186
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s30, v98, v182
	v_cmp_le_i32_e64 s31, v98, v183
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s26, vcc_lo, s26
	s_and_b32 s19, s19, s27
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s33, v98, v184
	v_cmp_le_i32_e64 s34, v98, v185
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s26, s26, s82
	s_and_b32 s19, s19, s80
	s_and_b32 s20, s20, s28
	s_and_b32 s21, s21, s29
	s_and_b32 s22, s22, s30
	s_and_b32 s20, s20, s54
	s_and_b32 s21, s21, s50
	s_and_not1_b32 s27, s82, exec_lo
	s_and_b32 s26, s26, exec_lo
	s_and_not1_b32 s28, s80, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_b32 s22, s22, s83
	s_or_b32 s82, s27, s26
	s_or_b32 s80, s28, s19
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s26, s50, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s54, s19, s20
	s_or_b32 s50, s26, s21
	s_and_not1_b32 s19, s83, exec_lo
	s_and_b32 s20, s22, exec_lo
	s_and_not1_b32 s21, s81, exec_lo
	s_or_b32 s83, s19, s20
	s_and_not1_b32 s19, s55, exec_lo
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v98, v99
	scratch_load_b32 v99, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s23, s23, s31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s81
	s_and_b32 s22, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s81, s21, s22
	s_and_not1_b32 s21, s51, exec_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v98, v99
	scratch_load_b32 v99, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s24, s24, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s55
	s_and_b32 s20, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s55, s19, s20
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v98, v99
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s25, s25, s34
	s_and_b32 s25, s25, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s25, exec_lo
	s_or_b32 s51, s21, s22
	s_branch .LBB0_18
.LBB0_23:                               ; %Flow
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	scratch_load_b32 v171, off, off offset:12 ; 4-byte Folded Reload
.LBB0_24:                               ; %._crit_edge82
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_or_b32_e32 v0, v252, v159
	.loc	1 161 44                        ; attention_backward.py:161:44
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 4, v171
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s66, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v3, 62, v1
	v_or_b32_e32 v4, 60, v1
	v_or_b32_e32 v5, 58, v1
	v_or_b32_e32 v6, 56, v1
	v_or_b32_e32 v7, 54, v1
	v_or_b32_e32 v8, 52, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s38, v2
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v2, 50, v1
	v_or_b32_e32 v9, 48, v1
	v_or_b32_e32 v10, 46, v1
	v_or_b32_e32 v11, 44, v1
	v_or_b32_e32 v12, 42, v1
	v_or_b32_e32 v13, 40, v1
	v_or_b32_e32 v14, 38, v1
	v_or_b32_e32 v15, 36, v1
	v_or_b32_e32 v16, 34, v1
	v_or_b32_e32 v17, 32, v1
	v_or_b32_e32 v18, 30, v1
	v_or_b32_e32 v19, 28, v1
	v_or_b32_e32 v20, 26, v1
	v_or_b32_e32 v21, 24, v1
	v_or_b32_e32 v22, 22, v1
	v_or_b32_e32 v23, 20, v1
	v_or_b32_e32 v24, 18, v1
	v_or_b32_e32 v25, 16, v1
	v_or_b32_e32 v26, 14, v1
	v_or_b32_e32 v27, 12, v1
	v_or_b32_e32 v28, 10, v1
	v_or_b32_e32 v29, 8, v1
	v_or_b32_e32 v30, 6, v1
	v_or_b32_e32 v31, 4, v1
	v_or_b32_e32 v32, 2, v1
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s35, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s0, s35, v3
	v_cmp_gt_i32_e64 s1, s35, v4
	v_cmp_gt_i32_e64 s2, s35, v5
	v_cmp_gt_i32_e64 s3, s35, v6
	v_cmp_gt_i32_e64 s4, s35, v7
	v_cmp_gt_i32_e64 s5, s35, v8
	v_cmp_gt_i32_e64 s6, s35, v2
	v_cmp_gt_i32_e64 s7, s35, v9
	v_cmp_gt_i32_e64 s8, s35, v10
	v_cmp_gt_i32_e64 s9, s35, v11
	v_cmp_gt_i32_e64 s10, s35, v12
	v_cmp_gt_i32_e64 s11, s35, v13
	v_cmp_gt_i32_e64 s12, s35, v14
	v_cmp_gt_i32_e64 s13, s35, v15
	v_cmp_gt_i32_e64 s14, s35, v16
	v_cmp_gt_i32_e64 s15, s35, v17
	v_cmp_gt_i32_e64 s16, s35, v18
	v_cmp_gt_i32_e64 s17, s35, v19
	v_cmp_gt_i32_e64 s18, s35, v20
	v_cmp_gt_i32_e64 s19, s35, v21
	v_cmp_gt_i32_e64 s20, s35, v22
	v_cmp_gt_i32_e64 s21, s35, v23
	v_cmp_gt_i32_e64 s22, s35, v24
	v_cmp_gt_i32_e64 s23, s35, v25
	v_cmp_gt_i32_e64 s24, s35, v26
	v_cmp_gt_i32_e64 s25, s35, v27
	v_cmp_gt_i32_e64 s26, s35, v28
	v_cmp_gt_i32_e64 s27, s35, v29
	v_cmp_gt_i32_e64 s28, s35, v30
	v_cmp_gt_i32_e64 s29, s35, v31
	v_cmp_gt_i32_e64 s30, s35, v32
	v_cmp_gt_i32_e64 s31, s35, v1
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v32, v0, v32
	v_add_nc_u32_e32 v31, v0, v31
	v_add_nc_u32_e32 v30, v0, v30
	v_add_nc_u32_e32 v29, v0, v29
	v_add_nc_u32_e32 v28, v0, v28
	v_add_nc_u32_e32 v27, v0, v27
	v_add_nc_u32_e32 v26, v0, v26
	v_add_nc_u32_e32 v25, v0, v25
	v_add_nc_u32_e32 v24, v0, v24
	v_add_nc_u32_e32 v23, v0, v23
	v_add_nc_u32_e32 v22, v0, v22
	v_add_nc_u32_e32 v21, v0, v21
	v_add_nc_u32_e32 v20, v0, v20
	v_add_nc_u32_e32 v19, v0, v19
	v_add_nc_u32_e32 v18, v0, v18
	v_add_nc_u32_e32 v17, v0, v17
	v_add_nc_u32_e32 v16, v0, v16
	v_add_nc_u32_e32 v15, v0, v15
	v_add_nc_u32_e32 v14, v0, v14
	v_add_nc_u32_e32 v13, v0, v13
	v_add_nc_u32_e32 v12, v0, v12
	v_add_nc_u32_e32 v11, v0, v11
	v_add_nc_u32_e32 v10, v0, v10
	v_add_nc_u32_e32 v9, v0, v9
	v_add_nc_u32_e32 v2, v0, v2
	v_add_nc_u32_e32 v8, v0, v8
	v_add_nc_u32_e32 v7, v0, v7
	v_add_nc_u32_e32 v6, v0, v6
	v_add_nc_u32_e32 v5, v0, v5
	v_add_nc_u32_e32 v4, v0, v4
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s31, vcc_lo, s31
	s_and_b32 s30, vcc_lo, s30
	s_and_b32 s29, vcc_lo, s29
	s_and_b32 s28, vcc_lo, s28
	s_and_b32 s27, vcc_lo, s27
	s_and_b32 s26, vcc_lo, s26
	s_and_b32 s25, vcc_lo, s25
	s_and_b32 s24, vcc_lo, s24
	s_and_b32 s23, vcc_lo, s23
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s16, vcc_lo, s16
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v1, v0, v1
	v_add_nc_u32_e32 v0, v0, v3
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v32, v32, s65, 2
	v_add_lshl_u32 v31, v31, s65, 2
	v_add_lshl_u32 v3, v29, s65, 2
	v_add_lshl_u32 v0, v0, s65, 2
	v_add_lshl_u32 v28, v28, s65, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s30
	v_cndmask_b32_e64 v31, 0x80000000, v31, s29
	v_cndmask_b32_e64 v3, 0x80000000, v3, s27
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v1, v1, s65, 2
	v_add_lshl_u32 v27, v27, s65, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s26
	v_add_lshl_u32 v24, v24, s65, 2
	v_add_lshl_u32 v23, v23, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	v_cndmask_b32_e64 v27, 0x80000000, v27, s25
	v_add_lshl_u32 v20, v20, s65, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s22
	v_cndmask_b32_e64 v23, 0x80000000, v23, s21
	buffer_store_b32 v89, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v30, s65, 2
	s_clause 0x1
	buffer_store_b32 v90, v32, s[36:39], 0 offen
	buffer_store_b32 v91, v31, s[36:39], 0 offen
	v_add_lshl_u32 v19, v19, s65, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s18
	v_add_lshl_u32 v16, v16, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	s_clause 0x1
	buffer_store_b32 v92, v1, s[36:39], 0 offen
	buffer_store_b32 v93, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v26, s65, 2
	v_add_lshl_u32 v3, v25, s65, 2
	s_clause 0x1
	buffer_store_b32 v94, v28, s[36:39], 0 offen
	buffer_store_b32 v95, v27, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	v_add_lshl_u32 v15, v15, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s23
	s_clause 0x1
	buffer_store_b32 v96, v1, s[36:39], 0 offen
	buffer_store_b32 v81, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v22, s65, 2
	v_add_lshl_u32 v3, v21, s65, 2
	s_clause 0x1
	buffer_store_b32 v82, v24, s[36:39], 0 offen
	buffer_store_b32 v83, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v16, s14
	v_cndmask_b32_e64 v15, 0x80000000, v15, s13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	s_clause 0x1
	buffer_store_b32 v84, v1, s[36:39], 0 offen
	buffer_store_b32 v85, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, s65, 2
	v_add_lshl_u32 v3, v17, s65, 2
	s_clause 0x1
	buffer_store_b32 v86, v20, s[36:39], 0 offen
	buffer_store_b32 v87, v19, s[36:39], 0 offen
	v_add_lshl_u32 v12, v12, s65, 2
	v_add_lshl_u32 v11, v11, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	s_clause 0x1
	buffer_store_b32 v88, v1, s[36:39], 0 offen
	buffer_store_b32 v73, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v14, s65, 2
	v_add_lshl_u32 v3, v13, s65, 2
	s_clause 0x1
	buffer_store_b32 v74, v16, s[36:39], 0 offen
	buffer_store_b32 v75, v15, s[36:39], 0 offen
	v_add_lshl_u32 v2, v2, s65, 2
	v_add_lshl_u32 v8, v8, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b32 v76, v1, s[36:39], 0 offen
	buffer_store_b32 v77, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v10, s65, 2
	v_add_lshl_u32 v3, v9, s65, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	s_clause 0x3
	buffer_store_b32 v78, v12, s[36:39], 0 offen
	buffer_store_b32 v79, v11, s[36:39], 0 offen
	buffer_store_b32 v80, v1, s[36:39], 0 offen
	buffer_store_b32 v65, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v7, s65, 2
	s_clause 0x1
	buffer_store_b32 v66, v2, s[36:39], 0 offen
	buffer_store_b32 v67, v8, s[36:39], 0 offen
	v_add_lshl_u32 v2, v6, s65, 2
	v_add_lshl_u32 v3, v5, s65, 2
	v_add_lshl_u32 v4, v4, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	s_clause 0x4
	buffer_store_b32 v68, v1, s[36:39], 0 offen
	buffer_store_b32 v69, v2, s[36:39], 0 offen
	buffer_store_b32 v70, v3, s[36:39], 0 offen
	buffer_store_b32 v71, v4, s[36:39], 0 offen
	buffer_store_b32 v72, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp379:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 20
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
		.amdhsa_next_free_sgpr 84
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 84
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 20
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23708
; TotalNumSgprs: 86
; NumVgprs: 256
; ScratchSize: 20
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 86
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
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
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
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
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
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
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
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
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 20
    .sgpr_count:     86
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 4
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
