	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v255, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v37, 0x1b0, v65
	v_xor_b32_e32 v41, 0x3f0, v65
	v_xor_b32_e32 v36, 0x120, v65
	v_xor_b32_e32 v38, 0x240, v65
	v_xor_b32_e32 v39, 0x2d0, v65
	v_xor_b32_e32 v40, 0x360, v65
	v_add_nc_u32_e32 v154, 0, v37
	v_add_nc_u32_e32 v153, 0, v36
	v_add_nc_u32_e32 v155, 0, v38
	v_add_nc_u32_e32 v158, 0, v41
	v_add_nc_u32_e32 v157, 0, v40
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s27, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s22, -1, 0
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
	s_sub_i32 s20, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s9, s28, s29
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s20, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s9, s9, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s21, s3, s5
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
	s_abs_i32 s24, s21
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s9
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s35, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s25, s2, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s35, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s23, s25
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s35, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s23
	s_sub_i32 s28, 0, s23
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s35, 4
	s_or_b32 s8, s35, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s35, 6
	s_or_b32 s2, s35, 7
	s_or_b32 s9, s35, 8
	s_or_b32 s16, s35, 9
	s_or_b32 s17, s35, 10
	s_or_b32 s18, s35, 11
	s_or_b32 s11, s35, 12
	s_or_b32 s19, s35, 13
	s_or_b32 s34, s35, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s26, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s36, s35, 15
	s_or_b32 s37, s35, 16
	s_or_b32 s39, s35, 17
	s_or_b32 s41, s35, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s26, s26, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s42, s35, 19
	s_or_b32 s44, s35, 20
	s_or_b32 s46, s35, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s26, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s48, s35, 22
	s_or_b32 s49, s35, 23
	s_or_b32 s65, s35, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s28, s28, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s66, s35, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s28, s26, s28
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s67, s35, 26
	s_or_b32 s68, s35, 27
	s_or_b32 s69, s35, 28
	s_or_b32 s70, s35, 29
	s_or_b32 s71, s35, 30
	s_or_b32 s72, s35, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s26, s26, s28
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s35, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s4, s30
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s5, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s6, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s7, s30
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s8, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s10, s30
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s2, s30
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s9, s30
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s16, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s17, s30
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s18, s30
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s11, s30
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s19, s30
	s_load_b128 s[16:19], s[0:1], 0x38
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s34, s30
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s36, s30
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s37, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s39, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s41, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s42, s30
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s42, s3, s30
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s44, s30
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s38, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s46, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s48, s30
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s49, s30
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s65, s30
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s66, s30
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s67, s30
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s69, s30
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s70, s30
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s71, s30
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s72, s30
	s_cselect_b32 s36, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s42, s42, s35
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s34, s42, s33
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
	s_and_b32 vcc_lo, s4, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_lshl_add_u32 v1, s33, 5, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s63, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v9, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s62, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v11, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s61, s2
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
	s_and_b32 vcc_lo, s60, s2
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
	s_and_b32 vcc_lo, s59, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v13, 0x80000000, v6, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s33, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
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
	s_and_b32 vcc_lo, s55, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v1 :: v_dual_lshlrev_b32 v20, 1, v10
	v_lshlrev_b32_e32 v1, 1, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s33, v10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v22, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_load_u16 v10, v5, s[8:11], 0 offen
	buffer_load_u16 v8, v4, s[8:11], 0 offen
	buffer_load_u16 v6, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v7, s[8:11], 0 offen
	buffer_load_u16 v3, v13, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v1, v19, s[8:11], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s33, v18
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x6
	buffer_load_u16 v14, v9, s[8:11], 0 offen
	buffer_load_u16 v13, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v11, v15, s[8:11], 0 offen
	buffer_load_u16 v9, v16, s[8:11], 0 offen
	buffer_load_u16 v7, v17, s[8:11], 0 offen
	buffer_load_u16 v5, v22, s[8:11], 0 offen
	v_lshlrev_b32_e32 v15, 1, v21
	v_lshlrev_b32_e32 v18, 1, v18
	v_cndmask_b32_e32 v26, 0x80000000, v20, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v19, s33, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s33, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v28, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s33, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s33, v16
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v20
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v23, 0x80000000, v19 :: v_dual_lshlrev_b32 v16, 1, v16
	v_lshlrev_b32_e32 v19, 1, v20
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s33, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s33, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v25, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 1, v22
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s33, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v29, s33, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v31, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v27
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v27, 1, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v32, 0x80000000, v20 :: v_dual_lshlrev_b32 v33, 1, v29
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v34, v29, s33, 1
	s_clause 0x7
	buffer_load_u16 v19, v17, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v17, v16, s[8:11], 0 offen
	buffer_load_u16 v16, v21, s[8:11], 0 offen
	buffer_load_u16 v29, v23, s[8:11], 0 offen
	buffer_load_u16 v23, v25, s[8:11], 0 offen
	buffer_load_u16 v21, v30, s[8:11], 0 offen
	buffer_load_u16 v20, v24, s[8:11], 0 offen
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v22
	v_add_lshl_u32 v35, v22, s33, 1
	s_clause 0x1
	buffer_load_u16 v24, v31, s[8:11], 0 offen
	buffer_load_u16 v22, v32, s[8:11], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v33, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v34, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s5, s5, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v33, 0x80000000, v35, vcc_lo
	v_xor_b32_e32 v35, 0x90, v65
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v152, 0, v35
	s_clause 0x6
	buffer_load_u16 v30, v25, s[8:11], 0 offen
	buffer_load_u16 v25, v31, s[8:11], 0 offen
	buffer_load_u16 v31, v27, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v32, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v32, v33, s[8:11], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(25)
	v_mad_u64_u32 v[33:34], null, s42, s38, v[0:1]
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v34, s38, v33
	v_lshl_add_u32 v35, s38, 4, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v156, 0, v39
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v34
	v_add_nc_u32_e32 v38, s38, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 2, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s4, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s38, v37
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_lshlrev_b32 v43, 2, v37
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 2, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_lshlrev_b32 v44, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v46, s38, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v45, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v49, 0x80000000, v37, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s62, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v47, 2, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v41, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v50, s38, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_lshlrev_b32 v48, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v51, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s60, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v53, 0x80000000, v37 :: v_dual_lshlrev_b32 v52, 2, v46
	v_lshlrev_b32_e32 v37, 1, v38
	v_cndmask_b32_e64 v54, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 1, v46
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v42
	v_add_nc_u32_e32 v46, s38, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v55, 2, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v48, 0x80000000, v48, s4
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_lshlrev_b32 v56, 2, v50
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s59, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v57, 0x80000000, v37 :: v_dual_lshlrev_b32 v60, 2, v46
	v_lshlrev_b32_e32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v42, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 1, v50
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v50, s38, v38
	v_add_nc_u32_e32 v58, s38, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	v_lshlrev_b32_e32 v59, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v52, 0x80000000, v52, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s57, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v61, 0x80000000, v37 :: v_dual_lshlrev_b32 v46, 1, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v62, 0x80000000, v35, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s38, v50
	v_add_nc_u32_e32 v37, s38, v58
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_lshlrev_b32 v64, 2, v58
	v_lshlrev_b32_e32 v63, 2, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v71, 0x80000000, v38 :: v_dual_lshlrev_b32 v68, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_lshlrev_b32 v38, 1, v50
	v_lshlrev_b32_e32 v67, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v66, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v56, 0x80000000, v56, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v72, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_lshlrev_b32 v50, 1, v58
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v58, s38, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s55, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v69, s38, v66
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v60, 0x80000000, v60, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v46, 0x80000000, v46, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s54, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v64, 0x80000000, v64, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v50, 0x80000000, v50, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v70, 2, v58
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s51, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v75, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v58, 1, v58
	v_cndmask_b32_e64 v105, 0x80000000, v37, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v38
	v_add_nc_u32_e32 v74, s38, v69
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v73, 2, v66
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_add_nc_u32 v151, 0, v65
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v76, s38, v74
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v77, 0x80000000, v75, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v101, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s49, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v75, 2, v37
	v_cndmask_b32_e64 v96, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v69
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v100, 0x80000000, v66, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v66, s38, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_lshlrev_b32_e32 v69, 1, v69
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s48, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v78, 0x80000000, v75, vcc_lo
	v_cndmask_b32_e64 v97, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v74
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v103, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v66
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v74
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v74, s38, v76
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v102, 0x80000000, v69, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s46, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v69, s38, v66
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v98, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v76
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v106, s38, v74
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v75, 2, v66
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v109, 0x80000000, v37 :: v_dual_lshlrev_b32 v66, 1, v76
	v_cndmask_b32_e64 v104, 0x80000000, v38, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s44, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v69
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v99, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v74
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v108, s38, v106
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v75, vcc_lo
	v_lshlrev_b32_e32 v75, 2, v69
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v69, 1, v69
	v_cndmask_b32_e64 v112, 0x80000000, v66, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s7, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v37, 0x80000000, v75 :: v_dual_lshlrev_b32 v74, 1, v74
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s41, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v107, s38, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v113, 0x80000000, v69 :: v_dual_lshlrev_b32 v66, 2, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v110, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v106
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v115, s38, v108
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s6, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v114, 0x80000000, v74, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s39, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v111, 1, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v38, 0x80000000, v66, vcc_lo
	v_lshlrev_b32_e32 v66, 2, v107
	v_cndmask_b32_e64 v69, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v108
	v_lshlrev_b32_e32 v74, 2, v115
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s37, s3
	s_and_b32 s7, s36, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v66, 0x80000000, v66, s5
	v_cndmask_b32_e64 v116, 0x80000000, v73, s6
	v_cndmask_b32_e64 v117, 0x80000000, v74, s7
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_b32 v84, v36, s[8:11], 0 offen
	buffer_load_b32 v85, v39, s[8:11], 0 offen
	buffer_load_b32 v86, v43, s[8:11], 0 offen
	buffer_load_b32 v87, v47, s[8:11], 0 offen
	buffer_load_b32 v73, v51, s[8:11], 0 offen
	buffer_load_b32 v74, v55, s[8:11], 0 offen
	buffer_load_b32 v75, v59, s[8:11], 0 offen
	buffer_load_b32 v76, v63, s[8:11], 0 offen
	buffer_load_b32 v88, v67, s[8:11], 0 offen
	buffer_load_b32 v89, v70, s[8:11], 0 offen
	buffer_load_b32 v90, v77, s[8:11], 0 offen
	buffer_load_b32 v91, v78, s[8:11], 0 offen
	buffer_load_b32 v77, v79, s[8:11], 0 offen
	buffer_load_b32 v78, v37, s[8:11], 0 offen
	buffer_load_b32 v79, v38, s[8:11], 0 offen
	buffer_load_b32 v80, v66, s[8:11], 0 offen
	buffer_load_b32 v92, v40, s[8:11], 0 offen
	buffer_load_b32 v93, v44, s[8:11], 0 offen
	buffer_load_b32 v94, v48, s[8:11], 0 offen
	buffer_load_b32 v95, v52, s[8:11], 0 offen
	buffer_load_b32 v81, v56, s[8:11], 0 offen
	buffer_load_b32 v82, v60, s[8:11], 0 offen
	buffer_load_b32 v83, v64, s[8:11], 0 offen
	buffer_load_b32 v70, v68, s[8:11], 0 offen
	buffer_load_b32 v96, v96, s[8:11], 0 offen
	buffer_load_b32 v97, v97, s[8:11], 0 offen
	buffer_load_b32 v98, v98, s[8:11], 0 offen
	buffer_load_b32 v99, v99, s[8:11], 0 offen
	buffer_load_b32 v68, v110, s[8:11], 0 offen
	buffer_load_b32 v69, v69, s[8:11], 0 offen
	buffer_load_b32 v66, v116, s[8:11], 0 offen
	buffer_load_b32 v67, v117, s[8:11], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 1, v106
	v_lshlrev_b32_e32 v2, 1, v107
	v_lshlrev_b32_e32 v3, 1, v108
	v_lshlrev_b32_e32 v5, 1, v115
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_clause 0x7
	buffer_load_u16 v38, v33, s[8:11], 0 offen
	buffer_load_u16 v37, v34, s[8:11], 0 offen
	buffer_load_u16 v34, v49, s[8:11], 0 offen
	buffer_load_u16 v33, v53, s[8:11], 0 offen
	buffer_load_u16 v40, v35, s[8:11], 0 offen
	buffer_load_u16 v39, v58, s[8:11], 0 offen
	buffer_load_u16 v36, v101, s[8:11], 0 offen
	buffer_load_u16 v35, v103, s[8:11], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v111, vcc_lo
	s_clause 0x2
	buffer_load_u16 v106, v100, s[8:11], 0 offen
	buffer_load_u16 v110, v41, s[8:11], 0 offen
	buffer_load_u16 v108, v102, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	v_cndmask_b32_e64 v5, 0x80000000, v5, s7
	s_clause 0x14
	buffer_load_u16 v111, v104, s[8:11], 0 offen
	buffer_load_u16 v124, v42, s[8:11], 0 offen
	buffer_load_u16 v121, v112, s[8:11], 0 offen
	buffer_load_u16 v112, v57, s[8:11], 0 offen
	buffer_load_u16 v109, v109, s[8:11], 0 offen
	buffer_load_u16 v102, v62, s[8:11], 0 offen
	buffer_load_u16 v100, v114, s[8:11], 0 offen
	buffer_load_u16 v122, v61, s[8:11], 0 offen
	buffer_load_u16 v119, v113, s[8:11], 0 offen
	buffer_load_u16 v103, v46, s[8:11], 0 offen
	buffer_load_u16 v101, v1, s[8:11], 0 offen
	buffer_load_u16 v125, v71, s[8:11], 0 offen
	buffer_load_u16 v123, v4, s[8:11], 0 offen
	buffer_load_u16 v104, v50, s[8:11], 0 offen
	buffer_load_u16 v71, v3, s[8:11], 0 offen
	buffer_load_u16 v127, v72, s[8:11], 0 offen
	buffer_load_u16 v126, v2, s[8:11], 0 offen
	buffer_load_u16 v105, v105, s[8:11], 0 offen
	buffer_load_u16 v72, v5, s[8:11], 0 offen
	buffer_load_u16 v107, v45, s[8:11], 0 offen
	buffer_load_u16 v120, v54, s[8:11], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v113, 4, v0
	v_lshlrev_b32_e32 v114, 7, v255
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v115, 32, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_or_b32 v25, 0x70, v113, v114
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v117, 1, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v115, 6, v25
	v_add_nc_u32_e32 v3, 0, v1
	v_xad_u32 v4, v1, 16, 0
	v_xad_u32 v5, v1, 32, 0
	v_xad_u32 v6, v1, 48, 0
	v_xad_u32 v7, v1, 64, 0
	v_xad_u32 v8, 0x50, v1, 0
	v_xad_u32 v41, 0x60, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	ds_load_b128 v[161:164], v3
	ds_load_b128 v[165:168], v4
	ds_load_b128 v[169:172], v5
	ds_load_b128 v[173:176], v6
	ds_load_b128 v[177:180], v7
	ds_load_b128 v[181:184], v8
	ds_load_b128 v[9:12], v41
	ds_load_b128 v[13:16], v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v151, v38
	s_waitcnt vmcnt(27)
	ds_store_b16 v151, v40 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v151, v107 offset:2048
	ds_store_b16 v152, v37
	ds_store_b16 v152, v39 offset:1024
	ds_store_b16 v151, v106 offset:3072
	ds_store_b16 v152, v110 offset:2048
	ds_store_b16 v152, v108 offset:3072
	ds_store_b16 v153, v34
	ds_store_b16 v153, v36 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v153, v120 offset:2048
	ds_store_b16 v154, v33
	ds_store_b16 v154, v35 offset:1024
	ds_store_b16 v153, v111 offset:3072
	ds_store_b16 v154, v124 offset:2048
	ds_store_b16 v154, v121 offset:3072
	ds_store_b16 v155, v112
	ds_store_b16 v155, v109 offset:1024
	ds_store_b16 v155, v102 offset:2048
	ds_store_b16 v155, v100 offset:3072
	ds_store_b16 v156, v122
	ds_store_b16 v156, v119 offset:1024
	ds_store_b16 v156, v103 offset:2048
	ds_store_b16 v156, v101 offset:3072
	ds_store_b16 v157, v125
	ds_store_b16 v157, v123 offset:1024
	ds_store_b16 v157, v104 offset:2048
	ds_store_b16 v157, v71 offset:3072
	ds_store_b16 v158, v127
	ds_store_b16 v158, v126 offset:1024
	ds_store_b16 v158, v105 offset:2048
	ds_store_b16 v158, v72 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v3
	ds_load_b128 v[21:24], v4
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[17:20], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[21:24], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[17:20], v5
	ds_load_b128 v[21:24], v6
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[17:20], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[21:24], off offset:48 ; 16-byte Folded Spill
	ds_load_b128 v[17:20], v7
	ds_load_b128 v[21:24], v8
	v_lshlrev_b32_e32 v58, 16, v100
	v_lshlrev_b32_e32 v8, 16, v111
	v_lshlrev_b32_e32 v46, 16, v40
	v_lshlrev_b32_e32 v40, 16, v123
	v_lshlrev_b32_e32 v57, 16, v105
	v_lshlrev_b32_e32 v47, 16, v39
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v105, v98, v8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v39, 16, v119
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v119, v79, v40
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v48, 16, v36
	v_lshlrev_b32_e32 v36, 16, v125
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 16, v38
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v119, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 16, v109
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v109, v75, v36
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v105, v98, v8
.Ltmp8:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v43, 16, v37
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v119, v79, v40
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v3, 16, v110
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v109, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v54, v85, v43
	v_mul_f32_e32 v61, v89, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v100, v93, v3 :: v_dual_fmac_f32 v109, v75, v36
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v61, v61 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v51, 16, v103
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v54, v85, v43
	v_fmac_f32_e32 v61, v89, v47
	v_fmac_f32_e32 v100, v93, v3
.Ltmp18:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v49, 16, v35
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v75, v40, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 16, v122
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v122, v82, v51 :: v_dual_lshlrev_b32 v59, 16, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v40, v75
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[17:20], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[21:24], off offset:80 ; 16-byte Folded Spill
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v122, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[17:20], v41
	ds_load_b128 v[21:24], v1
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v40, 31
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v44, 16, v34
	v_lshlrev_b32_e32 v34, 16, v112
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v112, v78, v39
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v122, v82, v51 :: v_dual_lshlrev_b32 v41, 16, v126
.Ltmp28:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v126, v69, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v112, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v51, v3, -1, -1 op_sel:[1,0]
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 16, v127
	v_lshlrev_b32_e32 v45, 16, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v111, v77, v38 :: v_dual_fmac_f32 v112, v78, v39
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v51 :: v_dual_mul_f32 v110, v76, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v56, v87, v45
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v111, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v112, v112 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v3, 31
	v_mov_b32_dpp v3, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v6, 16, v106
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v110, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v3, v69, v59
.Ltmp41:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v103, v96, v6
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v110, v76, v37
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v111, v77, v38
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 16, v107
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v107, v73, v34
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v82, v47, -1, -1 op_sel:[1,0]
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v56, v87, v45
	v_add_f32_dpp v45, v110, v110 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v103, v96, v6 :: v_dual_lshlrev_b32 v4, 16, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v47, v47, v82 :: v_dual_mul_f32 v120, v80, v41
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v107, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s46, v47, 31
	v_mov_b32_e32 v47, s37
.Ltmp51:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v55, v86, v44
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v107, v73, v34
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v120, v80, v41
	v_add_f32_dpp v3, v3, v3 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v45, -1, -1 op_sel:[1,0]
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v86, v44
	v_add_f32_dpp v44, v109, v109 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v73, v38, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v5, 16, v124
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v80
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v38, v38, v73
.Ltmp62:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 16, v121
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s44, v45, 31
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s28, v38, 31
.Ltmp66:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v50, 16, v102
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v102, v95, v5
	v_mul_f32_e32 v64, v92, v1
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v45, s28
.Ltmp68:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v53, v84, v42
	v_mul_f32_e32 v121, v81, v50
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v79
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v102, v95, v5
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s43, v44, 31
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v56, v56 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v53, v84, v42
	v_dual_fmac_f32 v64, v92, v1 :: v_dual_fmac_f32 v121, v81, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v51, s43 :: v_dual_mul_f32 v60, v88, v46
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v7, 16, v108
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v63, v91, v49
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v60, v60 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v101, v94, v4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v52, 16, v104
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v60, v88, v46
	v_add_f32_dpp v46, v111, v111 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v5, -1, -1 op_sel:[1,0]
.Ltmp83:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v104, v97, v7
	v_mul_f32_e32 v106, v99, v33
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v50, v1, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v53
.Ltmp87:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v125, v68, v58
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v63, v63 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v1, v1, v50 :: v_dual_mul_f32 v108, v74, v35
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v81, v46, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v60, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v63, v91, v49
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v1, 31
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v46, v81
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v1, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v108, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v101, v94, v4 :: v_dual_fmac_f32 v104, v97, v7
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s45, v46, 31
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v106, v99, v33
	v_add_f32_dpp v4, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v61, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v53, s45 :: v_dual_mul_f32 v62, v90, v48
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v63, v63 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v1, v68, v58 :: v_dual_fmac_f32 v108, v74, v35
	v_add_f32_dpp v34, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v62, v90, v48
	v_add_f32_dpp v41, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v123, v83, v52
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v107, v107 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v108, v108 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v119, v119 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v123, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v54, v6, -1, -1 op_sel:[1,0]
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v123, v83, v52
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v52, v4, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v54
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v55, v7, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v56, v8, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v60, v33, -1, -1 op_sel:[1,0]
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v61, v34, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v62, v35, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v63, v36, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v64, v37, -1, -1 op_sel:[1,0]
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v74, v39, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v76, v41, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v4, v52
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v6, 31
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v123, v123 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v7, v7, v55 :: v_dual_add_f32 v8, v8, v56
	v_add_f32_e32 v33, v33, v60
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v42, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v78, v43, -1, -1 op_sel:[1,0]
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v34, v34, v61 :: v_dual_add_f32 v35, v35, v62
	v_dual_add_f32 v36, v36, v63 :: v_dual_add_f32 v37, v37, v64
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v83, v48, -1, -1 op_sel:[1,0]
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v39, v74
	v_add_f32_e32 v41, v41, v76
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v4, 31
	v_readlane_b32 s7, v5, 31
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v7, 31
	v_readlane_b32 s10, v8, 31
	v_readlane_b32 s11, v33, 31
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v42, v77 :: v_dual_add_f32 v43, v43, v78
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v34, 31
	v_readlane_b32 s17, v35, 31
	v_readlane_b32 s18, v36, 31
	v_readlane_b32 s19, v37, 31
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v48, v83
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v39, 31
	v_readlane_b32 s39, v41, 31
	v_dual_mov_b32 v33, s4 :: v_dual_add_nc_u32 v2, 0, v117
	v_dual_mov_b32 v34, s5 :: v_dual_mov_b32 v35, s6
	v_dual_mov_b32 v36, s7 :: v_dual_mov_b32 v37, s8
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v39, s10
	v_mov_b32_e32 v40, s11
	v_dual_mov_b32 v41, s16 :: v_dual_and_b32 v116, 1, v0
	v_readlane_b32 s40, v42, 31
	v_readlane_b32 s41, v43, 31
	v_dual_mov_b32 v42, s17 :: v_dual_mov_b32 v43, s18
	v_mov_b32_e32 v44, s19
	v_readlane_b32 s47, v48, 31
	v_mov_b32_e32 v46, s36
	v_mov_b32_e32 v48, s39
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[17:20], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[21:24], off offset:112 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[33:36]
	ds_store_b128 v2, v[37:40] offset:16
	ds_store_b128 v2, v[41:44] offset:32
	ds_store_b128 v2, v[45:48] offset:48
	v_permlanex16_b32 v37, v6, -1, -1 op_sel:[1,0]
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v122, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v124, v70, v57 :: v_dual_lshlrev_b32 v7, 16, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v37
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp134:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v33, v66, v7
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v124, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s6, v6, 31
.Ltmp136:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v8, 16, v72
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v124, v70, v57
.Ltmp140:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v34, v67, v8
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v35, v4, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v36, v5, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v33, v66, v7
	v_add_f32_dpp v49, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v4, v35 :: v_dual_add_f32 v5, v5, v36
	v_add_f32_dpp v1, v1, v1 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v67, v8
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v4, 31
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v124, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v5, 31
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v84, v49, -1, -1 op_sel:[1,0]
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v33, v3, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v7, v4, -1, -1 op_sel:[1,0]
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v84
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v34, v5, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v35, v6, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v33 :: v_dual_add_f32 v4, v4, v7
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s48, v49, 31
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v5, v34 :: v_dual_add_f32 v6, v6, v35
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v35, s6
	v_permlanex16_b32 v8, v1, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v4, 31
	v_readlane_b32 s9, v3, 31
	v_readlane_b32 s11, v6, 31
	v_lshlrev_b32_e32 v203, 6, v116
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v5, 31
	v_dual_mov_b32 v49, s40 :: v_dual_mov_b32 v50, s41
	v_mov_b32_e32 v52, s44
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s8, v1, 31
	v_mov_b32_e32 v40, s11
	v_add_nc_u32_e32 v118, 0, v203
	v_dual_mov_b32 v54, s46 :: v_dual_mov_b32 v55, s47
	v_dual_mov_b32 v56, s48 :: v_dual_mov_b32 v33, s4
	v_mov_b32_e32 v34, s5
	v_dual_mov_b32 v36, s7 :: v_dual_mov_b32 v37, s8
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v39, s10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[94:97], v118
	ds_load_b128 v[90:93], v118 offset:16
	ds_load_b128 v[78:81], v118 offset:32
	ds_load_b128 v[74:77], v118 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[49:52]
	ds_store_b128 v2, v[53:56] offset:16
	ds_store_b128 v2, v[33:36] offset:32
	ds_store_b128 v2, v[37:40] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v118
	ds_load_b128 v[98:101], v118 offset:16
	ds_load_b128 v[86:89], v118 offset:32
	ds_load_b128 v[82:85], v118 offset:48
.Ltmp160:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s4, s31, 15
	s_mov_b32 s28, 0
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 28
	s_add_i32 s4, s4, s5
.Ltmp161:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v148, v94 :: v_dual_mov_b32 v149, v95
	v_mov_b32_e32 v150, v96
	v_mov_b32_e32 v146, v97
	v_dual_mov_b32 v190, v90 :: v_dual_mov_b32 v191, v91
	v_mov_b32_e32 v192, v92
	v_dual_mov_b32 v194, v93 :: v_dual_mov_b32 v199, v78
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v186, v102 :: v_dual_mov_b32 v187, v103
	v_dual_mov_b32 v188, v104 :: v_dual_mov_b32 v189, v105
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v195, v98 :: v_dual_mov_b32 v196, v99
	v_dual_mov_b32 v197, v100 :: v_dual_mov_b32 v198, v101
	v_dual_mov_b32 v193, v79 :: v_dual_mov_b32 v144, v80
	v_mov_b32_e32 v147, v81
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v145, v86 :: v_dual_mov_b32 v142, v87
	v_mov_b32_e32 v143, v88
	v_mov_b32_e32 v133, v89
	v_dual_mov_b32 v135, v74 :: v_dual_mov_b32 v136, v75
	v_dual_mov_b32 v137, v76 :: v_dual_mov_b32 v138, v77
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v139, v82 :: v_dual_mov_b32 v140, v83
	v_dual_mov_b32 v141, v84 :: v_dual_mov_b32 v134, v85
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
.Ltmp162:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s24, s26
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
	v_cndmask_b32_e64 v1, 0, 1, s22
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s8, s21, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s9, s25, 31
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
	s_mul_i32 s10, s5, s23
	s_xor_b32 s8, s8, s9
	s_sub_i32 s9, s24, s10
	s_clause 0x3
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x30
	s_load_b32 s43, s[0:1], 0x8c
	s_load_b32 s64, s[0:1], 0x80
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s9, s23
	s_cmp_ge_u32 s9, s23
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v33, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s9, s23
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v36, s35, v33
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	v_lshlrev_b32_e32 v201, 5, v0
	s_xor_b32 s5, s5, s8
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s50, s21, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v37, 16, v36
	v_or_b32_e32 v38, 20, v36
	v_or_b32_e32 v40, 4, v36
	v_or_b32_e32 v39, 24, v36
	v_or_b32_e32 v66, 8, v36
	v_or_b32_e32 v67, 12, v36
	v_or_b32_e32 v35, 28, v36
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s65, s5, s8
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s5, s20, s29
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v17, s15, v36
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s65, s65, s5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s28, s39
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v18, s15, v40
	v_add_nc_u32_e32 v19, s15, v66
	v_add_nc_u32_e32 v20, s15, v67
	v_add_nc_u32_e32 v21, s15, v37
	v_add_nc_u32_e32 v22, s15, v38
	v_add_nc_u32_e32 v24, s15, v39
	v_add_nc_u32_e32 v26, s15, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s67, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s20, s20, s6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v34, 5, v0
	s_mov_b32 s12, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s12, -1
                                        ; implicit-def: $vgpr34
.LBB0_7:                                ; %Flow249
	s_clause 0x3
	s_load_b128 s[52:55], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s29, s[0:1], 0x90
	v_add_nc_u32_e32 v1, s14, v21
	v_and_b32_e32 v23, 16, v0
	v_mul_lo_u32 v106, s43, v33
	v_and_b32_e32 v200, 48, v0
	v_cmp_gt_i32_e64 s0, s30, v36
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v22
	v_cmp_gt_i32_e64 s1, s30, v40
	v_cmp_gt_i32_e64 s5, s30, v66
	v_cmp_gt_i32_e64 s6, s30, v67
	v_cmp_gt_i32_e64 s7, s30, v37
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v24
	v_cmp_gt_i32_e64 s8, s30, v38
	v_cmp_gt_i32_e64 s9, s30, v39
	v_cmp_gt_i32_e64 s10, s30, v35
	v_subrev_nc_u32_e32 v27, s13, v17
	v_subrev_nc_u32_e32 v28, s13, v18
	v_subrev_nc_u32_e32 v29, s13, v19
	v_subrev_nc_u32_e32 v30, s13, v20
	v_subrev_nc_u32_e32 v31, s13, v21
	v_subrev_nc_u32_e32 v32, s13, v22
	v_subrev_nc_u32_e32 v159, s13, v24
	v_subrev_nc_u32_e32 v160, s13, v26
	v_add_nc_u32_e32 v185, s14, v17
	v_add_nc_u32_e32 v252, s14, v18
	v_add_nc_u32_e32 v253, s14, v19
	v_add_nc_u32_e32 v254, s14, v20
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v26
	v_xor_b32_e32 v119, 16, v25
	v_xor_b32_e32 v120, 32, v25
	v_xor_b32_e32 v121, 48, v25
	v_xor_b32_e32 v122, 64, v25
	v_xor_b32_e32 v123, 0x50, v25
	v_xor_b32_e32 v124, 0x60, v25
	v_xor_b32_e32 v125, 0x70, v25
	v_cmp_eq_u32_e64 s11, 0, v115
	v_and_b32_e32 v132, 14, v0
	v_lshlrev_b32_e32 v127, 3, v255
	v_lshrrev_b32_e32 v129, 2, v23
	v_lshrrev_b32_e32 v126, 4, v115
	v_lshlrev_b32_e32 v131, 2, v0
	v_lshrrev_b32_e32 v128, 1, v23
	v_lshrrev_b32_e32 v130, 5, v115
	s_mul_f32 s66, s64, 0x3fb8aa3b
	s_mul_i32 s65, s65, s31
	s_add_i32 s50, s50, s20
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mul_i32 s51, s43, s35
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[107:108], null, s29, v255, v[106:107]
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_and_b32 v1, 60, v65
	v_cndmask_b32_e64 v2, 0x104, 0, s11
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v132
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v4, 5, v116
	v_mad_u64_u32 v[108:109], null, s43, 12, v[107:108]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v202, v2, v1
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_lshlrev_b32 v1, 2, v200
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v229, 0xff800000
	v_or_b32_e32 v2, v202, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v132, 7, v1
	v_mad_u64_u32 v[109:110], null, s43, 20, v[107:108]
	v_mad_u64_u32 v[110:111], null, s43, 24, v[107:108]
	v_mad_u64_u32 v[111:112], null, s43, 28, v[107:108]
	v_or3_b32 v112, v1, v4, v3
	v_dual_mov_b32 v244, 0 :: v_dual_and_b32 v1, 0x180, v201
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_and_b32 v3, 52, v131
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_and_b32 v4, 2, v0
	v_or3_b32 v203, v129, v126, v127
	v_xor_b32_e32 v5, 0x208, v2
	v_xor_b32_e32 v6, 0x410, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v1, v3, v4, v1
	v_xor_b32_e32 v2, 0x618, v2
	v_xor_b32_e32 v7, 4, v112
	v_xor_b32_e32 v8, 8, v112
	v_xor_b32_e32 v33, 12, v112
	v_or3_b32 v204, v1, v128, v130
	v_xor_b32_e32 v3, 16, v112
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
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v216, 0, v36
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v37
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v218, 0, v38
	v_add_nc_u32_e32 v219, 0, v39
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v220, 0, v40
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
	v_add_nc_u32_e32 v40, 0, v112
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
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v1
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s12, s75, vcc_lo
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	v_mul_f32_e32 v33, 0x3fb8aa3b, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v1, 0, 1, s12
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v4, 0xff800000, v4, s73
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s18, s74, s13
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v245, v118, v202
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v3
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v4
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v1, 0, 1, s18
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v245, v33, v34 offset1:32
	v_dual_mul_f32 v33, 0x3fb8aa3b, v3 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v4
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 vcc_lo, s73, s15
	v_mov_b16_e32 v42.l, v1.l
	v_lshlrev_b16 v41.l, 8, v41.l
	v_cndmask_b32_e64 v1, 0, 1, vcc_lo
	s_and_b32 s15, s72, s14
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v205, v33, v34 offset1:32
	v_dual_mul_f32 v33, 0x3fb8aa3b, v5 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v41.l, v42.l, v41.l
	v_mov_b16_e32 v42.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s15
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v6
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v206, v33, v34 offset1:32
	v_dual_mul_f32 v33, 0x3fb8aa3b, v8 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v7
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v43.l, v1.l
	v_add_nc_u32_e32 v1, 0, v203
	s_and_b32 s14, s71, s13
	s_and_b32 s13, s69, s20
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v207, v33, v34 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v44, v40
	ds_load_b32 v39, v208
	ds_load_b32 v38, v209
	ds_load_b32 v37, v210
	ds_load_b32 v36, v211
	ds_load_b32 v35, v212
	ds_load_b32 v34, v213
	ds_load_b32 v33, v214
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v1, v41
	v_cndmask_b32_e64 v1, 0, 1, s14
	v_lshlrev_b16 v41.h, 8, v42.l
	s_and_b32 s16, s68, s19
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s47, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v41.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s17
	v_or_b16 v41.h, v43.l, v41.h
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v44, s66, v66
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v41.l, 8, v41.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s13
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v37, s66, v69
	v_dual_fmac_f32 v39, s66, v67 :: v_dual_fmac_f32 v38, s66, v68
	v_fmac_f32_e32 v35, s66, v71
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v41.l, v42.l, v41.l
	v_mov_b16_e32 v42.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s16
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v36, s66, v70
	v_dual_fmac_f32 v34, s66, v72 :: v_dual_fmac_f32 v33, s66, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v42.l, 8, v42.l
	v_mov_b16_e32 v43.l, v1.l
	v_add_nc_u32_e32 v1, 0, v204
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v42.l, v43.l, v42.l
	ds_store_b16_d16_hi v215, v41
	ds_store_b16 v216, v41
	ds_store_b16 v217, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v41, v1
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v41, v1 offset:64
	ds_load_u8_d16 v42, v218
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v42, v220 offset:64
	ds_load_u8_d16 v43, v219 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v43, v218 offset:64
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v41.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v44, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_load_u8_d16 v41, v219
	ds_load_u8_d16 v44, v220
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v40, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v40.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v40.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v39, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v39.l, 1, v41.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v208, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v39.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v38, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v38.l, 1, v44.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v209, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v38.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v37, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v37.l, 1, v41.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v210, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v37.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v36, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v36.l, 1, v43.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v211, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v36.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v35, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v35.l, 1, v43.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v212, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v34, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v42.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v213, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v33, s19
	ds_store_b32 v214, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[66:67], v245 offset1:32
	ds_load_2addr_b32 v[33:34], v205 offset1:32
	ds_load_2addr_b32 v[35:36], v206 offset1:32
	ds_load_2addr_b32 v[37:38], v207 offset1:32
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v1, v66
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v1, v2
.Ltmp173:
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
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp180:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v241, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v68, v2, v68
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v241, v68
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v2, v33, v33 :: v_dual_mov_b32 v241, v68
.Ltmp185:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v66, v244, v1 :: v_dual_mov_b32 v1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v244, v66
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
.Ltmp194:
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
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v240, v240
.Ltmp201:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v70, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v2, v1
.Ltmp204:
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
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v243, v69
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
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
.Ltmp214:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp220:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v238, v238
	v_dual_max_f32 v72, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v71, v2, v1
.Ltmp223:
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
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v1, v37 :: v_dual_mov_b32 v242, v71
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v224, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
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
.Ltmp233:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v236, v236
.Ltmp239:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v245, v3, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v2, v1
.Ltmp242:
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
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v67
	v_mov_b32_e32 v239, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp251:
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
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp258:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v246, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v2, v1
.Ltmp261:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v234, v246
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp263:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v67, v237, v1
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v34
	v_mov_b32_e32 v237, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp270:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp271:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp272:
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
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v232, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp279:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v248, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v247, v2, v1
.Ltmp282:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v232, v248
.Ltmp283:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v36, v36
	v_mov_b32_e32 v232, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp284:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v247, v235, v1
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v36
	v_mov_b32_e32 v235, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v227, v227
.Ltmp293:
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
.Ltmp294:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v250, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v249, v2, v1
.Ltmp303:
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
.Ltmp304:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v2, v38, v38 :: v_dual_fmac_f32 v249, v233, v1
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v38
	v_dual_mov_b32 v240, v70 :: v_dual_mov_b32 v233, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v228, v228
.Ltmp313:
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
.Ltmp314:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp315:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp316:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp317:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp318:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp319:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp320:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v231, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v33, v3, v1
.Ltmp321:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_e32 v234, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp322:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v251, v2, v1
.Ltmp323:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v231, v33
	v_mov_b32_e32 v231, v33
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
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v68, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v67, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v70, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v69, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v71, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v73, v72
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v71
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v71, v70
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v70, v69
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v69, v68
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v68, v67
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v67, v66
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s26, s31
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
	.loc	1 229 28                        ; attention_backward.py:229:28
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
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
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
	v_add_nc_u32_e32 v1, 0, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v119
	ds_load_b128 v[37:40], v1
	v_add_nc_u32_e32 v1, 0, v120
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[161:168], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v121
	ds_load_b128 v[37:40], v1
	v_add_nc_u32_e32 v1, 0, v122
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[169:176], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v123
	ds_load_b128 v[37:40], v1
	v_add_nc_u32_e32 v1, 0, v124
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[177:184], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[33:36], v1
	v_add_nc_u32_e32 v1, 0, v125
	ds_load_b128 v[37:40], v1
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[33:40], v[9:16], v[66:73]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v33, s47, v255
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s12, s31, v33
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s74, s0, s12
	s_and_b32 s72, s1, s12
	s_and_b32 s70, s5, s12
	s_and_b32 s68, s6, s12
	s_and_b32 s75, s7, s12
	s_and_b32 s73, s8, s12
	s_and_b32 s71, s9, s12
	s_and_b32 s69, s10, s12
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v33, v17
	v_cmp_le_i32_e64 s12, v33, v18
	v_cmp_le_i32_e64 s13, v33, v19
	v_cmp_le_i32_e64 s14, v33, v20
	v_cmp_le_i32_e64 s15, v33, v21
	v_cmp_le_i32_e64 s16, v33, v22
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s19, vcc_lo, s74
	s_and_b32 s12, s12, s72
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s17, v33, v24
	v_cmp_le_i32_e64 s18, v33, v26
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
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v33, v27
	v_cmp_ge_i32_e64 s12, v33, v28
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s19, v33, v185
	v_cmp_le_i32_e64 s20, v33, v252
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v33, v29
	v_cmp_ge_i32_e64 s14, v33, v30
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s21, v33, v253
	v_cmp_le_i32_e64 s22, v33, v254
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s15, v33, v31
	v_cmp_ge_i32_e64 s16, v33, v32
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s12, s12, s20
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s17, v33, v159
	v_cmp_ge_i32_e64 s18, v33, v160
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s19, s19, s74
	s_and_b32 s12, s12, s72
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_b32 s13, s13, s70
	s_and_b32 s14, s14, s68
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s72, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s74, s20, s19
	s_or_b32 s72, s21, s12
	s_and_not1_b32 s12, s70, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s68, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_or_b32 s70, s12, s13
	s_or_b32 s68, s19, s14
	s_and_not1_b32 s12, s75, exec_lo
	s_and_not1_b32 s14, s73, exec_lo
	.loc	1 242 26 is_stmt 0              ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v33, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s24, v33, v1
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s25, v33, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s71
	s_and_b32 s13, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s71, s12, s13
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v33, v1
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s69, s14, s15
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v33, 0xff800000 :: v_dual_mov_b32 v66, 0
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
	v_mov_b32_e32 v34, v201
.LBB0_16:                               ; %._crit_edge
.Ltmp324:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v95, v149 :: v_dual_and_b32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp325:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s13, 0x800000, v69
	v_cmp_gt_f32_e64 s12, 0x800000, v66
	v_cmp_gt_f32_e64 s14, 0x800000, v71
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s35, v1
.Ltmp326:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v51, v78, v199 :: v_dual_add_f32 v52, v79, v193
.Ltmp327:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v4, 0, 0x42000000, s13
	v_cndmask_b32_e64 v5, 0, 32, s13
	v_cmp_gt_f32_e64 s13, 0x800000, v67
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 0x42000000, s12
	v_cndmask_b32_e64 v3, 0, 32, s12
	v_cndmask_b32_e64 v6, 0, 0x42000000, s14
	v_cndmask_b32_e64 v7, 0, 32, s14
	v_cmp_gt_f32_e64 s12, 0x800000, v73
	v_cndmask_b32_e64 v58, 0, 0x42000000, s13
	v_cndmask_b32_e64 v57, 0, 32, s13
	v_cmp_gt_f32_e64 s13, 0x800000, v249
	v_cmp_gt_f32_e64 s14, 0x800000, v251
	v_ldexp_f32 v3, v66, v3
	v_cndmask_b32_e64 v56, 0, 32, s12
	v_ldexp_f32 v5, v69, v5
	v_cndmask_b32_e64 v62, 0, 32, s13
	v_cndmask_b32_e64 v64, 0, 32, s14
	v_ldexp_f32 v7, v71, v7
	v_log_f32_e32 v3, v3
	v_cndmask_b32_e64 v8, 0, 0x42000000, s12
	v_cmp_gt_f32_e64 s12, 0x800000, v247
	v_ldexp_f32 v56, v73, v56
	v_ldexp_f32 v57, v67, v57
	v_ldexp_f32 v62, v249, v62
	v_ldexp_f32 v64, v251, v64
	v_log_f32_e32 v5, v5
	v_log_f32_e32 v7, v7
	v_cndmask_b32_e64 v60, 0, 32, s12
	v_log_f32_e32 v65, v56
	v_log_f32_e32 v78, v57
	v_log_f32_e32 v62, v62
	v_log_f32_e32 v64, v64
.Ltmp328:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v55, v86, v145 :: v_dual_sub_f32 v2, v3, v2
.Ltmp329:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v61, 0, 0x42000000, s13
	v_cndmask_b32_e64 v63, 0, 0x42000000, s14
	v_ldexp_f32 v60, v247, v60
	v_cndmask_b32_e64 v59, 0, 0x42000000, s12
.Ltmp330:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v57, v88, v143
.Ltmp331:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v3, v5, v4 :: v_dual_sub_f32 v4, v7, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_log_f32_e32 v60, v60
	v_dual_sub_f32 v5, v65, v8 :: v_dual_sub_f32 v8, v62, v61
	v_sub_f32_e32 v6, v78, v58
	v_sub_f32_e32 v58, v64, v63
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v2, v68, v2 :: v_dual_add_f32 v3, v70, v3
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v66
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v5, v245, v5 :: v_dual_add_f32 v4, v72, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v65, v33, v58
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v7, v60, v59 :: v_dual_add_f32 v6, v246, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v58, 0, v2, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v69
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v7, v248, v7 :: v_dual_and_b32 v2, 0x60, v34
	v_add_f32_e32 v8, v250, v8
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v107, 1, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v59, 0, v3, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v71
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v33, 12, v0
	v_add_nc_u32_e32 v2, 0, v2
	v_lshl_add_u32 v3, v200, 1, 0
.Ltmp332:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v39, v102, v186 :: v_dual_add_f32 v42, v105, v189
.Ltmp333:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v60, 0, v4, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v73
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v4, v2, v107, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s11, vcc_lo
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v61, 0, v5, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v67
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v5, 28, v0
.Ltmp334:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v94, v148 :: v_dual_lshlrev_b32 v34, 2, v1
	v_add_f32_e32 v38, v97, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp335:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v62, 0, v6, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v247
.Ltmp336:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v96, v150 :: v_dual_add_f32 v40, v103, v187
	v_dual_add_f32 v41, v104, v188 :: v_dual_add_f32 v44, v91, v191
.Ltmp337:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v63, 0, v7, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v249
.Ltmp338:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v90, v190 :: v_dual_add_f32 v48, v99, v196
	v_dual_add_f32 v45, v92, v192 :: v_dual_add_f32 v46, v93, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp339:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v64, 0, v8, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v251
	.loc	1 267 9 is_stmt 1               ; attention_backward.py:267:9
	v_dual_mov_b32 v72, 0 :: v_dual_add_f32 v47, v98, v195
.Ltmp340:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v50, v101, v198 :: v_dual_add_f32 v49, v100, v197
	v_add_f32_e32 v54, v81, v147
.Ltmp341:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v65, 0, v65, s12
	ds_store_b128 v3, v[58:61]
	ds_store_b128 v3, v[62:65] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v186, v4
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[58:61]
	ds_store_b128 v3, v[62:65] offset:16
.Ltmp342:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v61, v76, v137 :: v_dual_add_f32 v62, v77, v138
.Ltmp343:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v3, s42, v1, 2
	v_add_nc_u32_e32 v2, v2, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp344:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v59, v74, v135
.Ltmp345:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	ds_load_b32 v2, v2
.Ltmp346:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v60, v75, v136 :: v_dual_add_f32 v97, v82, v139
	v_dual_add_f32 v98, v83, v140 :: v_dual_add_nc_u32 v1, 0, v34
	v_add_f32_e32 v99, v84, v141
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_dual_add_f32 v100, v85, v134 :: v_dual_mov_b32 v71, v72
	v_dual_add_f32 v53, v80, v144 :: v_dual_add_f32 v56, v87, v142
	v_add_f32_e32 v58, v89, v133
.Ltmp347:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s53, 0xffff
	s_mov_b32 s12, s52
	s_mov_b32 s14, s46
	s_mov_b32 s15, s47
	v_mov_b32_e32 v70, v72
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v68, v72
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v2, v3, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[35:38]
	ds_store_b128 v72, v[39:42] offset:16
	ds_store_b128 v72, v[43:46] offset:32
	ds_store_b128 v72, v[47:50] offset:48
	ds_store_b128 v72, v[51:54] offset:64
	ds_store_b128 v72, v[55:58] offset:80
	ds_store_b128 v72, v[59:62] offset:96
	ds_store_b128 v72, v[97:100] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
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
	ds_store_b128 v72, v[35:38]
	ds_store_b128 v72, v[39:42] offset:16
	ds_store_b128 v72, v[43:46] offset:32
	ds_store_b128 v72, v[47:50] offset:48
	ds_store_b128 v72, v[51:54] offset:64
	ds_store_b128 v72, v[55:58] offset:80
	ds_store_b128 v72, v[59:62] offset:96
	ds_store_b128 v72, v[97:100] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_vccnz .LBB0_24
; %bb.17:                               ; %.lr.ph81
	v_mad_u64_u32 v[145:146], null, s29, v255, v[106:107]
	v_dual_mov_b32 v58, 0x7632 :: v_dual_lshlrev_b32 v1, 2, v255
	v_dual_mov_b32 v57, 0x5410 :: v_dual_lshlrev_b32 v2, 4, v255
	v_cmp_eq_u32_e32 vcc_lo, 0, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v3, 0, v1, v117
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v5, s43, 2, v145
	v_cndmask_b32_e64 v4, 0x90, 0, s11
	v_dual_cndmask_b32 v58, 0x3276, v58 :: v_dual_and_b32 v7, 52, v131
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v189, v3
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:180
	scratch_store_b32 off, v23, off offset:288
	v_lshl_add_u32 v5, s43, 3, v145
	v_mul_u32_u24_e32 v3, 0x48, v132
	v_dual_cndmask_b32 v57, 0x1054, v57 :: v_dual_mov_b32 v198, v186
	v_xor_b32_e32 v4, v4, v127
	.loc	1 396 43                        ; attention_backward.py:396:43
	scratch_store_b32 off, v5, off offset:184 ; 4-byte Folded Spill
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[5:6], null, s43, 12, v[145:146]
	v_lshl_or_b32 v3, v116, 2, v3
	v_and_or_b32 v37, v0, 2, v130
	v_lshl_or_b32 v7, v33, 5, v7
	v_lshl_or_b32 v57, v57, 8, v57
	v_lshl_or_b32 v58, v58, 8, v58
	v_mad_u64_u32 v[148:149], null, s43, 24, v[145:146]
	scratch_store_b64 off, v[5:6], off offset:188 ; 8-byte Folded Spill
	v_lshl_add_u32 v5, s43, 4, v145
	v_mad_u64_u32 v[149:150], null, s43, 28, v[145:146]
	v_or_b32_e32 v194, v126, v34
	v_or_b32_e32 v195, v114, v1
	scratch_store_b32 off, v5, off offset:196 ; 4-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s43, 20, v[145:146]
	v_or_b32_e32 v191, v4, v129
	v_or3_b32 v150, v3, v128, v126
	v_or3_b32 v192, v129, v126, v127
	v_or3_b32 v193, v37, v7, v128
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v58, 0x760076, v58
	v_and_b32_e32 v57, 0x540054, v57
	v_xor_b32_e32 v48, 0x318, v194
	v_xor_b32_e32 v56, 0x738, v194
	v_xor_b32_e32 v65, 28, v195
	scratch_store_b64 off, v[5:6], off offset:200 ; 8-byte Folded Spill
	v_xor_b32_e32 v3, 0x120, v191
	v_xor_b32_e32 v4, 0x240, v191
	v_xor_b32_e32 v5, 0x360, v191
	v_xor_b32_e32 v6, 16, v150
	v_xor_b32_e32 v8, 32, v150
	v_xor_b32_e32 v35, 48, v150
	v_xor_b32_e32 v36, 64, v150
	v_xor_b32_e32 v33, 0x50, v150
	v_xor_b32_e32 v38, 0x60, v150
	v_xor_b32_e32 v39, 0x70, v150
	v_xor_b32_e32 v7, 0x90, v192
	v_xor_b32_e32 v37, 0x120, v192
	v_xor_b32_e32 v40, 0x1b0, v192
	v_xor_b32_e32 v34, 16, v193
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
	v_xor_b32_e32 v1, 0x7bc, v194
	v_xor_b32_e32 v59, 4, v195
	v_xor_b32_e32 v60, 8, v195
	v_xor_b32_e32 v61, 12, v195
	v_xor_b32_e32 v62, 16, v195
	v_xor_b32_e32 v63, 20, v195
	v_xor_b32_e32 v64, 24, v195
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
	s_clause 0x17                           ; 120-byte Folded Spill
	scratch_store_b32 off, v107, off offset:292
	scratch_store_b32 off, v254, off offset:284
	scratch_store_b32 off, v253, off offset:280
	scratch_store_b32 off, v252, off offset:276
	scratch_store_b32 off, v185, off offset:272
	scratch_store_b32 off, v160, off offset:268
	scratch_store_b32 off, v159, off offset:264
	scratch_store_b32 off, v32, off offset:260
	scratch_store_b32 off, v31, off offset:256
	scratch_store_b32 off, v30, off offset:252
	scratch_store_b32 off, v29, off offset:248
	scratch_store_b32 off, v28, off offset:244
	scratch_store_b32 off, v27, off offset:240
	scratch_store_b32 off, v26, off offset:236
	scratch_store_b32 off, v24, off offset:232
	scratch_store_b32 off, v22, off offset:228
	scratch_store_b32 off, v21, off offset:224
	scratch_store_b32 off, v20, off offset:220
	scratch_store_b32 off, v19, off offset:216
	scratch_store_b32 off, v18, off offset:212
	scratch_store_b32 off, v17, off offset:208
	scratch_store_b32 off, v25, off offset:176
	scratch_store_b128 off, v[9:12], off offset:144
	scratch_store_b128 off, v[13:16], off offset:160
	v_dual_mov_b32 v9, v161 :: v_dual_add_nc_u32 v230, 0, v48
	v_dual_mov_b32 v17, v169 :: v_dual_add_nc_u32 v238, 0, v56
	v_dual_mov_b32 v25, v177 :: v_dual_add_nc_u32 v246, 0, v65
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v196, 0x5040504, v57
	v_dual_mov_b32 v92, v137 :: v_dual_and_b32 v197, 0x7060706, v58
	v_dual_mov_b32 v94, v137 :: v_dual_add_nc_u32 v199, 0, v113
	v_dual_mov_b32 v91, v137 :: v_dual_add_nc_u32 v200, 0, v2
	v_dual_mov_b32 v96, v137 :: v_dual_add_nc_u32 v185, 0, v119
	v_dual_mov_b32 v82, v137 :: v_dual_add_nc_u32 v159, 0, v120
	v_dual_mov_b32 v93, v137 :: v_dual_add_nc_u32 v160, 0, v121
	v_dual_mov_b32 v84, v137 :: v_dual_add_nc_u32 v187, 0, v122
	v_dual_mov_b32 v95, v137 :: v_dual_add_nc_u32 v188, 0, v123
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v146, 0, v124
	v_dual_mov_b32 v83, v137 :: v_dual_add_nc_u32 v190, 0, v125
	v_dual_mov_b32 v86, v137 :: v_dual_add_nc_u32 v147, 0, v3
	v_dual_mov_b32 v85, v137 :: v_dual_add_nc_u32 v210, 0, v4
	v_dual_mov_b32 v88, v137 :: v_dual_add_nc_u32 v211, 0, v5
	v_dual_mov_b32 v87, v137 :: v_dual_add_nc_u32 v212, 0, v6
	v_dual_mov_b32 v74, v137 :: v_dual_add_nc_u32 v213, 0, v8
	v_add_nc_u32_e32 v214, 0, v35
	v_dual_mov_b32 v76, v137 :: v_dual_add_nc_u32 v215, 0, v36
	v_dual_mov_b32 v75, v137 :: v_dual_add_nc_u32 v216, 0, v33
	v_dual_mov_b32 v78, v137 :: v_dual_add_nc_u32 v217, 0, v38
	v_dual_mov_b32 v77, v137 :: v_dual_add_nc_u32 v218, 0, v39
	v_dual_mov_b32 v80, v137 :: v_dual_add_nc_u32 v219, 0, v7
	v_dual_mov_b32 v79, v137 :: v_dual_add_nc_u32 v220, 0, v37
	v_add_nc_u32_e32 v221, 0, v40
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v222, 0, v34
	v_add_nc_u32_e32 v223, 0, v41
	v_add_nc_u32_e32 v224, 0, v42
	v_add_nc_u32_e32 v225, 0, v43
	v_add_nc_u32_e32 v226, 0, v44
	v_add_nc_u32_e32 v227, 0, v45
	v_add_nc_u32_e32 v228, 0, v46
	v_dual_mov_b32 v10, v162 :: v_dual_add_nc_u32 v229, 0, v47
	v_dual_mov_b32 v12, v164 :: v_dual_add_nc_u32 v231, 0, v49
	v_dual_mov_b32 v11, v163 :: v_dual_add_nc_u32 v232, 0, v50
	v_dual_mov_b32 v14, v166 :: v_dual_add_nc_u32 v233, 0, v51
	v_dual_mov_b32 v13, v165 :: v_dual_add_nc_u32 v234, 0, v52
	v_dual_mov_b32 v16, v168 :: v_dual_add_nc_u32 v235, 0, v53
	v_dual_mov_b32 v15, v167 :: v_dual_add_nc_u32 v236, 0, v54
	v_dual_mov_b32 v18, v170 :: v_dual_add_nc_u32 v237, 0, v55
	v_dual_mov_b32 v20, v172 :: v_dual_add_nc_u32 v239, 0, v1
	v_dual_mov_b32 v19, v171 :: v_dual_add_nc_u32 v240, 0, v59
	v_dual_mov_b32 v22, v174 :: v_dual_add_nc_u32 v241, 0, v60
	v_dual_mov_b32 v21, v173 :: v_dual_add_nc_u32 v242, 0, v61
	v_dual_mov_b32 v24, v176 :: v_dual_add_nc_u32 v243, 0, v62
	v_dual_mov_b32 v23, v175 :: v_dual_add_nc_u32 v244, 0, v63
	v_dual_mov_b32 v26, v178 :: v_dual_add_nc_u32 v245, 0, v64
	v_dual_mov_b32 v28, v180 :: v_dual_add_nc_u32 v247, 0, v66
	v_dual_mov_b32 v27, v179 :: v_dual_add_nc_u32 v248, 0, v67
	v_dual_mov_b32 v30, v182 :: v_dual_add_nc_u32 v249, 0, v68
	v_dual_mov_b32 v29, v181 :: v_dual_add_nc_u32 v250, 0, v69
	v_dual_mov_b32 v32, v184 :: v_dual_add_nc_u32 v251, 0, v70
	v_dual_mov_b32 v31, v183 :: v_dual_add_nc_u32 v252, 0, v71
	v_add_nc_u32_e32 v253, 0, v72
	v_add_nc_u32_e32 v254, 0, v73
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, v137
	v_mov_b32_e32 v67, v137
	v_mov_b32_e32 v68, v137
	v_mov_b32_e32 v69, v137
	v_mov_b32_e32 v70, v137
	v_mov_b32_e32 v71, v137
	v_mov_b32_e32 v72, v137
	s_and_b32 s41, s41, 0xffff
	s_add_i32 s26, s50, s51
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	.loc	1 322 17                        ; attention_backward.py:322:17
	s_mov_b32 s52, s66
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s53, 0x76543210
	s_branch .LBB0_19
.LBB0_18:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_clause 0x4                            ; 28-byte Folded Reload
	scratch_load_b32 v1, off, off offset:196
	scratch_load_b32 v6, off, off offset:184
	scratch_load_b64 v[33:34], off, off offset:188
	scratch_load_b64 v[3:4], off, off offset:200
	scratch_load_b32 v4, off, off offset:180
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s11, s28, s29
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v46, 0, v193
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s11, s26, s11
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s28, s28, 16
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v2, s11, v145, 1
	v_add_lshl_u32 v5, s11, v148, 1
	v_add_lshl_u32 v7, s11, v149, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v138, v137
	v_mov_b32_e32 v140, v137
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s78
	v_cndmask_b32_e64 v5, 0x80000000, v5, s75
	v_cndmask_b32_e64 v7, 0x80000000, v7, s73
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v139, v137
	v_mov_b32_e32 v142, v137
	v_mov_b32_e32 v141, v137
	v_mov_b32_e32 v144, v137
	v_mov_b32_e32 v143, v137
	v_dual_mov_b32 v97, v137 :: v_dual_mov_b32 v98, v138
	v_dual_mov_b32 v99, v139 :: v_dual_mov_b32 v100, v140
	v_dual_mov_b32 v101, v141 :: v_dual_mov_b32 v102, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v104, v144 :: v_dual_mov_b32 v103, v143
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, s11, v1, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v6, s11, v6, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v8, s11, v33, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s11, v3, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s11, v4, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s79
	v_cndmask_b32_e64 v6, 0x80000000, v6, s74
	v_cndmask_b32_e64 v8, 0x80000000, v8, s51
	v_cndmask_b32_e64 v3, 0x80000000, v3, s77
	v_cndmask_b32_e64 v4, 0x80000000, v4, s76
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
	ds_store_b32 v147, v2
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
	v_or_b16 v38.l, v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v33.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s11, 0xff800000, v5
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_mov_b16_e32 v5.h, v4.l
	v_mov_b16_e32 v4.l, v5.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v1.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v1, 0, v150
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s14, s75, vcc_lo
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s12, 0xff800000, v4
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s11, s74, s11
	v_or_b16 v38.h, v34.l, v33.l
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	ds_load_u16 v35, v1
	ds_load_u16 v34, v212
	ds_load_u16 v201, v214
	ds_load_u16 v167, v216
	ds_load_u16 v255, v218
	ds_load_u16 v33, v217
	ds_load_u16 v36, v215
	ds_load_u16 v37, v213
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v1, 0, v192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v5
	.loc	1 387 26 is_stmt 1              ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s72
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16 v1, v38
	v_cndmask_b32_e64 v1, 0, 1, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	s_and_b32 s11, s73, s12
	v_lshlrev_b16 v38.l, 8, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v39.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	s_and_b32 s11, s51, s13
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_mov_b32 s51, s47
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v38.l, v39.l, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v39.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s11
	v_lshlrev_b16 v39.l, 8, v39.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v40.l, v1.l
	v_or_b16 v39.l, v40.l, v39.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[40:41], null, s50, s38, v[0:1]
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v219, v38
	ds_store_b16 v220, v38
	ds_store_b16 v221, v39
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_mov_b32 s50, s46
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v64, v46
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v64, v46 offset:64
	ds_load_u8_d16 v170, v222
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v170, v223
	ds_load_u8_d16 v171, v224
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v171, v224 offset:64
	ds_load_u8_d16 v172, v223 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v172, v222 offset:64
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v46, 0, v194
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v1, s38, v40
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
	v_add_nc_u32_e32 v38, s38, v8
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v2, 1, v40
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v39, s38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s71
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v40, s38, v39
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v41, s38, v40
	v_add_nc_u32_e32 v42, s38, v41
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v41, 1, v41
	v_lshlrev_b32_e32 v40, 1, v40
	v_lshlrev_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v43, s38, v42
	v_add_nc_u32_e32 v44, s38, v43
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v43, 1, v43
	v_lshlrev_b32_e32 v42, 1, v42
	v_lshlrev_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v45, 1, v44
	v_add_lshl_u32 v44, v44, s38, 1
	v_lshlrev_b32_e32 v39, 1, v39
	v_lshlrev_b32_e32 v38, 1, v38
	v_lshlrev_b32_e32 v3, 1, v3
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v4
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s68
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s67
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
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s59
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s58
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s57
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s55
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s56
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s28, s39
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	s_clause 0xf
	buffer_load_u16 v2, v2, s[48:51], 0 offen
	buffer_load_u16 v1, v1, s[48:51], 0 offen
	buffer_load_u16 v3, v3, s[48:51], 0 offen
	buffer_load_u16 v4, v4, s[48:51], 0 offen
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v38, v38, s[48:51], 0 offen
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	buffer_load_u16 v42, v42, s[48:51], 0 offen
	buffer_load_u16 v43, v43, s[48:51], 0 offen
	buffer_load_u16 v45, v45, s[48:51], 0 offen
	buffer_load_u16 v44, v44, s[48:51], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v46, v2
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
	ds_store_b16 v232, v38
	s_waitcnt vmcnt(6)
	ds_store_b16 v233, v39
	s_waitcnt vmcnt(5)
	ds_store_b16 v234, v40
	s_waitcnt vmcnt(4)
	ds_store_b16 v235, v41
	s_waitcnt vmcnt(3)
	ds_store_b16 v236, v42
	s_waitcnt vmcnt(2)
	ds_store_b16 v237, v43
	s_waitcnt vmcnt(1)
	ds_store_b16 v238, v45
	s_waitcnt vmcnt(0)
	ds_store_b16 v239, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[202:205], off, off
	scratch_load_b128 v[206:209], off, off offset:16
	ds_load_2addr_b32 v[163:164], v249 offset1:16
	ds_load_2addr_b32 v[165:166], v250 offset1:16
	ds_load_2addr_b32 v[38:39], v240 offset1:16
	ds_load_2addr_b32 v[40:41], v244 offset1:16
	ds_load_2addr_b32 v[42:43], v248 offset1:16
	ds_load_2addr_b32 v[44:45], v252 offset1:16
	ds_load_2addr_b32 v[175:176], v241 offset1:16
	ds_load_2addr_b32 v[177:178], v242 offset1:16
	ds_load_2addr_b32 v[179:180], v243 offset1:16
	ds_load_2addr_b32 v[181:182], v245 offset1:16
	ds_load_2addr_b32 v[183:184], v246 offset1:16
	ds_load_2addr_b32 v[161:162], v247 offset1:16
	ds_load_2addr_b32 v[168:169], v251 offset1:16
	ds_load_2addr_b32 v[54:55], v254 offset1:16
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e32 v46.h, v38.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e32 v48.h, v40.l
	v_mov_b16_e64 v51.h, v165.l
	v_mov_b16_e64 v165.l, v163.h
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v1, 0, v195
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v47.l, v175.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v47.h, v177.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v48.l, v179.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v49.l, v181.l
	ds_load_2addr_b32 v[173:174], v1 offset1:16
	ds_load_2addr_b32 v[1:2], v253 offset1:16
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v49.h, v183.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v50.l, v161.l
	v_mov_b16_e32 v50.h, v42.l
	v_mov_b16_e64 v51.l, v163.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v52.l, v168.l
	v_mov_b16_e32 v52.h, v44.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e32 v53.h, v54.l
	v_mov_b16_e64 v177.l, v175.h
	v_mov_b16_e64 v40.l, v179.h
	v_mov_b16_e64 v183.l, v181.h
	v_mov_b16_e64 v42.l, v161.h
	v_mov_b16_e64 v44.l, v168.h
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v46.l, v173.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v53.l, v1.l
	v_mov_b16_e32 v54.l, v1.h
	v_mov_b16_e64 v38.l, v173.h
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[46:53], v[202:209], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[202:205], off, off offset:32
	scratch_load_b128 v[206:209], off, off offset:48
	v_mov_b16_e32 v53.l, v2.l
	v_mov_b16_e32 v53.h, v55.l
	v_mov_b16_e32 v55.l, v2.h
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:64
	scratch_load_b128 v[5:8], off, off offset:80
	v_mov_b16_e64 v46.l, v174.l
	v_mov_b16_e32 v46.h, v39.l
	v_mov_b16_e64 v47.l, v176.l
	v_mov_b16_e64 v47.h, v178.l
	v_mov_b16_e64 v48.l, v180.l
	v_mov_b16_e32 v48.h, v41.l
	v_mov_b16_e64 v49.l, v182.l
	v_mov_b16_e64 v49.h, v184.l
	v_mov_b16_e64 v50.l, v162.l
	v_mov_b16_e32 v50.h, v43.l
	v_mov_b16_e64 v51.l, v164.l
	v_mov_b16_e64 v51.h, v166.l
	v_mov_b16_e64 v52.l, v169.l
	v_mov_b16_e32 v52.h, v45.l
	v_mov_b16_e64 v178.l, v176.h
	v_mov_b16_e64 v184.l, v182.h
	v_mov_b16_e64 v166.l, v164.h
	v_mov_b16_e64 v39.l, v174.h
	v_mov_b16_e64 v41.l, v180.h
	v_mov_b16_e64 v43.l, v162.h
	v_mov_b16_e64 v45.l, v169.h
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[46:53], v[202:209], v[97:104]
	v_dual_mov_b32 v47, v38 :: v_dual_mov_b32 v48, v177
	v_dual_mov_b32 v49, v40 :: v_dual_mov_b32 v46, v55
	v_dual_mov_b32 v50, v183 :: v_dual_mov_b32 v51, v42
	v_mov_b32_e32 v42, v184
	v_dual_mov_b32 v52, v165 :: v_dual_mov_b32 v53, v44
	v_mov_b32_e32 v40, v178
	v_mov_b32_e32 v44, v166
	v_dual_mov_b32 v184, v32 :: v_dual_mov_b32 v181, v29
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[47:54], v[1:8], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:96
	scratch_load_b128 v[5:8], off, off offset:112
	v_dual_mov_b32 v182, v30 :: v_dual_mov_b32 v179, v27
	v_dual_mov_b32 v180, v28 :: v_dual_mov_b32 v177, v25
	v_dual_mov_b32 v178, v26 :: v_dual_mov_b32 v183, v31
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[39:46], v[1:8], v[97:104]
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v1, 16, v35
	v_lshlrev_b32_e32 v2, 16, v34
	v_lshlrev_b32_e32 v6, 16, v167
	v_lshlrev_b32_e32 v5, 16, v36
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v35, v98, v189
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v1, 0x3fb8aa3b, v1
	v_dual_mul_f32 v2, 0x3fb8aa3b, v2 :: v_dual_lshlrev_b32 v3, 16, v37
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v8, 16, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v1, s66, v56 :: v_dual_lshlrev_b32 v4, 16, v201
	.loc	1 343 31 is_stmt 0              ; attention_backward.py:343:31
	v_dual_mul_f32 v3, 0x3fb8aa3b, v3 :: v_dual_fmac_f32 v2, s52, v57
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v36, v99, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v4, 0x3fb8aa3b, v4 :: v_dual_lshlrev_b32 v7, 16, v33
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v1, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v3, s66, v58
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v37, v100, v189 :: v_dual_sub_f32 v2, v2, v198
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v33.l, 1, v64.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v8, 0x3fb8aa3b, v8 :: v_dual_mul_f32 v7, 0x3fb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.l
	v_and_b16 v33.l, 1, v170.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v8, s52, v63
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v34, v97, v189
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v6, 0x3fb8aa3b, v6 :: v_dual_mul_f32 v5, 0x3fb8aa3b, v5
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v39, v102, v189 :: v_dual_fmac_f32 v4, s52, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v5, s66, v60 :: v_dual_fmac_f32 v6, s52, v61
	v_fmac_f32_e32 v7, s66, v62
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_sub_f32 v41, v104, v189
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v38, v101, v189
	v_dual_mov_b32 v168, v16 :: v_dual_mov_b32 v165, v13
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v35
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v35.l, 1, v170.h
	v_dual_mov_b32 v166, v14 :: v_dual_mov_b32 v163, v11
	v_dual_mov_b32 v164, v12 :: v_dual_mov_b32 v161, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v40, v103, v189 :: v_dual_mul_f32 v1, v1, v34
	v_dual_mov_b32 v162, v10 :: v_dual_and_b32 v255, 15, v0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s11, v2, v2
	v_mov_b32_e32 v167, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s64, v1
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v33, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v33, 0x7fff
	v_bfe_u32 v33, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v33, 0x7fff
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v35.l
	v_and_b16 v35.l, 1, v171.l
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
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mul_f32 v1, v1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v37
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s64, v1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v37.l, 1, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s11, v2, v2
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v2, v3, 0x7fff
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v37.l
	v_and_b16 v37.l, 1, v172.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	v_permlanex16_b32 v2, v1, s53, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v35, v2, v1, v196
	v_perm_b32 v36, v2, v1, v197
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v5, v186
	v_sub_f32_e32 v2, v6, v198
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v2, v2
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v37.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v1, v1, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mul_f32 v1, s64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v39
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v39.l, 1, v172.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v39.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s64, v2
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v39.l, 1, v171.h
	v_dual_mov_b32 v176, v24 :: v_dual_mov_b32 v173, v21
	v_mov_b32_e32 v175, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s11, v2, v2
	v_dual_mov_b32 v174, v22 :: v_dual_mov_b32 v171, v19
	v_dual_mov_b32 v172, v20 :: v_dual_mov_b32 v169, v17
	v_add3_u32 v2, v2, v3, 0x7fff
	v_mov_b32_e32 v170, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	v_permlanex16_b32 v2, v1, s53, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v37, v2, v1, v196
	v_perm_b32 v38, v2, v1, v197
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v7, v186
	v_sub_f32_e32 v2, v8, v198
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v2, v2
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
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v139, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s11, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v138, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s12, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v140, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v144, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v141, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v143, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v56, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v63, v144
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v61, v142
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v58, v139
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v60, v141
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v57, v138
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v62, v143
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v59, v140
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s56, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s50, s28, s65
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s72
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[33:34], null, s50, s33, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, s33, v33
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 1, v3
	v_lshlrev_b32_e32 v1, 1, v33
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	s_delay_alu instid0(VALU_DEP_3)
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[33:36], v1
	ds_load_b128 v[37:40], v185
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:144
	scratch_load_b128 v[5:8], off, off offset:160
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[33:40], v[161:168], v[56:63]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[33:36], v159
	ds_load_b128 v[37:40], v160
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[33:40], v[169:176], v[56:63]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[33:36], v187
	ds_load_b128 v[37:40], v188
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[33:40], v[177:184], v[56:63]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[33:36], v146
	ds_load_b128 v[37:40], v190
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[33:40], v[1:8], v[56:63]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v33, s28, v255
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s11, s31, v33
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s78, s0, s11
	s_and_b32 s76, s1, s11
	s_and_b32 s74, s5, s11
	s_and_b32 s51, s6, s11
	s_and_b32 s79, s7, s11
	s_and_b32 s77, s8, s11
	s_and_b32 s75, s9, s11
	s_and_b32 s73, s10, s11
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_cbranch_vccnz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	s_and_not1_b32 s19, s78, exec_lo
	s_and_not1_b32 s20, s76, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v33, v1
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s18, vcc_lo, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, exec_lo
	s_or_b32 s78, s19, s18
	s_and_not1_b32 s18, s51, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s11, v33, v1
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s11, s11, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, exec_lo
	s_or_b32 s76, s20, s11
	s_and_not1_b32 s11, s74, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v33, v1
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s12, s12, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s74, s11, s12
	s_and_not1_b32 s11, s79, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v33, v1
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s13, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s51, s18, s13
	s_and_not1_b32 s13, s77, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v33, v1
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s14, exec_lo
	s_or_b32 s79, s11, s12
	s_and_not1_b32 s11, s75, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v33, v1
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s15, s15, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s77, s13, s14
	s_and_not1_b32 s13, s73, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s16, v33, v1
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s16, s16, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s16, exec_lo
	s_or_b32 s75, s11, s12
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v33, v1
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
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v33, v1
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s11, v33, v1
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v33, v1
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v33, v1
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v33, v1
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v33, v1
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v33, v1
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v33, v1
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v33, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s18, vcc_lo, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s78
	s_and_b32 s18, s18, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v33, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s19, s78, exec_lo
	s_and_b32 s11, s11, s76
	s_or_b32 s78, s19, s18
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s51, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v33, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s21, v33, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s22, v33, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s23, v33, v1
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s24, v33, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s75
	s_and_b32 s12, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s75, s11, s12
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v33, v1
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
	scratch_load_b32 v23, off, off offset:288
	scratch_load_b32 v107, off, off offset:292
.LBB0_24:                               ; %._crit_edge82
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v107, v255
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshrrev_b32_e32 v1, 4, v23
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
.Ltmp348:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 300
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 300
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24180
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 300
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
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
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
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
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 300
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 74
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
