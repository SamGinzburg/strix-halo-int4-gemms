	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshlrev_b32_e32 v106, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v37, 0x1b0, v106
	v_xor_b32_e32 v41, 0x3f0, v106
	v_xor_b32_e32 v36, 0x120, v106
	v_xor_b32_e32 v39, 0x2d0, v106
	v_xor_b32_e32 v38, 0x240, v106
	v_xor_b32_e32 v40, 0x360, v106
	v_add_nc_u32_e32 v154, 0, v37
	v_add_nc_u32_e32 v158, 0, v41
	v_add_nc_u32_e32 v153, 0, v36
	v_add_nc_u32_e32 v155, 0, v38
	v_add_nc_u32_e32 v157, 0, v40
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
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s4, s38
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s5, s38
	s_load_b64 s[4:5], s[0:1], 0x0
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s6, s38
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s7, s38
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s8, s38
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s10, s38
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s2, s38
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s35, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s9, s38
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s23, s38
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s24, s38
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s25, s38
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s11, s38
	s_load_b128 s[8:11], s[0:1], 0x38
	s_cselect_b32 s51, -1, 0
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
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s29, s38
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s30, s38
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s31, s38
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s33, s38
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s34, s38
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s36, s38
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s61, s38
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s62, s38
	s_cselect_b32 s33, -1, 0
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
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s72, s38
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s73, s38
	s_cselect_b32 s23, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s27, s27, s66
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s2
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s35, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v7, s35, v3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v5, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_lshl_add_u32 v1, s35, 5, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v9, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s35, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v11, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v6
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s35, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s35, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v12, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s35, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s35, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v13, 0x80000000, v6, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s35, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v14, s35, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v23, 1, v14
	v_lshlrev_b32_e32 v1, 1, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s35, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s35, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s35, v8
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v1 :: v_dual_lshlrev_b32 v20, 1, v10
	v_lshlrev_b32_e32 v1, 1, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s35, v10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s34, s2
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
	v_add_nc_u32_e32 v24, s35, v18
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
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
	v_add_nc_u32_e32 v19, s35, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s35, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v28, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s35, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s35, v16
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v23, 0x80000000, v19 :: v_dual_lshlrev_b32 v16, 1, v16
	v_lshlrev_b32_e32 v19, 1, v20
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s35, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v25, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 1, v22
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s35, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v29, s35, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v31, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s35, v27
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v27, 1, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v32, 0x80000000, v20 :: v_dual_lshlrev_b32 v33, 1, v29
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v34, v29, s35, 1
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
	s_and_b32 vcc_lo, s48, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v22
	v_add_lshl_u32 v35, v22, s35, 1
	s_clause 0x1
	buffer_load_u16 v24, v31, s[4:7], 0 offen
	buffer_load_u16 v22, v32, s[4:7], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v33, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v34, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v33, 0x80000000, v35, vcc_lo
	v_xor_b32_e32 v35, 0x90, v106
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v152, 0, v35
	s_clause 0x6
	buffer_load_u16 v30, v25, s[4:7], 0 offen
	buffer_load_u16 v25, v31, s[4:7], 0 offen
	buffer_load_u16 v31, v27, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v32, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v32, v33, s[4:7], 0 offen
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(25)
	v_mad_u64_u32 v[33:34], null, s27, s67, v[0:1]
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v34, s67, v33
	v_lshl_add_u32 v35, s67, 3, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v156, 0, v39
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_lshlrev_b32 v39, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v34
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v66, 0x80000000, v34, vcc_lo
	v_lshlrev_b32_e32 v34, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v45, 0x80000000, v43, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v68, 0x80000000, v34 :: v_dual_lshlrev_b32 v43, 1, v41
	v_lshlrev_b32_e32 v34, 2, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v43 :: v_dual_lshlrev_b32 v44, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v70, 0x80000000, v34, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v35
	v_lshlrev_b32_e32 v41, 2, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v67, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v49, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v46, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v69, 0x80000000, v35, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s67, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v48, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v38
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v71, 0x80000000, v41, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s67, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v42
	v_cndmask_b32_e64 v53, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v72, 0x80000000, v34, s4
	v_dual_cndmask_b32 v73, 0x80000000, v37 :: v_dual_lshlrev_b32 v34, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	s_and_b32 s4, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s67, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v54, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v41
	v_cndmask_b32_e64 v55, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	v_cndmask_b32_e32 v74, 0x80000000, v34, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s67, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 2, v41
	v_cndmask_b32_e64 v75, 0x80000000, v35, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	s_and_b32 s4, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v35, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 1, v42
	v_cndmask_b32_e64 v56, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v77, 0x80000000, v38, s4
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 2, v42
	v_cndmask_b32_e32 v76, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	s_and_b32 s4, s48, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v34
	v_cndmask_b32_e64 v79, 0x80000000, v37, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v78, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	v_cndmask_b32_e32 v88, 0x80000000, v34, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v80, 0x80000000, v43 :: v_dual_add_nc_u32 v151, 0, v106
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v81, 0x80000000, v38, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v58, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v82, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v34, 2, v34
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v59, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v83, 0x80000000, v34, vcc_lo
	v_lshlrev_b32_e32 v34, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v60, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v57, 0x80000000, v44, s4
	v_dual_cndmask_b32 v61, 0x80000000, v43 :: v_dual_cndmask_b32 v84, 0x80000000, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	v_cndmask_b32_e32 v89, 0x80000000, v34, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v85, 0x80000000, v42, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s67, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v90, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 2, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v86, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s34, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s4, s8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v91, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v42, vcc_lo
	v_lshlrev_b32_e32 v42, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 2, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s33, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v92, 0x80000000, v42, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v93, 0x80000000, v34, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s67, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v94, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 2, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v62, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v95, 0x80000000, v37 :: v_dual_lshlrev_b32 v34, 2, v34
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v63, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s29, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v96, 0x80000000, v34, vcc_lo
	v_lshlrev_b32_e32 v34, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v64, 0x80000000, v43, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v97, 0x80000000, v34 :: v_dual_lshlrev_b32 v34, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s67, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v65, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v38
	v_cndmask_b32_e32 v99, 0x80000000, v34, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s67, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v98, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	v_cndmask_b32_e32 v101, 0x80000000, v38, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v34
	v_cndmask_b32_e32 v100, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s24, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v102, 0x80000000, v43 :: v_dual_lshlrev_b32 v103, 2, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v104, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s23, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_store_b16 v151, v10
	s_waitcnt vmcnt(17)
	ds_store_b16 v151, v19 offset:1024
	ds_store_b16 v151, v14 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v151, v15 offset:3072
	ds_store_b16 v152, v8
	ds_store_b16 v152, v18 offset:1024
	ds_store_b16 v152, v13 offset:2048
	ds_store_b16 v152, v29 offset:3072
	ds_store_b16 v153, v6
	ds_store_b16 v153, v17 offset:1024
	ds_store_b16 v153, v12 offset:2048
	ds_store_b16 v153, v23 offset:3072
	ds_store_b16 v154, v4
	ds_store_b16 v154, v16 offset:1024
	ds_store_b16 v154, v11 offset:2048
	ds_store_b16 v154, v21 offset:3072
	ds_store_b16 v155, v3
	ds_store_b16 v155, v24 offset:1024
	ds_store_b16 v155, v9 offset:2048
	ds_store_b16 v155, v20 offset:3072
	ds_store_b16 v156, v2
	ds_store_b16 v156, v22 offset:1024
	ds_store_b16 v156, v7 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v156, v30 offset:3072
	ds_store_b16 v157, v1
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v25 offset:1024
	ds_store_b16 v157, v5 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v157, v31 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v158, v26
	s_waitcnt vmcnt(2)
	ds_store_b16 v158, v27 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v158, v28 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v32 offset:3072
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v34, 0x80000000, v38, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_u16 v42, v36, s[4:7], 0 offen
	buffer_load_u16 v43, v39, s[4:7], 0 offen
	buffer_load_u16 v44, v45, s[4:7], 0 offen
	buffer_load_u16 v45, v47, s[4:7], 0 offen
	buffer_load_u16 v50, v40, s[4:7], 0 offen
	buffer_load_u16 v51, v46, s[4:7], 0 offen
	buffer_load_u16 v52, v48, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	buffer_load_u16 v46, v49, s[4:7], 0 offen
	buffer_load_u16 v47, v54, s[4:7], 0 offen
	buffer_load_u16 v48, v35, s[4:7], 0 offen
	buffer_load_u16 v49, v41, s[4:7], 0 offen
	buffer_load_u16 v54, v55, s[4:7], 0 offen
	buffer_load_u16 v55, v56, s[4:7], 0 offen
	buffer_load_u16 v56, v57, s[4:7], 0 offen
	buffer_load_u16 v57, v80, s[4:7], 0 offen
	buffer_load_u16 v41, v85, s[4:7], 0 offen
	buffer_load_u16 v40, v86, s[4:7], 0 offen
	buffer_load_u16 v39, v87, s[4:7], 0 offen
	buffer_load_u16 v38, v92, s[4:7], 0 offen
	buffer_load_u16 v37, v98, s[4:7], 0 offen
	buffer_load_u16 v36, v100, s[4:7], 0 offen
	buffer_load_u16 v35, v102, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	v_cndmask_b32_e32 v1, 0x80000000, v103, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v122, v33, s[4:7], 0 offen
	buffer_load_b32 v121, v66, s[4:7], 0 offen
	buffer_load_b32 v120, v68, s[4:7], 0 offen
	buffer_load_b32 v117, v70, s[4:7], 0 offen
	buffer_load_b32 v114, v67, s[4:7], 0 offen
	buffer_load_b32 v113, v69, s[4:7], 0 offen
	buffer_load_b32 v112, v71, s[4:7], 0 offen
	buffer_load_b32 v111, v72, s[4:7], 0 offen
	buffer_load_b32 v87, v81, s[4:7], 0 offen
	buffer_load_b32 v86, v82, s[4:7], 0 offen
	buffer_load_b32 v85, v83, s[4:7], 0 offen
	buffer_load_b32 v84, v84, s[4:7], 0 offen
	buffer_load_b32 v83, v94, s[4:7], 0 offen
	buffer_load_b32 v82, v95, s[4:7], 0 offen
	buffer_load_b32 v81, v96, s[4:7], 0 offen
	buffer_load_b32 v80, v97, s[4:7], 0 offen
	buffer_load_b32 v119, v73, s[4:7], 0 offen
	buffer_load_b32 v118, v74, s[4:7], 0 offen
	buffer_load_b32 v116, v76, s[4:7], 0 offen
	buffer_load_b32 v115, v78, s[4:7], 0 offen
	buffer_load_b32 v110, v75, s[4:7], 0 offen
	buffer_load_b32 v109, v77, s[4:7], 0 offen
	buffer_load_b32 v108, v79, s[4:7], 0 offen
	buffer_load_b32 v88, v88, s[4:7], 0 offen
	buffer_load_b32 v130, v89, s[4:7], 0 offen
	buffer_load_b32 v129, v90, s[4:7], 0 offen
	buffer_load_b32 v128, v91, s[4:7], 0 offen
	buffer_load_b32 v127, v93, s[4:7], 0 offen
	buffer_load_b32 v126, v99, s[4:7], 0 offen
	buffer_load_b32 v125, v101, s[4:7], 0 offen
	buffer_load_b32 v124, v104, s[4:7], 0 offen
	buffer_load_b32 v123, v1, s[4:7], 0 offen
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s46, s39, 15
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v74, v111, v53 :: v_dual_lshlrev_b32 v63, 16, v63
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v77, v85, v60 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v91, v81, v64 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v90, v82, v63 :: v_dual_mul_f32 v95, v116, v48
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v91, v91 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v97, v110, v54 :: v_dual_mul_f32 v98, v109, v55
	v_mul_f32_e32 v94, v118, v47
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v95, v95 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v91, v81, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v90, v90 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v95, v116, v48
	v_add_f32_dpp v48, v91, v91 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v97, v110, v54 :: v_dual_fmac_f32 v98, v109, v55
.Ltmp7:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 16, v38
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v94, v94 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v90, v82, v63
.Ltmp10:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v104, v127, v38
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v94, v118, v47
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v90, v90 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v90, v48, -1, -1 op_sel:[1,0]
	v_and_b32_e32 v33, 1, v0
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v93, v119, v46
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v104, v127, v38
	v_dual_add_f32 v48, v48, v90 :: v_dual_lshlrev_b32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v55, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v93, v93 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v56, 16, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s30, v48, 31
.Ltmp19:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v65, 16, v65
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v55, v55, v97
	v_dual_fmac_f32 v93, v119, v46 :: v_dual_mul_f32 v100, v88, v57
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v48, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v92, v80, v65
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s42, v55, 31
.Ltmp24:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v50, 16, v50
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v34, 16, v34
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v92, v92 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v99, v108, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v71, v114, v50 :: v_dual_fmac_f32 v100, v88, v57
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v142, v123, v34
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v92, v80, v65
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v78, v84, v61
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v142, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v99, v108, v56
	v_fmac_f32_e32 v71, v114, v50
	v_add_f32_dpp v50, v93, v93 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v142, v123, v34 :: v_dual_lshlrev_b32 v195, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v38, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 16, v41
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v56, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v101, v130, v41
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v57, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v78, v84, v61
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v57, v57, v99
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v74, v111, v53
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v65, v38, -1, -1 op_sel:[1,0]
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s44, v57, 31
.Ltmp47:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v40, 16, v40
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v65
	v_fmac_f32_e32 v101, v130, v41
	v_add_f32_dpp v41, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v73, v112, v52
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v38, 31
.Ltmp52:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v102, v129, v40 :: v_dual_lshlrev_b32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v38, s8 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v72, v113, v51
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v73, v112, v52
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v141, v124, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v49, 16, v49
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v102, v129, v40
	v_add_f32_dpp v40, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v141, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v96, v115, v49
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v72, v113, v51
	v_add_f32_dpp v51, v94, v94 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v141, v124, v35
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v96, v96 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v95, v95 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 16, v36
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v96, v115, v49 :: v_dual_lshlrev_b32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v107, v125, v36 :: v_dual_lshlrev_b32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v103, v128, v39
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v93, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v77, v85, v60
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v107, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v83, v62
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v51, v51, v93
.Ltmp75:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 16, v37
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v107, v125, v36
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v103, v128, v39
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s34, v51, 31
.Ltmp80:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v105, v126, v37 :: v_dual_lshlrev_b32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v83, v62
	v_add_f32_dpp v60, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v51, s34 :: v_dual_mul_f32 v66, v122, v42
	v_permlanex16_b32 v103, v74, -1, -1 op_sel:[1,0]
.Ltmp83:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v58, 16, v58
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp88:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v75, v87, v58
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v105, v126, v37
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v66, v122, v42
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v94, v52, -1, -1 op_sel:[1,0]
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v75, v87, v58
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v66, v39, -1, -1 op_sel:[1,0]
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v61, v34, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v79, v47, -1, -1 op_sel:[1,0]
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v39, v39, v66 :: v_dual_add_f32 v34, v34, v61
	v_add_f32_e32 v47, v47, v79
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v39, 31
	v_readlane_b32 s4, v34, 31
.Ltmp99:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 16, v43
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s29, v47, 31
	v_permlanex16_b32 v98, v56, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, s4 :: v_dual_mul_f32 v67, v121, v43
	v_mov_b32_e32 v39, s9
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v71, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v107, v107 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v141, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v67, v121, v43
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v52, v52, v94 :: v_dual_mov_b32 v47, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_dpp v35, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v40, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v159, 15, v0
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v52, 31
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v56, v56, v98
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v40, v40, v67
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v58, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v52, s36
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v92, v92 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v40, 31
	v_permlanex16_b32 v92, v50, -1, -1 op_sel:[1,0]
	v_readlane_b32 s43, v56, 31
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v62, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v40, s10
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v96, v96 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v96, v54, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v35, v35, v62 :: v_dual_add_f32 v50, v50, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v54, v54, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v91, v49, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v35, 31
	v_readlane_b32 s33, v50, 31
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v54, 31
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v35, s5 :: v_dual_mov_b32 v50, s33
	v_permlanex16_b32 v95, v53, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v66, s41
	v_readlane_b32 s31, v49, 31
	v_mov_b32_e32 v67, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v53, v95
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v49, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s40, v53, 31
	v_dual_mov_b32 v53, s40 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v68, v120, v44
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v68, v120, v44
	v_add_f32_dpp v44, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v41, -1, -1 op_sel:[1,0]
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v41, v41, v68 :: v_dual_mov_b32 v68, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v41, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v63, v36, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v41, s11 :: v_dual_add_f32 v36, v36, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s6, v36, 31
	v_dual_mov_b32 v36, s6 :: v_dual_lshlrev_b32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v69, v117, v45
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v69, v117, v45
	v_add_f32_dpp v45, v78, v78 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v46, -1, -1 op_sel:[1,0]
.Ltmp134:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v89, 32, v0
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v69, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v46, v46, v78 :: v_dual_and_b32 v1, 0x70, v195
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v42, v42, v69
.Ltmp138:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v160, v159, 7, v1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v132, 1, v89
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s23, v42, 31
.Ltmp142:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v89, 6, v160
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v45, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v64, v37, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp144:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v76, v86, v59 :: v_dual_add_nc_u32 v133, 0, v1
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v37, v37, v64
.Ltmp146:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v2, 16, v1
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v3, 32, v1
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v45, 31
	v_readlane_b32 s7, v37, 31
.Ltmp150:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v4, 48, v1
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v76, v86, v59
	v_add_f32_dpp v59, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v6, 0x50, v1
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s28, v46, 31
.Ltmp154:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v5, 64, v1
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v76, v44, -1, -1 op_sel:[1,0]
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v131, 6, v33
	v_add_nc_u32_e32 v70, 0, v132
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v44, v44, v76
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v7, 0x60, v1
	v_xor_b32_e32 v1, 0x70, v1
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v44, 31
	v_permlanex16_b32 v101, v59, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v37, s7 :: v_dual_add_nc_u32 v134, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v75, v43, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v44, s25 :: v_dual_add_nc_u32 v135, 0, v3
	v_dual_mov_b32 v45, s26 :: v_dual_add_nc_u32 v136, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v43, v75 :: v_dual_add_nc_u32 v138, 0, v6
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v46, s28 :: v_dual_add_nc_u32 v137, 0, v5
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v76, v59, v101 :: v_dual_add_nc_u32 v139, 0, v7
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v43, 31
.Ltmp167:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v140, 0, v1
	ds_load_b128 v[1:4], v133
	ds_load_b128 v[5:8], v134
	ds_load_b128 v[9:12], v135
	ds_load_b128 v[13:16], v136
	ds_load_b128 v[17:20], v137
	ds_load_b128 v[21:24], v138
	ds_load_b128 v[25:28], v139
	ds_load_b128 v[29:32], v140
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v43, s24
	ds_store_b128 v70, v[34:37]
	ds_store_b128 v70, v[38:41] offset:16
	ds_store_b128 v70, v[42:45] offset:32
	ds_store_b128 v70, v[46:49] offset:48
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v142, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v161, 0, v131
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v60, -1, -1 op_sel:[1,0]
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v75, v58, v100
	v_add_f32_e32 v77, v60, v102
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v161
	ds_load_b128 v[58:61], v161 offset:16
	ds_load_b128 v[54:57], v161 offset:32
	ds_load_b128 v[42:45], v161 offset:48
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v40, v37, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v41, v38, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v46, v34, -1, -1 op_sel:[1,0]
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v74, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v36, v36, v39 :: v_dual_add_f32 v37, v37, v40
	v_add_f32_e32 v38, v38, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v34, v34, v46
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v75, 31
	v_readlane_b32 s5, v76, 31
	v_readlane_b32 s6, v77, 31
	v_readlane_b32 s7, v35, 31
	v_readlane_b32 s8, v36, 31
	v_readlane_b32 s9, v37, 31
	v_readlane_b32 s10, v38, 31
	v_readlane_b32 s11, v34, 31
	v_dual_mov_b32 v69, s44 :: v_dual_mov_b32 v34, s4
	v_dual_mov_b32 v35, s5 :: v_dual_mov_b32 v36, s6
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v213, v54
	v_dual_mov_b32 v37, s7 :: v_dual_mov_b32 v38, s8
	v_mov_b32_e32 v207, v55
	v_dual_mov_b32 v39, s9 :: v_dual_mov_b32 v40, s10
	v_mov_b32_e32 v103, v56
	v_mov_b32_e32 v41, s11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[50:53]
	ds_store_b128 v70, v[66:69] offset:16
	ds_store_b128 v70, v[34:37] offset:32
	ds_store_b128 v70, v[38:41] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v161
	ds_load_b128 v[66:69], v161 offset:16
	ds_load_b128 v[50:53], v161 offset:32
	ds_load_b128 v[46:49], v161 offset:48
	v_dual_mov_b32 v90, v62 :: v_dual_mov_b32 v91, v63
	v_dual_mov_b32 v93, v64 :: v_dual_mov_b32 v92, v65
	v_dual_mov_b32 v101, v58 :: v_dual_mov_b32 v102, v59
	v_mov_b32_e32 v206, v60
	v_mov_b32_e32 v208, v61
	v_dual_mov_b32 v104, v57 :: v_dual_mov_b32 v147, v42
	v_dual_mov_b32 v148, v43 :: v_dual_mov_b32 v199, v44
	v_mov_b32_e32 v200, v45
.Ltmp177:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s4, s46, 31
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp179:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s4, s4, 28
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v94, v70 :: v_dual_mov_b32 v95, v71
	v_mov_b32_e32 v96, v72
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v100, v73 :: v_dual_mov_b32 v201, v46
	v_dual_mov_b32 v209, v66 :: v_dual_mov_b32 v210, v67
	v_dual_mov_b32 v211, v68 :: v_dual_mov_b32 v212, v69
	v_dual_mov_b32 v205, v50 :: v_dual_mov_b32 v198, v51
	v_dual_mov_b32 v204, v52 :: v_dual_mov_b32 v145, v53
	v_dual_mov_b32 v202, v47 :: v_dual_mov_b32 v203, v48
	v_mov_b32_e32 v146, v49
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v213, v213 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v103, v103 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v104, v104 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp181:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s46, s46, s4
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s20, s22
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s69, s46, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
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
	v_cndmask_b32_e64 v34, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s8, s17, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s9, s21, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v34
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
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s9, s19
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v36, s66, v34
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	v_lshlrev_b32_e32 v77, 5, v0
	s_xor_b32 s5, s5, s8
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s42, s17, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v37, 4, v36
	v_or_b32_e32 v38, 8, v36
	v_or_b32_e32 v39, 12, v36
	v_or_b32_e32 v40, 16, v36
	v_or_b32_e32 v41, 20, v36
	v_or_b32_e32 v75, 24, v36
	v_or_b32_e32 v35, 28, v36
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s34, s5, s8
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s5, s16, s37
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v162, s15, v36
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s34, s34, s5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s68, s69
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v163, s15, v37
	v_add_nc_u32_e32 v164, s15, v38
	v_add_nc_u32_e32 v165, s15, v39
	v_add_nc_u32_e32 v166, s15, v40
	v_add_nc_u32_e32 v167, s15, v41
	v_add_nc_u32_e32 v169, s15, v75
	v_add_nc_u32_e32 v170, s15, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s50, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s16, s16, s6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s50
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v74, 5, v0
	s_mov_b32 s12, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s12, -1
                                        ; implicit-def: $vgpr74
.LBB0_7:                                ; %Flow289
	v_cmp_gt_i32_e64 s10, s38, v35
	v_subrev_nc_u32_e32 v35, s13, v163
	s_clause 0x4
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[28:31], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	s_load_b32 s71, s[0:1], 0x90
	v_and_b32_e32 v76, 48, v0
	v_and_b32_e32 v252, 16, v0
	v_mul_lo_u32 v105, s33, v34
	scratch_store_b32 off, v35, off         ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s13, v164
	v_cmp_gt_i32_e64 s0, s38, v36
	v_cmp_gt_i32_e64 s1, s38, v37
	v_cmp_gt_i32_e64 s5, s38, v38
	v_cmp_gt_i32_e64 s6, s38, v39
	scratch_store_b32 off, v35, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s13, v165
	v_cmp_gt_i32_e64 s7, s38, v40
	v_cmp_gt_i32_e64 s8, s38, v41
	v_cmp_gt_i32_e64 s9, s38, v75
	v_subrev_nc_u32_e32 v168, s13, v162
	scratch_store_b32 off, v35, off offset:8 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s13, v166
	v_add_nc_u32_e32 v179, s14, v162
	v_add_nc_u32_e32 v180, s14, v163
	v_add_nc_u32_e32 v181, s14, v164
	v_add_nc_u32_e32 v182, s14, v165
	scratch_store_b32 off, v35, off offset:12 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s13, v167
	v_add_nc_u32_e32 v183, s14, v166
	v_add_nc_u32_e32 v184, s14, v167
	v_add_nc_u32_e32 v185, s14, v169
	v_add_nc_u32_e32 v186, s14, v170
	scratch_store_b32 off, v35, off offset:16 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s13, v169
	v_xor_b32_e32 v141, 16, v160
	v_xor_b32_e32 v142, 32, v160
	v_xor_b32_e32 v143, 48, v160
	v_xor_b32_e32 v144, 64, v160
	scratch_store_b32 off, v35, off offset:20 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s13, v170
	v_xor_b32_e32 v187, 0x50, v160
	v_xor_b32_e32 v188, 0x60, v160
	v_xor_b32_e32 v189, 0x70, v160
	v_cmp_eq_u32_e64 s11, 0, v89
	v_and_b32_e32 v149, 14, v0
	v_lshlrev_b32_e32 v150, 2, v76
	v_lshlrev_b32_e32 v197, 5, v33
	v_lshlrev_b32_e32 v192, 3, v159
	v_lshrrev_b32_e32 v193, 2, v252
	v_lshrrev_b32_e32 v196, 4, v89
	v_lshlrev_b32_e32 v214, 2, v0
	v_lshrrev_b32_e32 v194, 1, v252
	v_lshrrev_b32_e32 v191, 5, v89
	s_mul_f32 s73, s70, 0x3fb8aa3b
	s_mul_i32 s72, s34, s39
	s_add_i32 s42, s42, s16
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mul_i32 s43, s33, s66
	scratch_store_b32 off, v35, off offset:24 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_and_b32 v33, 60, v106
	v_cndmask_b32_e64 v34, 0x104, 0, s11
	v_dual_mov_b32 v255, 0 :: v_dual_and_b32 v36, 0x180, v77
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_and_b32 v37, 2, v0
	v_mov_b32_e32 v236, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v98, v34, v33
	v_lshlrev_b32_e32 v33, 1, v149
	v_lshl_or_b32 v34, v149, 7, v150
	v_or3_b32 v217, v193, v196, v192
	v_mov_b32_e32 v253, 0xff800000
	v_or_b32_e32 v35, v98, v131
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v194, off offset:32
	scratch_store_b32 off, v193, off offset:28
	v_or3_b32 v99, v34, v197, v33
	v_and_b32_e32 v34, 52, v214
	v_xor_b32_e32 v33, 0x208, v35
	v_xor_b32_e32 v38, 0x410, v35
	v_xor_b32_e32 v35, 0x618, v35
	v_xor_b32_e32 v74, 24, v99
	v_or3_b32 v34, v34, v37, v36
	v_xor_b32_e32 v36, 12, v99
	v_xor_b32_e32 v37, 16, v99
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v33
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v224, 0, v74
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s71, v159, v[105:106]
	v_or3_b32 v190, v34, v194, v191
	v_xor_b32_e32 v34, 28, v99
	v_xor_b32_e32 v33, 0x90, v217
	v_xor_b32_e32 v39, 4, v99
	v_xor_b32_e32 v40, 8, v99
	v_xor_b32_e32 v41, 20, v99
	v_mad_u64_u32 v[75:76], null, s33, 12, v[74:75]
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v35
	v_dual_mov_b32 v252, 0 :: v_dual_add_nc_u32 v221, 0, v36
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_add_nc_u32 v222, 0, v37
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v225, 0, v34
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v226, 0, v33
	v_xor_b32_e32 v33, 0x120, v217
	v_xor_b32_e32 v34, 0x1b0, v217
	v_xor_b32_e32 v35, 16, v190
	v_xor_b32_e32 v36, 32, v190
	v_xor_b32_e32 v37, 48, v190
	v_mad_u64_u32 v[76:77], null, s33, 20, v[74:75]
	v_mad_u64_u32 v[77:78], null, s33, 24, v[74:75]
	v_mad_u64_u32 v[78:79], null, s33, 28, v[74:75]
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v38
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v219, 0, v39
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v40
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v223, 0, v41
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_add_nc_u32 v227, 0, v33
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v228, 0, v34
	v_dual_mov_b32 v214, 0xff800000 :: v_dual_add_nc_u32 v229, 0, v35
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v230, 0, v36
	v_add_nc_u32_e32 v231, 0, v37
	v_mov_b32_e32 v251, 0xff800000
	v_mov_b32_e32 v249, 0xff800000
	v_mov_b32_e32 v97, 0xff800000
	v_mov_b32_e32 v195, 0xff800000
	v_mov_b32_e32 v33, 0
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
	v_lshl_add_u32 v171, s33, 4, v74
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s12, s47, s12
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v172, s33, 2, v74
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v79, s12, v74, 2
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v174, s33, 3, v74
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v171, s12, v171, 2
	v_add_lshl_u32 v173, s12, v76, 2
	v_add_lshl_u32 v172, s12, v172, 2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s78
	v_add_lshl_u32 v174, s12, v174, 2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s79
	v_cndmask_b32_e64 v173, 0x80000000, v173, s77
	v_cndmask_b32_e64 v172, 0x80000000, v172, s76
	s_clause 0x1
	buffer_load_b32 v79, v79, s[60:63], 0 offen
	buffer_load_b32 v171, v171, s[60:63], 0 offen
	v_add_lshl_u32 v175, s12, v77, 2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s74
	s_clause 0x1
	buffer_load_b32 v172, v172, s[60:63], 0 offen
	buffer_load_b32 v173, v173, s[60:63], 0 offen
	v_add_lshl_u32 v176, s12, v78, 2
	v_add_lshl_u32 v177, s12, v75, 2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s75
	s_clause 0x1
	buffer_load_b32 v174, v174, s[60:63], 0 offen
	buffer_load_b32 v175, v175, s[60:63], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s55
	v_cndmask_b32_e64 v177, 0x80000000, v177, s54
	s_clause 0x1
	buffer_load_b32 v176, v176, s[60:63], 0 offen
	buffer_load_b32 v177, v177, s[60:63], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s51, s51, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v246, 0, v99
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v178, 0xff800000, v79, s78
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v171, 0xff800000, v171, s79
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v172, 0xff800000, v172, s76
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v79, v161, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v240, 0x3fb8aa3b, v178 :: v_dual_mul_f32 v241, 0x3fb8aa3b, v171
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v173, 0xff800000, v173, s77
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v171
	v_cmp_neq_f32_e64 s13, 0xff800000, v178
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v174, 0xff800000, v174, s74
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v79, v240, v241 offset1:32
	v_dual_mul_f32 v240, 0x3fb8aa3b, v172 :: v_dual_mul_f32 v241, 0x3fb8aa3b, v173
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v175, 0xff800000, v175, s75
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s12, s79, vcc_lo
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v176, 0xff800000, v176, s55
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v177, 0xff800000, v177, s54
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v215, v240, v241 offset1:32
	v_dual_mul_f32 v240, 0x3fb8aa3b, v174 :: v_dual_mul_f32 v241, 0x3fb8aa3b, v175
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v173
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s18, s78, s13
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v172
	v_cmp_neq_f32_e64 s13, 0xff800000, v175
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v216, v240, v241 offset1:32
	v_dual_mul_f32 v240, 0x3fb8aa3b, v177 :: v_dual_mul_f32 v241, 0x3fb8aa3b, v176
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 vcc_lo, s77, s15
	s_and_b32 s15, s76, s14
	s_and_b32 s14, s75, s13
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v174
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v218, v240, v241 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v247, v246
	ds_load_b32 v248, v219
	ds_load_b32 v245, v220
	ds_load_b32 v244, v221
	ds_load_b32 v243, v222
	ds_load_b32 v242, v223
	ds_load_b32 v241, v224
	ds_load_b32 v240, v225
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s20, 0xff800000, v176
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s17, s74, s16
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v177
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s13, s55, s20
	s_and_b32 s16, s54, s19
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_lt_i32 s51, s69
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v247, s73, v34 :: v_dual_fmac_f32 v248, s73, v35
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v34, 0, 1, s12
	v_cndmask_b32_e64 v35, 0, 1, s18
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v245, s73, v36 :: v_dual_fmac_f32 v244, s73, v37
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v36, 0, 1, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v243, s73, v38 :: v_dual_fmac_f32 v242, s73, v39
	v_dual_fmac_f32 v241, s73, v40 :: v_dual_fmac_f32 v240, s73, v41
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v34.h, 8, v35.l
	v_add_nc_u32_e32 v35, 0, v217
	v_or_b16 v34.h, v36.l, v34.h
	ds_store_b16 v35, v34
	v_cndmask_b32_e64 v35, 0, 1, s14
	v_cndmask_b32_e64 v36, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s17
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s13
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v35.l, v36.l, v35.l
	ds_store_b16_d16_hi v226, v34
	ds_store_b16 v227, v34
	ds_store_b16 v228, v35
	v_add_nc_u32_e32 v35, 0, v190
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v35 offset:64
	ds_load_u8_d16 v35, v229
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v231 offset:64
	ds_load_u8_d16 v36, v230 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v229 offset:64
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v34.l
	ds_load_u8_d16 v34, v230
	ds_load_u8_d16 v37, v231
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v38, 0xff800000, v247, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v246, v38
	v_cndmask_b32_e64 v38, 0xff800000, v248, s19
	ds_store_b32 v219, v38
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v38, 0xff800000, v245, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v220, v38
	v_cndmask_b32_e64 v37, 0xff800000, v244, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v221, v37
	v_cndmask_b32_e64 v34, 0xff800000, v243, s19
	ds_store_b32 v222, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v242, s19
	ds_store_b32 v223, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v241, s19
	ds_store_b32 v224, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v240, s19
	ds_store_b32 v225, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v79 offset1:32
	ds_load_2addr_b32 v[171:172], v215 offset1:32
	ds_load_2addr_b32 v[173:174], v216 offset1:32
	ds_load_2addr_b32 v[175:176], v218 offset1:32
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v36, v34
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp192:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v37, v232, v232
	v_max_f32_e32 v232, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v232
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v34, 0, v34, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v253
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp199:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v37, v253, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v38, v37, v36
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v37, v34, v36 :: v_dual_sub_f32 v34, v253, v38
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v36, v171, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp203:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v34, 0, v34, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v255, v34
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v34, v171 :: v_dual_mov_b32 v255, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp210:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp212:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v36, v233, v233
	v_max_f32_e32 v233, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v36, v171, v233
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v251
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v36
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v39
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v39
.Ltmp219:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v39, v251, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v253, v38 :: v_dual_max_f32 v40, v39, v34
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v39, v36, v34 :: v_dual_sub_f32 v34, v251, v40
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v36, v173, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp223:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v34, 0, v34, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v39, v254, v34 :: v_dual_mov_b32 v34, v173
	v_mov_b32_e32 v254, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp226:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp227:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp230:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp231:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp232:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v36, v234, v234
	v_max_f32_e32 v234, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v36, v173, v234
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s17
.Ltmp233:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v36
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v41
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v41
.Ltmp239:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v41, v249, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v79, v41, v34 :: v_dual_mov_b32 v34, v36
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v41, v36, v34 :: v_dual_sub_f32 v34, v249, v79
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v36, v175, v175
	v_mov_b32_e32 v249, v79
.Ltmp243:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v34, 0, v34, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v192
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v41, v252, v34 :: v_dual_mov_b32 v34, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v252, v41
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
.Ltmp252:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v36, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v235, v36, v34
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v36, v175, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v36
	v_mov_b32_e32 v251, v40
	v_mov_b32_dpp v171, v171 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v171
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v171, v36
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v171
.Ltmp259:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v171, v192, v192
	v_dual_max_f32 v247, v171, v34 :: v_dual_mov_b32 v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v250, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp262:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v34, v192, v247
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v35, v35
	v_mov_b32_e32 v192, v247
.Ltmp264:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v34, 0, v34, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v250, v107, v34
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp273:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v36, v236, v236
	v_max_f32_e32 v236, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v236
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s12, 0xff800000, v194
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v194, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v245, v36, v34 :: v_dual_mov_b32 v34, v35
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v248, v35, v34
.Ltmp283:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v34, v194, v245 :: v_dual_max_f32 v35, v172, v172
	v_mov_b32_e32 v194, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v34, 0, v34, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v248, v193, v34
.Ltmp284:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v34, v172
	v_mov_b32_e32 v193, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp285:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v35, v34
.Ltmp286:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp287:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp288:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp289:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp290:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp291:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v34, v35 :: v_dual_max_f32 v35, v237, v237
.Ltmp292:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v237, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v172, v237
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v35, 0, v35, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp297:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v97, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp299:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v243, v36, v34 :: v_dual_mov_b32 v34, v35
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v246, v35, v34
.Ltmp302:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v34, v97, v243 :: v_dual_max_f32 v35, v174, v174
	v_mov_b32_e32 v97, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v246, v196, v34
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v34, v174
	v_mov_b32_e32 v196, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v35, v34
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp311:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v35, v238, v238
	v_max_f32_e32 v238, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v174, v238
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s14
.Ltmp312:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp313:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp315:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp316:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp317:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v214, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp318:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v240, v36, v34
.Ltmp319:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp320:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v244, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp321:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v34, v214, v240
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v176, v176
	v_mov_b32_e32 v214, v240
.Ltmp323:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v195
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v244, v149, v34
.Ltmp324:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v34, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v149, v244
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp325:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp326:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp327:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp328:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp329:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp330:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp332:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v35, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v239, v35, v34
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v176, v239
	v_mov_b32_e32 v107, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp333:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp335:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp336:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp337:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp339:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v36, v195, v195
	v_max_f32_e32 v242, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp340:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v34, v35
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp341:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v241, v35, v34
.Ltmp342:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v34, v195, v242 :: v_dual_mov_b32 v195, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v34, v34
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v241, v191, v34
	v_mov_b32_e32 v191, v241
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
	v_mad_u64_u32 v[34:35], null, s21, s35, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v35, s35, v34
	v_add_nc_u32_e32 v36, s35, v35
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v37, s35, v36
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v38, s35, v37
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s74
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v39, s35, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v40, 1, v39
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v39, s35, v39
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s75
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s76
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v41, s35, v39
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x3
	buffer_load_u16 v34, v34, s[56:59], 0 offen
	buffer_load_u16 v35, v35, s[56:59], 0 offen
	buffer_load_u16 v36, v36, s[56:59], 0 offen
	buffer_load_u16 v37, v37, s[56:59], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v79, s35, v41
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v171, s35, v79
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v79, 1, v79
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v172, s35, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v173, s35, v172
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v172, 1, v172
	v_lshlrev_b32_e32 v39, 1, v39
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v174, s35, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s77
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v175, s35, v174
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s78
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_lshlrev_b32 v174, 1, v174
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v176, s35, v175
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v171, 1, v171
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v177, 1, v176
	v_add_lshl_u32 v176, v176, s35, 1
	v_lshlrev_b32_e32 v173, 1, v173
	v_cndmask_b32_e32 v171, 0x80000000, v171, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v172, 0x80000000, v172 :: v_dual_lshlrev_b32 v175, 1, v175
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v173, 0x80000000, v173, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v174, 0x80000000, v174, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v177, 0x80000000, v177, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v176, 0x80000000, v176, vcc_lo
	s_clause 0xb
	buffer_load_u16 v79, v79, s[56:59], 0 offen
	buffer_load_u16 v171, v171, s[56:59], 0 offen
	buffer_load_u16 v172, v172, s[56:59], 0 offen
	buffer_load_u16 v173, v173, s[56:59], 0 offen
	buffer_load_u16 v38, v38, s[56:59], 0 offen
	buffer_load_u16 v40, v40, s[56:59], 0 offen
	buffer_load_u16 v39, v39, s[56:59], 0 offen
	buffer_load_u16 v41, v41, s[56:59], 0 offen
	buffer_load_u16 v174, v174, s[56:59], 0 offen
	buffer_load_u16 v175, v175, s[56:59], 0 offen
	buffer_load_u16 v177, v177, s[56:59], 0 offen
	buffer_load_u16 v176, v176, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v151, v34
	s_waitcnt vmcnt(14)
	ds_store_b16 v152, v35
	s_waitcnt vmcnt(13)
	ds_store_b16 v153, v36
	s_waitcnt vmcnt(12)
	ds_store_b16 v154, v37
	s_waitcnt vmcnt(11)
	ds_store_b16 v151, v79 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v152, v171 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v153, v172 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b16 v154, v173 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v155, v38
	s_waitcnt vmcnt(6)
	ds_store_b16 v156, v40
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v39
	s_waitcnt vmcnt(4)
	ds_store_b16 v158, v41
	s_waitcnt vmcnt(3)
	ds_store_b16 v155, v174 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v156, v175 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v157, v177 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v176 offset:1024
	v_add_nc_u32_e32 v34, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v35, v33
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[240:243], v34
	v_add_nc_u32_e32 v34, 0, v141
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[244:247], v34
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v79, 0, v142
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[240:247], v[1:8], v[34:41]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[240:243], v79
	v_add_nc_u32_e32 v79, 0, v143
	ds_load_b128 v[244:247], v79
	v_add_nc_u32_e32 v79, 0, v144
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[240:247], v[9:16], v[34:41]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[240:243], v79
	v_add_nc_u32_e32 v79, 0, v187
	ds_load_b128 v[244:247], v79
	v_add_nc_u32_e32 v79, 0, v188
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[240:247], v[17:24], v[34:41]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[240:243], v79
	v_add_nc_u32_e32 v79, 0, v189
	ds_load_b128 v[244:247], v79
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v79, s51, v159
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s12, s39, v79
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s78, s0, s12
	s_and_b32 s76, s1, s12
	s_and_b32 s74, s5, s12
	s_and_b32 s54, s6, s12
	s_and_b32 s79, s7, s12
	s_and_b32 s77, s8, s12
	s_and_b32 s75, s9, s12
	s_and_b32 s55, s10, s12
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[240:247], v[25:32], v[34:41]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v79, v162
	v_cmp_le_i32_e64 s12, v79, v163
	v_cmp_le_i32_e64 s13, v79, v164
	v_cmp_le_i32_e64 s14, v79, v165
	v_cmp_le_i32_e64 s15, v79, v166
	v_cmp_le_i32_e64 s16, v79, v167
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s19, vcc_lo, s78
	s_and_b32 s12, s12, s76
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s17, v79, v169
	v_cmp_le_i32_e64 s18, v79, v170
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
	scratch_load_b32 v171, off, off         ; 4-byte Folded Reload
	v_cmp_ge_i32_e32 vcc_lo, v79, v168
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s19, v79, v179
	v_cmp_le_i32_e64 s20, v79, v180
	v_cmp_le_i32_e64 s21, v79, v181
	v_cmp_le_i32_e64 s22, v79, v182
	v_cmp_le_i32_e64 s23, v79, v183
	v_cmp_le_i32_e64 s24, v79, v184
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s19, vcc_lo, s19
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s25, v79, v185
	v_cmp_le_i32_e64 s26, v79, v186
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s19, s19, s78
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s19, s19, exec_lo
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v79, v171
	scratch_load_b32 v171, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s12, s12, s20
	s_and_not1_b32 s20, s78, exec_lo
	s_and_b32 s12, s12, s76
	s_or_b32 s78, s20, s19
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s54, exec_lo
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v79, v171
	scratch_load_b32 v171, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s13, s13, s21
	s_and_not1_b32 s21, s76, exec_lo
	s_and_b32 s13, s13, s74
	s_or_b32 s76, s21, s12
	s_and_not1_b32 s12, s74, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s74, s12, s13
	s_and_not1_b32 s12, s79, exec_lo
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v79, v171
	scratch_load_b32 v171, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s54
	s_and_b32 s14, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s19, s14
	s_and_not1_b32 s14, s77, exec_lo
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v79, v171
	scratch_load_b32 v171, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s79
	s_and_b32 s13, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s79, s12, s13
	s_and_not1_b32 s12, s75, exec_lo
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v79, v171
	scratch_load_b32 v171, off, off offset:20 ; 4-byte Folded Reload
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
	v_cmp_ge_i32_e64 s17, v79, v171
	scratch_load_b32 v171, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s75
	s_and_b32 s13, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s75, s12, s13
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v79, v171
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s55, s14, s15
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v243, 0xff800000
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_mov_b32 v245, 0xff800000
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v40, 0xff800000
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_mov_b32 v38, 0xff800000
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow288
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v193, off, off offset:28
	scratch_load_b32 v194, off, off offset:32
	v_lshlrev_b32_e32 v74, 5, v0
	v_and_b32_e32 v252, 16, v0
	v_lshlrev_b32_e32 v195, 4, v0
	v_lshrrev_b32_e32 v191, 5, v89
	v_lshlrev_b32_e32 v192, 3, v159
	v_lshrrev_b32_e32 v196, 4, v89
	v_lshlrev_b32_e32 v214, 2, v0
	v_and_b32_e32 v149, 14, v0
	v_and_b32_e32 v76, 48, v0
.LBB0_16:                               ; %Flow290
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_and_b32_e32 v75, 31, v0
	v_lshrrev_b32_e32 v190, 1, v89
.Ltmp343:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v89, v62, v90 :: v_dual_add_f32 v92, v65, v92
	v_add_f32_e32 v90, v63, v91
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp344:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s66, v75
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s12, 0x800000, v37
	v_cmp_gt_f32_e64 s13, 0x800000, v39
	v_cmp_gt_f32_e64 s14, 0x800000, v41
.Ltmp345:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v99, v72, v96 :: v_dual_add_f32 v34, v59, v102
.Ltmp346:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s38, v33
.Ltmp347:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v58, v101 :: v_dual_add_f32 v36, v61, v208
	v_dual_add_f32 v101, v54, v213 :: v_dual_add_f32 v102, v55, v207
.Ltmp348:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v54, 0, 0x42000000, s12
	v_cndmask_b32_e64 v55, 0, 32, s12
	v_cndmask_b32_e64 v58, 0, 0x42000000, s13
	v_cndmask_b32_e64 v59, 0, 32, s13
	v_cndmask_b32_e64 v61, 0, 32, s14
	v_cmp_gt_f32_e64 s12, 0x800000, v250
	v_cmp_gt_f32_e64 s13, 0x800000, v248
.Ltmp349:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v91, v64, v93 :: v_dual_add_f32 v98, v71, v95
	v_dual_add_f32 v35, v60, v206 :: v_dual_add_f32 v96, v69, v212
	v_dual_add_f32 v95, v68, v211 :: v_dual_add_f32 v104, v57, v104
.Ltmp350:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v60, 0, 0x42000000, s14
.Ltmp351:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v103, v56, v103 :: v_dual_add_f32 v50, v50, v205
.Ltmp352:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v55, v37, v55
	v_ldexp_f32 v56, v39, v59
	v_ldexp_f32 v57, v41, v61
	v_cndmask_b32_e64 v59, 0, 0x42000000, s12
	v_cndmask_b32_e64 v61, 0, 32, s12
	v_cndmask_b32_e64 v62, 0, 0x42000000, s13
	v_cmp_gt_f32_e64 s12, 0x800000, v246
	v_cndmask_b32_e64 v63, 0, 32, s13
	v_cmp_gt_f32_e64 s13, 0x800000, v244
	v_cmp_gt_f32_e64 s14, 0x800000, v241
.Ltmp353:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v97, v70, v94 :: v_dual_add_f32 v100, v73, v100
	v_dual_add_f32 v93, v66, v209 :: v_dual_add_f32 v94, v67, v210
.Ltmp354:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v55, v55
	v_cndmask_b32_e64 v65, 0, 32, s12
	v_cndmask_b32_e64 v67, 0, 32, s13
	v_cndmask_b32_e64 v69, 0, 32, s14
	v_ldexp_f32 v61, v250, v61
	v_log_f32_e32 v56, v56
	v_log_f32_e32 v57, v57
	v_ldexp_f32 v63, v248, v63
	v_ldexp_f32 v65, v246, v65
	v_ldexp_f32 v67, v244, v67
	v_ldexp_f32 v69, v241, v69
	v_log_f32_e32 v61, v61
	v_log_f32_e32 v63, v63
	v_log_f32_e32 v65, v65
	v_log_f32_e32 v67, v67
	v_log_f32_e32 v69, v69
	v_sub_f32_e32 v54, v55, v54
	v_cndmask_b32_e64 v64, 0, 0x42000000, s12
	v_cndmask_b32_e64 v66, 0, 0x42000000, s13
	v_cndmask_b32_e64 v68, 0, 0x42000000, s14
	v_dual_sub_f32 v55, v56, v58 :: v_dual_sub_f32 v56, v57, v60
	v_dual_sub_f32 v57, v61, v59 :: v_dual_add_f32 v38, v38, v54
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v37
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v58, v63, v62 :: v_dual_sub_f32 v59, v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v60, v67, v66 :: v_dual_sub_f32 v61, v69, v68
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v40, v40, v55 :: v_dual_add_f32 v55, v247, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v38, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v39
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v54, v79, v56
	v_dual_add_f32 v56, v245, v58 :: v_dual_add_f32 v57, v243, v59
	v_add_f32_e32 v59, v242, v61
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v38, 0, v40, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v41
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v58, v240, v60 :: v_dual_and_b32 v41, 0x60, v74
.Ltmp355:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v176, v47, v202 :: v_dual_and_b32 v107, 12, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp356:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v39, 0, v54, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v250
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v41, 0, v41
.Ltmp357:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v53, v53, v145 :: v_dual_and_b32 v60, 28, v0
	v_dual_add_f32 v51, v51, v198 :: v_dual_add_f32 v52, v52, v204
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp358:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v40, 0, v55, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v248
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s11, vcc_lo
	s_ashr_i32 s16, s46, 4
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v54, 0, v56, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v246
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s13, s29, 0xffff
	s_mov_b32 s14, s46
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v55, 0, v57, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v244
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_mov_b32 s15, s47
.Ltmp359:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v171, v42, v147 :: v_dual_add_f32 v172, v43, v148
	v_dual_add_f32 v173, v44, v199 :: v_dual_add_f32 v174, v45, v200
.Ltmp360:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v56, 0, v58, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v241
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v58, v76, 1, 0
.Ltmp361:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v175, v46, v201
	v_dual_add_f32 v177, v48, v203 :: v_dual_add_f32 v178, v49, v146
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp362:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v57, 0, v59, s12
	v_add3_u32 v59, v41, v190, v107
	ds_store_b128 v58, v[37:40]
	ds_store_b128 v58, v[54:57] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v198, v59
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v58, v[37:40]
	ds_store_b128 v58, v[54:57] offset:16
	v_add_lshl_u32 v38, s27, v75, 2
	v_add_nc_u32_e32 v41, v41, v60
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s12, s28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	ds_load_b32 v37, v41
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v40, 0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v39, v122, 16, 1
	v_bfe_u32 v41, v121, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_bfe_u32 v42, v117, 16, 1
	v_bfe_u32 v43, v115, 16, 1
	v_bfe_u32 v45, v113, 16, 1
	v_bfe_u32 v46, v109, 16, 1
	v_bfe_u32 v48, v88, 16, 1
	v_add3_u32 v42, v117, v42, 0x7fff
	v_add3_u32 v43, v115, v43, 0x7fff
	v_add3_u32 v45, v113, v45, 0x7fff
	v_add3_u32 v46, v109, v46, 0x7fff
	v_add3_u32 v48, v88, v48, 0x7fff
	v_bfe_u32 v49, v84, 16, 1
	v_bfe_u32 v55, v129, 16, 1
	v_bfe_u32 v56, v82, 16, 1
	v_bfe_u32 v58, v80, 16, 1
	v_bfe_u32 v59, v124, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v37, v38, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v37, v75, 2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[89:92]
	ds_store_b128 v40, v[97:100] offset:16
	ds_store_b128 v40, v[33:36] offset:32
	ds_store_b128 v40, v[93:96] offset:48
	ds_store_b128 v40, v[101:104] offset:64
	ds_store_b128 v40, v[50:53] offset:80
	ds_store_b128 v40, v[171:174] offset:96
	ds_store_b128 v40, v[175:178] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v37, v37
	s_and_b32 s13, s31, 0xffff
	s_mov_b32 s12, s30
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v49, v84, v49, 0x7fff
	v_add3_u32 v55, v129, v55, 0x7fff
	v_add3_u32 v56, v82, v56, 0x7fff
	v_bfe_u32 v60, v123, 16, 1
	v_add3_u32 v59, v124, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v60, v123, v60, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v37, v38, s[12:15], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v37, v120, 16, 1
	v_add3_u32 v38, v122, v39, 0x7fff
	v_add3_u32 v39, v121, v41, 0x7fff
	v_cmp_o_f32_e64 s12, v121, v121
	v_cmp_o_f32_e64 s13, v120, v120
	v_add3_u32 v41, v120, v37, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s12
	v_bfe_u32 v39, v119, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s13
	v_bfe_u32 v41, v118, 16, 1
	v_cmp_o_f32_e64 s12, v119, v119
	v_cmp_o_f32_e64 s13, v118, v118
	v_add3_u32 v39, v119, v39, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v41, v118, v41, 0x7fff
	v_bfe_u32 v42, v116, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s12
	v_cmp_o_f32_e64 s12, v115, v115
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s13
	v_bfe_u32 v41, v114, 16, 1
	v_cmp_o_f32_e64 s13, v114, v114
	v_add3_u32 v42, v116, v42, 0x7fff
	v_cmp_o_f32_e64 s14, v124, v124
	v_cmp_o_f32_e64 s15, v123, v123
	v_add3_u32 v44, v114, v41, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s12
	v_bfe_u32 v43, v112, 16, 1
	v_cmp_o_f32_e64 s12, v112, v112
	v_cndmask_b16 v41.l, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v42.l, 0x7fff, v44.h, s13
	v_bfe_u32 v44, v111, 16, 1
	v_add3_u32 v43, v112, v43, 0x7fff
	v_cmp_o_f32_e64 s13, v111, v111
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v44, v111, v44, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s12
	v_cmp_o_f32_e64 s12, v109, v109
	v_cndmask_b16 v42.h, 0x7fff, v45.h, vcc_lo
	v_bfe_u32 v45, v110, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s13
	v_bfe_u32 v44, v108, 16, 1
	v_cmp_o_f32_e64 s13, v108, v108
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_add3_u32 v45, v110, v45, 0x7fff
	s_barrier
	v_add3_u32 v47, v108, v44, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s12
	v_bfe_u32 v46, v87, 16, 1
	v_cmp_o_f32_e64 s12, v87, v87
	v_cndmask_b16 v44.l, 0x7fff, v45.h, vcc_lo
	v_cndmask_b16 v45.l, 0x7fff, v47.h, s13
	v_bfe_u32 v47, v86, 16, 1
	v_add3_u32 v46, v87, v46, 0x7fff
	v_cmp_o_f32_e64 s13, v86, v86
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v86, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s12
	v_cmp_o_f32_e64 s12, v84, v84
	v_cndmask_b16 v45.h, 0x7fff, v48.h, vcc_lo
	v_bfe_u32 v48, v85, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s13
	v_bfe_u32 v47, v130, 16, 1
	v_cmp_o_f32_e64 s13, v130, v130
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_add3_u32 v48, v85, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v54, v130, v47, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s12
	v_bfe_u32 v49, v128, 16, 1
	v_cmp_o_f32_e64 s12, v128, v128
	v_cndmask_b16 v47.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v48.l, 0x7fff, v54.h, s13
	v_bfe_u32 v54, v127, 16, 1
	v_add3_u32 v49, v128, v49, 0x7fff
	v_cmp_o_f32_e64 s13, v127, v127
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v54, v127, v54, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s12
	v_cmp_o_f32_e64 s12, v82, v82
	v_cndmask_b16 v48.h, 0x7fff, v55.h, vcc_lo
	v_bfe_u32 v55, v83, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v54.h, s13
	v_bfe_u32 v54, v81, 16, 1
	v_cmp_o_f32_e64 s13, v81, v81
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_add3_u32 v55, v83, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v57, v81, v54, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v56.h, s12
	v_bfe_u32 v56, v126, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cndmask_b16 v55.l, 0x7fff, v57.h, s13
	v_add3_u32 v57, v80, v58, 0x7fff
	v_bfe_u32 v58, v125, 16, 1
	v_add3_u32 v56, v126, v56, 0x7fff
	v_cmp_o_f32_e64 s12, v126, v126
	v_cmp_o_f32_e64 s13, v125, v125
	v_cndmask_b16 v55.h, 0x7fff, v57.h, vcc_lo
	v_add3_u32 v58, v125, v58, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s14
	v_cndmask_b16 v57.h, 0x7fff, v60.h, s15
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s12
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s50
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cndmask_b16 v56.h, 0x7fff, v58.h, s13
	ds_store_b16 v151, v37
	ds_store_b16 v151, v42 offset:1024
	ds_store_b16 v151, v46 offset:2048
	ds_store_b16 v151, v54 offset:3072
	ds_store_b16_d16_hi v152, v37
	ds_store_b16_d16_hi v152, v42 offset:1024
	ds_store_b16_d16_hi v152, v46 offset:2048
	ds_store_b16_d16_hi v152, v54 offset:3072
	ds_store_b16 v153, v38
	ds_store_b16 v153, v43 offset:1024
	ds_store_b16 v153, v47 offset:2048
	ds_store_b16 v153, v55 offset:3072
	ds_store_b16_d16_hi v154, v38
	ds_store_b16_d16_hi v154, v43 offset:1024
	ds_store_b16_d16_hi v154, v47 offset:2048
	ds_store_b16_d16_hi v154, v55 offset:3072
	ds_store_b16 v155, v39
	ds_store_b16 v155, v44 offset:1024
	ds_store_b16 v155, v48 offset:2048
	ds_store_b16 v155, v56 offset:3072
	ds_store_b16_d16_hi v156, v39
	ds_store_b16_d16_hi v156, v44 offset:1024
	ds_store_b16_d16_hi v156, v48 offset:2048
	ds_store_b16_d16_hi v156, v56 offset:3072
	ds_store_b16 v157, v41
	ds_store_b16 v157, v45 offset:1024
	ds_store_b16 v157, v49 offset:2048
	ds_store_b16 v157, v57 offset:3072
	ds_store_b16_d16_hi v158, v41
	ds_store_b16_d16_hi v158, v45 offset:1024
	ds_store_b16_d16_hi v158, v49 offset:2048
	ds_store_b16_d16_hi v158, v57 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v133
	ds_load_b128 v[61:64], v134
	ds_load_b128 v[65:68], v135
	ds_load_b128 v[69:72], v136
	ds_load_b128 v[73:76], v137
	ds_load_b128 v[77:80], v138
	ds_load_b128 v[81:84], v139
	ds_load_b128 v[85:88], v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[89:92]
	ds_store_b128 v40, v[97:100] offset:16
	ds_store_b128 v40, v[33:36] offset:32
	ds_store_b128 v40, v[93:96] offset:48
	ds_store_b128 v40, v[101:104] offset:64
	ds_store_b128 v40, v[50:53] offset:80
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v96, v40
	v_mov_b32_e32 v95, v40
	v_mov_b32_e32 v94, v40
	v_mov_b32_e32 v93, v40
	v_mov_b32_e32 v92, v40
	v_mov_b32_e32 v91, v40
	v_mov_b32_e32 v90, v40
	v_mov_b32_e32 v89, v40
	ds_store_b128 v40, v[171:174] offset:96
	ds_store_b128 v40, v[175:178] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_23
; %bb.17:                               ; %.lr.ph81
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_add_i32 s12, s67, s67
	v_dual_mov_b32 v42, 0x5410 :: v_dual_lshlrev_b32 v33, 2, v159
	v_add3_u32 v199, s12, s67, v0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[145:146], null, s71, v159, v[105:106]
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v34, 4, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v43, 0x7632 :: v_dual_add_nc_u32 v200, s67, v199
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v33, 0, v33, v132
	v_cmp_eq_u32_e32 vcc_lo, 0, v252
	v_dual_mov_b32 v96, v97 :: v_dual_and_b32 v45, 52, v214
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[146:147], null, s33, 12, v[145:146]
	v_dual_mov_b32 v90, v97 :: v_dual_and_b32 v35, 60, v106
	v_cndmask_b32_e64 v36, 0x104, 0, s11
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v205, v33
	v_dual_cndmask_b32 v42, 0x1054, v42 :: v_dual_lshlrev_b32 v33, 1, v149
	v_cndmask_b32_e32 v43, 0x3276, v43, vcc_lo
	s_waitcnt vmcnt(0)
	v_and_or_b32 v46, v0, 2, v194
	v_lshl_or_b32 v45, v107, 5, v45
	v_xor_b32_e32 v207, v36, v35
	v_lshl_or_b32 v35, v149, 7, v150
	v_or3_b32 v192, v193, v196, v192
	v_lshl_or_b32 v42, v42, 8, v42
	v_or3_b32 v191, v46, v191, v45
	v_add_nc_u32_e32 v196, 0, v34
	v_lshl_or_b32 v43, v43, 8, v43
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[147:148], null, s33, 20, v[145:146]
	v_mad_u64_u32 v[148:149], null, s33, 24, v[145:146]
	v_mad_u64_u32 v[149:150], null, s33, 28, v[145:146]
	v_or_b32_e32 v36, v207, v131
	v_or3_b32 v150, v35, v197, v33
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v42, 0x540054, v42
	v_and_b32_e32 v43, 0x760076, v43
	v_xor_b32_e32 v50, 32, v191
	v_dual_mov_b32 v92, v97 :: v_dual_add_nc_u32 v201, s67, v200
	v_xor_b32_e32 v33, 0x208, v36
	v_xor_b32_e32 v35, 0x410, v36
	v_xor_b32_e32 v36, 0x618, v36
	v_xor_b32_e32 v37, 4, v150
	v_xor_b32_e32 v38, 8, v150
	v_xor_b32_e32 v39, 12, v150
	v_xor_b32_e32 v40, 16, v150
	v_xor_b32_e32 v41, 20, v150
	v_xor_b32_e32 v44, 24, v150
	v_xor_b32_e32 v47, 28, v150
	v_xor_b32_e32 v48, 0x90, v192
	v_xor_b32_e32 v45, 0x120, v192
	v_xor_b32_e32 v46, 0x1b0, v192
	v_xor_b32_e32 v49, 16, v191
	v_lshl_or_b32 v42, v42, 4, v42
	v_xor_b32_e32 v51, 48, v191
	v_add_nc_u32_e32 v221, 0, v50
	v_mov_b32_e32 v50, v97
	v_lshl_or_b32 v43, v43, 4, v43
	v_lshl_add_u32 v202, s33, 2, v145
	v_dual_mov_b32 v94, v97 :: v_dual_add_nc_u32 v203, s67, v201
	v_lshl_add_u32 v204, s33, 3, v145
	v_lshl_add_u32 v206, s33, 4, v145
	v_dual_mov_b32 v52, v97 :: v_dual_and_b32 v193, 0x5040504, v42
	v_dual_mov_b32 v91, v97 :: v_dual_and_b32 v194, 0x7060706, v43
	v_dual_mov_b32 v54, v97 :: v_dual_add_nc_u32 v195, 0, v195
	v_dual_mov_b32 v56, v97 :: v_dual_add_nc_u32 v197, 0, v33
	v_dual_mov_b32 v93, v97 :: v_dual_add_nc_u32 v208, 0, v35
	v_dual_mov_b32 v42, v97 :: v_dual_add_nc_u32 v209, 0, v36
	v_dual_mov_b32 v95, v97 :: v_dual_add_nc_u32 v210, 0, v37
	v_add_nc_u32_e32 v211, 0, v38
	v_add_nc_u32_e32 v212, 0, v39
	v_add_nc_u32_e32 v213, 0, v40
	v_add_nc_u32_e32 v214, 0, v41
	v_add_nc_u32_e32 v215, 0, v44
	v_dual_mov_b32 v53, v97 :: v_dual_add_nc_u32 v216, 0, v47
	v_dual_mov_b32 v34, v97 :: v_dual_add_nc_u32 v217, 0, v48
	v_dual_mov_b32 v55, v97 :: v_dual_add_nc_u32 v218, 0, v45
	v_dual_mov_b32 v36, v97 :: v_dual_add_nc_u32 v219, 0, v46
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v220, 0, v49
	v_dual_mov_b32 v43, v97 :: v_dual_add_nc_u32 v222, 0, v51
	v_dual_mov_b32 v40, v97 :: v_dual_add_nc_u32 v223, 0, v141
	v_dual_mov_b32 v45, v97 :: v_dual_add_nc_u32 v224, 0, v142
	v_add_nc_u32_e32 v225, 0, v143
	v_dual_mov_b32 v47, v97 :: v_dual_add_nc_u32 v226, 0, v144
	v_add_nc_u32_e32 v187, 0, v187
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v188, 0, v188
	v_add_nc_u32_e32 v189, 0, v189
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v51, v97
	v_mov_b32_e32 v44, v97
	v_mov_b32_e32 v46, v97
	v_mov_b32_e32 v48, v97
	v_mov_b32_e32 v35, v97
	v_mov_b32_e32 v37, v97
	v_mov_b32_e32 v38, v97
	v_mov_b32_e32 v39, v97
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s56, s16, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s57, s34, s16
	s_and_b32 s41, s41, 0xffff
	s_add_i32 s58, s42, s43
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s59, s34, s56
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s60, 0x76543210
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_branch .LBB0_19
.LBB0_18:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s19, s68, s71
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v172, v161, v207
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s19, s58, s19
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v236.h, 0
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v98, s19, v145, 2
	v_add_lshl_u32 v99, s19, v206, 2
	v_add_lshl_u32 v100, s19, v202, 2
	v_add_lshl_u32 v101, s19, v147, 2
	v_add_lshl_u32 v102, s19, v204, 2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s81
	v_cndmask_b32_e64 v99, 0x80000000, v99, s82
	v_cndmask_b32_e64 v100, 0x80000000, v100, s79
	v_cndmask_b32_e64 v101, 0x80000000, v101, s80
	v_add_lshl_u32 v103, s19, v148, 2
	s_clause 0x3
	buffer_load_b32 v98, v98, s[44:47], 0 offen
	buffer_load_b32 v99, v99, s[44:47], 0 offen
	buffer_load_b32 v100, v100, s[44:47], 0 offen
	buffer_load_b32 v101, v101, s[44:47], 0 offen
	v_add_lshl_u32 v104, s19, v149, 2
	v_add_lshl_u32 v171, s19, v146, 2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s54
	v_cndmask_b32_e64 v103, 0x80000000, v103, s55
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v104, 0x80000000, v104, s51
	v_cndmask_b32_e64 v171, 0x80000000, v171, s50
	s_clause 0x3
	buffer_load_b32 v102, v102, s[44:47], 0 offen
	buffer_load_b32 v103, v103, s[44:47], 0 offen
	buffer_load_b32 v104, v104, s[44:47], 0 offen
	buffer_load_b32 v171, v171, s[44:47], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v98, 0xff800000, v98, s81
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v99, 0xff800000, v99, s82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v98
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v172, v98, v99 offset1:32
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v98, 0xff800000, v100, s79
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v99, 0xff800000, v101, s80
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s19, s81, s19
	s_and_b32 s22, s82, vcc_lo
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v101, 0xff800000, v103, s55
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s20, 0xff800000, v98
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v197, v98, v99 offset1:32
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v98, 0, 1, s22
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s21, 0xff800000, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v99, 0, 1, s19
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v101
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_add_nc_u32_e32 v103, 0, v150
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v98.l, 8, v98.l
	s_and_b32 s19, s80, s21
	s_and_b32 s22, s55, vcc_lo
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s55, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v98.l, v99.l, v98.l
	v_cndmask_b32_e64 v99, 0, 1, s19
	s_and_b32 s19, s79, s20
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v98.h, 8, v99.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v99, 0xff800000, v102, s54
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v102, 0xff800000, v104, s51
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v98.h, v100.l, v98.h
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v100, 0xff800000, v171, s50
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v208, v99, v101 offset1:32
	ds_store_2addr_b32 v209, v100, v102 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v228, v103
	ds_load_b32 v229, v210
	ds_load_b32 v230, v211
	ds_load_b32 v231, v212
	ds_load_b32 v232, v213
	ds_load_b32 v233, v214
	ds_load_b32 v234, v215
	ds_load_b32 v235, v216
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v103, 0, v192
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v99, 0, 1, s22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v103, v98
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s21, 0xff800000, v102
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_mov_b16_e32 v98.l, v99.l
	s_and_b32 s19, s54, s19
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s20, 0xff800000, v100
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v99, 0, 1, s19
	s_and_b32 s19, s51, s21
	v_lshlrev_b16 v98.l, 8, v98.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	s_mov_b32 s51, s47
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v103, s67, v203
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s54, s46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v98.l, v99.l, v98.l
	v_cndmask_b32_e64 v99, 0, 1, s19
	s_and_b32 s19, s50, s20
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s50, s46
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v100, 0, 1, s19
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s19, s68, 1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v99.l, 8, v99.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s19, s56
	s_cselect_b32 s21, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s20, s19, s59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v99.l, v100.l, v99.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s20, s20, s67
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v217, v98
	ds_store_b16 v218, v98
	ds_store_b16 v219, v99
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v98, s20, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v100, s20, v200
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v99, 0x80000000, v98, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v98, s67, v98
	v_add_nc_u32_e32 v101, s20, v201
	v_add_nc_u32_e32 v102, s20, v203
	v_add_nc_u32_e32 v103, s20, v103
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v99, v99, s[48:51], 0 offen
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v104, s67, v98
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	s_clause 0x5
	buffer_load_u8 v171, v100, s[48:51], 0 offen
	buffer_load_u8 v172, v101, s[48:51], 0 offen
	buffer_load_u8 v173, v102, s[48:51], 0 offen
	buffer_load_u8 v174, v103, s[48:51], 0 offen
	buffer_load_u8 v175, v98, s[48:51], 0 offen
	buffer_load_u8 v176, v104, s[48:51], 0 offen
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(6)
	v_and_b16 v98.l, v99.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v100, 15, v99
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v236.l, 4, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s19, 7, v98.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v98, s20, v199
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v101, -16, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v99, 0, v236, s15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v177, v100, v101, s19
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s19, s68, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s68, s68, 16
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s19, s19, s57
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v100, v98, s[48:51], 0 offen
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s19, s19, s67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v177, v177
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v101, 15, v100
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.l, v100.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v100.l, 4, v100.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v100.h, v236.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v101
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v171.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 360 32 is_stmt 0              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v100, 0, v100, s17
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v178, v101, v102 :: v_dual_and_b32 v101, 15, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v172.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v178, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v101
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v237, v101, v102, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v101, 15, v172
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.l, v173.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v172.h, v236.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v237, v237
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v238, v101, v102 :: v_dual_and_b32 v101, 15, v173
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v174.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v173.h, v236.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v238, v238
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v239, v101, v102, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v101, 15, v174
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.l, v175.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v239, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v101
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v240, v101, v102 :: v_dual_and_b32 v101, 15, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v240, v240
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v102, -16, v101
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v98, v101, v102, vcc_lo
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v101, -16, v99
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v99, v99, v101, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v101, -16, v100
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v100
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v100, v100, v101, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v101.l, 4, v171.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v101.h, v236.h
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v101, 0, v101, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v102, -16, v101
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v101
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v101, v101, v102, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v102.l, 4, v172.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v102.h, v236.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v172.l, 4, v175.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v102, 0, v102, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v103, -16, v102
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v102
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v102, v102, v103, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v103.l, 4, v173.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v103.h, v236.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v173.l, 4, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v103, 0, v103, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v173, 0, v173, s11
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v104, -16, v103
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v103, v103, v104, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v104.l, 4, v174.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v104.h, v236.h
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v174, 15, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v104, 0, v104, s16
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v175, -16, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v171, -16, v104
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v104
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v104, v104, v171, vcc_lo
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v171.l, v176.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 vcc_lo, 7, v171.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v171, 0, v172, s18
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v236, v174, v175, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v172, -16, v171
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v171
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v171, v171, v172, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_add_lshl_u32 v172, s19, v0, 1
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v171, v171
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v174, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v175, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s77
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v174, v174, s[52:55], 0 offen
	v_cndmask_b32_e32 v176, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v175, v175, s[52:55], 0 offen
	v_cndmask_b32_e32 v241, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s11
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v176, v176, s[52:55], 0 offen
	v_cndmask_b32_e32 v242, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[52:55], 0 offen
	v_cndmask_b32_e32 v243, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s76
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v242, v242, s[52:55], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v174, 16, v174
	buffer_load_u16 v243, v243, s[52:55], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v174, v177, v174 :: v_dual_cndmask_b32 v177, 0x80000000, v172
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v174, v174
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v177, v177, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v177, v178, v177 :: v_dual_cndmask_b32 v178, 0x80000000, v172
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v244, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v245, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v244, v244, s[52:55], 0 offen
	v_cndmask_b32_e32 v246, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s12
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v247, 0x80000000, v172, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s74
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x2
	buffer_load_u16 v246, v246, s[52:55], 0 offen
	buffer_load_u16 v247, v247, s[52:55], 0 offen
	buffer_load_u16 v178, v178, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v178, 16, v178
	buffer_load_u16 v245, v245, s[52:55], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v178, v237, v178 :: v_dual_cndmask_b32 v237, 0x80000000, v172
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v178, v178
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v237, v237, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v237, 16, v237
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v237, v238, v237 :: v_dual_cndmask_b32 v238, 0x80000000, v172
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v237, v237
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v238, v238, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v238, 16, v238
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v238, v239, v238 :: v_dual_cndmask_b32 v239, 0x80000000, v172
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v238, v238
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v239, v239, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v239, 16, v239
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v239, v240, v239
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v240, -16, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v239, v239
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v173, v173, v240, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s61
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s68, s69
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v172, v172, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v172, 16, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v98, v98, v172
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v243
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v173, v173
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v99, v99, v172 :: v_dual_lshlrev_b32 v172, 16, v241
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s20, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v100, v100, v172
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v247
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v101, v101, v172 :: v_dual_lshlrev_b32 v172, 16, v246
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s21, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v102, v102, v172
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v245
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v102, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v103, v103, v172
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v244
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v104, v104, v172
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v175
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v175, v236
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s22, v103, v103
	v_bfe_u32 v236, v239, 16, 1
	v_cmp_o_f32_e64 s15, v104, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v171, v171, v172
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v176
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v176, v178, 16, 1
	v_add3_u32 v236, v239, v236, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s23, v171, v171
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v172, v175, v172
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v175, v174, 16, 1
	v_add3_u32 v176, v178, v176, 0x7fff
	v_bfe_u32 v178, v238, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s24, v172, v172
	v_add3_u32 v174, v174, v175, 0x7fff
	v_bfe_u32 v175, v177, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v178, v238, v178, 0x7fff
	v_add3_u32 v175, v177, v175, 0x7fff
	v_bfe_u32 v177, v237, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v177, v237, v177, 0x7fff
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v237, 16, v242
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v173, v173, v237
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v237, v98, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v237, v98, v237, 0x7fff
	v_bfe_u32 v98, v99, 16, 1
	v_add3_u32 v99, v99, v98, 0x7fff
	v_bfe_u32 v98, v100, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v238, v100, v98, 0x7fff
	v_bfe_u32 v98, v101, 16, 1
	v_add3_u32 v100, v101, v98, 0x7fff
	v_bfe_u32 v98, v102, 16, 1
	v_cndmask_b16 v100.l, 0x7fff, v236.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v101, v102, v98, 0x7fff
	v_bfe_u32 v98, v103, 16, 1
	v_add3_u32 v102, v103, v98, 0x7fff
	v_bfe_u32 v98, v104, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v103, v104, v98, 0x7fff
	v_bfe_u32 v98, v171, 16, 1
	v_add3_u32 v104, v171, v98, 0x7fff
	v_bfe_u32 v98, v172, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v171, v172, v98, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v174.h, s18
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_add_nc_u32_e32 v172, 0, v191
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v176.h, s19
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_load_u8_d16 v244, v172
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v244, v172 offset:64
	ds_load_u8_d16 v245, v220
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v245, v220 offset:64
	ds_load_u8_d16 v246, v221
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v246, v221 offset:64
	ds_load_u8_d16 v247, v222
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v247, v222 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v151, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s20
	v_bfe_u32 v99, v173, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v151, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s21
	v_cmp_o_f32_e64 s18, v173, v173
	v_cndmask_b16 v100.h, 0x7fff, v102.h, s22
	v_add3_u32 v99, v173, v99, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v177.h, s13
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v153, v99 offset:1024
	ds_store_b16_d16_hi v152, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v178.h, s12
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v152, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v237.h, s17
	v_cndmask_b16 v99.l, 0x7fff, v171.h, s24
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v155, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v175.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v153, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v104.h, s23
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v157, v100 offset:1024
	ds_store_b16 v155, v99
	ds_store_b16_d16_hi v156, v100 offset:1024
	v_mov_b32_e32 v104, v97
	ds_store_b16_d16_hi v157, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v101.h, s16
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v154, v98
	ds_store_b16_d16_hi v154, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v238.h, s14
	v_cndmask_b16 v98.h, 0x7fff, v103.h, s15
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v158, v98
	ds_store_b16_d16_hi v158, v98 offset:1024
	ds_store_b16_d16_hi v156, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[171:174], v227
	ds_load_b128 v[175:178], v223
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_mov_b32_e32 v243, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v239, v100 :: v_dual_mov_b32 v240, v101
	v_dual_mov_b32 v241, v102 :: v_dual_mov_b32 v242, v103
	v_dual_mov_b32 v238, v99 :: v_dual_mov_b32 v237, v98
	v_dual_mov_b32 v236, v97 :: v_dual_mul_f32 v99, 0x3fb8aa3b, v228
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v101, 0x3fb8aa3b, v230
	v_mul_f32_e32 v103, 0x3fb8aa3b, v232
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[171:178], v[57:64], v[236:243]
	ds_load_b128 v[171:174], v224
	ds_load_b128 v[175:178], v225
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v99, s73, v137
	.loc	1 343 31 is_stmt 0              ; attention_backward.py:343:31
	v_dual_mul_f32 v100, 0x3fb8aa3b, v229 :: v_dual_fmac_f32 v101, s73, v139
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v103, s73, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v99, v198
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v100, s73, v138
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[171:178], v[65:72], v[236:243]
	ds_load_b128 v[171:174], v226
	ds_load_b128 v[175:178], v187
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[171:178], v[73:80], v[236:243]
	ds_load_b128 v[171:174], v188
	ds_load_b128 v[175:178], v189
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[236:243], v[171:178], v[81:88], v[236:243]
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v102, 0x3fb8aa3b, v231 :: v_dual_mul_f32 v171, 0x3fb8aa3b, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v137, v236, v205 :: v_dual_mul_f32 v172, 0x3fb8aa3b, v235
	v_dual_sub_f32 v138, v237, v205 :: v_dual_fmac_f32 v171, s73, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v143, v242, v205 :: v_dual_fmac_f32 v102, s73, v140
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v172, s73, v144
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v144, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v244.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v140, v239, v205
	v_sub_f32_e32 v139, v238, v205
	v_sub_f32_e32 v141, v240, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v104, 0x3fb8aa3b, v233 :: v_dual_cndmask_b32 v99, 0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v137, v99, v137
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v100, v198
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v245.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v104, s73, v142
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v142, v241, v205 :: v_dual_cndmask_b32 v99, 0, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v100, s70, v137 :: v_dual_mul_f32 v99, v99, v138
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v137, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s70, v99
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v100, v100, v137, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v137, v99, 16, 1
	v_cmp_o_f32_e64 s11, v99, v99
	v_add3_u32 v99, v99, v137, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.l, 0x7fff, v100.h, vcc_lo
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v100, v99, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v100, v99, v193
	v_perm_b32 v138, v100, v99, v194
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v101, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v246.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v100, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v100, v99, v139 :: v_dual_sub_f32 v99, v102, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v101, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v247.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v99, 0, v101 :: v_dual_mul_f32 v100, s70, v100
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v99, v140
	.loc	1 396 43 is_stmt 0              ; attention_backward.py:396:43
	v_sub_f32_e32 v98, v243, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 33 is_stmt 1              ; attention_backward.py:397:33
	v_bfe_u32 v101, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s70, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v100, v100, v101, 0x7fff
	v_bfe_u32 v101, v99, 16, 1
	v_cmp_o_f32_e64 s11, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v99, v99, v101, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v100.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s11
	v_permlanex16_b32 v100, v99, s60, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v139, v100, v99, v193
	v_perm_b32 v140, v100, v99, v194
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v103, v198
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v99
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v99.l, 1, v244.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v99, 0, v100, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v100, v99, v141 :: v_dual_sub_f32 v99, v104, v198
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v100, s70, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v101, v99
	.loc	1 344 21                        ; attention_backward.py:344:21
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
	v_permlanex16_b32 v100, v99, s60, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v141, v100, v99, v193
	v_perm_b32 v142, v100, v99, v194
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v99, v171, v198
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
	v_dual_mul_f32 v100, v99, v143 :: v_dual_sub_f32 v99, v172, v198
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
	v_permlanex16_b32 v99, v98, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v99, v98, v193
	v_perm_b32 v144, v99, v98, v194
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[137:144], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[121:128], v[137:144], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[113:120], v[137:144], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[137:144], v[33:40]
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
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s11, s39
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s12, s39
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s13, s39
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s14, s39
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s16, s39
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s17, s39
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s19, s39
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s20, s39
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s21, s39
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s22, s39
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s23, s39
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s24, s39
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s25, s39
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s26, s39
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s27, s39
	s_cselect_b32 s16, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s19, s68, s72
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s78
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
	s_and_b32 vcc_lo, s2, s61
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
	s_and_b32 vcc_lo, s2, s77
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
	s_and_b32 vcc_lo, s2, s76
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
	s_and_b32 vcc_lo, s2, s75
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
	s_and_b32 vcc_lo, s2, s74
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v111, v110, s35, 1
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s63
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
	s_and_b32 vcc_lo, s2, s62
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x7
	buffer_load_u16 v143, v98, s[40:43], 0 offen
	buffer_load_u16 v144, v109, s[40:43], 0 offen
	buffer_load_u16 v171, v108, s[40:43], 0 offen
	buffer_load_u16 v172, v111, s[40:43], 0 offen
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
	ds_store_b128 v195, v[99:102]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v196
	ds_load_b128 v[121:124], v196 offset:256
	ds_load_b128 v[113:116], v196 offset:512
	ds_load_b128 v[105:108], v196 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v137.h, v143.l
	v_mov_b16_e64 v138.h, v144.l
	v_mov_b16_e64 v139.h, v171.l
	v_mov_b16_e64 v140.h, v172.l
	ds_store_b128 v195, v[137:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v196
	ds_load_b128 v[125:128], v196 offset:256
	ds_load_b128 v[117:120], v196 offset:512
	ds_load_b128 v[109:112], v196 offset:768
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
	ds_store_b16 v156, v171 offset:1024
	ds_store_b16 v157, v102
	ds_store_b16 v157, v140 offset:1024
	ds_store_b16 v158, v104
	ds_store_b16 v158, v172 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[228:231], v227
	ds_load_b128 v[232:235], v223
	ds_load_b128 v[236:239], v224
	ds_load_b128 v[240:243], v225
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[244:247], v226
	ds_load_b128 v[248:251], v187
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v104 :: v_dual_mov_b32 v141, v101
	v_dual_mov_b32 v142, v102 :: v_dual_mov_b32 v143, v103
	v_dual_mov_b32 v140, v100 :: v_dual_mov_b32 v139, v99
	v_dual_mov_b32 v138, v98 :: v_dual_mov_b32 v137, v97
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[171:174], v188
	ds_load_b128 v[175:178], v189
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
	s_and_b32 s81, s0, s19
	s_and_b32 s79, s1, s19
	s_and_b32 s54, s5, s19
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[244:251], v[17:24], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s50, s6, s19
	s_and_b32 s82, s7, s19
	s_and_b32 s80, s8, s19
	s_and_b32 s55, s9, s19
	s_and_b32 s51, s10, s19
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[171:178], v[25:32], v[137:144]
	s_cbranch_vccnz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v98, v162
	v_cmp_le_i32_e64 s19, v98, v163
	v_cmp_le_i32_e64 s20, v98, v164
	v_cmp_le_i32_e64 s21, v98, v165
	v_cmp_le_i32_e64 s22, v98, v166
	v_cmp_le_i32_e64 s23, v98, v167
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s26, vcc_lo, s81
	s_and_b32 s19, s19, s79
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s24, v98, v169
	v_cmp_le_i32_e64 s25, v98, v170
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s20, s20, s54
	s_and_b32 s21, s21, s50
	s_and_not1_b32 s27, s81, exec_lo
	s_and_b32 s26, s26, exec_lo
	s_and_not1_b32 s28, s79, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_b32 s22, s22, s82
	s_and_b32 s23, s23, s80
	s_or_b32 s81, s27, s26
	s_or_b32 s79, s28, s19
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s26, s50, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_b32 s24, s24, s55
	s_and_b32 s25, s25, s51
	s_or_b32 s54, s19, s20
	s_or_b32 s50, s26, s21
	s_and_not1_b32 s19, s82, exec_lo
	s_and_b32 s20, s22, exec_lo
	s_and_not1_b32 s21, s80, exec_lo
	s_and_b32 s22, s23, exec_lo
	s_or_b32 s82, s19, s20
	s_or_b32 s80, s21, s22
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
	v_cmp_ge_i32_e32 vcc_lo, v98, v168
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v98, v179
	v_cmp_le_i32_e64 s27, v98, v180
	v_cmp_le_i32_e64 s28, v98, v181
	v_cmp_le_i32_e64 s29, v98, v182
	v_cmp_le_i32_e64 s30, v98, v183
	v_cmp_le_i32_e64 s31, v98, v184
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s26, vcc_lo, s26
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s33, v98, v185
	v_cmp_le_i32_e64 s34, v98, v186
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s26, s26, s81
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s26, s26, exec_lo
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v98, v99
	scratch_load_b32 v99, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s19, s27
	s_and_not1_b32 s27, s81, exec_lo
	s_and_b32 s19, s19, s79
	s_or_b32 s81, s27, s26
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s26, s50, exec_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v98, v99
	scratch_load_b32 v99, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s20, s20, s28
	s_and_not1_b32 s28, s79, exec_lo
	s_and_b32 s20, s20, s54
	s_or_b32 s79, s28, s19
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s19, s20
	s_and_not1_b32 s19, s82, exec_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v98, v99
	scratch_load_b32 v99, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s21, s21, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s50
	s_and_b32 s21, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s50, s26, s21
	s_and_not1_b32 s21, s80, exec_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v98, v99
	scratch_load_b32 v99, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s22, s22, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s82
	s_and_b32 s20, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s82, s19, s20
	s_and_not1_b32 s19, s55, exec_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v98, v99
	scratch_load_b32 v99, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s23, s23, s31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s80
	s_and_b32 s22, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s80, s21, s22
	s_and_not1_b32 s21, s51, exec_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v98, v99
	scratch_load_b32 v99, off, off offset:24 ; 4-byte Folded Reload
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
.LBB0_23:                               ; %._crit_edge82
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v0, v190, v159
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshrrev_b32_e32 v1, 4, v252
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s66, v0
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
	buffer_store_b32 v49, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v22, s65, 2
	v_add_lshl_u32 v3, v21, s65, 2
	s_clause 0x1
	buffer_store_b32 v50, v24, s[36:39], 0 offen
	buffer_store_b32 v51, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v16, s14
	v_cndmask_b32_e64 v15, 0x80000000, v15, s13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	s_clause 0x1
	buffer_store_b32 v52, v1, s[36:39], 0 offen
	buffer_store_b32 v53, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, s65, 2
	v_add_lshl_u32 v3, v17, s65, 2
	s_clause 0x1
	buffer_store_b32 v54, v20, s[36:39], 0 offen
	buffer_store_b32 v55, v19, s[36:39], 0 offen
	v_add_lshl_u32 v12, v12, s65, 2
	v_add_lshl_u32 v11, v11, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	s_clause 0x1
	buffer_store_b32 v56, v1, s[36:39], 0 offen
	buffer_store_b32 v41, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v14, s65, 2
	v_add_lshl_u32 v3, v13, s65, 2
	s_clause 0x1
	buffer_store_b32 v42, v16, s[36:39], 0 offen
	buffer_store_b32 v43, v15, s[36:39], 0 offen
	v_add_lshl_u32 v2, v2, s65, 2
	v_add_lshl_u32 v8, v8, s65, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b32 v44, v1, s[36:39], 0 offen
	buffer_store_b32 v45, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v10, s65, 2
	v_add_lshl_u32 v3, v9, s65, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	s_clause 0x3
	buffer_store_b32 v46, v12, s[36:39], 0 offen
	buffer_store_b32 v47, v11, s[36:39], 0 offen
	buffer_store_b32 v48, v1, s[36:39], 0 offen
	buffer_store_b32 v33, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v7, s65, 2
	s_clause 0x1
	buffer_store_b32 v34, v2, s[36:39], 0 offen
	buffer_store_b32 v35, v8, s[36:39], 0 offen
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
	buffer_store_b32 v36, v1, s[36:39], 0 offen
	buffer_store_b32 v37, v2, s[36:39], 0 offen
	buffer_store_b32 v38, v3, s[36:39], 0 offen
	buffer_store_b32 v39, v4, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp363:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 40
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
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 40
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25212
; TotalNumSgprs: 85
; NumVgprs: 256
; ScratchSize: 40
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 85
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
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
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
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
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
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
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
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
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 40
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 9
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
