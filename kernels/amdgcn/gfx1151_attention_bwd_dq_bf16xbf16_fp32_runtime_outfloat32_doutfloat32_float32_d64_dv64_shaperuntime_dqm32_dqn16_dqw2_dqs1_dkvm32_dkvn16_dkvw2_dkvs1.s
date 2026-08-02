	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v159, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v98, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v37, 0x1b0, v98
	v_xor_b32_e32 v39, 0x2d0, v98
	v_xor_b32_e32 v36, 0x120, v98
	v_xor_b32_e32 v38, 0x240, v98
	v_xor_b32_e32 v41, 0x3f0, v98
	v_xor_b32_e32 v40, 0x360, v98
	v_add_nc_u32_e32 v154, 0, v37
	v_add_nc_u32_e32 v153, 0, v36
	v_add_nc_u32_e32 v155, 0, v38
	v_add_nc_u32_e32 v156, 0, v39
	v_add_nc_u32_e32 v157, 0, v40
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s27, -1, 0
	s_cmp_eq_u32 s4, 1
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
	v_xor_b32_e32 v3, 0x90, v98
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
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s38, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v1, vcc_lo
	v_lshl_add_u32 v1, s38, 6, v1
	v_lshlrev_b32_e32 v36, 2, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v3
	v_lshlrev_b32_e32 v2, 2, v2
	v_dual_cndmask_b32 v67, 0x80000000, v36 :: v_dual_add_nc_u32 v158, 0, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v38, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v69, 0x80000000, v38 :: v_dual_lshlrev_b32 v36, 2, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v70, 0x80000000, v36 :: v_dual_add_nc_u32 v151, 0, v98
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v38 :: v_dual_lshlrev_b32 v36, 2, v40
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v72, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v73, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v74, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v75, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v76, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v77, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v78, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v80, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v81, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v82, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v83, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v84, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v85, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s38, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v86, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s38, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s38, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v88, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v97, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v38
	v_add_lshl_u32 v38, v38, s38, 2
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v99, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s23, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v39, v39, s38, 2
	v_cndmask_b32_e32 v100, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s24, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v105, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s37, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v116, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s39, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v124, 0x80000000, v39, vcc_lo
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_b32 v46, v66, s[4:7], 0 offen
	buffer_load_b32 v47, v67, s[4:7], 0 offen
	buffer_load_b32 v48, v3, s[4:7], 0 offen
	buffer_load_b32 v49, v69, s[4:7], 0 offen
	buffer_load_b32 v34, v71, s[4:7], 0 offen
	buffer_load_b32 v35, v73, s[4:7], 0 offen
	buffer_load_b32 v36, v75, s[4:7], 0 offen
	buffer_load_b32 v37, v77, s[4:7], 0 offen
	buffer_load_b32 v54, v79, s[4:7], 0 offen
	buffer_load_b32 v55, v81, s[4:7], 0 offen
	buffer_load_b32 v56, v83, s[4:7], 0 offen
	buffer_load_b32 v57, v85, s[4:7], 0 offen
	buffer_load_b32 v38, v87, s[4:7], 0 offen
	buffer_load_b32 v39, v97, s[4:7], 0 offen
	buffer_load_b32 v40, v100, s[4:7], 0 offen
	buffer_load_b32 v41, v105, s[4:7], 0 offen
	buffer_load_b32 v58, v1, s[4:7], 0 offen
	buffer_load_b32 v59, v2, s[4:7], 0 offen
	buffer_load_b32 v60, v68, s[4:7], 0 offen
	buffer_load_b32 v61, v70, s[4:7], 0 offen
	buffer_load_b32 v42, v72, s[4:7], 0 offen
	buffer_load_b32 v43, v74, s[4:7], 0 offen
	buffer_load_b32 v44, v76, s[4:7], 0 offen
	buffer_load_b32 v45, v78, s[4:7], 0 offen
	buffer_load_b32 v62, v80, s[4:7], 0 offen
	buffer_load_b32 v63, v82, s[4:7], 0 offen
	buffer_load_b32 v64, v84, s[4:7], 0 offen
	buffer_load_b32 v65, v86, s[4:7], 0 offen
	buffer_load_b32 v50, v88, s[4:7], 0 offen
	buffer_load_b32 v51, v99, s[4:7], 0 offen
	buffer_load_b32 v52, v116, s[4:7], 0 offen
	buffer_load_b32 v53, v124, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_clause 0x1f
	buffer_load_b32 v108, v66, s[4:7], 0 offen
	buffer_load_b32 v107, v67, s[4:7], 0 offen
	buffer_load_b32 v106, v3, s[4:7], 0 offen
	buffer_load_b32 v104, v69, s[4:7], 0 offen
	buffer_load_b32 v103, v79, s[4:7], 0 offen
	buffer_load_b32 v102, v81, s[4:7], 0 offen
	buffer_load_b32 v101, v83, s[4:7], 0 offen
	buffer_load_b32 v96, v85, s[4:7], 0 offen
	buffer_load_b32 v95, v1, s[4:7], 0 offen
	buffer_load_b32 v94, v2, s[4:7], 0 offen
	buffer_load_b32 v93, v68, s[4:7], 0 offen
	buffer_load_b32 v92, v70, s[4:7], 0 offen
	buffer_load_b32 v91, v80, s[4:7], 0 offen
	buffer_load_b32 v90, v82, s[4:7], 0 offen
	buffer_load_b32 v89, v84, s[4:7], 0 offen
	buffer_load_b32 v80, v86, s[4:7], 0 offen
	buffer_load_b32 v115, v71, s[4:7], 0 offen
	buffer_load_b32 v114, v73, s[4:7], 0 offen
	buffer_load_b32 v110, v75, s[4:7], 0 offen
	buffer_load_b32 v109, v77, s[4:7], 0 offen
	buffer_load_b32 v113, v87, s[4:7], 0 offen
	buffer_load_b32 v112, v97, s[4:7], 0 offen
	buffer_load_b32 v111, v100, s[4:7], 0 offen
	buffer_load_b32 v105, v105, s[4:7], 0 offen
	buffer_load_b32 v123, v72, s[4:7], 0 offen
	buffer_load_b32 v122, v74, s[4:7], 0 offen
	buffer_load_b32 v121, v76, s[4:7], 0 offen
	buffer_load_b32 v120, v78, s[4:7], 0 offen
	buffer_load_b32 v119, v88, s[4:7], 0 offen
	buffer_load_b32 v118, v99, s[4:7], 0 offen
	buffer_load_b32 v117, v116, s[4:7], 0 offen
	buffer_load_b32 v116, v124, s[4:7], 0 offen
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v81, 32, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v9, v58, v95 :: v_dual_mul_f32 v10, v59, v94
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v11, v60, v93 :: v_dual_mul_f32 v12, v61, v92
	s_waitcnt vmcnt(15)
	v_mul_f32_e32 v17, v34, v115
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v14, v63, v90 :: v_dual_fmac_f32 v9, v58, v95
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v169, 7, v159
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v11, v60, v93 :: v_dual_fmac_f32 v12, v61, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v14, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v29, v50, v119
	v_mul_f32_e32 v25, v42, v123
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v14, v63, v90
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v29, v29 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v140, 4, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v22, v39, v112
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v27, v44, v121
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v29, v50, v119
.Ltmp13:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_or_b32 v138, 0x70, v140, v169
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v28, v45, v120
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v25, v25 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v81, 6, v138
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v53, v116
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v22, v22 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v27, v27 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	v_xor_b32_e32 v5, 64, v1
	v_add_nc_u32_e32 v126, 0, v1
	v_xor_b32_e32 v6, 0x50, v1
	v_xor_b32_e32 v7, 0x60, v1
	v_xor_b32_e32 v1, 0x70, v1
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v28, v28 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v25, v42, v123
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v42, v9, -1, -1 op_sel:[1,0]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v22, v39, v112 :: v_dual_add_nc_u32 v127, 0, v2
.Ltmp25:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v128, 0, v3
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v129, 0, v4
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v9, v9, v42 :: v_dual_add_nc_u32 v130, 0, v5
	v_dual_fmac_f32 v28, v45, v120 :: v_dual_add_nc_u32 v131, 0, v6
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v32, v32 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v133, 0, v1
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v27, v44, v121
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v44, v11, -1, -1 op_sel:[1,0]
.Ltmp33:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v132, 0, v7
	ds_load_b128 v[176:179], v126
	ds_load_b128 v[180:183], v127
	ds_load_b128 v[160:163], v128
	ds_load_b128 v[164:167], v129
	ds_load_b128 v[1:4], v130
	ds_load_b128 v[5:8], v131
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[1:4], off     ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:16 ; 16-byte Folded Spill
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v32, v53, v116
	v_add_f32_e32 v11, v11, v44
.Ltmp35:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v132
	ds_load_b128 v[5:8], v133
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[1:4], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:48 ; 16-byte Folded Spill
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v8, v57, v96
	v_dual_mul_f32 v24, v41, v105 :: v_dual_mul_f32 v1, v46, v108
	v_dual_mul_f32 v2, v47, v107 :: v_dual_mul_f32 v3, v48, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v4, v49, v104 :: v_dual_mul_f32 v5, v54, v103
	v_dual_mul_f32 v6, v55, v102 :: v_dual_mul_f32 v7, v56, v101
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v8, v57, v96 :: v_dual_mul_f32 v13, v62, v91
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v15, v64, v89 :: v_dual_mul_f32 v16, v65, v80
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v24, v24 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v18, v35, v114
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v1, v1 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v2, v2 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v3, v3 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v4, v4 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v5, v5 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v6, v6 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v7, v7 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v10, v59, v94
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v15, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v16, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v24, v41, v105
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v41, v8, -1, -1 op_sel:[1,0]
.Ltmp50:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v31, v52, v117
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v1, v46, v108 :: v_dual_fmac_f32 v2, v47, v107
	v_dual_fmac_f32 v3, v48, v106 :: v_dual_fmac_f32 v4, v49, v104
	v_dual_fmac_f32 v5, v54, v103 :: v_dual_fmac_f32 v6, v55, v102
	v_fmac_f32_e32 v7, v56, v101
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v13, v62, v91
	v_dual_fmac_f32 v15, v64, v89 :: v_dual_fmac_f32 v16, v65, v80
	v_add_f32_e32 v8, v8, v41
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v125, 1, v81
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v19, v36, v110 :: v_dual_mul_f32 v20, v37, v109
	v_dual_mul_f32 v23, v40, v111 :: v_dual_mul_f32 v26, v43, v122
	v_mul_f32_e32 v30, v51, v118
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v31, v31 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v18, v35, v114
	v_add_f32_dpp v1, v1, v1 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v21, v38, v113
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v19, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v20, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v23, v23 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v26, v26 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v30, v30 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v31, v52, v117
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v21, v21 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v17, v34, v115
	v_dual_fmac_f32 v19, v36, v110 :: v_dual_fmac_f32 v20, v37, v109
	v_dual_fmac_f32 v23, v40, v111 :: v_dual_fmac_f32 v26, v43, v122
	v_fmac_f32_e32 v30, v51, v118
	v_add_f32_dpp v31, v31, v31 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v43, v10, -1, -1 op_sel:[1,0]
	v_and_b32_e32 v33, 1, v0
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v21, v38, v113
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v34, v1, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v35, v2, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v36, v3, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v37, v4, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v38, v5, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v39, v6, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v40, v7, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v45, v12, -1, -1 op_sel:[1,0]
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v10, v10, v43
	v_dual_add_f32 v1, v1, v34 :: v_dual_lshlrev_b32 v124, 6, v33
	v_add_f32_dpp v21, v21, v21 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v46, v13, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v47, v14, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v48, v15, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v49, v16, -1, -1 op_sel:[1,0]
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v36 :: v_dual_add_nc_u32 v66, 0, v125
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v51, v18, -1, -1 op_sel:[1,0]
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v35
	v_dual_add_f32 v4, v4, v37 :: v_dual_add_f32 v5, v5, v38
	v_dual_add_f32 v6, v6, v39 :: v_dual_add_f32 v7, v7, v40
	v_dual_add_f32 v12, v12, v45 :: v_dual_add_nc_u32 v137, 0, v124
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v13, v13, v46 :: v_dual_add_f32 v16, v16, v49
	v_dual_add_f32 v14, v14, v47 :: v_dual_add_f32 v15, v15, v48
	v_add_f32_e32 v18, v18, v51
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v31, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v1, 31
	v_readlane_b32 s5, v2, 31
	v_readlane_b32 s6, v3, 31
	v_readlane_b32 s7, v4, 31
	v_readlane_b32 s8, v5, 31
	v_readlane_b32 s9, v6, 31
	v_readlane_b32 s10, v7, 31
	v_readlane_b32 s11, v8, 31
	v_readlane_b32 s23, v9, 31
	v_readlane_b32 s24, v10, 31
	v_readlane_b32 s25, v11, 31
	v_readlane_b32 s26, v12, 31
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s28, v13, 31
	v_readlane_b32 s36, v14, 31
	v_readlane_b32 s37, v15, 31
	v_readlane_b32 s39, v16, 31
	v_permlanex16_b32 v50, v17, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v52, v19, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v53, v20, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v56, v23, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v58, v25, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v59, v26, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v60, v27, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v61, v28, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v62, v29, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v63, v30, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v65, v32, -1, -1 op_sel:[1,0]
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v31, v31, v64 :: v_dual_mov_b32 v2, s5
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v18, 31
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v10, s24
	v_dual_mov_b32 v9, s23 :: v_dual_mov_b32 v12, s26
	v_dual_mov_b32 v11, s25 :: v_dual_mov_b32 v14, s36
	v_permlanex16_b32 v54, v21, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v55, v22, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v57, v24, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v13, s28 :: v_dual_mov_b32 v16, s39
	v_dual_mov_b32 v15, s37 :: v_dual_mov_b32 v18, s41
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v17, v17, v50 :: v_dual_add_f32 v20, v20, v53
	v_dual_add_f32 v19, v19, v52 :: v_dual_add_f32 v22, v22, v55
	v_dual_add_f32 v23, v23, v56 :: v_dual_add_f32 v26, v26, v59
	v_dual_add_f32 v25, v25, v58 :: v_dual_add_f32 v28, v28, v61
	v_dual_add_f32 v27, v27, v60 :: v_dual_add_f32 v30, v30, v63
	v_dual_add_f32 v29, v29, v62 :: v_dual_add_f32 v32, v32, v65
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_store_b128 v66, v[1:4]
	ds_store_b128 v66, v[5:8] offset:16
	ds_store_b128 v66, v[9:12] offset:32
	ds_store_b128 v66, v[13:16] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v137
	ds_load_b128 v[58:61], v137 offset:16
	ds_load_b128 v[50:53], v137 offset:32
	ds_load_b128 v[42:45], v137 offset:48
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v21, v21, v54 :: v_dual_add_f32 v24, v24, v57
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v17, 31
	v_readlane_b32 s43, v19, 31
	v_readlane_b32 s44, v20, 31
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s45, v21, 31
	v_readlane_b32 s46, v22, 31
	v_readlane_b32 s47, v23, 31
	v_readlane_b32 s48, v24, 31
	v_readlane_b32 s49, v25, 31
	v_readlane_b32 s50, v26, 31
	v_readlane_b32 s51, v27, 31
	v_readlane_b32 s52, v28, 31
	v_readlane_b32 s53, v29, 31
	v_readlane_b32 s54, v30, 31
	v_readlane_b32 s55, v31, 31
	v_readlane_b32 s56, v32, 31
	v_dual_mov_b32 v17, s40 :: v_dual_mov_b32 v20, s44
	v_dual_mov_b32 v19, s43 :: v_dual_mov_b32 v22, s46
	v_dual_mov_b32 v21, s45 :: v_dual_mov_b32 v24, s48
	v_dual_mov_b32 v23, s47 :: v_dual_mov_b32 v26, s50
	v_dual_mov_b32 v25, s49 :: v_dual_mov_b32 v28, s52
	v_dual_mov_b32 v27, s51 :: v_dual_mov_b32 v30, s54
	v_dual_mov_b32 v29, s53 :: v_dual_mov_b32 v32, s56
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v31, s55 :: v_dual_mov_b32 v82, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v66, v[17:20]
	ds_store_b128 v66, v[21:24] offset:16
	ds_store_b128 v66, v[25:28] offset:32
	ds_store_b128 v66, v[29:32] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v137
	ds_load_b128 v[66:69], v137 offset:16
	ds_load_b128 v[54:57], v137 offset:32
	ds_load_b128 v[46:49], v137 offset:48
.Ltmp80:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s4, s31, 15
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v83, v63 :: v_dual_mov_b32 v210, v64
	v_dual_mov_b32 v84, v65 :: v_dual_mov_b32 v201, v58
	v_dual_mov_b32 v202, v59 :: v_dual_mov_b32 v203, v60
	v_dual_mov_b32 v204, v61 :: v_dual_mov_b32 v209, v50
	v_dual_mov_b32 v200, v51 :: v_dual_mov_b32 v199, v52
	v_dual_mov_b32 v198, v53 :: v_dual_mov_b32 v147, v42
	v_dual_mov_b32 v148, v43 :: v_dual_mov_b32 v191, v45
	v_mov_b32_e32 v190, v44
.Ltmp82:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s4, 31
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v85, v70 :: v_dual_mov_b32 v86, v71
	v_dual_mov_b32 v87, v72 :: v_dual_mov_b32 v88, v73
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v205, v66 :: v_dual_mov_b32 v206, v67
	v_dual_mov_b32 v207, v68 :: v_dual_mov_b32 v208, v69
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v197, v54
	v_dual_mov_b32 v195, v55 :: v_dual_mov_b32 v196, v56
	v_mov_b32_e32 v146, v57
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v192, v46 :: v_dual_mov_b32 v145, v49
	v_dual_mov_b32 v193, v47 :: v_dual_mov_b32 v194, v48
.Ltmp84:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s4, s4, s5
	s_mov_b32 s28, 0
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
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s9, s19
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v36, s35, v34
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s10, s5
	v_lshlrev_b32_e32 v4, 5, v0
	s_xor_b32 s5, s5, s8
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s50, s17, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v37, 4, v36
	v_or_b32_e32 v38, 8, v36
	v_or_b32_e32 v39, 12, v36
	v_or_b32_e32 v40, 16, v36
	v_or_b32_e32 v41, 20, v36
	v_or_b32_e32 v75, 24, v36
	v_or_b32_e32 v35, 28, v36
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s65, s5, s8
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s5, s16, s29
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v21, s15, v36
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s65, s65, s5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s28, s39
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v22, s15, v37
	v_add_nc_u32_e32 v23, s15, v38
	v_add_nc_u32_e32 v24, s15, v39
	v_add_nc_u32_e32 v25, s15, v40
	v_add_nc_u32_e32 v26, s15, v41
	v_add_nc_u32_e32 v27, s15, v75
	v_add_nc_u32_e32 v28, s15, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s67, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s16, s16, s6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v31, 5, v0
	s_mov_b32 s12, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s12, -1
                                        ; implicit-def: $vgpr31
.LBB0_7:                                ; %Flow321
	v_subrev_nc_u32_e32 v1, s13, v21
	s_clause 0x3
	s_load_b128 s[52:55], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s29, s[0:1], 0x90
	v_and_b32_e32 v32, 48, v0
	v_and_b32_e32 v139, 16, v0
	v_mul_lo_u32 v97, s43, v34
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v22
	v_cmp_gt_i32_e64 s0, s30, v36
	v_cmp_gt_i32_e64 s1, s30, v37
	v_cmp_gt_i32_e64 s5, s30, v38
	v_cmp_gt_i32_e64 s6, s30, v39
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v23
	v_cmp_gt_i32_e64 s7, s30, v40
	v_cmp_gt_i32_e64 s8, s30, v41
	v_cmp_gt_i32_e64 s9, s30, v75
	v_cmp_gt_i32_e64 s10, s30, v35
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v24
	v_xor_b32_e32 v134, 16, v138
	v_xor_b32_e32 v135, 32, v138
	v_xor_b32_e32 v136, 48, v138
	v_xor_b32_e32 v9, 64, v138
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v25
	v_xor_b32_e32 v10, 0x50, v138
	v_xor_b32_e32 v11, 0x60, v138
	v_xor_b32_e32 v12, 0x70, v138
	v_cmp_eq_u32_e64 s11, 0, v81
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v26
	v_and_b32_e32 v144, 14, v0
	v_lshlrev_b32_e32 v150, 2, v32
	v_lshlrev_b32_e32 v143, 5, v33
	v_lshlrev_b32_e32 v170, 3, v159
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v27
	v_lshrrev_b32_e32 v184, 2, v139
	v_lshrrev_b32_e32 v141, 4, v81
	v_lshlrev_b32_e32 v142, 2, v0
	v_lshrrev_b32_e32 v186, 1, v139
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s13, v28
	v_lshrrev_b32_e32 v185, 5, v81
	s_mul_f32 s66, s64, 0x3fb8aa3b
	s_mul_i32 s65, s65, s31
	s_add_i32 s50, s50, s16
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v21
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mul_i32 s51, s43, s35
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v22
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v23
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v24
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v25
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v26
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v27
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s14, v28
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v30, v143 :: v_dual_and_b32 v1, 60, v98
	v_cndmask_b32_e64 v2, 0x104, 0, s11
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s29, v159, v[97:98]
	v_dual_mov_b32 v31, v4 :: v_dual_and_b32 v4, 0x180, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v213, v2, v1
	v_dual_mov_b32 v254, 0xff800000 :: v_dual_lshlrev_b32 v1, 1, v144
	v_lshl_or_b32 v2, v144, 7, v150
	v_mov_b32_e32 v29, v142
	v_or_b32_e32 v3, v213, v124
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_and_b32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or3_b32 v214, v2, v143, v1
	v_and_b32_e32 v2, 52, v142
	v_xor_b32_e32 v1, 0x208, v3
	v_or3_b32 v218, v184, v141, v170
	v_mad_u64_u32 v[75:76], null, s43, 12, v[74:75]
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v2, v2, v5, v4
	v_xor_b32_e32 v6, 0x410, v3
	v_xor_b32_e32 v3, 0x618, v3
	v_xor_b32_e32 v4, 12, v214
	v_xor_b32_e32 v5, 16, v214
	v_or3_b32 v215, v2, v186, v185
	v_xor_b32_e32 v2, 28, v214
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v1
	v_xor_b32_e32 v1, 0x90, v218
	v_xor_b32_e32 v7, 4, v214
	v_xor_b32_e32 v8, 8, v214
	v_xor_b32_e32 v13, 20, v214
	v_xor_b32_e32 v14, 24, v214
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v219, 0, v3
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v222, 0, v4
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v223, 0, v5
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v226, 0, v2
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v227, 0, v1
	v_xor_b32_e32 v1, 0x120, v218
	v_xor_b32_e32 v2, 0x1b0, v218
	v_xor_b32_e32 v3, 16, v215
	v_xor_b32_e32 v4, 32, v215
	v_xor_b32_e32 v5, 48, v215
	v_mad_u64_u32 v[76:77], null, s43, 20, v[74:75]
	v_mad_u64_u32 v[77:78], null, s43, 24, v[74:75]
	v_mad_u64_u32 v[78:79], null, s43, 28, v[74:75]
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v6
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v7
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v221, 0, v8
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_add_nc_u32 v224, 0, v13
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v225, 0, v14
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v228, 0, v1
	v_dual_mov_b32 v252, 0xff800000 :: v_dual_add_nc_u32 v229, 0, v2
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v230, 0, v3
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v231, 0, v4
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v232, 0, v5
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v142, 0xff800000
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_mov_b32 v212, 0xff800000
	v_mov_b32_e32 v211, 0xff800000
	v_mov_b32_e32 v189, 0xff800000
	v_mov_b32_e32 v33, 0
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
	v_lshl_add_u32 v2, s43, 4, v74
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s12, s46, s12
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v3, s43, 2, v74
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v1, s12, v74, 2
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v5, s43, 3, v74
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v2, s12, v2, 2
	v_add_lshl_u32 v4, s12, v76, 2
	v_add_lshl_u32 v3, s12, v3, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s74
	v_add_lshl_u32 v5, s12, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s75
	v_cndmask_b32_e64 v4, 0x80000000, v4, s73
	v_cndmask_b32_e64 v3, 0x80000000, v3, s72
	s_clause 0x1
	buffer_load_b32 v1, v1, s[60:63], 0 offen
	buffer_load_b32 v2, v2, s[60:63], 0 offen
	v_add_lshl_u32 v6, s12, v77, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s70
	s_clause 0x1
	buffer_load_b32 v3, v3, s[60:63], 0 offen
	buffer_load_b32 v4, v4, s[60:63], 0 offen
	v_add_lshl_u32 v7, s12, v78, 2
	v_add_lshl_u32 v8, s12, v75, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s71
	s_clause 0x1
	buffer_load_b32 v5, v5, s[60:63], 0 offen
	buffer_load_b32 v6, v6, s[60:63], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v7, s69
	v_cndmask_b32_e64 v8, 0x80000000, v8, s68
	s_clause 0x1
	buffer_load_b32 v7, v7, s[60:63], 0 offen
	buffer_load_b32 v8, v8, s[60:63], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s47, s47, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v1, 0xff800000, v1, s74
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s75
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v79, v137, v213
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v3, 0xff800000, v3, s72
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v4, 0xff800000, v4, s73
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_dual_mul_f32 v13, 0x3fb8aa3b, v1 :: v_dual_mul_f32 v14, 0x3fb8aa3b, v2
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v2
	v_cmp_neq_f32_e64 s13, 0xff800000, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s15, 0xff800000, v4
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v5, 0xff800000, v5, s70
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v79, v13, v14 offset1:32
	v_mul_f32_e32 v14, 0x3fb8aa3b, v4
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v6, 0xff800000, v6, s71
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v13, 0x3fb8aa3b, v3
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s12, s75, vcc_lo
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v7, 0xff800000, v7, s69
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s68
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v1, 0, 1, s12
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v216, v13, v14 offset1:32
	v_dual_mul_f32 v13, 0x3fb8aa3b, v5 :: v_dual_mul_f32 v14, 0x3fb8aa3b, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s18, s74, s13
	v_lshlrev_b16 v1.l, 8, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s18
	s_and_b32 vcc_lo, s73, s15
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v217, v13, v14 offset1:32
	v_dual_mul_f32 v13, 0x3fb8aa3b, v8 :: v_dual_mul_f32 v14, 0x3fb8aa3b, v7
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, vcc_lo
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v3
	v_cmp_neq_f32_e64 s13, 0xff800000, v6
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v219, v13, v14 offset1:32
	v_add_nc_u32_e32 v13, 0, v214
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v14, v13
	ds_load_b32 v15, v220
	ds_load_b32 v175, v221
	ds_load_b32 v174, v222
	ds_load_b32 v173, v223
	ds_load_b32 v172, v224
	ds_load_b32 v171, v225
	ds_load_b32 v168, v226
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v1.h, 8, v2.l
	s_and_b32 s15, s72, s14
	s_and_b32 s14, s71, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v5
	v_cmp_neq_f32_e64 s20, 0xff800000, v7
	v_cmp_neq_f32_e64 s19, 0xff800000, v8
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v3, 0, 1, s15
	v_add_nc_u32_e32 v2, 0, v218
	s_and_b32 s17, s70, s16
	s_and_b32 s13, s69, s20
	s_and_b32 s16, s68, s19
	v_or_b16 v1.h, v3.l, v1.h
	ds_store_b16 v2, v1
	v_cndmask_b32_e64 v2, 0, 1, s14
	v_cndmask_b32_e64 v3, 0, 1, s16
	.loc	1 255 21 is_stmt 1              ; attention_backward.py:255:21
	v_fmac_f32_e32 v173, s66, v38
	v_dual_fmac_f32 v171, s66, v40 :: v_dual_fmac_f32 v14, s66, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v1.l, v2.l
	v_cndmask_b32_e64 v2, 0, 1, s17
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v15, s66, v35 :: v_dual_fmac_f32 v168, s66, v41
	v_dual_fmac_f32 v175, s66, v36 :: v_dual_fmac_f32 v172, s66, v39
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v174, s66, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s47, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s13
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v2.l, v3.l, v2.l
	ds_store_b16_d16_hi v227, v1
	ds_store_b16 v228, v1
	ds_store_b16 v229, v2
	v_add_nc_u32_e32 v2, 0, v215
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v1, v2
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v1, v2 offset:64
	ds_load_u8_d16 v2, v230
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v232 offset:64
	ds_load_u8_d16 v3, v231 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v230 offset:64
	v_and_b16 v1.l, 1, v1.l
	v_and_b16 v2.l, 1, v2.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v1.l
	ds_load_u8_d16 v1, v231
	ds_load_u8_d16 v4, v232
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v5, 0xff800000, v14, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v13, v5
	v_cndmask_b32_e64 v5, 0xff800000, v15, s19
	ds_store_b32 v220, v5
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v1.l, 1, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v1.l
	v_and_b16 v1.l, 1, v4.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v5, 0xff800000, v175, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v1.l
	v_and_b16 v1.l, 1, v1.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v221, v5
	v_cndmask_b32_e64 v4, 0xff800000, v174, s19
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s19, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v222, v4
	v_cndmask_b32_e64 v1, 0xff800000, v173, s19
	ds_store_b32 v223, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v1.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v172, s19
	ds_store_b32 v224, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v1.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v171, s19
	ds_store_b32 v225, v1
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v1.l, 1, v2.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s19, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v168, s19
	ds_store_b32 v226, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v79 offset1:32
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v34
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v1, v2
.Ltmp97:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v1, v233, v233
	v_max_f32_e32 v233, v1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v1, v34, v233
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v254
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp104:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v254, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v38, v2, v36
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v254, v38
	v_mov_b32_e32 v254, v38
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v99, v1
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[1:2], v216 offset1:32
	v_mov_b32_e32 v99, v37
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, v1
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v4, v3
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v4
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v4
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v3, v4 :: v_dual_max_f32 v4, v234, v234
.Ltmp118:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v234, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v1, v1, v234
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v1, 0, v1, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v252
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v1
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v4
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v4
.Ltmp125:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v252, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v40, v4, v3 :: v_dual_mov_b32 v3, v1
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v1, v3
.Ltmp128:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v252, v40
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[3:4], v217 offset1:32
	v_mov_b32_e32 v252, v40
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v250
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v255, v1
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v3
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v255, v39
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v5, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v1
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v1
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v1
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v1, v5
.Ltmp139:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v235, v5, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v3, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp146:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v250, v250
	v_max_f32_e32 v79, v5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v3
.Ltmp148:
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[5:6], v219 offset1:32
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v3, v1
.Ltmp151:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v250, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
.Ltmp152:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v5, v5
.Ltmp153:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	v_cmp_neq_f32_e64 s15, 0xff800000, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v41, v253, v1
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v5
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
.Ltmp162:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v236, v3, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v5, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp169:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v142, v142
	v_dual_max_f32 v248, v5, v1 :: v_dual_mov_b32 v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v251, v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp172:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v142, v248
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v35, v35 :: v_dual_mov_b32 v142, v248
.Ltmp174:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v251, v100, v1
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v100, v251
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
.Ltmp183:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v237, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v237, v3, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v35, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s12, 0xff800000, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp190:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v187, v187
	v_dual_max_f32 v246, v5, v1 :: v_dual_mov_b32 v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v249, v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp193:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v187, v246
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v2, v2
	v_mov_b32_e32 v187, v246
.Ltmp195:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s12
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v249, v143, v1
.Ltmp196:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v143, v249
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp203:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
.Ltmp204:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v238, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v238, v3, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v212, v212
.Ltmp211:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v244, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v247, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp214:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v212, v244
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v4, v4
	v_mov_b32_e32 v212, v244
.Ltmp216:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v211
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v247, v188, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v188, v247
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v239, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v4, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp232:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v211, v211
	v_mov_b32_e32 v250, v79
	v_max_f32_e32 v241, v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v245, v2, v1
.Ltmp235:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v211, v241 :: v_dual_max_f32 v2, v6, v6
	v_mov_b32_e32 v211, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v245, v149, v1
.Ltmp236:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v6
	v_mov_b32_e32 v149, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp237:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp238:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp239:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp240:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp241:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_mov_b32 v253, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v240, v240
.Ltmp244:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v240, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v6, v240
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s13
.Ltmp245:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v189, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp251:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v243, v3, v1
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v242, v2, v1 :: v_dual_sub_f32 v1, v189, v243
	v_mov_b32_e32 v189, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp254:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v242, v144, v1
	v_mov_b32_e32 v144, v242
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
	v_mov_b32_e32 v40, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s12, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v38, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v79, s47, v159
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v35, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v34, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v37, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v36, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v39, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v41, v40
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v40, v39
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v39, v38
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v38, v37
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v37, v36
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v36, v35
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v35, v34
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v34, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s12, -1, 0
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_add_i32 s21, s47, s65
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_mad_u64_u32 v[1:2], null, s21, s33, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, s33, v1
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v4, s33, v3
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v5, s33, v4
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v6, s33, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v7, 1, v6
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v6, s33, v6
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v8, s33, v6
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x3
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	buffer_load_u16 v2, v2, s[56:59], 0 offen
	buffer_load_u16 v3, v3, s[56:59], 0 offen
	buffer_load_u16 v4, v4, s[56:59], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v13, s33, v8
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v14, s33, v13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v15, s33, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s73
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v16, s33, v15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s74
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v17, s33, v16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v18, s33, v17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v15, 1, v15
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v19, s33, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v20, 1, v19
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v17, 1, v17
	v_add_lshl_u32 v19, v19, s33, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s12, s31, v79
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0xb
	buffer_load_u16 v13, v13, s[56:59], 0 offen
	buffer_load_u16 v14, v14, s[56:59], 0 offen
	buffer_load_u16 v15, v15, s[56:59], 0 offen
	buffer_load_u16 v16, v16, s[56:59], 0 offen
	buffer_load_u16 v5, v5, s[56:59], 0 offen
	buffer_load_u16 v7, v7, s[56:59], 0 offen
	buffer_load_u16 v6, v6, s[56:59], 0 offen
	buffer_load_u16 v8, v8, s[56:59], 0 offen
	buffer_load_u16 v17, v17, s[56:59], 0 offen
	buffer_load_u16 v18, v18, s[56:59], 0 offen
	buffer_load_u16 v20, v20, s[56:59], 0 offen
	buffer_load_u16 v19, v19, s[56:59], 0 offen
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
	ds_store_b16 v151, v1
	s_waitcnt vmcnt(14)
	ds_store_b16 v152, v2
	s_waitcnt vmcnt(13)
	ds_store_b16 v153, v3
	s_waitcnt vmcnt(12)
	ds_store_b16 v154, v4
	s_waitcnt vmcnt(11)
	ds_store_b16 v151, v13 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v152, v14 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v153, v15 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b16 v154, v16 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v155, v5
	s_waitcnt vmcnt(6)
	ds_store_b16 v156, v7
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v158, v8
	s_waitcnt vmcnt(3)
	ds_store_b16 v155, v17 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v156, v18 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v157, v20 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v158, v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off
	scratch_load_b128 v[17:20], off, off offset:16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v1, 0, v138
	v_add_nc_u32_e32 v5, 0, v134
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[5:8], v5
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[1:8], v[176:183], v[34:41]
	v_add_nc_u32_e32 v1, 0, v135
	v_add_nc_u32_e32 v5, 0, v136
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[5:8], v5
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[1:8], v[160:167], v[34:41]
	v_add_nc_u32_e32 v1, 0, v9
	v_add_nc_u32_e32 v5, 0, v10
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[5:8], v5
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[1:8], v[13:20], v[34:41]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:32
	scratch_load_b128 v[17:20], off, off offset:48
	v_add_nc_u32_e32 v1, 0, v11
	v_add_nc_u32_e32 v5, 0, v12
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[5:8], v5
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[1:8], v[13:20], v[34:41]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v79, v21
	v_cmp_le_i32_e64 s12, v79, v22
	v_cmp_le_i32_e64 s13, v79, v23
	v_cmp_le_i32_e64 s14, v79, v24
	v_cmp_le_i32_e64 s15, v79, v25
	v_cmp_le_i32_e64 s16, v79, v26
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s19, vcc_lo, s74
	s_and_b32 s12, s12, s72
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s17, v79, v27
	v_cmp_le_i32_e64 s18, v79, v28
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
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v79, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v79, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v79, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v79, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v79, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v79, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v79, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v79, v1
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v79, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s19, vcc_lo, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s74
	s_and_b32 s19, s19, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v79, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s12, s12, s20
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s12, s12, s72
	s_or_b32 s74, s20, s19
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s68, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v79, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s22, v79, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s23, v79, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s24, v79, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s25, v79, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s71
	s_and_b32 s13, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s71, s12, s13
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v79, v1
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s69, s14, s15
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v244, 0xff800000
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v246, 0xff800000
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v248, 0xff800000
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v40, 0xff800000
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0xff800000
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v241, 0xff800000
	v_mov_b32_e32 v79, 0xff800000
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow320
	v_dual_mov_b32 v142, v29 :: v_dual_mov_b32 v143, v30
	v_and_b32_e32 v144, 14, v0
.LBB0_16:                               ; %Flow322
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_and_b32_e32 v17, 31, v0
	v_lshrrev_b32_e32 v149, 1, v81
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v81, v62, v82 :: v_dual_add_f32 v84, v65, v84
	v_add_f32_e32 v82, v63, v83
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp256:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s35, v17
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s12, 0x800000, v37
	v_cmp_gt_f32_e64 s13, 0x800000, v39
	v_cmp_gt_f32_e64 s14, 0x800000, v41
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v28, off offset:292
	scratch_store_b32 off, v27, off offset:288
	scratch_store_b32 off, v26, off offset:284
	scratch_store_b32 off, v25, off offset:280
	scratch_store_b32 off, v24, off offset:276
	scratch_store_b32 off, v23, off offset:272
	scratch_store_b32 off, v22, off offset:268
	scratch_store_b32 off, v21, off offset:264
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v1, 0, 32, s12
	v_cndmask_b32_e64 v2, 0, 32, s13
	v_cndmask_b32_e64 v3, 0, 32, s14
	v_cndmask_b32_e64 v4, 0, 0x42000000, s12
	v_cndmask_b32_e64 v5, 0, 0x42000000, s13
	v_ldexp_f32 v7, v37, v1
	v_ldexp_f32 v2, v39, v2
	v_ldexp_f32 v3, v41, v3
	v_cmp_gt_f32_e64 s12, 0x800000, v251
	v_cmp_gt_f32_e64 s13, 0x800000, v249
	v_cndmask_b32_e64 v6, 0, 0x42000000, s14
	v_log_f32_e32 v7, v7
	v_log_f32_e32 v8, v2
	v_log_f32_e32 v13, v3
	v_cndmask_b32_e64 v2, 0, 32, s12
	v_cndmask_b32_e64 v3, 0, 32, s13
	v_cmp_gt_f32_e64 s14, 0x800000, v242
	v_cndmask_b32_e64 v14, 0, 0x42000000, s12
	v_cndmask_b32_e64 v15, 0, 0x42000000, s13
	v_cmp_gt_f32_e64 s12, 0x800000, v247
	v_cmp_gt_f32_e64 s13, 0x800000, v245
	v_cndmask_b32_e64 v22, 0, 32, s14
	v_ldexp_f32 v2, v251, v2
	v_ldexp_f32 v3, v249, v3
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v85, v70, v85 :: v_dual_add_f32 v86, v71, v86
	v_dual_add_f32 v71, v52, v199 :: v_dual_sub_f32 v4, v7, v4
.Ltmp258:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v18, 0, 32, s12
	v_cndmask_b32_e64 v20, 0, 32, s13
	v_ldexp_f32 v22, v242, v22
	v_log_f32_e32 v23, v2
	v_log_f32_e32 v24, v3
	v_cndmask_b32_e64 v16, 0, 0x42000000, s12
	v_ldexp_f32 v18, v247, v18
	v_ldexp_f32 v20, v245, v20
	v_log_f32_e32 v22, v22
	v_dual_sub_f32 v5, v8, v5 :: v_dual_add_f32 v4, v38, v4
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v37
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v21, 0, 0x42000000, s14
	v_log_f32_e32 v18, v18
	v_log_f32_e32 v20, v20
.Ltmp259:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v56, v196 :: v_dual_sub_f32 v6, v13, v6
.Ltmp260:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v7, v23, v14 :: v_dual_sub_f32 v8, v24, v15
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v5, v40, v5
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v4, 0, v4, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v39
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v19, 0, 0x42000000, s13
	v_dual_sub_f32 v15, v22, v21 :: v_dual_add_f32 v6, v79, v6
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v8, v246, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v5, 0, v5, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v41
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v13, v18, v16 :: v_dual_sub_f32 v14, v20, v19
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v7, v248, v7
	v_add_f32_e32 v19, v243, v15
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v6, 0, v6, s12
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v251
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v18, v241, v14
	v_dual_add_f32 v16, v244, v13 :: v_dual_and_b32 v99, 12, v0
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v20, 28, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v7, 0, v7, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v249
.Ltmp261:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v54, v197 :: v_dual_add_f32 v2, v55, v195
.Ltmp262:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v13, 0, v8, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v247
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v8, 0x60, v31
	.loc	1 267 9 is_stmt 1               ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v100, 2, v17
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s11, vcc_lo
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v83, v64, v210 :: v_dual_add_f32 v88, v73, v88
.Ltmp264:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v14, 0, v16, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v245
.Ltmp265:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v87, v72, v87 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v34, v59, v202 :: v_dual_add_f32 v33, v58, v201
	v_add_f32_e32 v36, v61, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp266:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v15, 0, v18, s12
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s12, 0, v242
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v18, v32, 1, 0
.Ltmp267:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v60, v203 :: v_dual_mov_b32 v40, 0
	v_add_f32_e32 v65, v66, v205
.Ltmp268:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v16, 0, v19, s12
	v_add3_u32 v19, v8, v149, v99
	ds_store_b128 v18, v[4:7]
	ds_store_b128 v18, v[13:16] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v195, v19
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[4:7]
	ds_store_b128 v18, v[13:16] offset:16
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v42, v147
	v_add_f32_e32 v15, v48, v194
.Ltmp270:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v8, v8, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v16, s42, v17, 2
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v44, v190
.Ltmp272:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v18, v8
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v8, v45, v191 :: v_dual_add_f32 v13, v46, v192
	v_dual_add_f32 v14, v47, v193 :: v_dual_cndmask_b32 v19, 0x80000000, v16
.Ltmp274:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v17, 0, v100
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v43, v148
	v_dual_add_f32 v66, v67, v206 :: v_dual_add_f32 v67, v68, v207
	v_add_f32_e32 v70, v51, v200
	v_add_f32_e32 v68, v69, v208
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_add_f32_e32 v16, v49, v145
	v_dual_add_f32 v69, v50, v209 :: v_dual_add_f32 v72, v53, v198
	v_add_f32_e32 v4, v57, v146
.Ltmp276:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s53, 0xffff
	s_mov_b32 s12, s52
	s_mov_b32 s14, s46
	s_mov_b32 s15, s47
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v20, v107, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v18, v19, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[81:84]
	ds_store_b128 v40, v[85:88] offset:16
	ds_store_b128 v40, v[33:36] offset:32
	ds_store_b128 v40, v[65:68] offset:48
	ds_store_b128 v40, v[69:72] offset:64
	ds_store_b128 v40, v[1:4] offset:80
	ds_store_b128 v40, v[5:8] offset:96
	ds_store_b128 v40, v[13:16] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v17, v17
	s_and_b32 s13, s55, 0xffff
	s_mov_b32 s12, s54
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v18, v108, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_bfe_u32 v21, v104, 16, 1
	v_bfe_u32 v22, v109, 16, 1
	v_bfe_u32 v24, v102, 16, 1
	v_add3_u32 v18, v108, v18, 0x7fff
	v_bfe_u32 v25, v112, 16, 1
	v_add3_u32 v21, v104, v21, 0x7fff
	v_add3_u32 v22, v109, v22, 0x7fff
	v_add3_u32 v24, v102, v24, 0x7fff
	v_bfe_u32 v27, v105, 16, 1
	v_add3_u32 v25, v112, v25, 0x7fff
	v_bfe_u32 v28, v92, 16, 1
	v_bfe_u32 v30, v122, 16, 1
	v_bfe_u32 v31, v90, 16, 1
	v_add3_u32 v27, v105, v27, 0x7fff
	v_bfe_u32 v37, v80, 16, 1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v17, v19, s[12:15], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v17, v106, 16, 1
	v_add3_u32 v19, v107, v20, 0x7fff
	v_cmp_o_f32_e64 s12, v107, v107
	v_cmp_o_f32_e64 s13, v106, v106
	v_add3_u32 v28, v92, v28, 0x7fff
	v_add3_u32 v20, v106, v17, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s12
	v_bfe_u32 v19, v115, 16, 1
	v_cmp_o_f32_e64 s12, v115, v115
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s13
	v_bfe_u32 v20, v114, 16, 1
	v_cmp_o_f32_e64 s13, v114, v114
	v_add3_u32 v19, v115, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_add3_u32 v30, v122, v30, 0x7fff
	v_add3_u32 v20, v114, v20, 0x7fff
	v_add3_u32 v31, v90, v31, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s12
	v_cndmask_b16 v18.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v110, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s13
	v_bfe_u32 v20, v103, 16, 1
	v_cmp_o_f32_e64 s12, v109, v109
	v_cmp_o_f32_e64 s13, v103, v103
	v_add3_u32 v21, v110, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_add3_u32 v23, v103, v20, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s12
	v_bfe_u32 v22, v101, 16, 1
	v_cmp_o_f32_e64 s12, v101, v101
	v_cndmask_b16 v20.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s13
	v_bfe_u32 v23, v96, 16, 1
	v_add3_u32 v22, v101, v22, 0x7fff
	v_cmp_o_f32_e64 s13, v96, v96
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_bfe_u32 v38, v117, 16, 1
	v_add3_u32 v23, v96, v23, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s12
	v_cmp_o_f32_e64 s12, v112, v112
	v_cndmask_b16 v21.h, 0x7fff, v24.h, vcc_lo
	v_bfe_u32 v24, v113, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s13
	v_bfe_u32 v23, v111, 16, 1
	v_cmp_o_f32_e64 s13, v111, v111
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_add3_u32 v24, v113, v24, 0x7fff
	v_bfe_u32 v39, v116, 16, 1
	v_add3_u32 v26, v111, v23, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s12
	v_bfe_u32 v25, v95, 16, 1
	v_cmp_o_f32_e64 s12, v95, v95
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s13
	v_bfe_u32 v26, v94, 16, 1
	v_add3_u32 v25, v95, v25, 0x7fff
	v_cmp_o_f32_e64 s13, v94, v94
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_add3_u32 v38, v117, v38, 0x7fff
	v_add3_u32 v26, v94, v26, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s12
	v_cmp_o_f32_e64 s12, v92, v92
	v_cndmask_b16 v24.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v93, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s13
	v_bfe_u32 v26, v123, 16, 1
	v_cmp_o_f32_e64 s13, v123, v123
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v27, v93, v27, 0x7fff
	v_cmp_o_f32_e64 s14, v117, v117
	v_add3_u32 v29, v123, v26, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s12
	v_bfe_u32 v28, v121, 16, 1
	v_cmp_o_f32_e64 s12, v121, v121
	v_cndmask_b16 v26.l, 0x7fff, v27.h, vcc_lo
	v_cndmask_b16 v27.l, 0x7fff, v29.h, s13
	v_bfe_u32 v29, v120, 16, 1
	v_add3_u32 v28, v121, v28, 0x7fff
	v_cmp_o_f32_e64 s13, v120, v120
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_add3_u32 v39, v116, v39, 0x7fff
	v_add3_u32 v29, v120, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s12
	v_cmp_o_f32_e64 s12, v90, v90
	v_cndmask_b16 v27.h, 0x7fff, v30.h, vcc_lo
	v_bfe_u32 v30, v91, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s13
	v_bfe_u32 v29, v89, 16, 1
	v_cmp_o_f32_e64 s13, v89, v89
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v30, v91, v30, 0x7fff
	v_cmp_o_f32_e64 s15, v116, v116
	v_add3_u32 v32, v89, v29, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s12
	v_bfe_u32 v31, v119, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cndmask_b16 v30.l, 0x7fff, v32.h, s13
	v_add3_u32 v32, v80, v37, 0x7fff
	v_bfe_u32 v37, v118, 16, 1
	v_add3_u32 v31, v119, v31, 0x7fff
	v_cmp_o_f32_e64 s12, v119, v119
	v_cmp_o_f32_e64 s13, v118, v118
	v_cndmask_b16 v30.h, 0x7fff, v32.h, vcc_lo
	v_add3_u32 v37, v118, v37, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v38.h, s14
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s12
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s15
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s13
	s_barrier
	ds_store_b16 v151, v17
	ds_store_b16 v151, v21 offset:1024
	ds_store_b16 v151, v25 offset:2048
	ds_store_b16 v151, v29 offset:3072
	ds_store_b16_d16_hi v152, v17
	ds_store_b16_d16_hi v152, v21 offset:1024
	ds_store_b16_d16_hi v152, v25 offset:2048
	ds_store_b16_d16_hi v152, v29 offset:3072
	ds_store_b16 v153, v18
	ds_store_b16 v153, v22 offset:1024
	ds_store_b16 v153, v26 offset:2048
	ds_store_b16 v153, v30 offset:3072
	ds_store_b16_d16_hi v154, v18
	ds_store_b16_d16_hi v154, v22 offset:1024
	ds_store_b16_d16_hi v154, v26 offset:2048
	ds_store_b16_d16_hi v154, v30 offset:3072
	ds_store_b16 v155, v19
	ds_store_b16 v155, v23 offset:1024
	ds_store_b16 v155, v27 offset:2048
	ds_store_b16 v155, v31 offset:3072
	ds_store_b16_d16_hi v156, v19
	ds_store_b16_d16_hi v156, v23 offset:1024
	ds_store_b16_d16_hi v156, v27 offset:2048
	ds_store_b16_d16_hi v156, v31 offset:3072
	ds_store_b16 v157, v20
	ds_store_b16 v157, v24 offset:1024
	ds_store_b16 v157, v28 offset:2048
	ds_store_b16 v157, v32 offset:3072
	ds_store_b16_d16_hi v158, v20
	ds_store_b16_d16_hi v158, v24 offset:1024
	ds_store_b16_d16_hi v158, v28 offset:2048
	ds_store_b16_d16_hi v158, v32 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v126
	ds_load_b128 v[21:24], v127
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[17:20], off offset:128 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[21:24], off offset:144 ; 16-byte Folded Spill
	ds_load_b128 v[17:20], v128
	ds_load_b128 v[21:24], v129
	ds_load_b128 v[57:60], v130
	ds_load_b128 v[61:64], v131
	ds_load_b128 v[73:76], v132
	ds_load_b128 v[77:80], v133
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[17:20], off offset:160 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[21:24], off offset:176 ; 16-byte Folded Spill
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[81:84]
	ds_store_b128 v40, v[85:88] offset:16
	ds_store_b128 v40, v[33:36] offset:32
	ds_store_b128 v40, v[65:68] offset:48
	ds_store_b128 v40, v[69:72] offset:64
	ds_store_b128 v40, v[1:4] offset:80
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v72, v40
	v_mov_b32_e32 v71, v40
	v_mov_b32_e32 v70, v40
	v_mov_b32_e32 v69, v40
	v_mov_b32_e32 v68, v40
	v_mov_b32_e32 v67, v40
	v_mov_b32_e32 v66, v40
	v_mov_b32_e32 v65, v40
	v_mov_b32_e32 v88, v40
	v_mov_b32_e32 v87, v40
	v_mov_b32_e32 v86, v40
	v_mov_b32_e32 v85, v40
	v_mov_b32_e32 v84, v40
	v_mov_b32_e32 v83, v40
	v_mov_b32_e32 v82, v40
	v_mov_b32_e32 v81, v40
	v_mov_b32_e32 v96, v40
	v_mov_b32_e32 v95, v40
	v_mov_b32_e32 v94, v40
	v_mov_b32_e32 v93, v40
	v_mov_b32_e32 v92, v40
	v_mov_b32_e32 v91, v40
	v_mov_b32_e32 v90, v40
	v_mov_b32_e32 v89, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s67
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v40, v[5:8] offset:96
	ds_store_b128 v40, v[13:16] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_24
; %bb.17:                               ; %.lr.ph81
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[145:146], null, s29, v159, v[97:98]
	v_dual_mov_b32 v38, 0x5410 :: v_dual_lshlrev_b32 v1, 2, v159
	v_dual_mov_b32 v39, 0x7632 :: v_dual_lshlrev_b32 v2, 4, v159
	v_cmp_eq_u32_e32 vcc_lo, 0, v139
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v3, 0, v1, v125
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v5, s43, 2, v145
	v_and_b32_e32 v4, 60, v98
	s_clause 0x3                            ; 40-byte Folded Spill
	scratch_store_b32 off, v149, off offset:300
	scratch_store_b128 off, v[160:163], off offset:196
	scratch_store_b128 off, v[164:167], off offset:212
	scratch_store_b32 off, v137, off offset:192
	v_cndmask_b32_e32 v39, 0x3276, v39, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v192, v3
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:228
	scratch_store_b32 off, v139, off offset:296
	v_mad_u64_u32 v[5:6], null, s43, 12, v[145:146]
	v_cndmask_b32_e64 v3, 0x104, 0, s11
	v_cndmask_b32_e32 v38, 0x1054, v38, vcc_lo
	v_and_or_b32 v15, v0, 2, v186
	v_lshl_or_b32 v39, v39, 8, v39
	v_or_b32_e32 v189, v141, v100
	v_xor_b32_e32 v194, v3, v4
	scratch_store_b64 off, v[5:6], off offset:232 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s43, 20, v[145:146]
	v_lshlrev_b32_e32 v3, 1, v144
	v_lshl_or_b32 v38, v38, 8, v38
	v_mov_b32_e32 v137, 0
	v_lshl_or_b32 v4, v144, 7, v150
	v_or3_b32 v187, v184, v170, v141
	v_or_b32_e32 v196, v169, v1
	scratch_store_b64 off, v[5:6], off offset:240 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s43, 24, v[145:146]
	v_and_b32_e32 v38, 0x540054, v38
	v_or3_b32 v150, v4, v143, v3
	v_dual_mov_b32 v92, v137 :: v_dual_and_b32 v39, 0x760076, v39
	v_xor_b32_e32 v30, 0x420, v189
	v_xor_b32_e32 v19, 0x1b0, v187
	scratch_store_b64 off, v[5:6], off offset:248 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s43, 28, v[145:146]
	v_or_b32_e32 v5, v194, v124
	v_mov_b32_e32 v90, v137
	v_xor_b32_e32 v8, 8, v150
	v_xor_b32_e32 v13, 12, v150
	v_xor_b32_e32 v14, 16, v150
	v_xor_b32_e32 v3, 0x208, v5
	scratch_store_b64 off, v[6:7], off offset:256 ; 8-byte Folded Spill
	v_and_b32_e32 v7, 52, v142
	v_xor_b32_e32 v4, 0x410, v5
	v_xor_b32_e32 v5, 0x618, v5
	v_xor_b32_e32 v6, 4, v150
	v_xor_b32_e32 v16, 20, v150
	v_lshl_or_b32 v7, v99, 5, v7
	v_xor_b32_e32 v17, 24, v150
	v_xor_b32_e32 v18, 28, v150
	v_xor_b32_e32 v23, 0x84, v189
	v_xor_b32_e32 v24, 0x108, v189
	v_or3_b32 v188, v15, v185, v7
	v_xor_b32_e32 v7, 0x90, v187
	v_xor_b32_e32 v15, 0x120, v187
	v_xor_b32_e32 v25, 0x18c, v189
	v_xor_b32_e32 v26, 0x210, v189
	v_xor_b32_e32 v20, 16, v188
	v_xor_b32_e32 v21, 32, v188
	v_xor_b32_e32 v22, 48, v188
	v_xor_b32_e32 v27, 0x294, v189
	v_xor_b32_e32 v28, 0x318, v189
	v_xor_b32_e32 v29, 0x39c, v189
	v_xor_b32_e32 v31, 0x4a4, v189
	v_xor_b32_e32 v33, 0x528, v189
	v_xor_b32_e32 v34, 0x5ac, v189
	v_xor_b32_e32 v35, 0x630, v189
	v_xor_b32_e32 v36, 0x6b4, v189
	v_xor_b32_e32 v37, 0x738, v189
	v_xor_b32_e32 v1, 0x7bc, v189
	v_xor_b32_e32 v40, 4, v196
	v_xor_b32_e32 v65, 8, v196
	v_xor_b32_e32 v66, 12, v196
	v_xor_b32_e32 v67, 16, v196
	v_xor_b32_e32 v68, 20, v196
	v_xor_b32_e32 v69, 24, v196
	v_xor_b32_e32 v70, 28, v196
	v_xor_b32_e32 v71, 32, v196
	v_xor_b32_e32 v72, 36, v196
	v_xor_b32_e32 v81, 40, v196
	v_xor_b32_e32 v82, 44, v196
	v_xor_b32_e32 v83, 48, v196
	v_lshl_or_b32 v38, v38, 4, v38
	v_lshl_or_b32 v39, v39, 4, v39
	v_xor_b32_e32 v84, 52, v196
	v_xor_b32_e32 v85, 56, v196
	v_xor_b32_e32 v86, 60, v196
	v_dual_mov_b32 v41, v176 :: v_dual_add_nc_u32 v232, 0, v30
	v_lshl_add_u32 v161, s43, 3, v145
	v_lshl_add_u32 v193, s43, 4, v145
	v_dual_mov_b32 v94, v137 :: v_dual_and_b32 v197, 0x5040504, v38
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v198, 0x7060706, v39
	v_dual_mov_b32 v96, v137 :: v_dual_add_nc_u32 v199, 0, v140
	v_dual_mov_b32 v91, v137 :: v_dual_add_nc_u32 v200, 0, v2
	v_add_nc_u32_e32 v201, 0, v134
	v_dual_mov_b32 v93, v137 :: v_dual_add_nc_u32 v202, 0, v135
	v_add_nc_u32_e32 v203, 0, v136
	v_dual_mov_b32 v95, v137 :: v_dual_add_nc_u32 v204, 0, v9
	v_add_nc_u32_e32 v205, 0, v10
	v_add_nc_u32_e32 v206, 0, v11
	v_dual_mov_b32 v88, v137 :: v_dual_add_nc_u32 v207, 0, v12
	v_add_nc_u32_e32 v208, 0, v3
	v_add_nc_u32_e32 v209, 0, v4
	v_add_nc_u32_e32 v210, 0, v5
	v_add_nc_u32_e32 v211, 0, v6
	v_add_nc_u32_e32 v213, 0, v8
	v_dual_mov_b32 v87, v137 :: v_dual_add_nc_u32 v214, 0, v13
	v_add_nc_u32_e32 v215, 0, v14
	v_add_nc_u32_e32 v216, 0, v16
	v_add_nc_u32_e32 v217, 0, v17
	v_add_nc_u32_e32 v218, 0, v18
	v_add_nc_u32_e32 v219, 0, v7
	v_add_nc_u32_e32 v220, 0, v15
	v_dual_mov_b32 v38, v137 :: v_dual_add_nc_u32 v221, 0, v19
	v_add_nc_u32_e32 v222, 0, v20
	v_add_nc_u32_e32 v223, 0, v21
	v_add_nc_u32_e32 v224, 0, v22
	v_dual_mov_b32 v42, v177 :: v_dual_add_nc_u32 v225, 0, v23
	v_add_nc_u32_e32 v226, 0, v24
	v_dual_mov_b32 v44, v179 :: v_dual_add_nc_u32 v227, 0, v25
	v_add_nc_u32_e32 v228, 0, v26
	v_dual_mov_b32 v46, v181 :: v_dual_add_nc_u32 v229, 0, v27
	v_dual_mov_b32 v39, v137 :: v_dual_add_nc_u32 v230, 0, v28
	v_dual_mov_b32 v48, v183 :: v_dual_add_nc_u32 v231, 0, v29
	v_add_nc_u32_e32 v233, 0, v31
	v_dual_mov_b32 v43, v178 :: v_dual_add_nc_u32 v234, 0, v33
	v_add_nc_u32_e32 v235, 0, v34
	v_dual_mov_b32 v45, v180 :: v_dual_add_nc_u32 v236, 0, v35
	v_add_nc_u32_e32 v237, 0, v36
	v_dual_mov_b32 v47, v182 :: v_dual_add_nc_u32 v238, 0, v37
	v_add_nc_u32_e32 v239, 0, v1
	v_add_nc_u32_e32 v240, 0, v40
	v_add_nc_u32_e32 v241, 0, v65
	v_add_nc_u32_e32 v242, 0, v66
	v_add_nc_u32_e32 v243, 0, v67
	v_add_nc_u32_e32 v244, 0, v68
	v_add_nc_u32_e32 v245, 0, v69
	v_add_nc_u32_e32 v246, 0, v70
	v_add_nc_u32_e32 v247, 0, v71
	v_add_nc_u32_e32 v248, 0, v72
	v_add_nc_u32_e32 v249, 0, v81
	v_add_nc_u32_e32 v250, 0, v82
	v_add_nc_u32_e32 v251, 0, v83
	v_add_nc_u32_e32 v252, 0, v84
	v_add_nc_u32_e32 v253, 0, v85
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v254, 0, v86
	v_mov_b32_e32 v82, v137
	v_mov_b32_e32 v83, v137
	v_mov_b32_e32 v84, v137
	v_mov_b32_e32 v85, v137
	v_dual_mov_b32 v86, v137 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v66, v137
	v_mov_b32_e32 v67, v137
	v_mov_b32_e32 v68, v137
	v_mov_b32_e32 v69, v137
	v_mov_b32_e32 v70, v137
	v_mov_b32_e32 v71, v137
	v_dual_mov_b32 v72, v137 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, v137
	v_mov_b32_e32 v35, v137
	v_mov_b32_e32 v36, v137
	v_mov_b32_e32 v37, v137
	v_mov_b32_e32 v40, v137
	s_and_b32 s41, s41, 0xffff
	s_add_i32 s26, s50, s51
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s52, 0x76543210
	s_branch .LBB0_19
.LBB0_18:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_clause 0x4                            ; 36-byte Folded Reload
	scratch_load_b32 v3, off, off offset:228
	scratch_load_b64 v[4:5], off, off offset:240
	scratch_load_b64 v[6:7], off, off offset:248
	scratch_load_b64 v[7:8], off, off offset:256
	scratch_load_b64 v[8:9], off, off offset:232
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s11, s28, s29
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v140, v137 :: v_dual_add_nc_u32 v17, 0, v188
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s11, s26, s11
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v144, v137
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v1, s11, v145, 2
	v_add_lshl_u32 v2, s11, v193, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v5, s11, v161, 2
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s28, s28, 16
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s77
	v_cndmask_b32_e64 v2, 0x80000000, v2, s78
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s73
	s_clause 0x1
	buffer_load_b32 v1, v1, s[44:47], 0 offen
	buffer_load_b32 v2, v2, s[44:47], 0 offen
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v142, v137
	v_mov_b32_e32 v139, v137
	v_mov_b32_e32 v141, v137
	v_mov_b32_e32 v143, v137
	v_mov_b32_e32 v138, v137
	v_mov_b32_e32 v97, v137
	v_dual_mov_b32 v99, v139 :: v_dual_mov_b32 v100, v140
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v101, v141 :: v_dual_mov_b32 v98, v138
	v_dual_mov_b32 v102, v142 :: v_dual_mov_b32 v103, v143
	v_mov_b32_e32 v104, v144
	v_mov_b32_e32 v138, v32
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v3, s11, v3, 2
	v_add_lshl_u32 v4, s11, v4, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v6, s11, v6, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v7, s11, v7, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v8, s11, v8, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s75
	v_cndmask_b32_e64 v4, 0x80000000, v4, s76
	v_cndmask_b32_e64 v6, 0x80000000, v6, s74
	v_cndmask_b32_e64 v7, 0x80000000, v7, s72
	v_cndmask_b32_e64 v8, 0x80000000, v8, s51
	s_clause 0x5
	buffer_load_b32 v3, v3, s[44:47], 0 offen
	buffer_load_b32 v4, v4, s[44:47], 0 offen
	buffer_load_b32 v5, v5, s[44:47], 0 offen
	buffer_load_b32 v6, v6, s[44:47], 0 offen
	buffer_load_b32 v7, v7, s[44:47], 0 offen
	buffer_load_b32 v8, v8, s[44:47], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v1, 0xff800000, v1, s77
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s11, 0xff800000, v1
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v2
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s11, s77, s11
	s_and_b32 s14, s78, vcc_lo
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, v9, v194
	ds_store_2addr_b32 v9, v1, v2 offset1:32
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v1, 0xff800000, v3, s75
	v_cndmask_b32_e64 v2, 0xff800000, v4, s76
	v_cndmask_b32_e64 v4, 0xff800000, v6, s74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s12, 0xff800000, v1
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v208, v1, v2 offset1:32
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v1, 0, 1, s14
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v2
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v2, 0, 1, s11
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v1.l, 8, v1.l
	s_and_b32 s11, s76, s13
	s_and_b32 s14, s74, vcc_lo
	.loc	1 387 26 is_stmt 1              ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s71
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s11
	s_and_b32 s11, s75, s12
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v6, 0, v150
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v3, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v1.h, 8, v2.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v2, 0xff800000, v5, s73
	v_cndmask_b32_e64 v5, 0xff800000, v7, s72
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v1.h, v3.l, v1.h
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v3, 0xff800000, v8, s51
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v209, v2, v4 offset1:32
	ds_store_2addr_b32 v210, v3, v5 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v255, v6
	ds_load_b32 v168, v211
	ds_load_b32 v212, v213
	ds_load_b32 v171, v214
	ds_load_b32 v172, v215
	ds_load_b32 v173, v216
	ds_load_b32 v174, v217
	ds_load_b32 v175, v218
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v6, 0, v187
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s11, 0xff800000, v2
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v2, 0, 1, s14
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v6, v1
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s13, 0xff800000, v5
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_mov_b16_e32 v1.l, v2.l
	s_and_b32 s11, s73, s11
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s12, 0xff800000, v3
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v2, 0, 1, s11
	s_and_b32 s11, s72, s13
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s11
	s_and_b32 s11, s51, s12
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	s_mov_b32 s51, s47
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v3, 0, 1, s11
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v2.l, v3.l, v2.l
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[3:4], null, s50, s38, v[0:1]
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v219, v1
	ds_store_b16 v220, v1
	ds_store_b16 v221, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v26, v17
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v26, v17 offset:64
	ds_load_u8_d16 v27, v222
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v27, v222 offset:64
	ds_load_u8_d16 v28, v223
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v28, v223 offset:64
	ds_load_u8_d16 v29, v224
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v29, v224 offset:64
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v17, 0, v189
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_mov_b32 s50, s46
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v4, s38, v3
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v2, s38, v4
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v4
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v4, s38, v2
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v5, s38, v4
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v6, s38, v5
	v_add_nc_u32_e32 v7, s38, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s38, v7
	v_add_nc_u32_e32 v9, s38, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v10, s38, v9
	v_add_nc_u32_e32 v11, s38, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v12, s38, v11
	v_add_nc_u32_e32 v13, s38, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v14, s38, v13
	v_add_nc_u32_e32 v15, s38, v14
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v16, 1, v15
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v4, 1, v4
	v_add_lshl_u32 v15, v15, s38, 1
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v6, 1, v6
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s67
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s61
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s59
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s58
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s57
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s56
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s53
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s55
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s28, s39
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0xf
	buffer_load_u16 v1, v1, s[48:51], 0 offen
	buffer_load_u16 v3, v3, s[48:51], 0 offen
	buffer_load_u16 v2, v2, s[48:51], 0 offen
	buffer_load_u16 v4, v4, s[48:51], 0 offen
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v9, v9, s[48:51], 0 offen
	buffer_load_u16 v10, v10, s[48:51], 0 offen
	buffer_load_u16 v11, v11, s[48:51], 0 offen
	buffer_load_u16 v12, v12, s[48:51], 0 offen
	buffer_load_u16 v13, v13, s[48:51], 0 offen
	buffer_load_u16 v14, v14, s[48:51], 0 offen
	buffer_load_u16 v16, v16, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v17, v1
	s_waitcnt vmcnt(14)
	ds_store_b16 v225, v3
	s_waitcnt vmcnt(13)
	ds_store_b16 v226, v2
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
	ds_store_b16 v232, v9
	s_waitcnt vmcnt(6)
	ds_store_b16 v233, v10
	s_waitcnt vmcnt(5)
	ds_store_b16 v234, v11
	s_waitcnt vmcnt(4)
	ds_store_b16 v235, v12
	s_waitcnt vmcnt(3)
	ds_store_b16 v236, v13
	s_waitcnt vmcnt(2)
	ds_store_b16 v237, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v238, v16
	s_waitcnt vmcnt(0)
	ds_store_b16 v239, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:128
	scratch_load_b128 v[53:56], off, off offset:144
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v1, 0, v196
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[176:177], v240 offset1:16
	ds_load_2addr_b32 v[178:179], v244 offset1:16
	ds_load_2addr_b32 v[180:181], v248 offset1:16
	ds_load_2addr_b32 v[182:183], v252 offset1:16
	ds_load_2addr_b32 v[185:186], v241 offset1:16
	ds_load_2addr_b32 v[162:163], v242 offset1:16
	ds_load_2addr_b32 v[164:165], v243 offset1:16
	ds_load_2addr_b32 v[30:31], v1 offset1:16
	ds_load_2addr_b32 v[166:167], v245 offset1:16
	ds_load_2addr_b32 v[169:170], v246 offset1:16
	ds_load_2addr_b32 v[159:160], v247 offset1:16
	ds_load_2addr_b32 v[190:191], v249 offset1:16
	ds_load_2addr_b32 v[146:147], v250 offset1:16
	ds_load_2addr_b32 v[148:149], v251 offset1:16
	ds_load_2addr_b32 v[1:2], v253 offset1:16
	ds_load_2addr_b32 v[8:9], v254 offset1:16
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v10.h, v176.l
	s_waitcnt lgkmcnt(14)
	v_mov_b16_e64 v12.h, v178.l
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v14.h, v180.l
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e64 v16.h, v182.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v11.l, v185.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v11.h, v162.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v12.l, v164.l
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e32 v10.l, v30.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v13.l, v166.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v13.h, v169.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v14.l, v159.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v15.l, v190.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v15.h, v146.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v16.l, v148.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e32 v17.l, v1.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v17.h, v8.l
	v_mov_b16_e64 v176.l, v30.h
	v_mov_b16_e64 v162.l, v185.h
	v_mov_b16_e64 v178.l, v164.h
	v_mov_b16_e64 v169.l, v166.h
	v_mov_b16_e64 v180.l, v159.h
	v_mov_b16_e64 v146.l, v190.h
	v_mov_b16_e64 v182.l, v148.h
	v_mov_b16_e32 v8.l, v1.h
	v_mov_b32_e32 v1, v176
	v_dual_mov_b32 v3, v178 :: v_dual_mov_b32 v4, v169
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v7, v182
	v_dual_mov_b32 v5, v180 :: v_dual_mov_b32 v6, v146
	v_and_b32_e32 v159, 15, v0
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[49:56], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:160
	scratch_load_b128 v[53:56], off, off offset:176
	v_mov_b16_e32 v10.l, v31.l
	v_mov_b16_e64 v10.h, v177.l
	v_mov_b16_e64 v11.l, v186.l
	v_mov_b16_e64 v11.h, v163.l
	v_mov_b16_e64 v12.l, v165.l
	v_mov_b16_e64 v12.h, v179.l
	v_mov_b16_e64 v13.l, v167.l
	v_mov_b16_e64 v13.h, v170.l
	v_mov_b16_e64 v14.l, v160.l
	v_mov_b16_e64 v14.h, v181.l
	v_mov_b16_e64 v15.l, v191.l
	v_mov_b16_e64 v15.h, v147.l
	v_mov_b16_e64 v16.l, v149.l
	v_mov_b16_e64 v16.h, v183.l
	v_mov_b16_e32 v17.l, v2.l
	v_mov_b16_e32 v17.h, v9.l
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b32_e32 v2, v162
	v_mov_b16_e64 v163.l, v186.h
	v_mov_b16_e64 v170.l, v167.h
	v_mov_b16_e64 v147.l, v191.h
	v_mov_b32_e32 v184, v9
	v_mov_b16_e64 v177.l, v31.h
	v_mov_b16_e64 v179.l, v165.h
	v_mov_b16_e64 v181.l, v160.h
	v_mov_b16_e64 v183.l, v149.h
	v_mov_b32_e32 v178, v163
	v_mov_b32_e32 v180, v170
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[49:56], v[97:104]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[57:64], v[97:104]
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v1, 0x3fb8aa3b, v255 :: v_dual_mov_b32 v182, v147
	v_mul_f32_e32 v3, 0x3fb8aa3b, v212
	v_mul_f32_e32 v5, 0x3fb8aa3b, v172
	v_mul_f32_e32 v7, 0x3fb8aa3b, v174
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v1, s66, v18
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[97:104], v[177:184], v[73:80], v[97:104]
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v8, 0x3fb8aa3b, v175
	v_dual_mul_f32 v2, 0x3fb8aa3b, v168 :: v_dual_fmac_f32 v5, s66, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v1, v195
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v9, v97, v192 :: v_dual_fmac_f32 v8, s66, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v2, s66, v19 :: v_dual_sub_f32 v11, v99, v192
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v17, v1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v1.l, 1, v26.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v16, v104, v192
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v4, 0x3fb8aa3b, v171 :: v_dual_fmac_f32 v3, s66, v20
	v_mov_b32_e32 v183, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v10, v98, v192
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v4, s66, v21 :: v_dual_sub_f32 v13, v101, v192
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v3, v3, v195
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_dual_cndmask_b32 v1, 0, v17 :: v_dual_sub_f32 v12, v100, v192
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_sub_f32 v5, v5, v195 :: v_dual_mul_f32 v6, 0x3fb8aa3b, v173
	.loc	1 343 21 is_stmt 1              ; attention_backward.py:343:21
	v_fmac_f32_e32 v7, s66, v24
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v9, v1, v9
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v2, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v15, v103, v192 :: v_dual_fmac_f32 v6, s66, v23
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v7, v7, v195
	v_mov_b32_e32 v181, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v1
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v1.l, 1, v27.l
	v_mov_b32_e32 v179, v44
	v_dual_mov_b32 v177, v42 :: v_dual_mov_b32 v182, v47
	v_mov_b32_e32 v180, v45
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v14, v102, v192
	v_mov_b32_e32 v176, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v178, v43 :: v_dual_cndmask_b32 v1, 0, v2
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v2, s64, v9 :: v_dual_mul_f32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v9, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s64, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v2, v2, v9, 0x7fff
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e64 s11, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v1, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v2.h, 0x7fff, v1.h, s11
	v_permlanex16_b32 v9, v2, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v1, v9, v2, v197
	v_perm_b32 v2, v9, v2, v198
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v9, v3
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v3.l, 1, v28.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v3, 0, v9, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v9, v3, v11
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v3, v4, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v4, v3
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v3.l, 1, v29.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v3, 0, v4 :: v_dual_mul_f32 v4, s64, v9
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v3, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v9, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s64, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v4, v4, v9, 0x7fff
	v_bfe_u32 v9, v3, 16, 1
	v_cmp_o_f32_e64 s11, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v3, v3, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v4.h, 0x7fff, v3.h, s11
	v_permlanex16_b32 v9, v4, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v9, v4, v197
	v_perm_b32 v4, v9, v4, v198
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v9, v5
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v5.l, 1, v26.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v5.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v5, 0, v9, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v9, v5, v13
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v5, v6, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v6, v5
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v5.l, 1, v27.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v5.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v5, 0, v6 :: v_dual_mul_f32 v6, s64, v9
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v5, v5, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v9, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v5, s64, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v6, v6, v9, 0x7fff
	v_bfe_u32 v9, v5, 16, 1
	v_cmp_o_f32_e64 s11, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v5, v5, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v6.h, 0x7fff, v5.h, s11
	v_permlanex16_b32 v9, v6, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v9, v6, v197
	v_perm_b32 v6, v9, v6, v198
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v9, v7
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v7.l, 1, v28.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v7.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v7, 0, v9, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v9, v7, v15
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v7, v8, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v8, v7
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v7.l, 1, v29.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v7.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v7, 0, v8 :: v_dual_mul_f32 v8, s64, v9
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v7, v7, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v9, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v7, s64, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v8, v8, v9, 0x7fff
	v_bfe_u32 v9, v7, 16, 1
	v_cmp_o_f32_e64 s11, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v7, v7, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v8.h, 0x7fff, v7.h, s11
	v_permlanex16_b32 v9, v8, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v9, v8, v197
	v_perm_b32 v8, v9, v8, v198
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[1:8], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[1:8], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[113:120], v[1:8], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[1:8], v[33:40]
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
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s11, s31
	v_mov_b32_e32 v32, v138
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s12, s31
	v_cmp_gt_i32_e64 s11, s31, v98
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v139, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v141, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v140, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v143, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v144, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s19, s31
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s20, s31
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s21, s31
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s23, s31
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s55, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s50, s28, s65
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[1:2], null, s50, s33, v[0:1]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s77, s0, s11
	s_and_b32 s75, s1, s11
	s_and_b32 s73, s5, s11
	s_and_b32 s51, s6, s11
	s_and_b32 s78, s7, s11
	s_and_b32 s76, s8, s11
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v9, s33, v1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v2, 1, v1
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s74, s9, s11
	s_and_b32 s72, s10, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v9
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s69
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v10, s33, v3
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v2, 1, v3
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s67
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v11, s33, v4
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v3, 1, v4
	s_clause 0x1
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v11
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s62
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v12, s33, v5
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v4, 1, v5
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v12
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v12, 1, v12
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v13, s33, v5
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v6, 1, v5
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s58
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v14, s33, v7
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v6, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v8, s33, v14
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b32_e32 v14, 1, v14
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v15, s33, v8
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v7, 1, v8
	s_clause 0x1
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v16, s33, v15
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v15, 1, v15
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s54
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	v_lshlrev_b32_e32 v8, 1, v16
	v_add_lshl_u32 v16, v16, s33, 1
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s61
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s63
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s57
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x3
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s55
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s53
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s59
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v4.h, v12.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v3.h, v11.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v2.h, v10.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v1.h, v9.l
	ds_store_b128 v199, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v200
	ds_load_b128 v[121:124], v200 offset:256
	ds_load_b128 v[113:116], v200 offset:512
	ds_load_b128 v[105:108], v200 offset:768
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v8.h, v16.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v7.h, v15.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v6.h, v14.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v13.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v199, v[5:8]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v200
	ds_load_b128 v[125:128], v200 offset:256
	ds_load_b128 v[117:120], v200 offset:512
	ds_load_b128 v[109:112], v200 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v156, v11
	ds_store_b16 v152, v9
	ds_store_b16 v151, v1
	ds_store_b16 v153, v2
	ds_store_b16 v155, v3
	ds_store_b16 v157, v4
	ds_store_b16 v155, v7 offset:1024
	ds_store_b16 v157, v8 offset:1024
	ds_store_b16 v151, v5 offset:1024
	ds_store_b16 v153, v6 offset:1024
	ds_store_b16 v152, v13 offset:1024
	ds_store_b16 v154, v10
	ds_store_b16 v154, v14 offset:1024
	ds_store_b16 v156, v15 offset:1024
	ds_store_b16 v158, v12
	ds_store_b16 v158, v16 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:196
	scratch_load_b128 v[13:16], off, off offset:212
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v1, 0, v138
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[5:8], v201
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v138, v137
	v_mov_b32_e32 v18, v137
	v_dual_mov_b32 v20, v139 :: v_dual_mov_b32 v21, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v22, v141 :: v_dual_mov_b32 v19, v138
	v_dual_mov_b32 v23, v142 :: v_dual_mov_b32 v24, v143
	v_mov_b32_e32 v25, v144
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[18:25], v[1:8], v[176:183], v[18:25]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[1:4], v202
	ds_load_b128 v[5:8], v203
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[18:25], v[1:8], v[9:16], v[18:25]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off
	scratch_load_b128 v[13:16], off, off offset:16
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[1:4], v204
	ds_load_b128 v[5:8], v205
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[18:25], v[1:8], v[9:16], v[18:25]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:32
	scratch_load_b128 v[13:16], off, off offset:48
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[1:4], v206
	ds_load_b128 v[5:8], v207
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[18:25], v[1:8], v[9:16], v[18:25]
	s_cbranch_vccnz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_and_not1_b32 s19, s77, exec_lo
	s_and_not1_b32 s20, s75, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v98, v1
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s18, vcc_lo, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, exec_lo
	s_or_b32 s77, s19, s18
	s_and_not1_b32 s18, s51, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s11, v98, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s11, s11, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, exec_lo
	s_or_b32 s75, s20, s11
	s_and_not1_b32 s11, s73, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v98, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s12, s12, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s73, s11, s12
	s_and_not1_b32 s11, s78, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v98, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s13, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s51, s18, s13
	s_and_not1_b32 s13, s76, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v98, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s14, exec_lo
	s_or_b32 s78, s11, s12
	s_and_not1_b32 s11, s74, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v98, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s15, s15, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s76, s13, s14
	s_and_not1_b32 s13, s72, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s16, v98, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s16, s16, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s16, exec_lo
	s_or_b32 s74, s11, s12
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v98, v1
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s17, s17, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s72, s13, s14
.LBB0_21:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	s_cbranch_vccnz .LBB0_18
; %bb.22:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v98, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s11, v98, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v98, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v98, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v98, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v98, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v98, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v98, v1
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v98, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s18, vcc_lo, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s77
	s_and_b32 s18, s18, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v98, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s19, s77, exec_lo
	s_and_b32 s11, s11, s75
	s_or_b32 s77, s19, s18
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s51, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v98, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s12, s12, s20
	s_and_not1_b32 s20, s75, exec_lo
	s_and_b32 s12, s12, s73
	s_or_b32 s75, s20, s11
	s_and_not1_b32 s11, s73, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s73, s11, s12
	s_and_not1_b32 s11, s78, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v98, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s13, s13, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s51
	s_and_b32 s13, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s51, s18, s13
	s_and_not1_b32 s13, s76, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v98, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s78
	s_and_b32 s12, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s78, s11, s12
	s_and_not1_b32 s11, s74, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v98, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s76
	s_and_b32 s14, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s76, s13, s14
	s_and_not1_b32 s13, s72, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v98, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s74
	s_and_b32 s12, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s74, s11, s12
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v98, v1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s17, s17, s25
	s_and_b32 s17, s17, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s72, s13, s14
	s_branch .LBB0_18
.LBB0_23:                               ; %Flow
	.loc	1 0 17                          ; attention_backward.py:0:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:296
	scratch_load_b32 v149, off, off offset:300
.LBB0_24:                               ; %._crit_edge82
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v149, v159
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshrrev_b32_e32 v1, 4, v139
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
	buffer_store_b32 v65, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v14, s34, 2
	v_add_lshl_u32 v3, v13, s34, 2
	s_clause 0x1
	buffer_store_b32 v66, v16, s[36:39], 0 offen
	buffer_store_b32 v67, v15, s[36:39], 0 offen
	v_add_lshl_u32 v8, v8, s34, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b32 v68, v1, s[36:39], 0 offen
	buffer_store_b32 v69, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v10, s34, 2
	v_add_lshl_u32 v3, v9, s34, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	s_clause 0x3
	buffer_store_b32 v70, v12, s[36:39], 0 offen
	buffer_store_b32 v71, v11, s[36:39], 0 offen
	buffer_store_b32 v72, v1, s[36:39], 0 offen
	buffer_store_b32 v33, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v7, s34, 2
	s_clause 0x1
	buffer_store_b32 v34, v2, s[36:39], 0 offen
	buffer_store_b32 v35, v8, s[36:39], 0 offen
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
	buffer_store_b32 v36, v1, s[36:39], 0 offen
	buffer_store_b32 v37, v2, s[36:39], 0 offen
	buffer_store_b32 v38, v3, s[36:39], 0 offen
	buffer_store_b32 v39, v4, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp277:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 308
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
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 308
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24640
; TotalNumSgprs: 81
; NumVgprs: 256
; ScratchSize: 308
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 81
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
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
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 308
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 76
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
