	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[12:15], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x74
	s_load_b32 s38, s[0:1], 0x7c
.Ltmp0:
	.loc	1 159 29 prologue_end           ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v159, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v113, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v115, 32, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v116, 1, v0
.Ltmp2:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v39, 0x2d0, v65
	v_xor_b32_e32 v37, 0x1b0, v65
	v_xor_b32_e32 v36, 0x120, v65
	v_xor_b32_e32 v38, 0x240, v65
	v_xor_b32_e32 v40, 0x360, v65
	v_add_nc_u32_e32 v156, 0, v39
	v_add_nc_u32_e32 v154, 0, v37
	v_add_nc_u32_e32 v153, 0, v36
	v_xor_b32_e32 v41, 0x3f0, v65
	v_add_nc_u32_e32 v155, 0, v38
	v_add_nc_u32_e32 v157, 0, v40
	v_lshlrev_b32_e32 v114, 7, v159
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s27, -1, 0
	s_cmp_eq_u32 s4, 1
	v_and_or_b32 v160, 0x70, v113, v114
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s35, s2, 5
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
	s_cselect_b32 s2, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s29
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s16, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s9, s28, s29
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s16, s28
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
	s_or_b32 s4, s35, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s21, s2, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s35, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s19, s21
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s35, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s19
	s_sub_i32 s26, 0, s19
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s35, 4
	s_or_b32 s8, s35, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s35, 6
	s_or_b32 s2, s35, 7
	s_or_b32 s9, s35, 8
	s_or_b32 s23, s35, 9
	s_or_b32 s24, s35, 10
	s_or_b32 s25, s35, 11
	s_or_b32 s11, s35, 12
	s_or_b32 s34, s35, 13
	s_or_b32 s37, s35, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s22, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s39, s35, 15
	s_or_b32 s41, s35, 16
	s_or_b32 s42, s35, 17
	s_or_b32 s44, s35, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s22, s22, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s46, s35, 19
	s_or_b32 s48, s35, 20
	s_or_b32 s50, s35, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s22, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s52, s35, 22
	s_or_b32 s54, s35, 23
	s_or_b32 s65, s35, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s26, s26, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s66, s35, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s26, s22, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s67, s35, 26
	s_or_b32 s68, s35, 27
	s_or_b32 s69, s35, 28
	s_or_b32 s70, s35, 29
	s_or_b32 s71, s35, 30
	s_or_b32 s72, s35, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s22, s22, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s35, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s4, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s5, s30
	s_load_b64 s[4:5], s[0:1], 0x0
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s6, s30
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s7, s30
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s8, s30
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s10, s30
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s2, s30
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s9, s30
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s23, s30
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s24, s30
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s25, s30
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s11, s30
	s_load_b128 s[8:11], s[0:1], 0x38
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s34, s30
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s37, s30
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s39, s30
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s41, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s42, s30
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s42, s3, s30
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s44, s30
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s38, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s46, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s48, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s50, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s52, s30
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s54, s30
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s65, s30
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s66, s30
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s67, s30
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s69, s30
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s70, s30
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s71, s30
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s72, s30
	s_cselect_b32 s39, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s42, s42, s35
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s34, s42, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
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
	buffer_load_u16 v21, v1, s[4:7], 0 offen
	buffer_load_u16 v22, v2, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s33, v19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
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
	s_and_b32 vcc_lo, s40, s2
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
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
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
	s_and_b32 vcc_lo, s28, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x2
	buffer_load_u16 v29, v1, s[4:7], 0 offen
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v1, 0x80000000, v24 :: v_dual_lshlrev_b32 v24, 1, v26
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v26, s33, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v27
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v31, 1, v26
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v26, v26, s33, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x4
	buffer_load_u16 v32, v2, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v28, vcc_lo
	buffer_load_u16 v28, v1, s[4:7], 0 offen
	v_lshlrev_b32_e32 v1, 1, v16
	v_lshlrev_b32_e32 v16, 1, v30
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v33, v2, s[4:7], 0 offen
	v_add_lshl_u32 v2, v30, s33, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x4
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v30, v3, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v34, v1, s[4:7], 0 offen
	buffer_load_u16 v35, v2, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s42, s38, v[0:1]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v3, 0x90, v65
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s4, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v152, 0, v3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s38, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[2:3], null, s38, 17, v[1:2]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s38, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v1 :: v_dual_lshlrev_b32 v36, 1, v36
	v_lshl_add_u32 v1, s38, 5, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v158, 0, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v48, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 1, v41
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v67, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e32 v69, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v70, 0x80000000, v36 :: v_dual_add_nc_u32 v151, 0, v65
	v_lshlrev_b32_e32 v36, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	v_add_nc_u32_e32 v41, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v72, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v41
	v_lshlrev_b32_e32 v36, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v81, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v99, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v50, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v55, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v75, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v68, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v76, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v73, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v77, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v78, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v84, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v85, 0x80000000, v37 :: v_dual_lshlrev_b32 v36, 1, v42
	v_lshlrev_b32_e32 v37, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v38, v38, s38, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v88, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s23, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 1, v41
	v_cndmask_b32_e32 v89, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s24, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v41, v41, s38, 1
	v_cndmask_b32_e32 v100, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s37, s3
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
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v90, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s39, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v101, 0x80000000, v41, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_u16 v43, v39, s[4:7], 0 offen
	buffer_load_u16 v44, v40, s[4:7], 0 offen
	buffer_load_u16 v45, v3, s[4:7], 0 offen
	buffer_load_u16 v46, v48, s[4:7], 0 offen
	buffer_load_u16 v51, v50, s[4:7], 0 offen
	buffer_load_u16 v52, v55, s[4:7], 0 offen
	buffer_load_u16 v53, v68, s[4:7], 0 offen
	buffer_load_u16 v54, v73, s[4:7], 0 offen
	buffer_load_u16 v56, v1, s[4:7], 0 offen
	buffer_load_u16 v57, v2, s[4:7], 0 offen
	buffer_load_u16 v58, v66, s[4:7], 0 offen
	buffer_load_u16 v59, v67, s[4:7], 0 offen
	buffer_load_u16 v95, v71, s[4:7], 0 offen
	buffer_load_u16 v96, v75, s[4:7], 0 offen
	buffer_load_u16 v97, v76, s[4:7], 0 offen
	buffer_load_u16 v98, v77, s[4:7], 0 offen
	buffer_load_u16 v61, v69, s[4:7], 0 offen
	buffer_load_u16 v62, v72, s[4:7], 0 offen
	buffer_load_u16 v63, v79, s[4:7], 0 offen
	buffer_load_u16 v64, v87, s[4:7], 0 offen
	buffer_load_u16 v91, v78, s[4:7], 0 offen
	buffer_load_u16 v92, v85, s[4:7], 0 offen
	buffer_load_u16 v93, v89, s[4:7], 0 offen
	buffer_load_u16 v94, v100, s[4:7], 0 offen
	buffer_load_u16 v47, v70, s[4:7], 0 offen
	buffer_load_u16 v41, v74, s[4:7], 0 offen
	buffer_load_u16 v38, v81, s[4:7], 0 offen
	buffer_load_u16 v37, v99, s[4:7], 0 offen
	buffer_load_u16 v36, v84, s[4:7], 0 offen
	buffer_load_u16 v35, v88, s[4:7], 0 offen
	buffer_load_u16 v34, v90, s[4:7], 0 offen
	buffer_load_u16 v33, v101, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_clause 0x1f
	buffer_load_u16 v49, v39, s[4:7], 0 offen
	buffer_load_u16 v42, v40, s[4:7], 0 offen
	buffer_load_u16 v40, v3, s[4:7], 0 offen
	buffer_load_u16 v39, v48, s[4:7], 0 offen
	buffer_load_u16 v60, v50, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v50, v68, s[4:7], 0 offen
	buffer_load_u16 v48, v73, s[4:7], 0 offen
	buffer_load_u16 v68, v1, s[4:7], 0 offen
	buffer_load_u16 v73, v71, s[4:7], 0 offen
	buffer_load_u16 v82, v2, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v83, v66, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v86, v67, s[4:7], 0 offen
	buffer_load_u16 v80, v77, s[4:7], 0 offen
	buffer_load_u16 v77, v69, s[4:7], 0 offen
	buffer_load_u16 v71, v78, s[4:7], 0 offen
	buffer_load_u16 v69, v70, s[4:7], 0 offen
	buffer_load_u16 v67, v84, s[4:7], 0 offen
	buffer_load_u16 v84, v72, s[4:7], 0 offen
	buffer_load_u16 v78, v85, s[4:7], 0 offen
	buffer_load_u16 v72, v74, s[4:7], 0 offen
	buffer_load_u16 v70, v88, s[4:7], 0 offen
	buffer_load_u16 v88, v79, s[4:7], 0 offen
	buffer_load_u16 v85, v89, s[4:7], 0 offen
	buffer_load_u16 v79, v81, s[4:7], 0 offen
	buffer_load_u16 v74, v90, s[4:7], 0 offen
	buffer_load_u16 v90, v87, s[4:7], 0 offen
	buffer_load_u16 v89, v100, s[4:7], 0 offen
	buffer_load_u16 v87, v99, s[4:7], 0 offen
	buffer_load_u16 v81, v101, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v115, 6, v160
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 16, 0
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v5, v1, 48, 0
	v_xad_u32 v6, v1, 64, 0
	v_xad_u32 v7, 0x50, v1, 0
	v_xad_u32 v8, 0x60, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	ds_load_b128 v[175:178], v2
	ds_load_b128 v[179:182], v3
	ds_load_b128 v[9:12], v4
	ds_load_b128 v[13:16], v5
	ds_load_b128 v[17:20], v6
	ds_load_b128 v[21:24], v7
	ds_load_b128 v[25:28], v8
	ds_load_b128 v[29:32], v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v151, v49
	s_waitcnt vmcnt(27)
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[119:122], v2
	ds_load_b128 v[123:126], v3
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[119:122], off ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[123:126], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[119:122], v4
	ds_load_b128 v[123:126], v5
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[119:122], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[123:126], off offset:48 ; 16-byte Folded Spill
	ds_load_b128 v[119:122], v6
	ds_load_b128 v[123:126], v7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[119:122], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[123:126], off offset:80 ; 16-byte Folded Spill
	ds_load_b128 v[119:122], v8
	ds_load_b128 v[123:126], v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 16, v68
	v_lshlrev_b32_e32 v68, 16, v69
	v_lshlrev_b32_e32 v69, 16, v72
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[119:122], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[123:126], off offset:112 ; 16-byte Folded Spill
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v106, 16, v50
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v123, v41, v69 :: v_dual_lshlrev_b32 v50, 16, v78
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v105, 16, v55
	v_lshlrev_b32_e32 v55, 16, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v119, v92, v50
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v123, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v120, v93, v55 :: v_dual_lshlrev_b32 v7, 16, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v119, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v123, v41, v69
.Ltmp7:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v103, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v119, v92, v50 :: v_dual_lshlrev_b32 v104, 16, v60
	v_add_f32_dpp v50, v123, v123 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v39, 16, v77
	v_lshlrev_b32_e32 v60, 16, v89
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v122, v47, v68
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v108, v61, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 16, v38
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v122, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v120, v93, v55
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v97, 16, v97
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v108, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v122, v47, v68
	v_add_f32_dpp v47, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v89, v97, v7 :: v_dual_lshlrev_b32 v100, 16, v49
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v49, 16, v71
	v_lshlrev_b32_e32 v71, 16, v79
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v108, v61, v39
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v89, v89 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v102, 16, v40
	v_lshlrev_b32_e32 v40, 16, v84
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v124, v38, v71
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v89, v97, v7 :: v_dual_lshlrev_b32 v62, 16, v62
.Ltmp23:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v63, 16, v63
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v101, 16, v42
	v_lshlrev_b32_e32 v42, 16, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v89, v89 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v109, v62, v40
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v124, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v110, v63, v42 :: v_dual_lshlrev_b32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v109, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v124, v38, v71
.Ltmp31:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v3, 16, v83
	v_lshlrev_b32_e32 v5, 16, v73
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v73, 16, v74
	v_lshlrev_b32_e32 v74, 16, v81
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v110, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v109, v62, v40
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v129, v33, v74 :: v_dual_lshlrev_b32 v56, 16, v56
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v110, v63, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v42, v109, v109 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v39, v39, v71
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v83, v56, v1
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v129, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v91, 16, v91
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v107, 16, v48
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v129, v33, v74 :: v_dual_mul_f32 v112, v91, v49
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v83, v56, v1 :: v_dual_lshlrev_b32 v48, 16, v90
.Ltmp46:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v4, 16, v86
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v112, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v74, v42, -1, -1 op_sel:[1,0]
.Ltmp48:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v53, 16, v53
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 16, v36
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v112, v91, v49
	v_add_f32_e32 v42, v42, v74
.Ltmp52:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v81, v53, v106
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v122, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v67, 16, v67
	v_lshlrev_b32_e32 v2, 16, v82
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v81, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v126, v36, v67
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v39, 31
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v81, v53, v106
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v63, v33, -1, -1 op_sel:[1,0]
.Ltmp61:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v46, 16, v46
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v126, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v81, v81 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v33, v33, v63
.Ltmp65:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v78, v46, v103
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v81, v49, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v64, 16, v64
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v126, v36, v67
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v81
.Ltmp71:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v111, v64, v48
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s23, v33, 31
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v78, v46, v103
	v_add_f32_dpp v46, v119, v119 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v111, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v61, v7, -1, -1 op_sel:[1,0]
.Ltmp76:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v6, 16, v75
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v111, v64, v48
	v_add_f32_e32 v7, v7, v61
.Ltmp78:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v76, v44, v101 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v59, 16, v59
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v7, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v86, v59, v4 :: v_dual_mov_b32 v39, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v76, v44, v101
	v_add_f32_dpp v44, v111, v111 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v128, v34, v73
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v86, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v127, v35, v70
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v94, 16, v94
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v128, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v86, v59, v4
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v127, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v121, v94, v60
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v57, 16, v57
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v86, v86 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v128, v34, v73 :: v_dual_fmac_f32 v127, v35, v70
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v84, v57, v2
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v8, 16, v80
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v78, v78 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v121, v94, v60
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v84, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v46, -1, -1 op_sel:[1,0]
.Ltmp103:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v72, 16, v87
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v84, v57, v2
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v36, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 16, v43
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v76, v44, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v36, v36, v68
	v_add_f32_e32 v46, v46, v78
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v44, v44, v76
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v36, 31
	v_readlane_b32 s46, v46, 31
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s44, v44, 31
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, s26
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v41, v108, v108 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v2, -1, -1 op_sel:[1,0]
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v84, v84 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v127, v127 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v2, v2, v53
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v55, v4, -1, -1 op_sel:[1,0]
	v_readlane_b32 s41, v42, 31
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v2, 31
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v4, v4, v55
	v_add_f32_dpp v2, v129, v129 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v73, v41, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v58, 16, v58
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v4, 31
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v41, v41, v73
.Ltmp126:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v85, v58, v3
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v36, s7
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v41, 31
	v_mov_b32_e32 v41, s23
.Ltmp130:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v75, v43, v100
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v85, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_barrier
	v_readlane_b32 s49, v49, 31
	v_mov_b32_e32 v49, s40
	v_mov_b32_dpp v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v85, v58, v3
	v_add_f32_dpp v58, v126, v126 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v34, v34, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v75, v43, v100
	v_add_f32_dpp v43, v110, v110 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v85, v85 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v34, 31
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v34, s5
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v7, v4, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s24
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v75, v43, -1, -1 op_sel:[1,0]
.Ltmp140:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v96, 16, v96
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v35, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v52, 16, v52
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v43, v43, v75 :: v_dual_mul_f32 v88, v96, v6
	v_dual_add_f32 v35, v35, v67 :: v_dual_mul_f32 v80, v52, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v4, 31
	v_readlane_b32 s43, v43, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v88, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s25, v35, 31
	v_mov_b32_dpp v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v88, v96, v6 :: v_dual_mov_b32 v43, s25
	v_fmac_f32_e32 v80, v52, v105
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v52, v1, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v88, v88 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v1, v1, v52 :: v_dual_mov_b32 v52, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v1, 31
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v128, v128 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v33, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v70, v38, -1, -1 op_sel:[1,0]
.Ltmp153:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v38, v38, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp155:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v77, v45, v102
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v38, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v46, s36 :: v_dual_lshlrev_b32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v77, v45, v102
	v_add_f32_dpp v45, v112, v112 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v125, v37, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v125, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v125, v37, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v45, -1, -1 op_sel:[1,0]
.Ltmp163:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v98, 16, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v125, v125 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v45, v45, v77 :: v_dual_mul_f32 v90, v98, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s45, v45, 31
	v_mov_b32_dpp v90, v90 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v53, s45
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v48, -1, -1 op_sel:[1,0]
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v90, v98, v8 :: v_dual_lshlrev_b32 v95, 16, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v48, v48, v80 :: v_dual_mul_f32 v87, v95, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v40, v90, v90 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s48, v48, 31
	v_mov_b32_dpp v87, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v60, v6, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v87, v95, v5
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v6, v6, v60
	v_add_f32_dpp v37, v87, v87 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v40, -1, -1 op_sel:[1,0]
.Ltmp174:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v51, 16, v51
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v6, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v40, v40, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v38, s9
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s39, v40, 31
	v_permlanex16_b32 v69, v37, -1, -1 op_sel:[1,0]
.Ltmp180:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v54, 16, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v48, s39 :: v_dual_add_f32 v37, v37, v69
.Ltmp182:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v82, v54, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s28, v37, 31
	v_mov_b32_dpp v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v45, s28
.Ltmp184:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v79, v51, v104 :: v_dual_fmac_f32 v82, v54, v107
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v54, v3, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v66, 6, v116
	s_mov_b32 s28, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp186:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp187:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v118, 0, v66
	v_dual_mov_b32 v54, s46 :: v_dual_fmac_f32 v79, v51, v104
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v124, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp189:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v3, 31
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp191:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v47, -1, -1 op_sel:[1,0]
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v35, s6
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v47, v47, v79
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v6, v3, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s47, v47, 31
	v_mov_b32_e32 v47, s37
	v_permlanex16_b32 v83, v51, -1, -1 op_sel:[1,0]
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v6
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v56, v5, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v55, s47
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v82, v50, -1, -1 op_sel:[1,0]
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v51, v51, v83
	v_add_f32_e32 v5, v5, v56
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v3, 31
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v50, v50, v82
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s51, v51, 31
	v_readlane_b32 s8, v5, 31
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s50, v50, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v50, s41 :: v_dual_mov_b32 v37, s8
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v62, v8, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v51, s43 :: v_dual_mov_b32 v56, s48
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v8, v8, v62 :: v_dual_lshlrev_b32 v117, 1, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v8, 31
	v_add_nc_u32_e32 v99, 0, v117
	v_permlanex16_b32 v8, v5, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v40, s11
	ds_store_b128 v99, v[33:36]
	ds_store_b128 v99, v[37:40] offset:16
	ds_store_b128 v99, v[41:44] offset:32
	ds_store_b128 v99, v[45:48] offset:48
	v_permlanex16_b32 v33, v1, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v34, v2, -1, -1 op_sel:[1,0]
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v8
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v35, s51 :: v_dual_mov_b32 v36, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v1, v33 :: v_dual_add_f32 v2, v2, v34
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v5, 31
	v_dual_mov_b32 v33, s49 :: v_dual_mov_b32 v34, s50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s7, v1, 31
	v_readlane_b32 s8, v2, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v38, s6
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v40, s8
	s_barrier
	ds_load_b128 v[94:97], v118
	ds_load_b128 v[90:93], v118 offset:16
	ds_load_b128 v[86:89], v118 offset:32
	ds_load_b128 v[74:77], v118 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v99, v[49:52]
	ds_store_b128 v99, v[53:56] offset:16
	ds_store_b128 v99, v[33:36] offset:32
	ds_store_b128 v99, v[37:40] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v118
	ds_load_b128 v[98:101], v118 offset:16
	ds_load_b128 v[82:85], v118 offset:32
	ds_load_b128 v[78:81], v118 offset:48
.Ltmp216:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s4, s31, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
.Ltmp217:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v148, v94 :: v_dual_mov_b32 v149, v95
	v_mov_b32_e32 v150, v96
	v_mov_b32_e32 v146, v97
	v_dual_mov_b32 v190, v90 :: v_dual_mov_b32 v191, v91
	v_mov_b32_e32 v194, v93
	v_dual_mov_b32 v192, v92 :: v_dual_mov_b32 v199, v86
	v_mov_b32_e32 v144, v88
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v186, v102 :: v_dual_mov_b32 v187, v103
	v_dual_mov_b32 v188, v104 :: v_dual_mov_b32 v189, v105
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v195, v98 :: v_dual_mov_b32 v196, v99
	v_dual_mov_b32 v197, v100 :: v_dual_mov_b32 v198, v101
	v_dual_mov_b32 v193, v87 :: v_dual_mov_b32 v138, v77
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v147, v89 :: v_dual_mov_b32 v142, v83
	v_dual_mov_b32 v145, v82 :: v_dual_mov_b32 v136, v75
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v143, v84 :: v_dual_mov_b32 v140, v79
	v_mov_b32_e32 v133, v85
	v_dual_mov_b32 v135, v74 :: v_dual_mov_b32 v134, v81
	v_mov_b32_e32 v137, v76
	v_mov_b32_e32 v139, v78
	v_mov_b32_e32 v141, v80
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
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
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v134, v134 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s20, s22
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s39, s4, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s35, s14
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s7, s35, s13
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, s15
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s7, s7, s15
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s4, s31, s4
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
	s_and_b32 s28, s6, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s39, s39, s4
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_load_b64 s[6:7], s[0:1], 0x84
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v1, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s8, s17, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s9, s21, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s10, s35, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, 32
	s_min_i32 s10, s31, s10
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
	s_min_i32 s39, s39, s10
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s10, s5, s19
	s_xor_b32 s8, s8, s9
	s_sub_i32 s9, s20, s10
	s_clause 0x3
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x30
	s_load_b32 s43, s[0:1], 0x8c
	s_load_b32 s64, s[0:1], 0x80
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
	v_or_b32_e32 v69, s35, v67
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	v_lshlrev_b32_e32 v201, 5, v0
	s_xor_b32 s5, s5, s8
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s50, s17, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v70, 16, v69
	v_or_b32_e32 v71, 20, v69
	v_or_b32_e32 v73, 4, v69
	v_or_b32_e32 v72, 24, v69
	v_or_b32_e32 v106, 8, v69
	v_or_b32_e32 v108, 12, v69
	v_or_b32_e32 v68, 28, v69
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s65, s5, s8
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s5, s16, s29
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v41, s15, v69
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s65, s65, s5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s28, s39
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v161, s15, v73
	v_add_nc_u32_e32 v162, s15, v106
	v_add_nc_u32_e32 v163, s15, v108
	v_add_nc_u32_e32 v164, s15, v70
	v_add_nc_u32_e32 v165, s15, v71
	v_add_nc_u32_e32 v168, s15, v72
	v_add_nc_u32_e32 v169, s15, v68
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s67, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s16, s16, s6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s67
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
.LBB0_7:                                ; %Flow249
	v_subrev_nc_u32_e32 v1, s13, v168
	s_clause 0x3
	s_load_b128 s[52:55], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s29, s[0:1], 0x90
	v_and_b32_e32 v166, 16, v0
	v_cmp_gt_i32_e64 s5, s30, v106
	v_mul_lo_u32 v106, s43, v67
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v169
	v_and_b32_e32 v200, 48, v0
	v_cmp_gt_i32_e64 s0, s30, v69
	v_cmp_gt_i32_e64 s1, s30, v73
	v_cmp_gt_i32_e64 s6, s30, v108
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v41
	v_cmp_gt_i32_e64 s7, s30, v70
	v_cmp_gt_i32_e64 s8, s30, v71
	v_cmp_gt_i32_e64 s9, s30, v72
	v_cmp_gt_i32_e64 s10, s30, v68
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v161
	v_subrev_nc_u32_e32 v183, s13, v41
	v_subrev_nc_u32_e32 v184, s13, v161
	v_subrev_nc_u32_e32 v185, s13, v162
	v_subrev_nc_u32_e32 v252, s13, v163
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v162
	v_subrev_nc_u32_e32 v253, s13, v164
	v_subrev_nc_u32_e32 v254, s13, v165
	v_xor_b32_e32 v119, 16, v160
	v_xor_b32_e32 v120, 32, v160
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v163
	v_xor_b32_e32 v121, 48, v160
	v_xor_b32_e32 v122, 64, v160
	v_xor_b32_e32 v123, 0x50, v160
	v_xor_b32_e32 v124, 0x60, v160
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v164
	v_xor_b32_e32 v125, 0x70, v160
	v_cmp_eq_u32_e64 s11, 0, v115
	v_and_b32_e32 v132, 14, v0
	v_lshlrev_b32_e32 v127, 3, v159
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v165
	v_lshrrev_b32_e32 v129, 2, v166
	v_lshrrev_b32_e32 v126, 4, v115
	v_lshlrev_b32_e32 v131, 2, v0
	v_lshrrev_b32_e32 v128, 1, v166
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v168
	v_lshrrev_b32_e32 v130, 5, v115
	s_mul_f32 s66, s64, 0x3fb8aa3b
	s_mul_i32 s65, s65, s31
	s_add_i32 s50, s50, s16
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v169
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mul_i32 s51, s43, s35
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[107:108], null, s29, v159, v[106:107]
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_and_b32 v1, 60, v65
	v_cndmask_b32_e64 v2, 0x104, 0, s11
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v132
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v4, 5, v116
	v_mad_u64_u32 v[108:109], null, s43, 12, v[107:108]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v202, v2, v1
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_lshlrev_b32 v1, 2, v200
	v_or3_b32 v203, v129, v126, v127
	v_mov_b32_e32 v239, 0
	v_or_b32_e32 v2, v202, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v132, 7, v1
	v_mad_u64_u32 v[109:110], null, s43, 20, v[107:108]
	v_mad_u64_u32 v[110:111], null, s43, 24, v[107:108]
	v_mad_u64_u32 v[111:112], null, s43, 28, v[107:108]
	v_or3_b32 v112, v1, v4, v3
	v_dual_mov_b32 v244, 0 :: v_dual_and_b32 v1, 0x180, v201
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_and_b32 v3, 52, v131
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_and_b32 v4, 2, v0
	v_xor_b32_e32 v5, 0x208, v2
	v_xor_b32_e32 v6, 0x410, v2
	v_xor_b32_e32 v2, 0x618, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v1, v3, v4, v1
	v_xor_b32_e32 v7, 4, v112
	v_xor_b32_e32 v8, 8, v112
	v_xor_b32_e32 v33, 12, v112
	v_xor_b32_e32 v3, 16, v112
	v_or3_b32 v204, v1, v128, v130
	v_xor_b32_e32 v4, 20, v112
	v_xor_b32_e32 v34, 24, v112
	v_xor_b32_e32 v1, 28, v112
	v_xor_b32_e32 v35, 0x90, v203
	v_xor_b32_e32 v36, 0x120, v203
	v_xor_b32_e32 v37, 0x1b0, v203
	v_xor_b32_e32 v38, 16, v204
	v_xor_b32_e32 v39, 32, v204
	v_xor_b32_e32 v40, 48, v204
	v_dual_mov_b32 v242, 0 :: v_dual_add_nc_u32 v205, 0, v5
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v206, 0, v6
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v207, 0, v2
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_add_nc_u32 v208, 0, v7
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v209, 0, v8
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v210, 0, v33
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v3
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v212, 0, v4
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v34
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v214, 0, v1
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v35
	v_add_nc_u32_e32 v216, 0, v36
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v37
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v218, 0, v38
	v_add_nc_u32_e32 v219, 0, v39
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v220, 0, v40
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v229, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 s57, s41, 0xffff
	s_mov_b32 s56, s40
	s_add_i32 s46, s50, s51
	s_and_b32 s61, s45, 0xffff
	s_mov_b32 s60, s44
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s47, s28
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s12, s47, s29
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v5, s43, 3, v107
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s12, s46, s12
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v2, s43, 4, v107
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v7, s12, v111, 1
	v_add_lshl_u32 v8, s12, v108, 1
	v_add_lshl_u32 v5, s12, v5, 1
	v_add_lshl_u32 v6, s12, v110, 1
	v_add_lshl_u32 v1, s12, v107, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s69
	v_cndmask_b32_e64 v8, 0x80000000, v8, s68
	v_add_lshl_u32 v2, s12, v2, 1
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v3, s43, 2, v107
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v5, 0x80000000, v5, s70
	s_clause 0x1
	buffer_load_u16 v7, v7, s[60:63], 0 offen
	buffer_load_u16 v8, v8, s[60:63], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s71
	v_cndmask_b32_e64 v1, 0x80000000, v1, s74
	v_cndmask_b32_e64 v2, 0x80000000, v2, s75
	v_add_lshl_u32 v3, s12, v3, 1
	s_clause 0x1
	buffer_load_u16 v5, v5, s[60:63], 0 offen
	buffer_load_u16 v6, v6, s[60:63], 0 offen
	v_add_lshl_u32 v4, s12, v109, 1
	s_clause 0x1
	buffer_load_u16 v1, v1, s[60:63], 0 offen
	buffer_load_u16 v2, v2, s[60:63], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v247, 0, v112
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s72
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s47, s47, 16
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v4, 0x80000000, v4, s73
	s_clause 0x1
	buffer_load_u16 v3, v3, s[60:63], 0 offen
	buffer_load_u16 v4, v4, s[60:63], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v7, 16, v7
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, 0xff800000, v7, s69
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v5, 16, v5
	v_cndmask_b32_e64 v8, 0xff800000, v8, s68
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s20, 0xff800000, v7
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v5, 0xff800000, v5, s70
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s75
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v8
	v_cmp_neq_f32_e64 s16, 0xff800000, v5
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v6, 0xff800000, v6, s71
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v34, 0x3fb8aa3b, v2 :: v_dual_lshlrev_b32 v3, 16, v3
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v1, 0xff800000, v1, s74
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v2
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s17, s70, s16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 254 32 is_stmt 1              ; attention_backward.py:254:32
	v_cndmask_b32_e64 v3, 0xff800000, v3, s72
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v33, 0x3fb8aa3b, v1 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v1
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s12, s75, vcc_lo
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v3
	.loc	1 254 32 is_stmt 1              ; attention_backward.py:254:32
	v_cndmask_b32_e64 v4, 0xff800000, v4, s73
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v245, v118, v202
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v1, 0, 1, s12
	s_and_b32 s18, s74, s13
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v6
	v_cmp_neq_f32_e64 s15, 0xff800000, v4
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v245, v33, v34 offset1:32
	v_dual_mul_f32 v33, 0x3fb8aa3b, v3 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v4
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s16, s68, s19
	s_and_b32 vcc_lo, s73, s15
	s_and_b32 s15, s72, s14
	s_and_b32 s14, s71, s13
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v205, v33, v34 offset1:32
	v_dual_mul_f32 v33, 0x3fb8aa3b, v5 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s13, s69, s20
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s47, s39
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v206, v33, v34 offset1:32
	v_dual_mul_f32 v33, 0x3fb8aa3b, v8 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v7
	ds_store_2addr_b32 v207, v33, v34 offset1:32
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v33.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s18
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v36, v247
	ds_load_b32 v246, v208
	ds_load_b32 v174, v209
	ds_load_b32 v173, v210
	ds_load_b32 v172, v211
	ds_load_b32 v171, v212
	ds_load_b32 v170, v213
	ds_load_b32 v167, v214
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v33.l, v34.l, v33.l
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v36, s66, v66 :: v_dual_add_nc_u32 v1, 0, v203
	v_fmac_f32_e32 v246, s66, v67
	v_dual_fmac_f32 v174, s66, v68 :: v_dual_fmac_f32 v171, s66, v71
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_store_b16 v1, v33
	v_cndmask_b32_e64 v1, 0, 1, s14
	v_or_b16 v33.h, v35.l, v33.h
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v172, s66, v70 :: v_dual_fmac_f32 v173, s66, v69
	v_dual_fmac_f32 v170, s66, v72 :: v_dual_fmac_f32 v167, s66, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v33.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s17
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s13
	v_or_b16 v33.l, v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s16
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v35.l, v1.l
	v_add_nc_u32_e32 v1, 0, v204
	v_or_b16 v34.l, v35.l, v34.l
	ds_store_b16_d16_hi v215, v33
	ds_store_b16 v216, v33
	ds_store_b16 v217, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v1
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v1 offset:64
	ds_load_u8_d16 v34, v218
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v220 offset:64
	ds_load_u8_d16 v35, v219 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v218 offset:64
	v_and_b16 v33.l, 1, v33.l
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v33.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v36, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_load_u8_d16 v33, v219
	ds_load_u8_d16 v36, v220
	v_cmp_eq_u16_e64 s19, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v247, v1
	v_cndmask_b32_e64 v1, 0xff800000, v246, s19
	ds_store_b32 v208, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v174, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v209, v1
	v_cndmask_b32_e64 v1, 0xff800000, v173, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v33.l
	v_and_b16 v33.l, 1, v35.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v210, v1
	v_cndmask_b32_e64 v1, 0xff800000, v172, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v33.l
	v_and_b16 v33.l, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v211, v1
	v_cndmask_b32_e64 v1, 0xff800000, v171, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v212, v1
	v_cndmask_b32_e64 v1, 0xff800000, v170, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v33.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v213, v1
	v_cndmask_b32_e64 v1, 0xff800000, v167, s19
	ds_store_b32 v214, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[66:67], v245 offset1:32
	ds_load_2addr_b32 v[33:34], v205 offset1:32
	ds_load_2addr_b32 v[35:36], v206 offset1:32
	ds_load_2addr_b32 v[37:38], v207 offset1:32
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v1, v66
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v1, v2
.Ltmp229:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v1, v221, v221
	v_max_f32_e32 v221, v1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v1, v66, v221
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v241
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp236:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v241, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v68, v2, v68
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp239:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v241, v68
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v2, v33, v33 :: v_dual_mov_b32 v241, v68
.Ltmp241:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v66, v244, v1 :: v_dual_mov_b32 v1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v244, v66
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
.Ltmp250:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v222, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v33, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v240, v240
.Ltmp257:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v70, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v2, v1
.Ltmp260:
	.loc	1 260 70                        ; attention_backward.py:260:70
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v1, v240, v70 :: v_dual_max_f32 v2, v35, v35
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v238
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v69, v243, v1
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v243, v69
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v223, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v35, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp276:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v238, v238
	v_dual_max_f32 v72, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v71, v2, v1
.Ltmp279:
	.loc	1 260 70                        ; attention_backward.py:260:70
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_sub_f32 v1, v238, v72 :: v_dual_max_f32 v2, v37, v37
	v_mov_b32_e32 v238, v72
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v236
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v71, v242, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v1, v37 :: v_dual_mov_b32 v242, v71
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp286:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v224, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v224, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v37, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v236, v236
.Ltmp295:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v245, v3, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v2, v1
.Ltmp298:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v236, v245 :: v_dual_max_f32 v2, v67, v67
	v_mov_b32_e32 v236, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v73, v239, v1
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v67
	v_mov_b32_e32 v239, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp307:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v225, v225
	v_max_f32_e32 v225, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v67, v225
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s12, 0xff800000, v234
.Ltmp308:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp309:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp312:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp313:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp314:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v246, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp315:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp316:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v2, v1
.Ltmp317:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v234, v246
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp319:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v67, v237, v1
.Ltmp320:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v34
	v_mov_b32_e32 v237, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp321:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp322:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp323:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp324:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp325:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp326:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp327:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp328:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v226, v226
	v_max_f32_e32 v226, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v34, v226
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v232
.Ltmp329:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp330:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp332:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp333:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp334:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v232, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp335:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v248, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp336:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp337:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v247, v2, v1
.Ltmp338:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v232, v248
.Ltmp339:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v36, v36
	v_mov_b32_e32 v232, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp340:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v247, v235, v1
.Ltmp341:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v36
	v_mov_b32_e32 v235, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp345:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v227, v227
.Ltmp349:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v227, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v36, v227
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s14
.Ltmp350:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp351:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp352:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp353:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp354:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp355:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp356:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v250, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp357:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp358:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v249, v2, v1
.Ltmp359:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v229, v250
	v_mov_b32_e32 v229, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp360:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v2, v38, v38 :: v_dual_fmac_f32 v249, v233, v1
.Ltmp361:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v38
	v_dual_mov_b32 v240, v70 :: v_dual_mov_b32 v233, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp362:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp363:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp364:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp365:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp366:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp367:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp368:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v228, v228
.Ltmp369:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v228, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v38, v228
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s13
.Ltmp370:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp372:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp373:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp374:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp375:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp376:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v231, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v167, v3, v1
.Ltmp377:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_e32 v234, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp378:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v251, v2, v1
.Ltmp379:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v231, v167
	v_mov_b32_e32 v231, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v251, v230, v1
	v_mov_b32_e32 v230, v251
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_or_b32 s12, s47, 1
	s_or_b32 s13, s47, 2
	s_or_b32 s14, s47, 3
	s_or_b32 s15, s47, 4
	s_or_b32 s16, s47, 5
	s_or_b32 s17, s47, 6
	s_or_b32 s18, s47, 7
	s_or_b32 s19, s47, 8
	s_or_b32 s20, s47, 9
	s_or_b32 s21, s47, 10
	s_or_b32 s22, s47, 11
	s_or_b32 s23, s47, 12
	s_or_b32 s24, s47, 13
	s_or_b32 s25, s47, 14
	s_or_b32 s26, s47, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s47, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s12, s31
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v167, s47, v159
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v68, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v67, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v70, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v69, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v71, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v73, v72
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v71
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v71, v70
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v70, v69
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v69, v68
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v68, v67
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v67, v66
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s12, -1, 0
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_add_i32 s21, s47, s65
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_mad_u64_u32 v[33:34], null, s21, s33, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, s33, v33
	v_add_nc_u32_e32 v3, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v4, s33, v3
	v_add_nc_u32_e32 v5, s33, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v6, s33, v5
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v2, 1, v33
	v_lshlrev_b32_e32 v7, 1, v6
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v6, s33, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s69
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v8, s33, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v33, s33, v8
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v8, 1, v8
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v34, s33, v33
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s72
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x3
	buffer_load_u16 v2, v2, s[56:59], 0 offen
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	buffer_load_u16 v3, v3, s[56:59], 0 offen
	buffer_load_u16 v4, v4, s[56:59], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s73
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v35, s33, v34
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s74
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v36, s33, v35
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v34, 1, v34
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v37, s33, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v38, s33, v37
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v39, s33, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v40, 1, v39
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_lshlrev_b32_e32 v37, 1, v37
	v_add_lshl_u32 v39, v39, s33, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s12, s31, v167
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0xb
	buffer_load_u16 v33, v33, s[56:59], 0 offen
	buffer_load_u16 v34, v34, s[56:59], 0 offen
	buffer_load_u16 v35, v35, s[56:59], 0 offen
	buffer_load_u16 v36, v36, s[56:59], 0 offen
	buffer_load_u16 v5, v5, s[56:59], 0 offen
	buffer_load_u16 v7, v7, s[56:59], 0 offen
	buffer_load_u16 v6, v6, s[56:59], 0 offen
	buffer_load_u16 v8, v8, s[56:59], 0 offen
	buffer_load_u16 v37, v37, s[56:59], 0 offen
	buffer_load_u16 v38, v38, s[56:59], 0 offen
	buffer_load_u16 v40, v40, s[56:59], 0 offen
	buffer_load_u16 v39, v39, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s74, s0, s12
	s_and_b32 s72, s1, s12
	s_and_b32 s70, s5, s12
	s_and_b32 s68, s6, s12
	s_and_b32 s75, s7, s12
	s_and_b32 s73, s8, s12
	s_and_b32 s71, s9, s12
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s69, s10, s12
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v151, v2
	s_waitcnt vmcnt(14)
	ds_store_b16 v152, v1
	s_waitcnt vmcnt(13)
	ds_store_b16 v153, v3
	s_waitcnt vmcnt(12)
	ds_store_b16 v154, v4
	s_waitcnt vmcnt(11)
	ds_store_b16 v151, v33 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v152, v34 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v153, v35 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b16 v154, v36 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v155, v5
	s_waitcnt vmcnt(6)
	ds_store_b16 v156, v7
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v158, v8
	s_waitcnt vmcnt(3)
	ds_store_b16 v155, v37 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v156, v38 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v157, v40 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v39 offset:1024
	v_add_nc_u32_e32 v1, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v119
	ds_load_b128 v[37:40], v1
	v_add_nc_u32_e32 v1, 0, v120
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[175:182], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v121
	ds_load_b128 v[37:40], v1
	v_add_nc_u32_e32 v1, 0, v122
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[9:16], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v123
	ds_load_b128 v[37:40], v1
	v_add_nc_u32_e32 v1, 0, v124
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[17:24], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v125
	ds_load_b128 v[37:40], v1
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[25:32], v[66:73]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v167, v41
	v_cmp_le_i32_e64 s12, v167, v161
	v_cmp_le_i32_e64 s13, v167, v162
	v_cmp_le_i32_e64 s14, v167, v163
	v_cmp_le_i32_e64 s15, v167, v164
	v_cmp_le_i32_e64 s16, v167, v165
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s19, vcc_lo, s74
	s_and_b32 s12, s12, s72
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s17, v167, v168
	v_cmp_le_i32_e64 s18, v167, v169
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s13, s13, s70
	s_and_b32 s14, s14, s68
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s72, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s75
	s_and_b32 s16, s16, s73
	s_or_b32 s74, s20, s19
	s_or_b32 s72, s21, s12
	s_and_not1_b32 s12, s70, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s68, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s71
	s_and_b32 s18, s18, s69
	s_or_b32 s70, s12, s13
	s_or_b32 s68, s19, s14
	s_and_not1_b32 s12, s75, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s73, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s75, s12, s13
	s_or_b32 s73, s14, s15
	s_and_not1_b32 s12, s71, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s69, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s71, s12, s13
	s_or_b32 s69, s14, s15
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	v_cmp_ge_i32_e32 vcc_lo, v167, v183
	v_cmp_ge_i32_e64 s12, v167, v184
	v_cmp_ge_i32_e64 s13, v167, v185
	v_cmp_ge_i32_e64 s14, v167, v252
	v_cmp_ge_i32_e64 s15, v167, v253
	v_cmp_ge_i32_e64 s16, v167, v254
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v167, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v167, v1
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v167, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s19, vcc_lo, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s74
	s_and_b32 s19, s19, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v167, v1
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s12, s12, s20
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s12, s12, s72
	s_or_b32 s74, s20, s19
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s68, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v167, v1
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s13, s13, s21
	s_and_not1_b32 s21, s72, exec_lo
	s_and_b32 s13, s13, s70
	s_or_b32 s72, s21, s12
	s_and_not1_b32 s12, s70, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s70, s12, s13
	s_and_not1_b32 s12, s75, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v167, v1
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s68
	s_and_b32 s14, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s68, s19, s14
	s_and_not1_b32 s14, s73, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v167, v1
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s75
	s_and_b32 s13, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s75, s12, s13
	s_and_not1_b32 s12, s71, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v167, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s73
	s_and_b32 s15, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s73, s14, s15
	s_and_not1_b32 s14, s69, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v167, v1
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s71
	s_and_b32 s13, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s71, s12, s13
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v167, v1
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s69, s14, s15
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v250, 0xff800000
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v248, 0xff800000
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v246, 0xff800000
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0xff800000
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0xff800000
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0xff800000
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v245, 0xff800000
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow248
	v_mov_b32_e32 v107, v201
.LBB0_16:                               ; %._crit_edge
	v_dual_mov_b32 v108, v41 :: v_dual_and_b32 v1, 31, v0
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s12, 0x800000, v66
	v_cmp_gt_f32_e64 s13, 0x800000, v69
	v_cmp_gt_f32_e64 s14, 0x800000, v71
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v109, 1, v115
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v2, s35, v1
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cndmask_b32_e64 v3, 0, 32, s12
	v_cndmask_b32_e64 v4, 0, 0x42000000, s13
	v_cndmask_b32_e64 v5, 0, 32, s13
	v_cndmask_b32_e64 v6, 0, 0x42000000, s14
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 0x42000000, s12
	v_cmp_gt_f32_e64 s12, 0x800000, v73
	v_cndmask_b32_e64 v7, 0, 32, s14
	v_cmp_gt_f32_e64 s13, 0x800000, v67
	v_cmp_gt_f32_e64 s14, 0x800000, v251
	v_ldexp_f32 v3, v66, v3
	v_cndmask_b32_e64 v8, 0, 0x42000000, s12
	v_cndmask_b32_e64 v54, 0, 32, s12
	v_cmp_gt_f32_e64 s12, 0x800000, v247
	v_cndmask_b32_e64 v55, 0, 32, s13
	v_cndmask_b32_e64 v62, 0, 32, s14
	v_ldexp_f32 v5, v69, v5
	v_ldexp_f32 v7, v71, v7
	v_cndmask_b32_e64 v58, 0, 32, s12
	v_log_f32_e32 v3, v3
	v_cndmask_b32_e64 v56, 0, 0x42000000, s13
	v_cmp_gt_f32_e64 s13, 0x800000, v249
	v_ldexp_f32 v55, v67, v55
	v_ldexp_f32 v58, v247, v58
	v_ldexp_f32 v62, v251, v62
	v_log_f32_e32 v5, v5
	v_log_f32_e32 v7, v7
	v_cndmask_b32_e64 v60, 0, 32, s13
	v_ldexp_f32 v54, v73, v54
	v_log_f32_e32 v64, v55
	v_log_f32_e32 v58, v58
	v_log_f32_e32 v62, v62
	v_cndmask_b32_e64 v57, 0, 0x42000000, s12
	v_cndmask_b32_e64 v61, 0, 0x42000000, s14
	v_ldexp_f32 v60, v249, v60
	v_log_f32_e32 v63, v54
.Ltmp380:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v55, v84, v143 :: v_dual_sub_f32 v2, v3, v2
.Ltmp381:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v3, v5, v4 :: v_dual_sub_f32 v4, v7, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_log_f32_e32 v60, v60
	v_dual_sub_f32 v6, v64, v56 :: v_dual_sub_f32 v7, v58, v57
	v_sub_f32_e32 v56, v62, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v2, v68, v2 :: v_dual_add_f32 v3, v70, v3
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v66
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v59, 0, 0x42000000, s13
	v_sub_f32_e32 v5, v63, v8
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v7, v248, v7 :: v_dual_add_f32 v6, v246, v6
	v_add_f32_e32 v63, v167, v56
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v56, 0, v2, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v69
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v8, v60, v59
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v4, v72, v4 :: v_dual_add_f32 v5, v245, v5
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v2, 0x60, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v57, 0, v3, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v71
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v8, v250, v8
.Ltmp382:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v97, v146 :: v_dual_add_f32 v39, v104, v188
.Ltmp383:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v97, 12, v0
	v_cndmask_b32_e64 v58, 0, v4, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v73
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v2, 0, v2
	v_lshl_add_u32 v3, v200, 1, 0
.Ltmp384:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v102, v186 :: v_dual_add_f32 v40, v105, v189
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp385:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v59, 0, v5, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v67
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v4, v2, v109, v97
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v5, 28, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v60, 0, v6, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v247
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s11, vcc_lo
.Ltmp386:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v98, v195 :: v_dual_add_f32 v46, v99, v196
.Ltmp387:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v72, 0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v61, 0, v7, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v249
.Ltmp388:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v94, v148 :: v_dual_lshlrev_b32 v98, 2, v1
	v_dual_add_f32 v34, v95, v149 :: v_dual_add_f32 v35, v96, v150
	v_add_f32_e32 v38, v103, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp389:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v62, 0, v8, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v251
.Ltmp390:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v41, v90, v190 :: v_dual_add_f32 v42, v91, v191
	v_dual_add_f32 v43, v92, v192 :: v_dual_add_f32 v44, v93, v194
.Ltmp391:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v63, 0, v63, s12
	ds_store_b128 v3, v[56:59]
	ds_store_b128 v3, v[60:63] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v186, v4
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[56:59]
	ds_store_b128 v3, v[60:63] offset:16
.Ltmp392:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v57, v74, v135 :: v_dual_add_f32 v60, v77, v138
.Ltmp393:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v3, s42, v1, 2
	v_add_nc_u32_e32 v2, v2, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp394:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v75, v136 :: v_dual_add_f32 v61, v78, v139
.Ltmp395:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	ds_load_b32 v2, v2
.Ltmp396:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v59, v76, v137
	v_dual_mov_b32 v69, v72 :: v_dual_add_f32 v62, v79, v140
.Ltmp397:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v1, 0, v98
.Ltmp398:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v47, v100, v197 :: v_dual_add_f32 v48, v101, v198
	v_add_f32_e32 v63, v80, v141
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_dual_add_f32 v64, v81, v134 :: v_dual_mov_b32 v71, v72
	v_dual_add_f32 v49, v86, v199 :: v_dual_add_f32 v50, v87, v193
	v_dual_add_f32 v51, v88, v144 :: v_dual_add_f32 v52, v89, v147
	v_dual_add_f32 v53, v82, v145 :: v_dual_add_f32 v54, v83, v142
	v_add_f32_e32 v56, v85, v133
.Ltmp399:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s53, 0xffff
	s_mov_b32 s12, s52
	s_mov_b32 s14, s46
	s_mov_b32 s15, s47
	v_mov_b32_e32 v70, v72
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v2, v3, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[33:36]
	ds_store_b128 v72, v[37:40] offset:16
	ds_store_b128 v72, v[41:44] offset:32
	ds_store_b128 v72, v[45:48] offset:48
	ds_store_b128 v72, v[49:52] offset:64
	ds_store_b128 v72, v[53:56] offset:80
	ds_store_b128 v72, v[57:60] offset:96
	ds_store_b128 v72, v[61:64] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_mov_b32_e32 v68, v72
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
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v87, v72
	v_mov_b32_e32 v86, v72
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v81, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
	s_and_b32 s13, s55, 0xffff
	s_mov_b32 s12, s54
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s67
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[12:15], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[33:36]
	ds_store_b128 v72, v[37:40] offset:16
	ds_store_b128 v72, v[41:44] offset:32
	ds_store_b128 v72, v[45:48] offset:48
	ds_store_b128 v72, v[49:52] offset:64
	ds_store_b128 v72, v[53:56] offset:80
	ds_store_b128 v72, v[57:60] offset:96
	ds_store_b128 v72, v[61:64] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_vccnz .LBB0_24
; %bb.17:                               ; %.lr.ph81
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v58, 0x7632 :: v_dual_lshlrev_b32 v1, 2, v159
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[145:146], null, s29, v159, v[106:107]
	v_dual_mov_b32 v57, 0x5410 :: v_dual_lshlrev_b32 v2, 4, v159
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_add3_u32 v3, 0, v1, v117
	v_cmp_eq_u32_e32 vcc_lo, 0, v166
	v_cndmask_b32_e64 v4, 0x90, 0, s11
	v_and_b32_e32 v7, 52, v131
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[146:147], null, s43, 12, v[145:146]
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v189, v3
	v_mul_u32_u24_e32 v3, 0x48, v132
	v_dual_cndmask_b32 v57, 0x1054, v57 :: v_dual_mov_b32 v198, v186
	v_cndmask_b32_e32 v58, 0x3276, v58, vcc_lo
	v_xor_b32_e32 v4, v4, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v116, 2, v3
	v_and_or_b32 v35, v0, 2, v130
	v_lshl_or_b32 v7, v97, 5, v7
	v_lshl_or_b32 v57, v57, 8, v57
	v_lshl_or_b32 v58, v58, 8, v58
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[147:148], null, s43, 20, v[145:146]
	v_mad_u64_u32 v[148:149], null, s43, 24, v[145:146]
	v_mad_u64_u32 v[149:150], null, s43, 28, v[145:146]
	v_or_b32_e32 v194, v126, v98
	v_or_b32_e32 v191, v4, v129
	v_or3_b32 v150, v3, v128, v126
	v_or3_b32 v192, v129, v126, v127
	v_or3_b32 v193, v35, v7, v128
	v_or_b32_e32 v195, v114, v1
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v58, 0x760076, v58
	v_and_b32_e32 v57, 0x540054, v57
	v_xor_b32_e32 v48, 0x318, v194
	v_xor_b32_e32 v3, 0x120, v191
	v_xor_b32_e32 v4, 0x240, v191
	v_xor_b32_e32 v5, 0x360, v191
	v_xor_b32_e32 v6, 16, v150
	v_xor_b32_e32 v8, 32, v150
	v_xor_b32_e32 v33, 48, v150
	v_xor_b32_e32 v34, 64, v150
	v_xor_b32_e32 v36, 0x50, v150
	v_xor_b32_e32 v37, 0x60, v150
	v_xor_b32_e32 v38, 0x70, v150
	v_xor_b32_e32 v7, 0x90, v192
	v_xor_b32_e32 v35, 0x120, v192
	v_xor_b32_e32 v39, 0x1b0, v192
	v_xor_b32_e32 v40, 16, v193
	v_xor_b32_e32 v41, 32, v193
	v_xor_b32_e32 v42, 48, v193
	v_xor_b32_e32 v43, 0x84, v194
	v_xor_b32_e32 v44, 0x108, v194
	v_xor_b32_e32 v45, 0x18c, v194
	v_xor_b32_e32 v46, 0x210, v194
	v_xor_b32_e32 v47, 0x294, v194
	v_xor_b32_e32 v49, 0x39c, v194
	v_xor_b32_e32 v50, 0x420, v194
	v_xor_b32_e32 v51, 0x4a4, v194
	v_xor_b32_e32 v52, 0x528, v194
	v_xor_b32_e32 v53, 0x5ac, v194
	v_xor_b32_e32 v54, 0x630, v194
	v_xor_b32_e32 v55, 0x6b4, v194
	v_xor_b32_e32 v56, 0x738, v194
	v_xor_b32_e32 v1, 0x7bc, v194
	v_xor_b32_e32 v59, 4, v195
	v_xor_b32_e32 v60, 8, v195
	v_xor_b32_e32 v61, 12, v195
	v_xor_b32_e32 v62, 16, v195
	v_xor_b32_e32 v63, 20, v195
	v_xor_b32_e32 v64, 24, v195
	v_xor_b32_e32 v65, 28, v195
	v_xor_b32_e32 v66, 32, v195
	v_xor_b32_e32 v67, 36, v195
	v_xor_b32_e32 v68, 40, v195
	v_xor_b32_e32 v69, 44, v195
	v_xor_b32_e32 v70, 48, v195
	v_lshl_or_b32 v58, v58, 4, v58
	v_xor_b32_e32 v71, 52, v195
	v_xor_b32_e32 v72, 56, v195
	v_xor_b32_e32 v73, 60, v195
	v_mov_b32_e32 v90, v137
	v_lshl_or_b32 v57, v57, 4, v57
	s_clause 0x11                           ; 120-byte Folded Spill
	scratch_store_b32 off, v109, off offset:288
	scratch_store_b32 off, v254, off offset:280
	scratch_store_b32 off, v253, off offset:276
	scratch_store_b32 off, v252, off offset:272
	scratch_store_b32 off, v185, off offset:268
	scratch_store_b32 off, v184, off offset:264
	scratch_store_b32 off, v183, off offset:260
	scratch_store_b32 off, v169, off offset:256
	scratch_store_b32 off, v168, off offset:252
	scratch_store_b32 off, v165, off offset:248
	scratch_store_b32 off, v164, off offset:244
	scratch_store_b32 off, v163, off offset:240
	scratch_store_b32 off, v162, off offset:236
	scratch_store_b32 off, v161, off offset:232
	scratch_store_b128 off, v[17:20], off offset:168
	scratch_store_b128 off, v[21:24], off offset:184
	scratch_store_b128 off, v[9:12], off offset:200
	scratch_store_b128 off, v[13:16], off offset:216
	v_dual_mov_b32 v9, v175 :: v_dual_add_nc_u32 v230, 0, v48
	v_lshl_add_u32 v187, s43, 2, v145
	v_lshl_add_u32 v188, s43, 3, v145
	v_lshl_add_u32 v190, s43, 4, v145
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v196, 0x5040504, v57
	v_dual_mov_b32 v92, v137 :: v_dual_and_b32 v197, 0x7060706, v58
	v_dual_mov_b32 v94, v137 :: v_dual_add_nc_u32 v199, 0, v113
	v_dual_mov_b32 v91, v137 :: v_dual_add_nc_u32 v200, 0, v2
	v_dual_mov_b32 v93, v137 :: v_dual_add_nc_u32 v202, 0, v119
	v_dual_mov_b32 v96, v137 :: v_dual_add_nc_u32 v203, 0, v120
	v_dual_mov_b32 v95, v137 :: v_dual_add_nc_u32 v204, 0, v121
	v_dual_mov_b32 v82, v137 :: v_dual_add_nc_u32 v205, 0, v122
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v206, 0, v123
	v_dual_mov_b32 v84, v137 :: v_dual_add_nc_u32 v207, 0, v124
	v_dual_mov_b32 v83, v137 :: v_dual_add_nc_u32 v208, 0, v125
	v_dual_mov_b32 v86, v137 :: v_dual_add_nc_u32 v209, 0, v3
	v_dual_mov_b32 v85, v137 :: v_dual_add_nc_u32 v210, 0, v4
	v_dual_mov_b32 v88, v137 :: v_dual_add_nc_u32 v211, 0, v5
	v_dual_mov_b32 v87, v137 :: v_dual_add_nc_u32 v212, 0, v6
	v_dual_mov_b32 v74, v137 :: v_dual_add_nc_u32 v213, 0, v8
	v_add_nc_u32_e32 v214, 0, v33
	v_dual_mov_b32 v76, v137 :: v_dual_add_nc_u32 v215, 0, v34
	v_dual_mov_b32 v75, v137 :: v_dual_add_nc_u32 v216, 0, v36
	v_dual_mov_b32 v78, v137 :: v_dual_add_nc_u32 v217, 0, v37
	v_dual_mov_b32 v77, v137 :: v_dual_add_nc_u32 v218, 0, v38
	v_dual_mov_b32 v80, v137 :: v_dual_add_nc_u32 v219, 0, v7
	v_dual_mov_b32 v79, v137 :: v_dual_add_nc_u32 v220, 0, v35
	v_add_nc_u32_e32 v221, 0, v39
	v_add_nc_u32_e32 v222, 0, v40
	v_add_nc_u32_e32 v223, 0, v41
	v_add_nc_u32_e32 v224, 0, v42
	v_add_nc_u32_e32 v225, 0, v43
	v_add_nc_u32_e32 v226, 0, v44
	v_add_nc_u32_e32 v227, 0, v45
	v_add_nc_u32_e32 v228, 0, v46
	v_dual_mov_b32 v10, v176 :: v_dual_add_nc_u32 v229, 0, v47
	v_dual_mov_b32 v12, v178 :: v_dual_add_nc_u32 v231, 0, v49
	v_dual_mov_b32 v11, v177 :: v_dual_add_nc_u32 v232, 0, v50
	v_dual_mov_b32 v14, v180 :: v_dual_add_nc_u32 v233, 0, v51
	v_dual_mov_b32 v13, v179 :: v_dual_add_nc_u32 v234, 0, v52
	v_dual_mov_b32 v16, v182 :: v_dual_add_nc_u32 v235, 0, v53
	v_dual_mov_b32 v15, v181 :: v_dual_add_nc_u32 v236, 0, v54
	v_add_nc_u32_e32 v237, 0, v55
	v_add_nc_u32_e32 v238, 0, v56
	v_add_nc_u32_e32 v239, 0, v1
	v_add_nc_u32_e32 v240, 0, v59
	v_add_nc_u32_e32 v241, 0, v60
	v_add_nc_u32_e32 v242, 0, v61
	v_add_nc_u32_e32 v243, 0, v62
	v_add_nc_u32_e32 v244, 0, v63
	v_add_nc_u32_e32 v245, 0, v64
	v_add_nc_u32_e32 v246, 0, v65
	v_add_nc_u32_e32 v247, 0, v66
	v_add_nc_u32_e32 v248, 0, v67
	v_add_nc_u32_e32 v249, 0, v68
	v_add_nc_u32_e32 v250, 0, v69
	v_add_nc_u32_e32 v251, 0, v70
	v_add_nc_u32_e32 v252, 0, v71
	v_add_nc_u32_e32 v253, 0, v72
	v_add_nc_u32_e32 v254, 0, v73
	v_mov_b32_e32 v73, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, v137
	v_mov_b32_e32 v67, v137
	v_mov_b32_e32 v68, v137
	v_mov_b32_e32 v69, v137
	v_mov_b32_e32 v70, v137
	v_mov_b32_e32 v71, v137
	v_mov_b32_e32 v72, v137
	v_mov_b32_e32 v64, v108
	s_and_b32 s41, s41, 0xffff
	s_add_i32 s26, s50, s51
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	.loc	1 322 17                        ; attention_backward.py:322:17
	s_mov_b32 s52, s66
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s53, 0x76543210
	scratch_store_b32 off, v166, off offset:284 ; 4-byte Folded Spill
	s_branch .LBB0_19
.LBB0_18:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s11, s28, s29
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v41, 0, v193
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s11, s26, s11
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s28, s28, 16
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v1, s11, v190, 1
	v_add_lshl_u32 v2, s11, v145, 1
	v_add_lshl_u32 v3, s11, v147, 1
	v_add_lshl_u32 v4, s11, v187, 1
	v_add_lshl_u32 v5, s11, v148, 1
	v_add_lshl_u32 v6, s11, v188, 1
	v_add_lshl_u32 v7, s11, v149, 1
	v_add_lshl_u32 v8, s11, v146, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s79
	v_cndmask_b32_e64 v2, 0x80000000, v2, s78
	v_cndmask_b32_e64 v3, 0x80000000, v3, s77
	v_cndmask_b32_e64 v4, 0x80000000, v4, s76
	v_cndmask_b32_e64 v5, 0x80000000, v5, s75
	v_cndmask_b32_e64 v6, 0x80000000, v6, s74
	v_cndmask_b32_e64 v7, 0x80000000, v7, s73
	v_cndmask_b32_e64 v8, 0x80000000, v8, s51
	s_clause 0x7
	buffer_load_u16 v1, v1, s[44:47], 0 offen
	buffer_load_u16 v2, v2, s[44:47], 0 offen
	buffer_load_u16 v3, v3, s[44:47], 0 offen
	buffer_load_u16 v4, v4, s[44:47], 0 offen
	buffer_load_u16 v5, v5, s[44:47], 0 offen
	buffer_load_u16 v6, v6, s[44:47], 0 offen
	buffer_load_u16 v7, v7, s[44:47], 0 offen
	buffer_load_u16 v8, v8, s[44:47], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v138, v137
	v_mov_b32_e32 v140, v137
	v_mov_b32_e32 v139, v137
	v_mov_b32_e32 v142, v137
	v_mov_b32_e32 v141, v137
	v_mov_b32_e32 v144, v137
	v_mov_b32_e32 v143, v137
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v1.h, 0xff80, v1.l, s79
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v1.l, 0xff80, v2.l, s78
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v2.h, 0xff80, v3.l, s77
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v2.l, 0xff80, v4.l, s76
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v3.h, 0xff80, v5.l, s75
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v5, 0, v191
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v3.l, 0xff80, v6.l, s74
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v4.h, 0xff80, v7.l, s73
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v209, v2
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v4.l, 0xff80, v8.l, s51
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v5, v1
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b16_e32 v5.l, 0
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v5.h, v1.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v210, v3
	ds_store_b32 v211, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v1.l, v5.l
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s11, 0xff800000, v5
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v5.h, v2.l
	v_mov_b16_e32 v2.l, v5.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s11, s78, s11
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s12, 0xff800000, v2
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s13, s79, vcc_lo
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v5
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v1, 0, 1, s13
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_mov_b16_e32 v5.h, v3.l
	v_mov_b16_e32 v3.l, v5.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_mov_b16_e32 v33.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	s_and_b32 s11, s77, s12
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	s_and_b32 s11, s76, vcc_lo
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v3
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v33.l, v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s11, 0xff800000, v5
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_mov_b16_e32 v5.h, v4.l
	v_mov_b16_e32 v4.l, v5.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s14, s75, vcc_lo
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v1, 0, v150
	.loc	1 342 32                        ; attention_backward.py:342:32
	ds_load_u16 v172, v1
	ds_load_u16 v171, v212
	ds_load_u16 v201, v214
	ds_load_u16 v167, v216
	ds_load_u16 v255, v218
	ds_load_u16 v170, v217
	ds_load_u16 v173, v215
	ds_load_u16 v174, v213
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v1, 0, v192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s12, 0xff800000, v4
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s11, s74, s11
	ds_store_b16 v1, v33
	v_cndmask_b32_e64 v1, 0, 1, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v5
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v33.h, 8, v34.l
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_mov_b32_e32 v97, v137
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s72
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_mov_b16_e32 v33.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	s_and_b32 s11, s73, s12
	v_or_b16 v33.h, v35.l, v33.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v98, v138
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	s_and_b32 s11, s51, s13
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_mov_b32 s51, s47
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v99, v139
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v33.l, v34.l, v33.l
	v_mov_b16_e32 v34.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v100, v140 :: v_dual_mov_b32 v101, v141
	v_mov_b32_e32 v102, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v34.l, 8, v34.l
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v104, v144 :: v_dual_mov_b32 v103, v143
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v34.l, v35.l, v34.l
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[35:36], null, s50, s38, v[0:1]
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v219, v33
	ds_store_b16 v220, v33
	ds_store_b16 v221, v34
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_mov_b32 s50, s46
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v58, v41
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v58, v41 offset:64
	ds_load_u8_d16 v59, v222
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v59, v223
	ds_load_u8_d16 v60, v224
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v60, v224 offset:64
	ds_load_u8_d16 v61, v223 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v61, v222 offset:64
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v41, 0, v194
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v1, s38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v3, s38, v1
	v_add_nc_u32_e32 v4, s38, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v5, s38, v4
	v_add_nc_u32_e32 v6, s38, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v7, s38, v6
	v_add_nc_u32_e32 v8, s38, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v33, s38, v8
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v2, 1, v35
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v34, s38, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s71
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v35, s38, v34
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v36, s38, v35
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v37, s38, v36
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v38, s38, v37
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v39, s38, v38
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v38, 1, v38
	v_lshlrev_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v40, 1, v39
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v34
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v4, 1, v4
	v_add_lshl_u32 v39, v39, s38, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s69
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s68
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s61
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s59
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s58
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s57
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s55
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s56
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s28, s39
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0xf
	buffer_load_u16 v2, v2, s[48:51], 0 offen
	buffer_load_u16 v1, v1, s[48:51], 0 offen
	buffer_load_u16 v3, v3, s[48:51], 0 offen
	buffer_load_u16 v4, v4, s[48:51], 0 offen
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	buffer_load_u16 v38, v38, s[48:51], 0 offen
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v41, v2
	s_waitcnt vmcnt(14)
	ds_store_b16 v225, v1
	s_waitcnt vmcnt(13)
	ds_store_b16 v226, v3
	s_waitcnt vmcnt(12)
	ds_store_b16 v227, v4
	s_waitcnt vmcnt(11)
	ds_store_b16 v228, v5
	s_waitcnt vmcnt(10)
	ds_store_b16 v229, v6
	s_waitcnt vmcnt(9)
	ds_store_b16 v230, v7
	s_waitcnt vmcnt(8)
	ds_store_b16 v231, v8
	s_waitcnt vmcnt(7)
	ds_store_b16 v232, v33
	s_waitcnt vmcnt(6)
	ds_store_b16 v233, v34
	s_waitcnt vmcnt(5)
	ds_store_b16 v234, v35
	s_waitcnt vmcnt(4)
	ds_store_b16 v235, v36
	s_waitcnt vmcnt(3)
	ds_store_b16 v236, v37
	s_waitcnt vmcnt(2)
	ds_store_b16 v237, v38
	s_waitcnt vmcnt(1)
	ds_store_b16 v238, v40
	s_waitcnt vmcnt(0)
	ds_store_b16 v239, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off
	scratch_load_b128 v[21:24], off, off offset:16
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v1, 0, v195
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[175:176], v240 offset1:16
	ds_load_2addr_b32 v[177:178], v244 offset1:16
	ds_load_2addr_b32 v[179:180], v248 offset1:16
	ds_load_2addr_b32 v[181:182], v252 offset1:16
	ds_load_2addr_b32 v[184:185], v241 offset1:16
	ds_load_2addr_b32 v[161:162], v242 offset1:16
	ds_load_2addr_b32 v[163:164], v243 offset1:16
	ds_load_2addr_b32 v[62:63], v1 offset1:16
	ds_load_2addr_b32 v[165:166], v245 offset1:16
	ds_load_2addr_b32 v[168:169], v246 offset1:16
	ds_load_2addr_b32 v[1:2], v247 offset1:16
	ds_load_2addr_b32 v[3:4], v249 offset1:16
	ds_load_2addr_b32 v[5:6], v250 offset1:16
	ds_load_2addr_b32 v[7:8], v251 offset1:16
	ds_load_2addr_b32 v[33:34], v253 offset1:16
	ds_load_2addr_b32 v[40:41], v254 offset1:16
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v42.h, v175.l
	s_waitcnt lgkmcnt(14)
	v_mov_b16_e64 v44.h, v177.l
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v46.h, v179.l
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e64 v48.h, v181.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v43.l, v184.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v43.h, v161.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v44.l, v163.l
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e32 v42.l, v62.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v45.l, v165.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v45.h, v168.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e32 v46.l, v1.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v47.l, v3.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e32 v47.h, v5.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e32 v48.l, v7.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e32 v49.l, v33.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v49.h, v40.l
	v_mov_b16_e32 v5.l, v3.h
	v_mov_b16_e64 v181.l, v7.h
	v_mov_b16_e64 v179.l, v1.h
	v_mov_b16_e64 v175.l, v62.h
	v_mov_b16_e64 v161.l, v184.h
	v_mov_b32_e32 v38, v5
	v_mov_b32_e32 v39, v181
	v_mov_b16_e64 v177.l, v163.h
	v_mov_b16_e64 v168.l, v165.h
	v_mov_b16_e32 v40.l, v33.h
	v_mov_b32_e32 v33, v175
	v_mov_b32_e32 v37, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v35, v177 :: v_dual_mov_b32 v36, v168
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[42:49], v[17:24], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:32
	scratch_load_b128 v[21:24], off, off offset:48
	v_mov_b16_e32 v42.l, v63.l
	v_mov_b16_e64 v42.h, v176.l
	v_mov_b16_e64 v43.l, v185.l
	v_mov_b16_e64 v43.h, v162.l
	v_mov_b16_e64 v44.l, v164.l
	v_mov_b16_e64 v44.h, v178.l
	v_mov_b16_e64 v45.l, v166.l
	v_mov_b16_e64 v45.h, v169.l
	v_mov_b16_e32 v46.l, v2.l
	v_mov_b16_e64 v46.h, v180.l
	v_mov_b16_e32 v47.l, v4.l
	v_mov_b16_e32 v47.h, v6.l
	v_mov_b16_e32 v48.l, v8.l
	v_mov_b16_e64 v48.h, v182.l
	v_mov_b16_e32 v49.l, v34.l
	v_mov_b16_e32 v49.h, v41.l
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e64 v180.l, v2.h
	v_mov_b16_e64 v182.l, v8.h
	v_mov_b16_e32 v41.l, v34.h
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v161 :: v_dual_mov_b32 v181, v6
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:96
	scratch_load_b128 v[5:8], off, off offset:112
	v_mov_b16_e64 v162.l, v185.h
	v_mov_b16_e64 v169.l, v166.h
	v_mov_b32_e32 v183, v41
	v_mov_b16_e64 v176.l, v63.h
	v_mov_b16_e64 v178.l, v164.h
	v_mov_b32_e32 v177, v162
	v_mov_b32_e32 v179, v169
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[42:49], v[17:24], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:64
	scratch_load_b128 v[21:24], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[17:24], v[97:104]
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v33.l, 1, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[97:104], v[176:183], v[1:8], v[97:104]
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v2, 16, v171
	v_lshlrev_b32_e32 v8, 16, v255
	v_lshlrev_b32_e32 v6, 16, v167
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v37, v100, v189 :: v_dual_mul_f32 v2, 0x3fb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v8, 0x3fb8aa3b, v8
	v_dual_mul_f32 v6, 0x3fb8aa3b, v6 :: v_dual_lshlrev_b32 v1, 16, v172
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v33.l, 1, v59.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v2, s52, v51 :: v_dual_lshlrev_b32 v5, 16, v173
	v_fmac_f32_e32 v8, s52, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v6, s52, v55 :: v_dual_sub_f32 v41, v104, v189
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v2, v2, v198
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v34, v97, v189 :: v_dual_lshlrev_b32 v3, 16, v174
	v_dual_sub_f32 v35, v98, v189 :: v_dual_mov_b32 v182, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v1, 0x3fb8aa3b, v1
	v_dual_mul_f32 v3, 0x3fb8aa3b, v3 :: v_dual_sub_f32 v38, v101, v189
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v4, 16, v201
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v36, v99, v189 :: v_dual_lshlrev_b32 v7, 16, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v1, s66, v50 :: v_dual_sub_f32 v40, v103, v189
	.loc	1 343 31 is_stmt 0              ; attention_backward.py:343:31
	v_dual_mul_f32 v4, 0x3fb8aa3b, v4 :: v_dual_mul_f32 v7, 0x3fb8aa3b, v7
	v_mov_b32_e32 v181, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v1, v186
	v_dual_mov_b32 v179, v13 :: v_dual_fmac_f32 v4, s52, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v7, s66, v56
	v_mov_b32_e32 v177, v11
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	v_dual_mov_b32 v175, v9 :: v_dual_mov_b32 v180, v14
	v_mov_b32_e32 v178, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v176, v10 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v1, v1, v34
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mul_f32 v5, 0x3fb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s64, v1 :: v_dual_mul_f32 v2, v2, v35
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v3, s66, v52
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v35.l, 1, v59.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v33, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v1, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v33, v2, 16, 1
	v_cmp_o_f32_e64 s11, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v33, 0x7fff
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v35.l
	v_and_b16 v35.l, 1, v60.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s53, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v2, v1, v196
	v_perm_b32 v34, v2, v1, v197
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v3, v186
	v_sub_f32_e32 v2, v4, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v35.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v36 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s64, v1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v37
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v37.l, 1, v58.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s11, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v2, v3, 0x7fff
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v37.l
	v_and_b16 v37.l, 1, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	v_permlanex16_b32 v2, v1, s53, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v2, v1, v196
	v_perm_b32 v36, v2, v1, v197
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v2, v6, v198
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v39, v102, v189
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v5, s66, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v5, v186
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v37.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v1, v1, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mul_f32 v1, s64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v39
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v39.l, 1, v61.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v1, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s11, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v3, 0x7fff
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v39.l
	v_and_b16 v39.l, 1, v60.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s53, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v2, v1, v196
	v_perm_b32 v38, v2, v1, v197
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v7, v186
	v_sub_f32_e32 v2, v8, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v39.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v40 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s64, v1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s11, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v2, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	v_permlanex16_b32 v2, v1, s53, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v2, v1, v196
	v_perm_b32 v40, v2, v1, v197
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[33:40], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[33:40], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[33:40], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[33:40], v[65:72]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc0 .LBB0_23
.LBB0_19:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s11, s28, 1
	s_or_b32 s12, s28, 2
	s_or_b32 s13, s28, 3
	s_or_b32 s14, s28, 4
	s_or_b32 s15, s28, 5
	s_or_b32 s16, s28, 6
	s_or_b32 s17, s28, 7
	s_or_b32 s18, s28, 8
	s_or_b32 s19, s28, 9
	s_or_b32 s20, s28, 10
	s_or_b32 s21, s28, 11
	s_or_b32 s22, s28, 12
	s_or_b32 s23, s28, 13
	s_or_b32 s24, s28, 14
	s_or_b32 s25, s28, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s28, s31
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v98, s28, v159
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s11, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v139, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s12, s31
	v_cmp_gt_i32_e64 s11, s31, v98
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v138, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v140, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v144, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v141, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v143, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v50, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v57, v144
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v52, v139
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v54, v141
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v51, v138
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v56, v143
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v53, v140
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s56, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s50, s28, s65
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s72
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[33:34], null, s50, s33, v[0:1]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s78, s0, s11
	s_and_b32 s76, s1, s11
	s_and_b32 s74, s5, s11
	s_and_b32 s51, s6, s11
	s_and_b32 s79, s7, s11
	s_and_b32 s77, s8, s11
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v2, s33, v33
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s75, s9, s11
	s_and_b32 s73, s10, s11
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v55, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v4, 1, v3
	v_lshlrev_b32_e32 v1, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x1
	buffer_load_u16 v33, v1, s[40:43], 0 offen
	buffer_load_u16 v34, v4, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v1, s33, v3
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v4, 1, v3
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s63
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v35, v4, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v3
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v5, 1, v4
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s61
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v36, v5, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v4
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v6, 1, v5
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v5
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v5
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s59
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v8, 1, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_load_u16 v37, v6, s[40:43], 0 offen
	buffer_load_u16 v38, v8, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s33, v7
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v8, 1, v7
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s55
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v39, v8, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v8, s33, v7
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v40, 1, v8
	v_add_lshl_u32 v8, v8, s33, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s69
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s62
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v40, v40, s[40:43], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s67
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s58
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x3
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s56
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s54
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s60
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x3
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v36.h, v4.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v35.h, v3.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v34.h, v1.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v33.h, v2.l
	ds_store_b128 v199, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v200
	ds_load_b128 v[121:124], v200 offset:256
	ds_load_b128 v[113:116], v200 offset:512
	ds_load_b128 v[105:108], v200 offset:768
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v40.h, v8.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v39.h, v7.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v6.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v37.h, v5.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v199, v[37:40]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v200
	ds_load_b128 v[125:128], v200 offset:256
	ds_load_b128 v[117:120], v200 offset:512
	ds_load_b128 v[109:112], v200 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v156, v3
	ds_store_b16 v152, v2
	ds_store_b16 v151, v33
	ds_store_b16 v153, v34
	ds_store_b16 v155, v35
	ds_store_b16 v157, v36
	ds_store_b16 v155, v39 offset:1024
	ds_store_b16 v157, v40 offset:1024
	ds_store_b16 v151, v37 offset:1024
	ds_store_b16 v153, v38 offset:1024
	ds_store_b16 v152, v5 offset:1024
	ds_store_b16 v154, v1
	ds_store_b16 v154, v6 offset:1024
	ds_store_b16 v156, v7 offset:1024
	ds_store_b16 v158, v4
	ds_store_b16 v158, v8 offset:1024
	v_add_nc_u32_e32 v1, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v1
	ds_load_b128 v[37:40], v202
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:200
	scratch_load_b128 v[5:8], off, off offset:216
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[33:40], v[175:182], v[50:57]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[33:36], v203
	ds_load_b128 v[37:40], v204
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[33:40], v[1:8], v[50:57]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:168
	scratch_load_b128 v[5:8], off, off offset:184
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[33:36], v205
	ds_load_b128 v[37:40], v206
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[33:40], v[1:8], v[50:57]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[33:36], v207
	ds_load_b128 v[37:40], v208
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[33:40], v[25:32], v[50:57]
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_cbranch_vccnz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	v_cmp_le_i32_e32 vcc_lo, v98, v64
	s_and_not1_b32 s19, s78, exec_lo
	s_and_not1_b32 s20, s76, exec_lo
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s18, vcc_lo, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, exec_lo
	s_or_b32 s78, s19, s18
	s_and_not1_b32 s18, s51, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s11, v98, v1
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s11, s11, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, exec_lo
	s_or_b32 s76, s20, s11
	s_and_not1_b32 s11, s74, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v98, v1
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s12, s12, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s74, s11, s12
	s_and_not1_b32 s11, s79, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v98, v1
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s13, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s51, s18, s13
	s_and_not1_b32 s13, s77, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v98, v1
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s14, exec_lo
	s_or_b32 s79, s11, s12
	s_and_not1_b32 s11, s75, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v98, v1
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s15, s15, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s77, s13, s14
	s_and_not1_b32 s13, s73, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s16, v98, v1
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s16, s16, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s16, exec_lo
	s_or_b32 s75, s11, s12
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v98, v1
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s17, s17, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s73, s13, s14
.LBB0_21:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	s_cbranch_vccnz .LBB0_18
; %bb.22:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v98, v1
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s11, v98, v1
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v98, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v98, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v98, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v98, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v98, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v98, v1
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v98, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s18, vcc_lo, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s78
	s_and_b32 s18, s18, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v98, v1
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s19, s78, exec_lo
	s_and_b32 s11, s11, s76
	s_or_b32 s78, s19, s18
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s51, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v98, v1
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s12, s12, s20
	s_and_not1_b32 s20, s76, exec_lo
	s_and_b32 s12, s12, s74
	s_or_b32 s76, s20, s11
	s_and_not1_b32 s11, s74, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s74, s11, s12
	s_and_not1_b32 s11, s79, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v98, v1
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s13, s13, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s51
	s_and_b32 s13, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s51, s18, s13
	s_and_not1_b32 s13, s77, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v98, v1
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s79
	s_and_b32 s12, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s79, s11, s12
	s_and_not1_b32 s11, s75, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v98, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s77
	s_and_b32 s14, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s77, s13, s14
	s_and_not1_b32 s13, s73, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v98, v1
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s75
	s_and_b32 s12, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s75, s11, s12
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v98, v1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s17, s17, s25
	s_and_b32 s17, s17, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s73, s13, s14
	s_branch .LBB0_18
.LBB0_23:                               ; %Flow
	.loc	1 0 17                          ; attention_backward.py:0:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v166, off, off offset:284
	scratch_load_b32 v109, off, off offset:288
.LBB0_24:                               ; %._crit_edge82
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v109, v159
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshrrev_b32_e32 v1, 4, v166
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s35, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v3, 62, v1
	v_or_b32_e32 v4, 60, v1
	v_or_b32_e32 v5, 58, v1
	v_or_b32_e32 v6, 56, v1
	v_or_b32_e32 v7, 54, v1
	v_or_b32_e32 v8, 52, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
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
	v_mul_lo_u32 v0, s33, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s0, s33, v3
	v_cmp_gt_i32_e64 s1, s33, v4
	v_cmp_gt_i32_e64 s2, s33, v5
	v_cmp_gt_i32_e64 s3, s33, v6
	v_cmp_gt_i32_e64 s4, s33, v7
	v_cmp_gt_i32_e64 s5, s33, v8
	v_cmp_gt_i32_e64 s6, s33, v2
	v_cmp_gt_i32_e64 s7, s33, v9
	v_cmp_gt_i32_e64 s8, s33, v10
	v_cmp_gt_i32_e64 s9, s33, v11
	v_cmp_gt_i32_e64 s10, s33, v12
	v_cmp_gt_i32_e64 s11, s33, v13
	v_cmp_gt_i32_e64 s12, s33, v14
	v_cmp_gt_i32_e64 s13, s33, v15
	v_cmp_gt_i32_e64 s14, s33, v16
	v_cmp_gt_i32_e64 s15, s33, v17
	v_cmp_gt_i32_e64 s16, s33, v18
	v_cmp_gt_i32_e64 s17, s33, v19
	v_cmp_gt_i32_e64 s18, s33, v20
	v_cmp_gt_i32_e64 s19, s33, v21
	v_cmp_gt_i32_e64 s20, s33, v22
	v_cmp_gt_i32_e64 s21, s33, v23
	v_cmp_gt_i32_e64 s22, s33, v24
	v_cmp_gt_i32_e64 s23, s33, v25
	v_cmp_gt_i32_e64 s24, s33, v26
	v_cmp_gt_i32_e64 s25, s33, v27
	v_cmp_gt_i32_e64 s26, s33, v28
	v_cmp_gt_i32_e64 s27, s33, v29
	v_cmp_gt_i32_e64 s28, s33, v30
	v_cmp_gt_i32_e64 s29, s33, v31
	v_cmp_gt_i32_e64 s30, s33, v32
	v_cmp_gt_i32_e64 s31, s33, v1
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
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v32, v32, s34, 2
	v_add_lshl_u32 v31, v31, s34, 2
	v_add_lshl_u32 v3, v29, s34, 2
	v_add_lshl_u32 v28, v28, s34, 2
	v_add_lshl_u32 v0, v0, s34, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s30
	v_cndmask_b32_e64 v31, 0x80000000, v31, s29
	v_cndmask_b32_e64 v3, 0x80000000, v3, s27
	v_add_lshl_u32 v27, v27, s34, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v1, v1, s34, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s26
	v_add_lshl_u32 v24, v24, s34, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s25
	v_add_lshl_u32 v23, v23, s34, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	v_add_lshl_u32 v20, v20, s34, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s22
	v_add_lshl_u32 v19, v19, s34, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s21
	buffer_store_b32 v89, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v30, s34, 2
	s_clause 0x1
	buffer_store_b32 v90, v32, s[36:39], 0 offen
	buffer_store_b32 v91, v31, s[36:39], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	v_add_lshl_u32 v16, v16, s34, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	s_clause 0x1
	buffer_store_b32 v92, v1, s[36:39], 0 offen
	buffer_store_b32 v93, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v26, s34, 2
	v_add_lshl_u32 v3, v25, s34, 2
	s_clause 0x1
	buffer_store_b32 v94, v28, s[36:39], 0 offen
	buffer_store_b32 v95, v27, s[36:39], 0 offen
	v_add_lshl_u32 v15, v15, s34, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s14
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s23
	s_clause 0x1
	buffer_store_b32 v96, v1, s[36:39], 0 offen
	buffer_store_b32 v81, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v22, s34, 2
	v_add_lshl_u32 v3, v21, s34, 2
	s_clause 0x1
	buffer_store_b32 v82, v24, s[36:39], 0 offen
	buffer_store_b32 v83, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v15, 0x80000000, v15, s13
	v_add_lshl_u32 v12, v12, s34, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	s_clause 0x1
	buffer_store_b32 v84, v1, s[36:39], 0 offen
	buffer_store_b32 v85, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, s34, 2
	v_add_lshl_u32 v3, v17, s34, 2
	s_clause 0x1
	buffer_store_b32 v86, v20, s[36:39], 0 offen
	buffer_store_b32 v87, v19, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s34, 2
	v_add_lshl_u32 v2, v2, s34, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	s_clause 0x1
	buffer_store_b32 v88, v1, s[36:39], 0 offen
	buffer_store_b32 v73, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v14, s34, 2
	v_add_lshl_u32 v3, v13, s34, 2
	s_clause 0x1
	buffer_store_b32 v74, v16, s[36:39], 0 offen
	buffer_store_b32 v75, v15, s[36:39], 0 offen
	v_add_lshl_u32 v8, v8, s34, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b32 v76, v1, s[36:39], 0 offen
	buffer_store_b32 v77, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v10, s34, 2
	v_add_lshl_u32 v3, v9, s34, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	s_clause 0x3
	buffer_store_b32 v78, v12, s[36:39], 0 offen
	buffer_store_b32 v79, v11, s[36:39], 0 offen
	buffer_store_b32 v80, v1, s[36:39], 0 offen
	buffer_store_b32 v65, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v7, s34, 2
	s_clause 0x1
	buffer_store_b32 v66, v2, s[36:39], 0 offen
	buffer_store_b32 v67, v8, s[36:39], 0 offen
	v_add_lshl_u32 v2, v6, s34, 2
	v_add_lshl_u32 v3, v5, s34, 2
	v_add_lshl_u32 v4, v4, s34, 2
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
.Ltmp400:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 296
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
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 296
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23924
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 296
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
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
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
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
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
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
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 296
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 73
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
