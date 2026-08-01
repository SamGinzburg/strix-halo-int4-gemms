	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[12:15], s[0:1], 0x94
	s_load_b128 s[36:39], s[0:1], 0x64
	s_load_b32 s58, s[0:1], 0x74
	s_load_b32 s62, s[0:1], 0x7c
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v162, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v112, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v36, 0x120, v112
	v_xor_b32_e32 v38, 0x240, v112
	v_add_nc_u32_e32 v154, 0, v112
	v_xor_b32_e32 v37, 0x1b0, v112
	v_xor_b32_e32 v41, 0x3f0, v112
	v_xor_b32_e32 v39, 0x2d0, v112
	v_xor_b32_e32 v40, 0x360, v112
	v_add_nc_u32_e32 v156, 0, v36
	v_add_nc_u32_e32 v158, 0, v38
	v_add_nc_u32_e32 v157, 0, v37
	v_add_nc_u32_e32 v161, 0, v41
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s22, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s36
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s61, s2, 5
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
	s_sub_i32 s20, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s9, s36, s37
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s20, s36
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
	s_abs_i32 s23, s21
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s9
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s61, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s26, s2, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s61, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s24, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s61, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s24
	s_sub_i32 s40, 0, s24
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s61, 4
	s_or_b32 s8, s61, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s61, 6
	s_or_b32 s2, s61, 7
	s_or_b32 s9, s61, 8
	s_or_b32 s16, s61, 9
	s_or_b32 s17, s61, 10
	s_or_b32 s18, s61, 11
	s_or_b32 s11, s61, 12
	s_or_b32 s19, s61, 13
	s_or_b32 s25, s61, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s28, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s27, s61, 15
	s_or_b32 s29, s61, 16
	s_or_b32 s30, s61, 17
	s_or_b32 s31, s61, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s28, s28, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s33, s61, 19
	s_or_b32 s34, s61, 20
	s_or_b32 s35, s61, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s28, s28
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s36, s61, 22
	s_or_b32 s60, s61, 23
	s_or_b32 s66, s61, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s40, s40, s28
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s67, s61, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s40, s28, s40
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s61, 26
	s_or_b32 s69, s61, 27
	s_or_b32 s70, s61, 28
	s_or_b32 s71, s61, 29
	s_or_b32 s72, s61, 30
	s_or_b32 s73, s61, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s28, s28, s40
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s61, s38
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s4, s38
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s5, s38
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s6, s38
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s7, s38
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s8, s38
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s10, s38
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s2, s38
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s58, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s9, s38
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s16, s38
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s17, s38
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s18, s38
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s11, s38
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s19, s38
	s_load_b128 s[16:19], s[0:1], 0x38
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s25, s38
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s25, s3, s38
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s27, s38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s62, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s29, s38
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s30, s38
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s31, s38
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s33, s38
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s34, s38
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s35, s38
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s36, s38
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s60, s38
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s66, s38
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s67, s38
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s68, s38
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s69, s38
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s70, s38
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s71, s38
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s72, s38
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s73, s38
	s_cselect_b32 s29, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s25, s25, s61
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s65, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s60, s25, s58
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_lshl_b32 s27, s58, 5
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s60, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v4, s58, v1
	v_mad_u64_u32 v[2:3], null, s58, 17, v[1:2]
	v_add_nc_u32_e32 v3, s58, v4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s58, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v7, s58, v3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v5, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v9, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s58, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v11, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v6
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s58, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s58, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v12, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s58, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s58, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v13, 0x80000000, v6, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s58, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v14, s58, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v23, 1, v14
	v_lshlrev_b32_e32 v1, 1, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s58, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s58, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v10
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s58, v8
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v1 :: v_dual_lshlrev_b32 v20, 1, v10
	v_lshlrev_b32_e32 v1, 1, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s58, v10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
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
	v_add_nc_u32_e32 v24, s58, v18
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
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
	v_add_nc_u32_e32 v19, s58, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s35, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s58, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v28, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s58, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s58, v16
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s63, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s58, v20
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v23, 0x80000000, v19 :: v_dual_lshlrev_b32 v16, 1, v16
	v_lshlrev_b32_e32 v19, 1, v20
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s58, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s58, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v25, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 1, v22
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s58, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s58, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v29, s58, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v31, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s58, v27
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v27, 1, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v32, 0x80000000, v20 :: v_dual_lshlrev_b32 v33, 1, v29
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v34, v29, s58, 1
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
	s_and_b32 vcc_lo, s48, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v22
	v_add_lshl_u32 v35, v22, s58, 1
	s_clause 0x1
	buffer_load_u16 v24, v31, s[8:11], 0 offen
	buffer_load_u16 v22, v32, s[8:11], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v33, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v30, v25, s[8:11], 0 offen
	buffer_load_u16 v25, v31, s[8:11], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v34, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s5, s5, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v33, 0x80000000, v35, vcc_lo
	s_clause 0x4
	buffer_load_u16 v31, v27, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v32, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v32, v33, s[8:11], 0 offen
	v_xor_b32_e32 v35, 0x90, v112
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s6, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(25)
	v_mad_u64_u32 v[33:34], null, s25, s62, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v34, s62, v33
	v_add_nc_u32_e32 v37, s62, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v41, s62, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s62, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v47, 2, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v50, s62, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v51, 2, v45
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v54, s62, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v55, 2, v50
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v58, s62, v54
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v59, 2, v54
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v54, 1, v54
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v155, 0, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v35, s62, 3, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v62, 2, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v58, 1, v58
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v159, 0, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 2, v34
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s62, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v160, 0, v40
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s62, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v49, 0x80000000, v37 :: v_dual_lshlrev_b32 v40, 2, v35
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v46, s62, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_lshlrev_b32 v44, 2, v38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v53, 0x80000000, v37 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s63, s3
	s_and_b32 vcc_lo, s53, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_lshlrev_b32 v48, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v41, 0x80000000, v38, s4
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_lshlrev_b32 v38, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s62, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s56, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_lshlrev_b32 v52, 2, v46
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v46, 0x80000000, v38, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s62, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v48, 0x80000000, v48, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s54, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	v_cndmask_b32_e64 v57, 0x80000000, v37, s4
	v_lshlrev_b32_e32 v37, 1, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_lshlrev_b32 v56, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s62, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v52, 0x80000000, v52, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s52, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v60, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	v_cndmask_b32_e64 v61, 0x80000000, v37, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s62, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v56, 0x80000000, v56, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v63, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v64, 0x80000000, v38, s4
	v_lshlrev_b32_e32 v38, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s62, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v60, 0x80000000, v60, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s48, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v65, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_cndmask_b32_e64 v71, 0x80000000, v38, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s62, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v66, 2, v42
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v42, 1, v42
	v_cndmask_b32_e32 v72, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s62, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v67, 2, v38
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v68, s62, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v69, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_dual_cndmask_b32 v99, 0x80000000, v38 :: v_dual_lshlrev_b32 v70, 2, v68
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s62, v68
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v68, 1, v68
	v_cndmask_b32_e32 v100, 0x80000000, v37, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s62, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v73, 2, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v101, 0x80000000, v68 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v68, s62, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v74, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v102, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s62, v68
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v81, 0x80000000, v73, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v73, 2, v68
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v103, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v68
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v68, s62, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v82, 0x80000000, v74, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v63, 0x80000000, v63, s4
	v_cndmask_b32_e32 v95, 0x80000000, v73, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v104, 0x80000000, v37 :: v_dual_lshlrev_b32 v73, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s62, v68
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s35, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v74, 2, v68
	v_cndmask_b32_e32 v96, 0x80000000, v73, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v73, s62, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v106, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s34, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v38, 0x80000000, v74, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v74, s62, v73
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v75, 2, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_dual_cndmask_b32 v105, 0x80000000, v68 :: v_dual_lshlrev_b32 v68, 2, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v107, s62, v74
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v73, 1, v73
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s33, s3
	s_and_b32 s4, s7, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v97, 0x80000000, v75, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v108, s62, v107
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v109, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v110, 0x80000000, v73 :: v_dual_lshlrev_b32 v113, 1, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v111, s62, v108
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v73, 2, v107
	v_dual_cndmask_b32 v37, 0x80000000, v68 :: v_dual_lshlrev_b32 v68, 2, v74
	v_lshlrev_b32_e32 v74, 2, v108
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v114, s62, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v115, 0x80000000, v73, s4
	v_lshlrev_b32_e32 v73, 2, v111
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_store_b16 v154, v10
	s_waitcnt vmcnt(17)
	ds_store_b16 v154, v19 offset:1024
	ds_store_b16 v154, v14 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v154, v15 offset:3072
	ds_store_b16 v155, v8
	ds_store_b16 v155, v18 offset:1024
	ds_store_b16 v155, v13 offset:2048
	ds_store_b16 v155, v29 offset:3072
	ds_store_b16 v156, v6
	ds_store_b16 v156, v17 offset:1024
	ds_store_b16 v156, v12 offset:2048
	ds_store_b16 v156, v23 offset:3072
	ds_store_b16 v157, v4
	ds_store_b16 v157, v16 offset:1024
	ds_store_b16 v157, v11 offset:2048
	ds_store_b16 v157, v21 offset:3072
	ds_store_b16 v158, v3
	ds_store_b16 v158, v24 offset:1024
	ds_store_b16 v158, v9 offset:2048
	ds_store_b16 v158, v20 offset:3072
	ds_store_b16 v159, v2
	ds_store_b16 v159, v22 offset:1024
	ds_store_b16 v159, v7 offset:2048
	ds_store_b16 v159, v30 offset:3072
	ds_store_b16 v160, v1
	ds_store_b16 v160, v25 offset:1024
	ds_store_b16 v160, v5 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v160, v31 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v161, v26
	s_waitcnt vmcnt(2)
	ds_store_b16 v161, v27 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v161, v28 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v161, v32 offset:3072
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v75, 2, v114
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 1, v107
	v_lshlrev_b32_e32 v3, 1, v108
	v_lshlrev_b32_e32 v4, 1, v111
	v_lshlrev_b32_e32 v5, 1, v114
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s7, s29, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v2, 0x80000000, v113, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v116, 0x80000000, v74, s5
	v_cndmask_b32_e64 v117, 0x80000000, v73, s6
	v_cndmask_b32_e64 v118, 0x80000000, v75, s7
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_b32 v83, v36, s[8:11], 0 offen
	buffer_load_b32 v84, v39, s[8:11], 0 offen
	buffer_load_b32 v85, v43, s[8:11], 0 offen
	buffer_load_b32 v86, v47, s[8:11], 0 offen
	buffer_load_b32 v73, v51, s[8:11], 0 offen
	buffer_load_b32 v74, v55, s[8:11], 0 offen
	buffer_load_b32 v75, v59, s[8:11], 0 offen
	buffer_load_b32 v76, v62, s[8:11], 0 offen
	buffer_load_b32 v87, v40, s[8:11], 0 offen
	buffer_load_b32 v88, v44, s[8:11], 0 offen
	buffer_load_b32 v89, v48, s[8:11], 0 offen
	buffer_load_b32 v90, v52, s[8:11], 0 offen
	buffer_load_b32 v77, v56, s[8:11], 0 offen
	buffer_load_b32 v78, v60, s[8:11], 0 offen
	buffer_load_b32 v79, v63, s[8:11], 0 offen
	buffer_load_b32 v80, v65, s[8:11], 0 offen
	buffer_load_b32 v91, v66, s[8:11], 0 offen
	buffer_load_b32 v92, v67, s[8:11], 0 offen
	buffer_load_b32 v93, v69, s[8:11], 0 offen
	buffer_load_b32 v94, v70, s[8:11], 0 offen
	buffer_load_b32 v81, v81, s[8:11], 0 offen
	buffer_load_b32 v82, v82, s[8:11], 0 offen
	buffer_load_b32 v69, v95, s[8:11], 0 offen
	buffer_load_b32 v70, v96, s[8:11], 0 offen
	buffer_load_b32 v95, v38, s[8:11], 0 offen
	buffer_load_b32 v96, v97, s[8:11], 0 offen
	buffer_load_b32 v97, v37, s[8:11], 0 offen
	buffer_load_b32 v98, v68, s[8:11], 0 offen
	buffer_load_b32 v67, v115, s[8:11], 0 offen
	buffer_load_b32 v68, v116, s[8:11], 0 offen
	buffer_load_b32 v65, v117, s[8:11], 0 offen
	buffer_load_b32 v66, v118, s[8:11], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_clause 0xc
	buffer_load_u16 v38, v33, s[8:11], 0 offen
	buffer_load_u16 v37, v34, s[8:11], 0 offen
	buffer_load_u16 v34, v49, s[8:11], 0 offen
	buffer_load_u16 v33, v53, s[8:11], 0 offen
	buffer_load_u16 v40, v35, s[8:11], 0 offen
	buffer_load_u16 v39, v41, s[8:11], 0 offen
	buffer_load_u16 v36, v46, s[8:11], 0 offen
	buffer_load_u16 v35, v57, s[8:11], 0 offen
	buffer_load_u16 v108, v42, s[8:11], 0 offen
	buffer_load_u16 v119, v100, s[8:11], 0 offen
	buffer_load_u16 v105, v105, s[8:11], 0 offen
	buffer_load_u16 v111, v99, s[8:11], 0 offen
	buffer_load_u16 v109, v109, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	v_cndmask_b32_e64 v5, 0x80000000, v5, s7
	s_clause 0x12
	buffer_load_u16 v113, v110, s[8:11], 0 offen
	buffer_load_u16 v123, v101, s[8:11], 0 offen
	buffer_load_u16 v120, v2, s[8:11], 0 offen
	buffer_load_u16 v117, v45, s[8:11], 0 offen
	buffer_load_u16 v110, v61, s[8:11], 0 offen
	buffer_load_u16 v101, v102, s[8:11], 0 offen
	buffer_load_u16 v99, v1, s[8:11], 0 offen
	buffer_load_u16 v121, v50, s[8:11], 0 offen
	buffer_load_u16 v118, v64, s[8:11], 0 offen
	buffer_load_u16 v102, v103, s[8:11], 0 offen
	buffer_load_u16 v100, v3, s[8:11], 0 offen
	buffer_load_u16 v124, v54, s[8:11], 0 offen
	buffer_load_u16 v122, v71, s[8:11], 0 offen
	buffer_load_u16 v103, v104, s[8:11], 0 offen
	buffer_load_u16 v71, v4, s[8:11], 0 offen
	buffer_load_u16 v126, v58, s[8:11], 0 offen
	buffer_load_u16 v125, v72, s[8:11], 0 offen
	buffer_load_u16 v104, v106, s[8:11], 0 offen
	buffer_load_u16 v72, v5, s[8:11], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v114, 32, v0
	s_mov_b32 s63, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_b32_e32 v1, 0x70, v1
	v_lshl_or_b32 v163, v162, 7, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v114, 6, v163
	v_add_nc_u32_e32 v41, 0, v1
	v_xad_u32 v42, v1, 16, 0
	v_xad_u32 v43, v1, 32, 0
	v_xad_u32 v45, v1, 48, 0
	v_xad_u32 v49, v1, 64, 0
	v_xad_u32 v53, 0x50, v1, 0
	v_xad_u32 v57, 0x60, v1, 0
	v_xad_u32 v61, 0x70, v1, 0
	ds_load_b128 v[1:4], v41
	ds_load_b128 v[5:8], v42
	ds_load_b128 v[9:12], v43
	ds_load_b128 v[13:16], v45
	ds_load_b128 v[17:20], v49
	ds_load_b128 v[21:24], v53
	ds_load_b128 v[25:28], v57
	ds_load_b128 v[29:32], v61
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v154, v38
	s_waitcnt vmcnt(27)
	ds_store_b16 v154, v40 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v154, v108 offset:2048
	ds_store_b16 v155, v37
	ds_store_b16 v155, v39 offset:1024
	s_waitcnt vmcnt(21)
	ds_store_b16 v154, v105 offset:3072
	s_waitcnt vmcnt(20)
	ds_store_b16 v155, v111 offset:2048
	s_waitcnt vmcnt(19)
	ds_store_b16 v155, v109 offset:3072
	ds_store_b16 v156, v34
	ds_store_b16 v156, v36 offset:1024
	ds_store_b16 v156, v119 offset:2048
	ds_store_b16 v157, v33
	ds_store_b16 v157, v35 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v156, v113 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v157, v123 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v157, v120 offset:3072
	s_waitcnt vmcnt(15)
	ds_store_b16 v158, v117
	s_waitcnt vmcnt(14)
	ds_store_b16 v158, v110 offset:1024
	s_waitcnt vmcnt(13)
	ds_store_b16 v158, v101 offset:2048
	s_waitcnt vmcnt(12)
	ds_store_b16 v158, v99 offset:3072
	s_waitcnt vmcnt(11)
	ds_store_b16 v159, v121
	s_waitcnt vmcnt(10)
	ds_store_b16 v159, v118 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v159, v102 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v159, v100 offset:3072
	s_waitcnt vmcnt(7)
	ds_store_b16 v160, v124
	s_waitcnt vmcnt(6)
	ds_store_b16 v160, v122 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v160, v103 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v160, v71 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v161, v126
	s_waitcnt vmcnt(2)
	ds_store_b16 v161, v125 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v161, v104 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v161, v72 offset:3072
	v_lshlrev_b32_e32 v124, 16, v124
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v110, 16, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v164, v75, v124 :: v_dual_lshlrev_b32 v119, 16, v119
	v_dual_mul_f32 v144, v91, v108 :: v_dual_mul_f32 v147, v94, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v166, v77, v110
	v_mul_f32_e32 v146, v93, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v144, v144 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v164, v75, v124 :: v_dual_lshlrev_b32 v121, 16, v121
	v_dual_fmac_f32 v144, v91, v108 :: v_dual_fmac_f32 v147, v94, v123
.Ltmp3:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v137, 16, v100
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v91, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v166, v77, v110 :: v_dual_lshlrev_b32 v125, 16, v125
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v153, v74, v121 :: v_dual_fmac_f32 v146, v93, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v91, v91, v91 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v93, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v169, v80, v125
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v120, 16, v120
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v91, v91, v91 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v93, v93, v93 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v103, 16, v103
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v169, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v153, v74, v121
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v123, v91, -1, -1 op_sel:[1,0]
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v93, v93, v93 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v151, v98, v120 :: v_dual_lshlrev_b32 v122, 16, v122
	v_mul_f32_e32 v172, v69, v103
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v91, v91, v123
	v_fmac_f32_e32 v169, v80, v125
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v125, v93, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v168, v79, v122
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s36, v91, 31
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v129, 16, v37
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v172, v172 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v105, 16, v105
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v93, v93, v125 :: v_dual_lshlrev_b32 v104, 16, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v100, v84, v129
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v151, v98, v120
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v93, 31
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v131, 16, v33
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v172, v69, v103
.Ltmp33:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v148, v95, v105 :: v_dual_mul_f32 v173, v70, v104
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v168, v79, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v100, v84, v129
.Ltmp35:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v72, 16, v72
	v_lshlrev_b32_e32 v126, 16, v126
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v173, v173 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v128, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v165, v76, v126 :: v_dual_fmac_f32 v148, v95, v105
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v95, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v136, 16, v99
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v173, v70, v104
.Ltmp43:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v99, v83, v128
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v95, v95, v95 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v165, v76, v126 :: v_dual_mul_f32 v174, v67, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v98, v74, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v95, v95, v95 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v175, v68, v137
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v111, 16, v111
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v99, v83, v128 :: v_dual_add_f32 v74, v74, v98
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v98, s41 :: v_dual_mul_f32 v139, v86, v131
	v_permlanex16_b32 v128, v95, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v69, v174 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v130, 16, v34
	v_lshlrev_b32_e32 v71, 16, v71
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v139, v139 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v95, v95, v128
.Ltmp53:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v132, 16, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v139, v86, v131 :: v_dual_lshlrev_b32 v134, 16, v36
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s43, v95, 31
.Ltmp56:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v133, 16, v39
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v70, v175 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v135, 16, v35
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v139, v139 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v145, v92, v111
	v_mul_f32_e32 v149, v96, v109
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v69, v67, v136 :: v_dual_mul_f32 v138, v85, v130
.Ltmp62:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v140, v87, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v142, v89, v134
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v70, v68, v137 :: v_dual_mul_f32 v143, v90, v135
.Ltmp66:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v101, 16, v101
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v76, -1, -1 op_sel:[1,0]
.Ltmp68:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v150, v97, v113
	v_mul_f32_e32 v152, v73, v117
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v138, v138 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v100
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v100, s43 :: v_dual_mul_f32 v141, v88, v133
	v_mov_b32_dpp v145, v145 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v167, v78, v118
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v140, v140 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v141, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v142, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v143, v143 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v170, v81, v101 :: v_dual_mul_f32 v171, v82, v102
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v138, v85, v130 :: v_dual_fmac_f32 v145, v92, v111
	v_fmac_f32_e32 v149, v96, v109
	v_add_f32_dpp v92, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v140, v87, v132 :: v_dual_fmac_f32 v141, v88, v133
	v_dual_fmac_f32 v142, v89, v134 :: v_dual_fmac_f32 v143, v90, v135
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v170, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v171, v171 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v150, v97, v113
	v_fmac_f32_e32 v152, v73, v117
	v_add_f32_dpp v73, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v138, v138 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v92, v92, v92 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v167, v78, v118
	v_add_f32_dpp v77, v140, v140 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v141, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v142, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v143, v143 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v170, v81, v101 :: v_dual_fmac_f32 v171, v82, v102
	v_add_f32_dpp v81, v144, v144 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v145, v145 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v88, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v89, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v86, v86 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v92, v92, v92 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v81, v81, v81 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v85, v85 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v88, v88, v88 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v94, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v89, v89, v89 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v86, v86, v86 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v124, v92, -1, -1 op_sel:[1,0]
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v81, v81, v81 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v85, v85 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v88, v88, v88 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v94, v94, v94 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v89, v89, v89 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v73, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v99, v75, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v118, v86, -1, -1 op_sel:[1,0]
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v92, v92, v124
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v77, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v102, v78, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v105, v79, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v108, v80, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v109, v81, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v110, v82, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v111, v83, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v113, v84, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v117, v85, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v119, v87, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v120, v88, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v94, v94, v94 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v121, v89, -1, -1 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v73, v73, v97
	v_dual_add_f32 v75, v75, v99 :: v_dual_add_f32 v86, v86, v118
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v92, 31
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v77, v77, v101 :: v_dual_add_f32 v78, v78, v102
	v_dual_add_f32 v79, v79, v105 :: v_dual_add_f32 v80, v80, v108
	v_dual_add_f32 v81, v81, v109 :: v_dual_add_f32 v82, v82, v110
	v_dual_add_f32 v83, v83, v111 :: v_dual_add_f32 v84, v84, v113
	v_add_f32_e32 v85, v85, v117
	v_dual_add_f32 v87, v87, v119 :: v_dual_add_f32 v88, v88, v120
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v126, v94, -1, -1 op_sel:[1,0]
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v89, v89, v121
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v73, 31
	v_readlane_b32 s5, v74, 31
	v_readlane_b32 s6, v75, 31
	v_readlane_b32 s7, v76, 31
	v_readlane_b32 s30, v86, 31
	v_mov_b32_e32 v97, s40
	v_lshlrev_b32_e32 v115, 1, v114
	v_readlane_b32 s8, v77, 31
	v_readlane_b32 s9, v78, 31
	v_readlane_b32 s10, v79, 31
	v_readlane_b32 s11, v80, 31
	v_readlane_b32 s16, v81, 31
	v_readlane_b32 s17, v82, 31
	v_readlane_b32 s18, v83, 31
	v_readlane_b32 s19, v84, 31
	v_readlane_b32 s29, v85, 31
	v_readlane_b32 s31, v87, 31
	v_readlane_b32 s33, v88, 31
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v94, v94, v126
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s34, v89, 31
	v_dual_mov_b32 v73, s4 :: v_dual_mov_b32 v74, s5
	v_dual_mov_b32 v75, s6 :: v_dual_mov_b32 v76, s7
	v_dual_mov_b32 v86, s30 :: v_dual_add_nc_u32 v127, 0, v115
	v_dual_mov_b32 v88, s33 :: v_dual_mov_b32 v77, s8
	v_dual_mov_b32 v78, s9 :: v_dual_mov_b32 v79, s10
	v_dual_mov_b32 v80, s11 :: v_dual_and_b32 v107, 1, v0
	v_dual_mov_b32 v84, s19 :: v_dual_mov_b32 v81, s16
	v_dual_mov_b32 v82, s17 :: v_dual_mov_b32 v83, s18
	v_mov_b32_e32 v85, s29
	v_mov_b32_e32 v87, s31
.Ltmp96:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s42, v94, 31
	v_mov_b32_e32 v94, s34
.Ltmp98:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[33:36], v41
	ds_load_b128 v[37:40], v42
	ds_load_b128 v[41:44], v43
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v127, v[73:76]
	ds_store_b128 v127, v[77:80] offset:16
	ds_store_b128 v127, v[81:84] offset:32
	ds_store_b128 v127, v[85:88] offset:48
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v170, v170 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v171, v171 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v172, v172 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v90, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v96, v169, v169 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v82, v65, v71 :: v_dual_mul_f32 v83, v66, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v84, v67, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v85, v68, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v90, v90, v90 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v65, v71 :: v_dual_fmac_f32 v83, v66, v72
	v_dual_add_f32 v67, v67, v84 :: v_dual_add_f32 v68, v68, v85
	v_add_f32_dpp v65, v173, v173 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v67, 31
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v67, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v68, 31
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v68, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v96, v96, v96 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v73, -1, -1 op_sel:[1,0]
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v90, v90, v90 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v96, v96, v96 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v73, v73, v102
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v67, -1, -1 op_sel:[1,0]
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v129, v96, -1, -1 op_sel:[1,0]
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v67, v72
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v90, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v73, 31
	v_permlanex16_b32 v71, v66, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v73, v68, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v82, v69, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v90, v90, v122
	v_dual_add_f32 v96, v96, v129 :: v_dual_add_f32 v65, v65, v70
	v_add_f32_e32 v66, v66, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v68, v68, v73 :: v_dual_add_f32 v69, v69, v82
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v99, s42 :: v_dual_lshlrev_b32 v106, 6, v107
	v_readlane_b32 s35, v90, 31
	v_readlane_b32 s44, v96, 31
	v_readlane_b32 s7, v65, 31
	v_readlane_b32 s8, v66, 31
	v_readlane_b32 s9, v67, 31
	v_readlane_b32 s10, v68, 31
	v_readlane_b32 s11, v69, 31
	v_dual_mov_b32 v101, s44 :: v_dual_add_nc_u32 v116, 0, v106
	v_dual_mov_b32 v95, s35 :: v_dual_mov_b32 v96, s36
	v_dual_mov_b32 v65, s4 :: v_dual_mov_b32 v66, s5
	v_dual_mov_b32 v67, s6 :: v_dual_mov_b32 v68, s7
	v_dual_mov_b32 v69, s8 :: v_dual_mov_b32 v70, s9
	v_dual_mov_b32 v71, s10 :: v_dual_mov_b32 v72, s11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[90:93], v116
	ds_load_b128 v[86:89], v116 offset:16
	ds_load_b128 v[78:81], v116 offset:32
	ds_load_b128 v[74:77], v116 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v127, v[94:97]
	ds_store_b128 v127, v[98:101] offset:16
	ds_store_b128 v127, v[65:68] offset:32
	ds_store_b128 v127, v[69:72] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v116
	ds_load_b128 v[98:101], v116 offset:16
	ds_load_b128 v[94:97], v116 offset:32
	ds_load_b128 v[82:85], v116 offset:48
.Ltmp118:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s43, s39, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s4, s43, 31
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s43, s43, s4
.Ltmp119:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v149, v90 :: v_dual_mov_b32 v150, v91
	v_dual_mov_b32 v151, v92 :: v_dual_mov_b32 v148, v93
	v_dual_mov_b32 v195, v86 :: v_dual_mov_b32 v196, v87
	v_mov_b32_e32 v197, v88
	v_dual_mov_b32 v199, v89 :: v_dual_mov_b32 v204, v78
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v152, v102
	v_dual_mov_b32 v192, v103 :: v_dual_mov_b32 v193, v104
	v_mov_b32_e32 v194, v105
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v200, v98 :: v_dual_mov_b32 v201, v99
	v_dual_mov_b32 v202, v100 :: v_dual_mov_b32 v203, v101
	v_dual_mov_b32 v205, v79 :: v_dual_mov_b32 v198, v80
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v190, v81 :: v_dual_mov_b32 v191, v94
	v_dual_mov_b32 v153, v95 :: v_dual_mov_b32 v146, v96
	v_dual_mov_b32 v147, v97 :: v_dual_mov_b32 v120, v74
	v_dual_mov_b32 v121, v75 :: v_dual_mov_b32 v122, v76
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v123, v77 :: v_dual_mov_b32 v124, v82
	v_dual_mov_b32 v206, v83 :: v_dual_mov_b32 v119, v85
	v_mov_b32_e32 v132, v84
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v151, v151 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v152, v152 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v153, v153 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v122, v122 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s4, s23, s28
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s64, s43, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s61, s14
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s7, s61, s13
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, s15
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s7, s7, s15
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s39, s5
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s6, s5, 31
	s_lshr_b32 s6, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s6, s7, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s63, s6, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s64, s64, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x84
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v164, 0, 1, s22
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s5, s21, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s6, s26, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s7, s61, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 32
	s_min_i32 s7, s39, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s8, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 28
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s7, s7, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s64, s64, s7
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s7, s4, s24
	s_xor_b32 s5, s5, s6
	s_sub_i32 s6, s23, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s6, s24
	s_clause 0x2
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s65, s[0:1], 0x80
	s_cmp_ge_u32 s6, s24
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v117, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s24
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v214, 4, v117
	v_or_b32_e32 v212, 8, v117
	v_or_b32_e32 v213, 12, v117
	v_or_b32_e32 v208, 16, v117
	v_or_b32_e32 v209, 20, v117
	v_or_b32_e32 v210, 24, v117
	v_or_b32_e32 v211, 28, v117
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s4, s7, s4
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v65, s61, v117
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s4, s4, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v66, s61, v214
	v_or_b32_e32 v67, s61, v212
	v_or_b32_e32 v68, s61, v213
	v_or_b32_e32 v69, s61, v208
	v_or_b32_e32 v70, s61, v209
	v_or_b32_e32 v71, s61, v210
	v_or_b32_e32 v72, s61, v211
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s33, s4, s5
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s12, s20, s37
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s38, v65
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s33, s33, s12
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s63, s64
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s5, s38, v66
	v_cmp_gt_i32_e64 s6, s38, v67
	v_cmp_gt_i32_e64 s7, s38, v68
	v_cmp_gt_i32_e64 s8, s38, v69
	v_cmp_gt_i32_e64 s9, s38, v70
	v_cmp_gt_i32_e64 s10, s38, v71
	v_cmp_gt_i32_e64 s11, s38, v72
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v165, s15, v65
	v_add_nc_u32_e32 v166, s15, v66
	v_add_nc_u32_e32 v167, s15, v67
	v_add_nc_u32_e32 v168, s15, v68
	v_add_nc_u32_e32 v169, s15, v69
	v_add_nc_u32_e32 v170, s15, v70
	v_add_nc_u32_e32 v172, s15, v71
	v_add_nc_u32_e32 v173, s15, v72
	v_lshlrev_b32_e32 v66, 5, v0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s42, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s20, s16
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s42
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s12, s21, s17
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v65, 5, v0
	s_mov_b32 s15, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s15, -1
                                        ; implicit-def: $vgpr65
.LBB0_7:                                ; %Flow237
	s_clause 0x4
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[28:31], s[0:1], 0x48
	s_load_b64 s[44:45], s[0:1], 0x10
	s_load_b64 s[48:49], s[0:1], 0x28
	s_load_b64 s[56:57], s[0:1], 0x8c
	v_and_b32_e32 v171, 16, v0
	v_and_b32_e32 v220, 48, v0
	v_subrev_nc_u32_e32 v174, s13, v165
	v_subrev_nc_u32_e32 v175, s13, v166
	v_subrev_nc_u32_e32 v176, s13, v167
	v_subrev_nc_u32_e32 v177, s13, v168
	v_subrev_nc_u32_e32 v178, s13, v169
	v_subrev_nc_u32_e32 v179, s13, v170
	v_subrev_nc_u32_e32 v180, s13, v172
	v_subrev_nc_u32_e32 v181, s13, v173
	v_add_nc_u32_e32 v182, s14, v165
	v_add_nc_u32_e32 v183, s14, v166
	v_add_nc_u32_e32 v184, s14, v167
	v_add_nc_u32_e32 v185, s14, v168
	v_add_nc_u32_e32 v186, s14, v169
	v_add_nc_u32_e32 v187, s14, v170
	v_add_nc_u32_e32 v188, s14, v172
	v_add_nc_u32_e32 v189, s14, v173
	v_xor_b32_e32 v125, 16, v163
	v_xor_b32_e32 v126, 32, v163
	v_xor_b32_e32 v127, 48, v163
	v_xor_b32_e32 v128, 64, v163
	v_xor_b32_e32 v129, 0x50, v163
	v_xor_b32_e32 v130, 0x60, v163
	v_xor_b32_e32 v131, 0x70, v163
	v_lshlrev_b32_e32 v216, 3, v162
	v_lshrrev_b32_e32 v217, 2, v171
	v_lshrrev_b32_e32 v135, 4, v114
	v_lshlrev_b32_e32 v219, 2, v0
	v_lshrrev_b32_e32 v218, 1, v171
	v_lshrrev_b32_e32 v215, 5, v114
	v_cmp_eq_u32_e64 s0, 0, v114
	s_mul_f32 s67, s65, 0x3fb8aa3b
	s_mul_i32 s66, s33, s39
	s_and_not1_b32 vcc_lo, exec_lo, s15
	s_add_i32 s26, s12, s20
	s_cbranch_vccnz .LBB0_30
; %bb.8:                                ; %.lr.ph
	v_and_b32_e32 v65, 0x180, v66
	v_and_b32_e32 v66, 52, v219
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_and_b32 v67, 2, v0
	v_cndmask_b32_e64 v72, 0x104, 0, s0
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s0, s63, s66
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v118, s61, v117
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v65, v66, v67, v65
	s_add_i32 s1, s0, 1
	v_mov_b32_e32 v242, 0xff800000
	s_mul_i32 s1, s58, s1
	s_add_i32 s12, s0, 2
	v_or3_b32 v209, v65, v218, v215
	v_and_b32_e32 v65, 60, v112
	v_dual_mov_b32 v254, 0xff800000 :: v_dual_add_nc_u32 v133, 24, v118
	s_lshl_b32 s47, s1, 1
	s_mul_i32 s1, s58, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v211, v72, v65
	s_add_i32 s12, s0, 3
	s_lshl_b32 s50, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 4
	v_or_b32_e32 v65, v211, v106
	s_lshl_b32 s51, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 5
	v_and_b32_e32 v68, 14, v0
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_lshlrev_b32 v70, 2, v220
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v213, s56, v133
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v133, 12, v118
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_add_nc_u32 v110, s63, v162
	s_lshl_b32 s68, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 6
	v_xor_b32_e32 v134, 0x208, v65
	v_xor_b32_e32 v136, 0x410, v65
	v_xor_b32_e32 v137, 0x618, v65
	v_add_nc_u32_e32 v65, 28, v118
	s_lshl_b32 s69, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 7
	v_or3_b32 v208, v217, v135, v216
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_lshlrev_b32 v71, 5, v107
	v_mul_lo_u32 v216, s56, v133
	s_lshl_b32 s70, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 8
	v_mov_b32_e32 v133, 0xff800000
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_lshlrev_b32 v67, 1, v68
	v_lshl_or_b32 v68, v68, 7, v70
	v_mad_u64_u32 v[110:111], null, s57, v110, s[26:27]
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_add_nc_u32 v138, 20, v118
	s_lshl_b32 s71, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 9
	v_add_nc_u32_e32 v233, 0, v136
	v_mov_b32_e32 v136, 0
	v_mul_lo_u32 v111, s56, v65
	v_dual_mov_b32 v252, 0xff800000 :: v_dual_add_nc_u32 v65, 16, v118
	s_lshl_b32 s72, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 10
	v_or3_b32 v210, v68, v71, v67
	s_lshl_b32 s73, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 11
	v_mul_lo_u32 v214, s56, v138
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v138, 8, v118
	v_mul_lo_u32 v215, s56, v65
	v_dual_mov_b32 v248, 0xff800000 :: v_dual_add_nc_u32 v65, 4, v118
	s_lshl_b32 s74, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 12
	v_xor_b32_e32 v69, 0x90, v208
	v_xor_b32_e32 v66, 0x120, v208
	v_xor_b32_e32 v70, 0x1b0, v208
	v_xor_b32_e32 v67, 16, v209
	v_xor_b32_e32 v68, 32, v209
	v_xor_b32_e32 v71, 48, v209
	v_xor_b32_e32 v72, 4, v210
	v_xor_b32_e32 v73, 8, v210
	v_xor_b32_e32 v107, 12, v210
	v_xor_b32_e32 v108, 16, v210
	v_xor_b32_e32 v106, 20, v210
	v_xor_b32_e32 v109, 24, v210
	v_xor_b32_e32 v113, 28, v210
	s_lshl_b32 s75, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 13
	v_mul_lo_u32 v212, s56, v118
	v_mul_lo_u32 v217, s56, v138
	v_mul_lo_u32 v218, s56, v65
	s_lshl_b32 s76, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 14
	s_lshl_b32 s77, s1, 1
	s_mul_i32 s1, s58, s12
	s_add_i32 s12, s0, 15
	v_mov_b32_e32 v65, 0
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_add_nc_u32 v219, 0, v69
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v220, 0, v66
	v_add_nc_u32_e32 v221, 0, v70
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v222, 0, v67
	v_add_nc_u32_e32 v223, 0, v68
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v224, 0, v71
	v_add_nc_u32_e32 v225, 0, v72
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v226, 0, v73
	v_add_nc_u32_e32 v227, 0, v107
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v228, 0, v108
	v_add_nc_u32_e32 v229, 0, v106
	v_add_nc_u32_e32 v230, 0, v109
	v_add_nc_u32_e32 v231, 0, v113
	v_add_nc_u32_e32 v232, 0, v134
	v_add_nc_u32_e32 v234, 0, v137
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v113, 0xff800000
	v_mov_b32_e32 v137, 0xff800000
	s_lshl_b32 s78, s1, 1
	s_mul_i32 s1, s58, s12
	s_mul_i32 s0, s58, s0
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s53, s41, 0xffff
	s_mov_b32 s52, s40
	s_lshl_b32 s46, s57, 4
	s_lshl_b32 s79, s1, 1
	s_lshl_b32 s80, s0, 1
	s_mov_b32 s81, s63
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v138, s67, v66 :: v_dual_mul_f32 v139, s67, v67
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_waitcnt vmcnt(0)
	v_and_b16 v66.l, 0xff, v109.h
	.loc	1 252 21 is_stmt 0              ; attention_backward.py:252:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v140, s67, v68 :: v_dual_mul_f32 v141, s67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v66.l
	v_and_b16 v66.l, 0xff, v107.h
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v70, s67, v70 :: v_dual_mul_f32 v71, s67, v71
	v_dual_mul_f32 v72, s67, v72 :: v_dual_mul_f32 v73, s67, v73
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s0, 0, v66.l
	v_and_b16 v66.l, 0xff, v106.l
	.loc	1 252 21 is_stmt 0              ; attention_backward.py:252:21
	s_and_b32 s12, s89, vcc_lo
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s81, s81, 16
	s_add_i32 s47, s47, s27
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s16, s88, s0
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v66.l
	v_and_b16 v66.l, 0xff, v109.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v67, 0, 1, s16
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s50, s50, s27
	s_add_i32 s51, s51, s27
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s15, s86, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s1, 0, v66.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v66, 0, 1, s12
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s68, s68, s27
	s_add_i32 s69, s69, s27
	s_add_i32 s70, s70, s27
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s1, s87, s1
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s71, s71, s27
	s_add_i32 s72, s72, s27
	s_add_i32 s73, s73, s27
	s_add_i32 s74, s74, s27
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s75, s75, s27
	s_add_i32 s76, s76, s27
	s_add_i32 s77, s77, s27
	s_add_i32 s78, s78, s27
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v66.h, 8, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s15
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s79, s79, s27
	s_add_i32 s80, s80, s27
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v66.h, v67.l, v66.h
	v_add_nc_u32_e32 v67, 0, v208
	ds_store_b16 v67, v66
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_and_b16 v66.l, 0xff, v107.l
	.loc	1 257 22 is_stmt 1              ; attention_backward.py:257:22
	v_add_nc_u32_e32 v107, 0, v210
	.loc	1 252 21                        ; attention_backward.py:252:21
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_add_nc_u32_e32 v110, s46, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v66.l
	v_and_b16 v66.l, 0xff, v106.h
	.loc	1 252 21 is_stmt 0              ; attention_backward.py:252:21
	s_and_b32 s14, s84, vcc_lo
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v66.l
	v_and_b16 v66.l, 0xff, v108.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s13, s82, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s0, 0, v66.l
	v_and_b16 v66.l, 0xff, v108.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v68, 0, 1, s13
	s_and_b32 s0, s85, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s17, 0, v66.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v67, 0, 1, s0
	s_and_b32 vcc_lo, s83, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_lt_i32 s81, s64
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v66.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, vcc_lo
	v_lshlrev_b16 v67.l, 8, v67.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v67.l, v68.l, v67.l
	ds_store_b16_d16_hi v219, v66
	ds_store_b16 v220, v66
	ds_store_b16 v221, v67
	v_add_nc_u32_e32 v67, 0, v209
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v66, v67
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v67 offset:64
	ds_load_u8_d16 v67, v222
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v224 offset:64
	ds_load_u8_d16 v68, v223 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v222 offset:64
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v67.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v66.l
	ds_load_u8_d16 v66, v223
	ds_load_u8_d16 v69, v224
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v106, 0xff800000, v138, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v67.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v107, v106
	v_cndmask_b32_e64 v106, 0xff800000, v139, s17
	ds_store_b32 v225, v106
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v66.l
	v_and_b16 v66.l, 1, v69.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v106, 0xff800000, v140, s17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v66.l
	v_and_b16 v66.l, 1, v66.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v226, v106
	v_cndmask_b32_e64 v69, 0xff800000, v141, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v227, v69
	v_cndmask_b32_e64 v66, 0xff800000, v70, s17
	ds_store_b32 v228, v66
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v66.l, 1, v68.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s17, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v66, 0xff800000, v71, s17
	ds_store_b32 v229, v66
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v66.l, 1, v68.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s17, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v66, 0xff800000, v72, s17
	ds_store_b32 v230, v66
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v66.l, 1, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s17, 1, v66.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v66, 0xff800000, v73, s17
	ds_store_b32 v231, v66
	v_add_nc_u32_e32 v66, v116, v211
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[107:108], v232 offset1:32
	ds_load_2addr_b32 v[138:139], v234 offset1:32
	ds_load_2addr_b32 v[66:67], v66 offset1:32
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v70, v107, v107
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v106, v138, v138
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v68, v66
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v66, v66
	v_max_f32_e32 v109, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v68, v68 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v69, v68
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v68, v68, v69 :: v_dual_max_f32 v69, v235, v235
.Ltmp132:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v235, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v66, v66, v235
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v66, 0, v66, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v133
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v69, v66
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v66, v69
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v66, v66, v69
.Ltmp139:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v69, v133, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v68, v69, v68 :: v_dual_mov_b32 v69, v66
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v66, v66, v69 :: v_dual_sub_f32 v69, v133, v68
.Ltmp142:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v69, 0, v69, s16
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v66, v134, v69 :: v_dual_mov_b32 v69, v107
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[133:134], v233 offset1:32
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v70, v69
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v72, v133, v133
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v70, v70, v70
	v_dual_max_f32 v69, v69, v70 :: v_dual_max_f32 v70, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v236, v70, v69
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v70, v107, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v70, v70
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v70, 0, v70, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v71, v70
	v_mov_b32_dpp v71, v71 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v71, v70
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v71, v70, v71 :: v_dual_max_f32 v70, v113, v113
.Ltmp160:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v70, v70, v69 :: v_dual_mov_b32 v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp163:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v71, v113, v70
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v108, v108
.Ltmp165:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v71, 0, v71, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v69, v255, v71
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v71, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v255, v69
	v_mov_b32_dpp v71, v71 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v72, v71
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v72, v71
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v72, v71
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v72, v72, v72
	v_dual_max_f32 v71, v71, v72 :: v_dual_max_f32 v72, v237, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v237, v72, v71
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v72, v133, v237 :: v_dual_max_f32 v133, v134, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v72, v72
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s14
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s14, 0xff800000, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v73, v72
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v72, v72, v73
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v73, v72
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v73, v72, v73 :: v_dual_max_f32 v72, v254, v254
.Ltmp181:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v72, v72, v71 :: v_dual_mov_b32 v71, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp183:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v71, v73, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v73, v254, v72
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v73, 0, v73, s14
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v71, v253, v73
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v73, v138 :: v_dual_mov_b32 v254, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v253, v71
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v73, v106, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v106, v73
	v_mov_b32_dpp v106, v106 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v106, v106, v106
	v_max_f32_e32 v73, v73, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v106, v73
	v_mov_b32_dpp v106, v106 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v106, v106, v106
	v_max_f32_e32 v73, v73, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v106, v73
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v106, v106, v106
	v_max_f32_e32 v73, v73, v106
.Ltmp193:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v106, v238, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v238, v106, v73
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v106, v138, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v106, v106
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v106, 0, v106, s13
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v107, v106
	v_mov_b32_dpp v107, v107 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v106, v106, v107
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v107, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v107, v107 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v106, v106, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v107, v106
	v_mov_b32_dpp v107, v107 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v107, v106, v107 :: v_dual_max_f32 v106, v252, v252
.Ltmp200:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v106, v106, v73 :: v_dual_mov_b32 v73, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v107, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp203:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v107, v252, v106
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v107, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v107, 0, v107, s13
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v73, v251, v107
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v107, v67 :: v_dual_mov_b32 v252, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v251, v73
	v_mov_b32_dpp v107, v107 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v107, v107, v107
	v_max_f32_e32 v107, v109, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v107
	v_mov_b32_dpp v109, v109 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	v_max_f32_e32 v107, v107, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v107
	v_mov_b32_dpp v109, v109 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	v_max_f32_e32 v107, v107, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v107
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	v_max_f32_e32 v107, v107, v109
.Ltmp212:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v109, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v239, v109, v107
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v67, v67, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s12, 0xff800000, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v67
	v_mov_b32_dpp v109, v109 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v109
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v67
	v_mov_b32_dpp v109, v109 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v109
.Ltmp219:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v109, v250, v250
	v_max_f32_e32 v107, v109, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v67
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v109
.Ltmp222:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v109, v250, v107 :: v_dual_mov_b32 v250, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v109, v109
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v109, 0, v109, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v67, v249, v109
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v108
	v_mov_b32_e32 v249, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v109, v113, v109
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v109, v109, v113
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v109, v109, v113
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v113, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v109, v109, v113
.Ltmp231:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v113, v240, v240
	v_max_f32_e32 v240, v113, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v108, v108, v240
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v108, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v108, 0, v108, s1
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v248
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v108, v108, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v108
	v_mov_b32_dpp v113, v113 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v108, v108, v113
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v108, v108, v113
.Ltmp238:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v113, v248, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v109, v113, v109
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v108, v108, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v113, v248, v109 :: v_dual_mov_b32 v248, v109
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v113, 0, v113, s1
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v108, v247, v113 :: v_dual_mov_b32 v113, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v247, v108
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v113, v133, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v133, v113
	v_mov_b32_dpp v133, v133 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v133, v133
	v_max_f32_e32 v113, v113, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v133, v113
	v_mov_b32_dpp v133, v133 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v133, v133
	v_max_f32_e32 v113, v113, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v133, v113
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v133, v133
	v_max_f32_e32 v113, v113, v133
.Ltmp250:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v133, v241, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v241, v133, v113
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v133, v134, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v133, v133
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v133, 0, v133, s0
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s0, 0xff800000, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v134, v133
	v_mov_b32_dpp v134, v134 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v133, v133, v134
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v134, v134 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v133, v133, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v134, v133
	v_mov_b32_dpp v134, v134 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v133, v133, v134
.Ltmp257:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v134, v137, v137
	v_dual_max_f32 v246, v134, v113 :: v_dual_mov_b32 v113, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v245, v133, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp260:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v113, v137, v246
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v139, v139
	v_mov_b32_e32 v137, v246
.Ltmp262:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v113, 0, v113, s0
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v245, v136, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v113, v139 :: v_dual_mov_b32 v136, v245
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v113, v133, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v133, v113
	v_mov_b32_dpp v133, v133 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v133, v133
	v_max_f32_e32 v113, v113, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v133, v113
	v_mov_b32_dpp v133, v133 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v133, v133
	v_max_f32_e32 v113, v113, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v133, v113
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v133, v133, v133
	v_max_f32_e32 v113, v113, v133
.Ltmp271:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v133, v242, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v242, v133, v113
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v133, v139, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v133, v133
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v133, 0, v133, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v134, v133
	v_mov_b32_dpp v134, v134 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v133, v133, v134
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v134, v134 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v133, v133, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v134, v133
	v_mov_b32_dpp v134, v134 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v133, v133, v134
.Ltmp278:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v134, v118, v118
	v_dual_max_f32 v244, v134, v113 :: v_dual_mov_b32 v113, v133
	v_mov_b32_e32 v134, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp279:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v243, v133, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp281:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v113, v118, v244
	v_mov_b32_e32 v133, v68
	v_mov_b32_e32 v118, v244
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v113, 0, v113, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v243, v207, v113
	v_mov_b32_e32 v113, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v207, v243
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_31
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_add_i32 s0, s81, 1
	s_add_i32 s1, s81, 2
	s_add_i32 s12, s81, 3
	s_add_i32 s13, s81, 4
	s_add_i32 s14, s81, 5
	s_add_i32 s15, s81, 6
	s_add_i32 s16, s81, 7
	s_add_i32 s17, s81, 8
	s_add_i32 s18, s81, 9
	s_add_i32 s19, s81, 10
	s_add_i32 s20, s81, 11
	s_add_i32 s21, s81, 12
	s_add_i32 s22, s81, 13
	s_add_i32 s23, s81, 14
	s_add_i32 s24, s81, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s81, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v66, s80, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s0, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v67, s47, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s0, -1, 0
	s_cmp_lt_i32 s1, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v68, s50, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s12, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v69, s51, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v70, s68, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v71, s69, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v72, s70, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v73, s71, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v106, s72, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v107, s73, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v108, s74, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v109, s75, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v138, s76, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v139, s77, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v140, s78, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v141, s79, v112
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s24, -1, 0
	.loc	1 231 26 is_stmt 0              ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s82
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x5
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v68, v68, s[52:55], 0 offen
	buffer_load_u16 v69, v69, s[52:55], 0 offen
	buffer_load_u16 v70, v70, s[52:55], 0 offen
	buffer_load_u16 v71, v71, s[52:55], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v138, 0x80000000, v138, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s22
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s23
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x4
	buffer_load_u16 v106, v106, s[52:55], 0 offen
	buffer_load_u16 v107, v107, s[52:55], 0 offen
	buffer_load_u16 v108, v108, s[52:55], 0 offen
	buffer_load_u16 v109, v109, s[52:55], 0 offen
	buffer_load_u16 v138, v138, s[52:55], 0 offen
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s24
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	s_clause 0x4
	buffer_load_u16 v139, v139, s[52:55], 0 offen
	buffer_load_u16 v72, v72, s[52:55], 0 offen
	buffer_load_u16 v140, v140, s[52:55], 0 offen
	buffer_load_u16 v73, v73, s[52:55], 0 offen
	buffer_load_u16 v141, v141, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 238 13                        ; attention_backward.py:238:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v164
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v154, v66
	s_waitcnt vmcnt(9)
	ds_store_b16 v154, v106 offset:1024
	ds_store_b16 v155, v67
	s_waitcnt vmcnt(8)
	ds_store_b16 v155, v107 offset:1024
	ds_store_b16 v156, v68
	s_waitcnt vmcnt(7)
	ds_store_b16 v156, v108 offset:1024
	ds_store_b16 v157, v69
	s_waitcnt vmcnt(6)
	ds_store_b16 v157, v109 offset:1024
	ds_store_b16 v158, v70
	s_waitcnt vmcnt(5)
	ds_store_b16 v158, v138 offset:1024
	ds_store_b16 v159, v71
	s_waitcnt vmcnt(4)
	ds_store_b16 v159, v139 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v160, v72
	s_waitcnt vmcnt(2)
	ds_store_b16 v160, v140 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v161, v73
	s_waitcnt vmcnt(0)
	ds_store_b16 v161, v141 offset:1024
	v_add_nc_u32_e32 v66, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v67, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[138:141], v66
	v_add_nc_u32_e32 v66, 0, v125
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[142:145], v66
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	v_add_nc_u32_e32 v106, 0, v126
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[138:145], v[1:8], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[138:141], v106
	v_add_nc_u32_e32 v106, 0, v127
	ds_load_b128 v[142:145], v106
	v_add_nc_u32_e32 v106, 0, v128
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[138:145], v[9:16], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[138:141], v106
	v_add_nc_u32_e32 v106, 0, v129
	ds_load_b128 v[142:145], v106
	v_add_nc_u32_e32 v106, 0, v130
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[138:145], v[17:24], v[66:73]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[138:141], v106
	v_add_nc_u32_e32 v106, 0, v131
	ds_load_b128 v[142:145], v106
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_add_nc_u32_e32 v106, s81, v162
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_i32_e64 s0, s39, v106
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s88, s4, s0
	s_and_b32 s86, s5, s0
	s_and_b32 s84, s6, s0
	s_and_b32 s82, s7, s0
	s_and_b32 s89, s8, s0
	s_and_b32 s87, s9, s0
	s_and_b32 s85, s10, s0
	s_and_b32 s83, s11, s0
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[138:145], v[25:32], v[66:73]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccz .LBB0_27
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 240 13                        ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s59
	s_cbranch_vccz .LBB0_28
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_mov_b16_e32 v106.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v107.h, v106.l
	.loc	1 252 30 is_stmt 1              ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s88
	s_cbranch_execnz .LBB0_29
.LBB0_13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s86
	s_cbranch_execz .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v106, v218, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v109, 31, v106
	v_add_co_u32 v108, vcc_lo, s34, v106
	v_add_co_ci_u32_e64 v109, null, s35, v109, vcc_lo
	global_load_d16_u8 v106, v[108:109], off
.LBB0_15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v106.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v107.l, v106.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s84
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v108, v217, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, vcc_lo, s34, v108
	v_add_co_ci_u32_e64 v109, null, s35, v109, vcc_lo
	global_load_d16_u8 v107, v[108:109], off
.LBB0_17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s82
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v108, v216, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, vcc_lo, s34, v108
	v_add_co_ci_u32_e64 v109, null, s35, v109, vcc_lo
	global_load_d16_hi_u8 v106, v[108:109], off
.LBB0_19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	v_mov_b16_e32 v109.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v109.h, v109.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s89
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v108, v215, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v139, 31, v108
	v_add_co_u32 v138, vcc_lo, s34, v108
	v_add_co_ci_u32_e64 v139, null, s35, v139, vcc_lo
	global_load_d16_hi_u8 v109, v[138:139], off
.LBB0_21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s87
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v108, v214, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v139, 31, v108
	v_add_co_u32 v138, vcc_lo, s34, v108
	v_add_co_ci_u32_e64 v139, null, s35, v139, vcc_lo
	global_load_d16_u8 v109, v[138:139], off
.LBB0_23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	v_mov_b16_e32 v108.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v108.h, v108.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s85
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v138, v213, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v139, 31, v138
	v_add_co_u32 v138, vcc_lo, s34, v138
	v_add_co_ci_u32_e64 v139, null, s35, v139, vcc_lo
	global_load_d16_hi_u8 v108, v[138:139], off
.LBB0_25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s83
	s_cbranch_execz .LBB0_9
; %bb.26:                               ;   in Loop: Header=BB0_10 Depth=1
	v_add_nc_u32_e32 v138, v111, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v139, 31, v138
	v_add_co_u32 v138, vcc_lo, s34, v138
	v_add_co_ci_u32_e64 v139, null, s35, v139, vcc_lo
	global_load_d16_u8 v108, v[138:139], off
	s_branch .LBB0_9
.LBB0_27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26 is_stmt 1              ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v106, v165
	v_cmp_le_i32_e64 s0, v106, v166
	v_cmp_le_i32_e64 s1, v106, v167
	v_cmp_le_i32_e64 s12, v106, v168
	v_cmp_le_i32_e64 s13, v106, v169
	v_cmp_le_i32_e64 s14, v106, v170
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s17, vcc_lo, s88
	s_and_b32 s0, s0, s86
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s15, v106, v172
	v_cmp_le_i32_e64 s16, v106, v173
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s1, s1, s84
	s_and_b32 s12, s12, s82
	s_and_not1_b32 s18, s88, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s86, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s13, s13, s89
	s_and_b32 s14, s14, s87
	s_or_b32 s88, s18, s17
	s_or_b32 s86, s19, s0
	s_and_not1_b32 s0, s84, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s17, s82, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s85
	s_and_b32 s16, s16, s83
	s_or_b32 s84, s0, s1
	s_or_b32 s82, s17, s12
	s_and_not1_b32 s0, s89, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s12, s87, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s89, s0, s1
	s_or_b32 s87, s12, s13
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s12, s83, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s85, s0, s1
	s_or_b32 s83, s12, s13
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s59
	s_cbranch_vccnz .LBB0_12
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v106, v174
	v_cmp_ge_i32_e64 s0, v106, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v106, v182
	v_cmp_le_i32_e64 s18, v106, v183
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s1, v106, v176
	v_cmp_ge_i32_e64 s12, v106, v177
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s19, v106, v184
	v_cmp_le_i32_e64 s20, v106, v185
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v106, v178
	v_cmp_ge_i32_e64 s14, v106, v179
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s21, v106, v186
	v_cmp_le_i32_e64 s22, v106, v187
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s0, s0, s18
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s15, v106, v180
	v_cmp_ge_i32_e64 s16, v106, v181
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s23, v106, v188
	v_cmp_le_i32_e64 s24, v106, v189
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s17, s17, s88
	s_and_b32 s0, s0, s86
	s_and_b32 s1, s1, s19
	s_and_b32 s12, s12, s20
	s_and_b32 s1, s1, s84
	s_and_b32 s12, s12, s82
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s18, s88, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s86, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s13, s13, s89
	s_and_b32 s14, s14, s87
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_or_b32 s88, s18, s17
	s_or_b32 s86, s19, s0
	s_and_not1_b32 s0, s84, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s17, s82, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s85
	s_and_b32 s16, s16, s83
	s_or_b32 s84, s0, s1
	s_or_b32 s82, s17, s12
	s_and_not1_b32 s0, s89, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s12, s87, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s89, s0, s1
	s_or_b32 s87, s12, s13
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s12, s83, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s85, s0, s1
	s_or_b32 s83, s12, s13
	v_mov_b16_e32 v106.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v107.h, v106.l
	.loc	1 252 30 is_stmt 1              ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s88
	s_cbranch_execz .LBB0_13
.LBB0_29:                               ;   in Loop: Header=BB0_10 Depth=1
	v_add_nc_u32_e32 v107, v212, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v107, vcc_lo, s34, v107
	v_add_co_ci_u32_e64 v108, null, s35, v108, vcc_lo
	global_load_d16_hi_u8 v107, v[107:108], off
	s_or_b32 exec_lo, exec_lo, s0
	s_and_saveexec_b32 s0, s86
	s_cbranch_execnz .LBB0_14
	s_branch .LBB0_15
.LBB0_30:
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v246, 0xff800000
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v106, 0xff800000
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0xff800000
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_mov_b32 v70, 0xff800000
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_mov_b32 v68, 0xff800000
	s_branch .LBB0_32
.LBB0_31:                               ; %Flow236
	v_lshlrev_b32_e32 v65, 5, v0
	v_or_b32_e32 v208, 16, v117
	v_or_b32_e32 v209, 20, v117
	v_or_b32_e32 v210, 24, v117
	v_or_b32_e32 v211, 28, v117
	v_or_b32_e32 v212, 8, v117
	v_or_b32_e32 v213, 12, v117
	v_or_b32_e32 v214, 4, v117
	v_lshrrev_b32_e32 v215, 5, v114
	v_lshlrev_b32_e32 v216, 3, v162
	v_lshrrev_b32_e32 v217, 2, v171
	v_lshrrev_b32_e32 v218, 1, v171
	v_lshlrev_b32_e32 v219, 2, v0
	v_and_b32_e32 v220, 48, v0
.LBB0_32:                               ; %Flow238
.Ltmp282:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v91, v91, v150 :: v_dual_and_b32 v116, 31, v0
.Ltmp283:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v66
	v_cmp_gt_f32_e64 s12, 0x800000, v71
	v_cmp_gt_f32_e64 s1, 0x800000, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v110, s61, v116
.Ltmp284:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v80, v80, v198
.Ltmp285:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v118, 0, 0x42000000, s0
	v_cndmask_b32_e64 v112, 0, 32, s12
	v_cndmask_b32_e64 v133, 0, 0x42000000, s1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s38, v110
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v110, 0, 32, s0
	v_cndmask_b32_e64 v111, 0, 32, s1
	v_ldexp_f32 v112, v71, v112
	v_cmp_gt_f32_e64 s0, 0x800000, v73
	v_cmp_gt_f32_e64 s1, 0x800000, v67
	v_ldexp_f32 v113, v66, v110
	v_cndmask_b32_e64 v134, 0, 0x42000000, s12
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v110, v94, v191
.Ltmp287:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v94, v69, v111
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v111, v95, v153
.Ltmp289:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v95, v113
	v_log_f32_e32 v136, v112
	v_cndmask_b32_e64 v137, 0, 0x42000000, s0
	v_cndmask_b32_e64 v112, 0, 32, s0
	v_cndmask_b32_e64 v138, 0, 0x42000000, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v108
	v_cndmask_b32_e64 v113, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v245
	v_cmp_gt_f32_e64 s12, 0x800000, v243
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v90, v90, v149 :: v_dual_add_f32 v93, v93, v148
.Ltmp291:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v140, 0, 32, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v142, 0, 32, s1
	v_cndmask_b32_e64 v144, 0, 32, s12
	v_ldexp_f32 v113, v67, v113
	v_log_f32_e32 v94, v94
	v_ldexp_f32 v112, v73, v112
	v_ldexp_f32 v140, v108, v140
	v_ldexp_f32 v142, v245, v142
	v_ldexp_f32 v144, v243, v144
	v_log_f32_e32 v148, v113
	v_log_f32_e32 v145, v112
	v_log_f32_e32 v140, v140
	v_log_f32_e32 v142, v142
	v_log_f32_e32 v144, v144
	v_sub_f32_e32 v95, v95, v118
	v_cndmask_b32_e64 v139, 0, 0x42000000, s0
	v_cndmask_b32_e64 v141, 0, 0x42000000, s1
	v_cndmask_b32_e64 v143, 0, 0x42000000, s12
	v_sub_f32_e32 v94, v94, v133
	v_dual_sub_f32 v118, v148, v138 :: v_dual_and_b32 v65, 0x60, v65
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v68, v68, v95
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v66
.Ltmp292:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v112, v96, v146 :: v_dual_add_f32 v113, v97, v147
.Ltmp293:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v96, v136, v134 :: v_dual_sub_f32 v97, v145, v137
	v_dual_sub_f32 v133, v140, v139 :: v_dual_sub_f32 v134, v142, v141
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v95, v107, v118 :: v_dual_sub_f32 v136, v144, v143
	v_add_f32_e32 v70, v70, v94
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v68, 0, v68, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v69
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v72, v72, v96 :: v_dual_add_nc_u32 v65, 0, v65
	v_add_f32_e32 v94, v106, v97
	v_dual_add_f32 v96, v109, v133 :: v_dual_add_f32 v97, v246, v134
	v_add_f32_e32 v109, v244, v136
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v69, 0, v70, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v71
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v207, 1, v114
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v66, v220, 1, 0
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v78, v204 :: v_dual_add_f32 v81, v81, v190
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp295:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v70, 0, v72, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v73
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v72, 28, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s47, 0x31027000
	v_cndmask_b32_e64 v71, 0, v94, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v67
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s17, s29, 0xffff
	s_mov_b32 s16, s28
	s_mov_b32 s18, s46
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v106, 0, v95, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v108
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_mov_b32 s19, s47
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v92, v92, v151 :: v_dual_add_f32 v103, v103, v192
	v_dual_add_f32 v102, v102, v152 :: v_dual_add_f32 v105, v105, v194
.Ltmp297:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v107, 0, v96, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v245
.Ltmp298:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v104, v104, v193 :: v_dual_add_f32 v87, v87, v196
	v_dual_add_f32 v86, v86, v195 :: v_dual_add_f32 v99, v99, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp299:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v108, 0, v97, s0
	v_and_b32_e32 v97, 12, v0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v243
.Ltmp300:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v88, v88, v197 :: v_dual_add_f32 v89, v89, v199
	v_dual_add_f32 v98, v98, v200 :: v_dual_add_f32 v101, v101, v203
.Ltmp301:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v67, v65, v207, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v109, 0, v109, s0
	ds_store_b128 v66, v[68:71]
	ds_store_b128 v66, v[106:109] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v190, v67
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v66, v[68:71]
	ds_store_b128 v66, v[106:109] offset:16
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v107, v75, v121
.Ltmp303:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v65, v65, v72
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e64 s0, 0, v114
	v_add_lshl_u32 v66, s25, v116, 2
	ds_load_b32 v65, v65
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v72, 0
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v106, v74, v120 :: v_dual_add_f32 v109, v77, v123
.Ltmp305:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s0, vcc_lo
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v108, v76, v122 :: v_dual_add_f32 v123, v85, v119
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp307:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_mov_b32 v69, v72
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v120, v82, v124 :: v_dual_mov_b32 v71, v72
	v_dual_add_f32 v121, v83, v206 :: v_dual_add_f32 v122, v84, v132
	v_dual_add_f32 v100, v100, v202 :: v_dual_add_f32 v79, v79, v205
	v_mov_b32_e32 v70, v72
	v_mov_b32_e32 v68, v72
	v_mov_b32_e32 v67, v72
	v_mov_b32_e32 v77, v72
	v_mov_b32_e32 v76, v72
.Ltmp309:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v65, v66, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v65, v116, 2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[90:93]
	ds_store_b128 v72, v[102:105] offset:16
	ds_store_b128 v72, v[86:89] offset:32
	ds_store_b128 v72, v[98:101] offset:48
	ds_store_b128 v72, v[78:81] offset:64
	ds_store_b128 v72, v[110:113] offset:80
	ds_store_b128 v72, v[106:109] offset:96
	ds_store_b128 v72, v[120:123] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v65, v65
	s_and_b32 s17, s31, 0xffff
	s_mov_b32 s16, s30
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	s_ashr_i32 s13, s43, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s42
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v65, v66, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[90:93]
	ds_store_b128 v72, v[102:105] offset:16
	ds_store_b128 v72, v[86:89] offset:32
	ds_store_b128 v72, v[98:101] offset:48
	ds_store_b128 v72, v[78:81] offset:64
	ds_store_b128 v72, v[110:113] offset:80
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v65, v72
	v_mov_b32_e32 v80, v72
	v_mov_b32_e32 v79, v72
	v_mov_b32_e32 v78, v72
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v87, v72
	v_mov_b32_e32 v86, v72
	v_mov_b32_e32 v81, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
	ds_store_b128 v72, v[106:109] offset:96
	ds_store_b128 v72, v[120:123] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_55
; %bb.33:                               ; %.lr.ph81
	v_lshlrev_b32_e32 v66, 2, v162
	v_cmp_eq_u32_e32 vcc_lo, 0, v171
	v_and_b32_e32 v69, 52, v219
	v_mul_lo_u32 v65, s57, v162
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_add_i32 s0, s62, s62
	v_lshlrev_b32_e32 v67, 4, v162
	v_add3_u32 v191, s0, s62, v0
	v_lshl_or_b32 v69, v97, 5, v69
	v_mov_b32_e32 v97, 0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v66, 0, v66, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v192, s62, v191
	v_mov_b32_e32 v68, 0x7632
	v_and_or_b32 v70, v0, 2, v218
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[145:146], null, s56, v214, v[65:66]
	v_mad_u64_u32 v[146:147], null, s56, v212, v[65:66]
	v_mad_u64_u32 v[147:148], null, s56, v213, v[65:66]
	v_mad_u64_u32 v[148:149], null, s56, v208, v[65:66]
	v_mad_u64_u32 v[149:150], null, s56, v209, v[65:66]
	v_mad_u64_u32 v[150:151], null, s56, v210, v[65:66]
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v195, v66
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[151:152], null, s56, v211, v[65:66]
	v_dual_mov_b32 v66, 0x5410 :: v_dual_add_nc_u32 v193, s62, v192
	v_dual_cndmask_b32 v68, 0x3276, v68 :: v_dual_add_nc_u32 v201, 0, v67
	v_or3_b32 v197, v217, v135, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v66, 0x1054, v66, vcc_lo
	v_mov_b32_e32 v90, v97
	v_dual_mov_b32 v91, v97 :: v_dual_add_nc_u32 v194, s62, v193
	v_mov_b32_e32 v95, v97
	v_mad_u64_u32 v[152:153], null, s56, v117, v[65:66]
	v_lshl_or_b32 v65, v66, 8, v66
	v_lshl_or_b32 v66, v68, 8, v68
	v_or3_b32 v153, v70, v215, v69
	v_xor_b32_e32 v68, 0x90, v197
	v_xor_b32_e32 v69, 0x120, v197
	v_and_b32_e32 v65, 0x540054, v65
	v_and_b32_e32 v66, 0x760076, v66
	v_xor_b32_e32 v70, 0x1b0, v197
	v_xor_b32_e32 v71, 16, v153
	v_xor_b32_e32 v72, 32, v153
	v_lshl_or_b32 v65, v65, 4, v65
	v_lshl_or_b32 v66, v66, 4, v66
	v_xor_b32_e32 v73, 48, v153
	v_dual_mov_b32 v93, v97 :: v_dual_add_nc_u32 v196, s62, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v198, 0x5040504, v65
	v_dual_mov_b32 v94, v97 :: v_dual_lshlrev_b32 v65, 4, v0
	v_dual_mov_b32 v92, v97 :: v_dual_and_b32 v199, 0x7060706, v66
	v_dual_mov_b32 v85, v97 :: v_dual_add_nc_u32 v202, 0, v68
	v_dual_mov_b32 v83, v97 :: v_dual_add_nc_u32 v200, 0, v65
	v_dual_mov_b32 v96, v97 :: v_dual_add_nc_u32 v203, 0, v69
	v_dual_mov_b32 v87, v97 :: v_dual_add_nc_u32 v204, 0, v70
	v_dual_mov_b32 v82, v97 :: v_dual_add_nc_u32 v205, 0, v71
	v_add_nc_u32_e32 v206, 0, v72
	v_dual_mov_b32 v75, v97 :: v_dual_add_nc_u32 v208, 0, v73
	v_dual_mov_b32 v84, v97 :: v_dual_add_nc_u32 v209, 0, v125
	v_dual_mov_b32 v77, v97 :: v_dual_add_nc_u32 v210, 0, v126
	v_dual_mov_b32 v86, v97 :: v_dual_add_nc_u32 v211, 0, v127
	v_dual_mov_b32 v79, v97 :: v_dual_add_nc_u32 v212, 0, v128
	v_dual_mov_b32 v88, v97 :: v_dual_add_nc_u32 v213, 0, v129
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v214, 0, v130
	v_dual_mov_b32 v74, v97 :: v_dual_add_nc_u32 v215, 0, v131
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, v97
	v_mov_b32_e32 v78, v97
	v_mov_b32_e32 v80, v97
	v_mov_b32_e32 v66, v97
	v_mov_b32_e32 v67, v97
	v_mov_b32_e32 v68, v97
	v_mov_b32_e32 v69, v97
	v_mov_b32_e32 v70, v97
	v_mov_b32_e32 v71, v97
	v_mov_b32_e32 v72, v97
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s52, s13, 3
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s0, s56, s61
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s53, s33, s13
	s_and_b32 s41, s41, 0xffff
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s54, s33, s52
	s_add_i32 s55, s26, s0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s56, 0x76543210
	s_branch .LBB0_35
.LBB0_34:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_waitcnt vmcnt(0)
	v_and_b16 v101.h, 0xff, v101.h
	v_and_b16 v101.l, 0xff, v101.l
	v_and_b16 v98.l, 0xff, v98.l
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v101.h
	v_cmp_ne_u16_e64 s18, 0, v101.l
	v_cmp_ne_u16_e64 s19, 0, v98.l
	v_and_b16 v98.l, 0xff, v99.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s21, s81, vcc_lo
	s_and_b32 s18, s80, s18
	v_cndmask_b32_e64 v101, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s20, 0, v98.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v98.l, v101.l
	v_cndmask_b32_e64 v101, 0, 1, s18
	s_and_b32 s18, s79, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v98.l, 8, v98.l
	v_or_b16 v98.l, v101.l, v98.l
	v_cndmask_b32_e64 v101, 0, 1, s18
	s_and_b32 s18, s78, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v102, 0, 1, s18
	v_lshlrev_b16 v99.h, 8, v101.l
	v_add_nc_u32_e32 v101, 0, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v99.h, v102.l, v99.h
	ds_store_b16 v101, v98
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_and_b16 v98.l, 0xff, v99.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v98.l
	v_and_b16 v98.l, 0xff, v98.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s18, 0, v98.l
	v_and_b16 v98.l, 0xff, v100.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s18, s50, s18
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s19, 0, v98.l
	v_and_b16 v98.l, 0xff, v100.l
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_mov_b32 s50, s46
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s19, s77, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s20, 0, v98.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v98, 0, 1, s19
	s_and_b32 s19, s76, vcc_lo
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_and_b32 s19, s51, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v98.l, 8, v98.l
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_mov_b32 s51, s47
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v99.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v98.l, v99.l, v98.l
	v_mov_b16_e32 v99.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s18
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s18, s63, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s18, s52
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v98.h, 8, v99.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v99.l, v100.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s20, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s19, s18, s54
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s20
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s19, s19, s62
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v98.h, v99.l, v98.h
	ds_store_b16_d16_hi v202, v99
	ds_store_b16 v203, v98
	ds_store_b16_d16_hi v204, v98
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v98, s19, v0
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v100, s19, v192
	v_add_nc_u32_e32 v101, s19, v193
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v99, 0x80000000, v98, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v98, s62, v98
	v_add_nc_u32_e32 v102, s19, v194
	v_add_nc_u32_e32 v103, s19, v196
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v104, s62, v98
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	s_clause 0x6
	buffer_load_u8 v99, v99, s[44:47], 0 offen
	buffer_load_u8 v100, v100, s[44:47], 0 offen
	buffer_load_u8 v101, v101, s[44:47], 0 offen
	buffer_load_u8 v102, v102, s[44:47], 0 offen
	buffer_load_u8 v103, v103, s[44:47], 0 offen
	buffer_load_u8 v217, v98, s[44:47], 0 offen
	buffer_load_u8 v104, v104, s[44:47], 0 offen
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(6)
	v_and_b16 v98.l, v99.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v218, 15, v99
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v227, 15, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s18, 7, v98.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v98, s19, v191
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v219, -16, v218
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v218, v218, v219, s18
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s18, s63, 4
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s63, s63, 16
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s18, s18, s53
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v219, v98, s[44:47], 0 offen
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v98.h, 0
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s18, s18, s62
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v218, v218
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v220, 15, v219
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v98.l, v219.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v219.l, 4, v219.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v219.h, v98.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v221, -16, v220
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v100.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 360 32 is_stmt 0              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v219, 0, v219, s16
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v220, v220, v221 :: v_dual_and_b32 v221, 15, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v101.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v100.l, 4, v100.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v100.h, v98.h
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v222, -16, v221
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v220, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v100, 0, v100, s1
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_dual_cndmask_b32 v221, v221, v222 :: v_dual_and_b32 v222, 15, v101
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v102.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v101.l, 4, v101.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v101.h, v98.h
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v223, -16, v222
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v221, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v101, 0, v101, s12
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_dual_cndmask_b32 v222, v222, v223 :: v_dual_and_b32 v223, 15, v102
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v103.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v102.l, 4, v102.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v102.h, v98.h
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v224, -16, v223
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v222, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v102, 0, v102, s14
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_dual_cndmask_b32 v223, v223, v224 :: v_dual_and_b32 v224, 15, v103
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v98.l, v217.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v103.l, 4, v103.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v103.h, v98.h
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v225, -16, v224
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v103, 0, v103, s15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v224, v224, v225, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v225, 15, v217
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v98.l, 4, v99.l
	v_lshrrev_b16 v217.l, 4, v217.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v217.h, v98.h
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v226, -16, v225
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v224, v224
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v99, 0, v98, s13
	.loc	1 360 76 is_stmt 0              ; attention_backward.py:360:76
	v_and_b16 v98.l, v104.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v225, v225, v226, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v226, -16, v99
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v225, v225
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v99, v99, v226, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v226, -16, v219
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v219, v219, v226, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v226, -16, v100
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v219, v219
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v100, v100, v226, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v226, -16, v101
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v101, v101, v226, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v226, -16, v102
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v102, v102, v226, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v226, -16, v103
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v103, v103, v226, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v226.l, 4, v104.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v104, -16, v227
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v98.l
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_mov_b16_e64 v226.h, v98.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v98, v227, v104, vcc_lo
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v104, 0, v217, s17
	v_cndmask_b32_e64 v226, 0, v226, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v217, -16, v104
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v104
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v104, v104, v217, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_add_lshl_u32 v217, s18, v0, 1
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v227, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v228, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s74
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v227, v227, s[48:51], 0 offen
	v_cndmask_b32_e32 v229, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v230, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s0
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v229, v229, s[48:51], 0 offen
	buffer_load_u16 v230, v230, s[48:51], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v227, 16, v227
	v_cndmask_b32_e32 v231, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v232, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s73
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v218, v218, v227 :: v_dual_cndmask_b32 v227, 0x80000000, v217
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s72
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x2
	buffer_load_u16 v231, v231, s[48:51], 0 offen
	buffer_load_u16 v232, v232, s[48:51], 0 offen
	buffer_load_u16 v227, v227, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v227, 16, v227
	buffer_load_u16 v228, v228, s[48:51], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v220, v220, v227 :: v_dual_cndmask_b32 v227, 0x80000000, v217
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v233, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v220, v220
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v234, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s12
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v235, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v236, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s71
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v236, v236, s[48:51], 0 offen
	buffer_load_u16 v227, v227, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v227, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v221, v221, v227
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v227, 0x80000000, v217, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s70
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v221, v221
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v227, v227, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v227, 16, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v222, v222, v227 :: v_dual_cndmask_b32 v227, 0x80000000, v217
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v233, v233, s[48:51], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s69
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v222, v222
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v227, v227, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v227, 16, v227
	buffer_load_u16 v234, v234, s[48:51], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v223, v223, v227
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v227, 0x80000000, v217, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v223, v223
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v227, v227, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v227, 16, v227
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v224, v224, v227
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v227, -16, v226
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v235, v235, s[48:51], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v224, v224
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v226, v226, v227, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s68
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s63, s64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v217, 0x80000000, v217, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v226, v226
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	buffer_load_u16 v217, v217, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v217, 16, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v217, v225, v217
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v232
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v217, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v99, v99, v225
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v230
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v219, v219, v225
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v236
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v219, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v100, v100, v225 :: v_dual_lshlrev_b32 v225, 16, v235
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v101, v101, v225
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v234
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v102, v102, v225
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v233
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v103, v103, v225
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s20, v102, v102
	v_cmp_o_f32_e64 s21, v103, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v104, v104, v225
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v229
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v98, v98, v225
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v225, v218, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v98, v98
	v_add3_u32 v218, v218, v225, 0x7fff
	v_bfe_u32 v225, v220, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v220, v220, v225, 0x7fff
	v_bfe_u32 v225, v221, 16, 1
	v_add3_u32 v221, v221, v225, 0x7fff
	v_bfe_u32 v225, v222, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v222, v222, v225, 0x7fff
	v_bfe_u32 v225, v223, 16, 1
	v_add3_u32 v223, v223, v225, 0x7fff
	v_bfe_u32 v225, v224, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v224, v224, v225, 0x7fff
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v225, 16, v231
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s22, v104, v104
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v225, v226, v225
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v226, v217, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v217, v217, v226, 0x7fff
	v_bfe_u32 v226, v99, 16, 1
	v_add3_u32 v99, v99, v226, 0x7fff
	v_bfe_u32 v226, v219, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v219, v219, v226, 0x7fff
	v_bfe_u32 v226, v100, 16, 1
	v_add3_u32 v100, v100, v226, 0x7fff
	v_bfe_u32 v226, v101, 16, 1
	v_cndmask_b16 v100.l, 0x7fff, v224.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v101, v101, v226, 0x7fff
	v_bfe_u32 v226, v102, 16, 1
	v_add3_u32 v102, v102, v226, 0x7fff
	v_bfe_u32 v226, v103, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v103, v103, v226, 0x7fff
	v_bfe_u32 v226, v104, 16, 1
	v_add3_u32 v104, v104, v226, 0x7fff
	v_bfe_u32 v226, v98, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v226, v98, v226, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v218.h, vcc_lo
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_add_nc_u32_e32 v218, 0, v153
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v221.h, s1
	.loc	1 340 21                        ; attention_backward.py:340:21
	ds_load_u8_d16 v232, v218
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v232, v218 offset:64
	ds_load_u8_d16 v233, v205
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v233, v205 offset:64
	ds_load_u8_d16 v234, v206
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v234, v206 offset:64
	ds_load_u8_d16 v235, v208
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v235, v208 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v154, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s16
	v_bfe_u32 v99, v225, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v154, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s18
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	v_cndmask_b16 v100.h, 0x7fff, v102.h, s20
	v_add3_u32 v99, v225, v99, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v222.h, s12
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v156, v99 offset:1024
	ds_store_b16_d16_hi v155, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v223.h, s13
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v155, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v217.h, s15
	v_cndmask_b16 v99.l, 0x7fff, v226.h, s23
	v_cndmask_b16 v99.h, 0x7fff, v99.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v158, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v220.h, s0
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v156, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v104.h, s22
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v160, v100 offset:1024
	ds_store_b16 v158, v99
	ds_store_b16_d16_hi v159, v100 offset:1024
	v_mov_b32_e32 v104, v97
	ds_store_b16_d16_hi v160, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.h, 0x7fff, v101.h, s19
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v157, v98
	ds_store_b16_d16_hi v157, v98 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v98.l, 0x7fff, v219.h, s17
	v_cndmask_b16 v98.h, 0x7fff, v103.h, s21
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v161, v98
	ds_store_b16_d16_hi v161, v98 offset:1024
	ds_store_b16_d16_hi v159, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[216:219], v216
	ds_load_b128 v[220:223], v209
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_mov_b32_e32 v231, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v227, v100 :: v_dual_mov_b32 v228, v101
	v_dual_mov_b32 v229, v102 :: v_dual_mov_b32 v230, v103
	v_dual_mov_b32 v226, v99 :: v_dual_mov_b32 v225, v98
	v_mov_b32_e32 v224, v97
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v98, s67, v137, -v190
	v_fma_f32 v99, s67, v138, -v190
	v_fma_f32 v100, s67, v139, -v190
	v_fma_f32 v101, s67, v140, -v190
	v_fma_f32 v102, s67, v141, -v190
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[216:223], v[33:40], v[224:231]
	ds_load_b128 v[216:219], v210
	ds_load_b128 v[220:223], v211
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v99, v99
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v103, s67, v142, -v190
	v_fma_f32 v104, s67, v143, -v190
	v_fma_f32 v143, s67, v144, -v190
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[216:223], v[41:48], v[224:231]
	ds_load_b128 v[216:219], v212
	ds_load_b128 v[220:223], v213
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[216:223], v[49:56], v[224:231]
	ds_load_b128 v[216:219], v214
	ds_load_b128 v[220:223], v215
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[216:223], v[57:64], v[224:231]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v217, v98
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v232.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v137, v224, v195
	v_sub_f32_e32 v138, v225, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v139, v226, v195
	v_sub_f32_e32 v140, v227, v195
	v_sub_f32_e32 v216, v231, v195
	v_sub_f32_e32 v142, v229, v195
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v98, 0, v217 :: v_dual_sub_f32 v141, v228, v195
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v144, v230, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v137, v98, v137
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v233.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v98, 0, v99 :: v_dual_mul_f32 v99, s65, v137
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v98, v98, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v137, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v98, s65, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v99, v99, v137, 0x7fff
	v_bfe_u32 v137, v98, 16, 1
	v_cmp_o_f32_e64 s0, v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v98, v98, v137, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v99.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s0
	v_permlanex16_b32 v99, v98, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_perm_b32 v137, v99, v98, v198
	v_perm_b32 v138, v99, v98, v199
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v99, v100
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v234.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v101
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v98, 0, v99, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v98, v139
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v235.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s65, v99
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v98, 0, v100, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v100, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v98, v98, v140
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v99, v99, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v98, s65, v98
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v100, v98, 16, 1
	v_cmp_o_f32_e64 s0, v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v98, v98, v100, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v99.h, vcc_lo
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v103
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v99, v98, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v99, v98, v198
	v_perm_b32 v140, v99, v98, v199
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v99, v102
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v232.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v98, 0, v99, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v98, v141
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v233.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s65, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v98, 0, v100, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v100, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v98, v98, v142
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v99, v99, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v98, s65, v98
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v100, v98, 16, 1
	v_cmp_o_f32_e64 s0, v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v98, v98, v100, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v99.h, vcc_lo
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v143
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v99, v98, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v141, v99, v98, v198
	v_perm_b32 v142, v99, v98, v199
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v99, v104
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v234.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v98, 0, v99, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v98, v144
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v98.l, 1, v235.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v99, s65, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v98, 0, v100, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v100, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v98, v98, v216
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v100, v99, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v98, s65, v98
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v99, v98, 16, 1
	v_cmp_o_f32_e64 s0, v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v99, v98, v99, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v100.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v99.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v99, v98, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v99, v98, v198
	v_perm_b32 v144, v99, v98, v199
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[137:144], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[137:144], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[137:144], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[137:144], v[65:72]
	s_cbranch_scc0 .LBB0_55
.LBB0_35:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s0, s63, 1
	s_or_b32 s1, s63, 2
	s_or_b32 s12, s63, 3
	s_or_b32 s14, s63, 4
	s_or_b32 s15, s63, 5
	s_or_b32 s16, s63, 6
	s_or_b32 s18, s63, 7
	s_or_b32 s19, s63, 8
	s_or_b32 s20, s63, 9
	s_or_b32 s21, s63, 10
	s_or_b32 s22, s63, 11
	s_or_b32 s23, s63, 12
	s_or_b32 s24, s63, 13
	s_or_b32 s25, s63, 14
	s_or_b32 s26, s63, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s63, s39
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v216, 0, v163
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s0, s39
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s1, s39
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s12, s39
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s14, s39
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s15, s39
	s_cselect_b32 s0, -1, 0
	s_cmp_lt_i32 s16, s39
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s18, s39
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s19, s39
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s20, s39
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s21, s39
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s22, s39
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s23, s39
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s24, s39
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s25, s39
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s26, s39
	s_cselect_b32 s15, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s18, s63, s66
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s75
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[98:99], null, s18, s58, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v99, s58, v98
	v_add_nc_u32_e32 v100, s58, v99
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v99, 1, v99
	v_lshlrev_b32_e32 v98, 1, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v101, s58, v100
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v102, s58, v101
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v105, 0x80000000, v99, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v101, 1, v101
	v_lshlrev_b32_e32 v100, 1, v100
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v103, s58, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v104, s58, v103
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v99, s58, v104
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v103, 1, v103
	v_lshlrev_b32_e32 v102, 1, v102
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v106, s58, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s0
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v107, s58, v106
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s73
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v99, 1, v99
	v_lshlrev_b32_e32 v104, 1, v104
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s58, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s58, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s16
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
	v_add_nc_u32_e32 v105, s58, v110
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v109, 1, v110
	v_lshlrev_b32_e32 v98, 1, v107
	v_lshlrev_b32_e32 v107, 1, v108
	v_lshlrev_b32_e32 v106, 1, v106
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s72
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v108, s58, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v106, 0x80000000, v106 :: v_dual_lshlrev_b32 v105, 1, v105
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v110, s58, v108
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v111, v110, s58, 1
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_lshlrev_b32 v108, 1, v108
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_lshlrev_b32 v110, 1, v110
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s69
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x7
	buffer_load_u16 v143, v98, s[40:43], 0 offen
	buffer_load_u16 v144, v109, s[40:43], 0 offen
	buffer_load_u16 v217, v108, s[40:43], 0 offen
	buffer_load_u16 v218, v111, s[40:43], 0 offen
	buffer_load_u16 v137, v106, s[40:43], 0 offen
	buffer_load_u16 v138, v107, s[40:43], 0 offen
	buffer_load_u16 v139, v105, s[40:43], 0 offen
	buffer_load_u16 v140, v110, s[40:43], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v98, v97
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v164
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v99.h, v141.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v100.h, v142.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v101.h, v103.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v102.h, v104.l
	ds_store_b128 v200, v[99:102]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v201
	ds_load_b128 v[121:124], v201 offset:256
	ds_load_b128 v[113:116], v201 offset:512
	ds_load_b128 v[105:108], v201 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v137.h, v143.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v138.h, v144.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v139.h, v217.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v140.h, v218.l
	ds_store_b128 v200, v[137:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v201
	ds_load_b128 v[125:128], v201 offset:256
	ds_load_b128 v[117:120], v201 offset:512
	ds_load_b128 v[109:112], v201 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v154, v99
	ds_store_b16 v154, v137 offset:1024
	ds_store_b16 v155, v141
	ds_store_b16 v155, v143 offset:1024
	ds_store_b16 v156, v100
	ds_store_b16 v156, v138 offset:1024
	ds_store_b16 v157, v142
	ds_store_b16 v157, v144 offset:1024
	ds_store_b16 v158, v101
	ds_store_b16 v158, v139 offset:1024
	ds_store_b16 v159, v103
	ds_store_b16 v159, v217 offset:1024
	ds_store_b16 v160, v102
	ds_store_b16 v160, v140 offset:1024
	ds_store_b16 v161, v104
	ds_store_b16 v161, v218 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[217:220], v216
	ds_load_b128 v[221:224], v209
	ds_load_b128 v[225:228], v210
	ds_load_b128 v[229:232], v211
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[233:236], v212
	ds_load_b128 v[237:240], v213
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v104 :: v_dual_mov_b32 v141, v101
	v_dual_mov_b32 v142, v102 :: v_dual_mov_b32 v143, v103
	v_dual_mov_b32 v140, v100 :: v_dual_mov_b32 v139, v99
	v_dual_mov_b32 v138, v98 :: v_dual_mov_b32 v137, v97
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[241:244], v214
	ds_load_b128 v[245:248], v215
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v98, s63, v162
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[217:224], v[1:8], v[137:144]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s18, s39, v98
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[225:232], v[9:16], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s80, s4, s18
	s_and_b32 s78, s5, s18
	s_and_b32 s76, s6, s18
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[233:240], v[17:24], v[137:144]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s50, s7, s18
	s_and_b32 s81, s8, s18
	s_and_b32 s79, s9, s18
	s_and_b32 s77, s10, s18
	s_and_b32 s51, s11, s18
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[241:248], v[25:32], v[137:144]
	s_cbranch_vccnz .LBB0_37
; %bb.36:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v98, v165
	v_cmp_le_i32_e64 s18, v98, v166
	v_cmp_le_i32_e64 s19, v98, v167
	v_cmp_le_i32_e64 s20, v98, v168
	v_cmp_le_i32_e64 s21, v98, v169
	v_cmp_le_i32_e64 s22, v98, v170
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s25, vcc_lo, s80
	s_and_b32 s18, s18, s78
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s23, v98, v172
	v_cmp_le_i32_e64 s24, v98, v173
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s19, s19, s76
	s_and_b32 s20, s20, s50
	s_and_not1_b32 s26, s80, exec_lo
	s_and_b32 s25, s25, exec_lo
	s_and_not1_b32 s27, s78, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s21, s21, s81
	s_and_b32 s22, s22, s79
	s_or_b32 s80, s26, s25
	s_or_b32 s78, s27, s18
	s_and_not1_b32 s18, s76, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s25, s50, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_b32 s23, s23, s77
	s_and_b32 s24, s24, s51
	s_or_b32 s76, s18, s19
	s_or_b32 s50, s25, s20
	s_and_not1_b32 s18, s81, exec_lo
	s_and_b32 s19, s21, exec_lo
	s_and_not1_b32 s20, s79, exec_lo
	s_and_b32 s21, s22, exec_lo
	s_or_b32 s81, s18, s19
	s_or_b32 s79, s20, s21
	s_and_not1_b32 s18, s77, exec_lo
	s_and_b32 s19, s23, exec_lo
	s_and_not1_b32 s20, s51, exec_lo
	s_and_b32 s21, s24, exec_lo
	s_or_b32 s77, s18, s19
	s_or_b32 s51, s20, s21
.LBB0_37:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s59
	s_cbranch_vccnz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v98, v174
	v_cmp_ge_i32_e64 s18, v98, v175
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s25, v98, v182
	v_cmp_le_i32_e64 s26, v98, v183
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s19, v98, v176
	v_cmp_ge_i32_e64 s20, v98, v177
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v98, v184
	v_cmp_le_i32_e64 s28, v98, v185
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s21, v98, v178
	v_cmp_ge_i32_e64 s22, v98, v179
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s29, v98, v186
	v_cmp_le_i32_e64 s30, v98, v187
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s25, vcc_lo, s25
	s_and_b32 s18, s18, s26
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s23, v98, v180
	v_cmp_ge_i32_e64 s24, v98, v181
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s31, v98, v188
	v_cmp_le_i32_e64 s33, v98, v189
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s25, s25, s80
	s_and_b32 s18, s18, s78
	s_and_b32 s19, s19, s27
	s_and_b32 s20, s20, s28
	s_and_b32 s19, s19, s76
	s_and_b32 s20, s20, s50
	s_and_b32 s21, s21, s29
	s_and_b32 s22, s22, s30
	s_and_not1_b32 s26, s80, exec_lo
	s_and_b32 s25, s25, exec_lo
	s_and_not1_b32 s27, s78, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s21, s21, s81
	s_and_b32 s22, s22, s79
	s_and_b32 s23, s23, s31
	s_and_b32 s24, s24, s33
	s_or_b32 s80, s26, s25
	s_or_b32 s78, s27, s18
	s_and_not1_b32 s18, s76, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s25, s50, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_b32 s23, s23, s77
	s_and_b32 s24, s24, s51
	s_or_b32 s76, s18, s19
	s_or_b32 s50, s25, s20
	s_and_not1_b32 s18, s81, exec_lo
	s_and_b32 s19, s21, exec_lo
	s_and_not1_b32 s20, s79, exec_lo
	s_and_b32 s21, s22, exec_lo
	s_or_b32 s81, s18, s19
	s_or_b32 s79, s20, s21
	s_and_not1_b32 s18, s77, exec_lo
	s_and_b32 s19, s23, exec_lo
	s_and_not1_b32 s20, s51, exec_lo
	s_and_b32 s21, s24, exec_lo
	s_or_b32 s77, s18, s19
	s_or_b32 s51, s20, s21
.LBB0_39:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v98.l, 0
	.loc	1 333 21 is_stmt 1              ; attention_backward.py:333:21
	s_mul_i32 s18, s63, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s18, s55, s18
	v_mov_b16_e32 v101.l, v98.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s80
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v99, s18, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, vcc_lo, s34, v99
	v_add_co_ci_u32_e64 v100, null, s35, v100, vcc_lo
	global_load_d16_u8 v101, v[99:100], off
.LBB0_41:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s78
	s_cbranch_execz .LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v98, s18, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v99, 31, v98
	v_add_co_u32 v98, vcc_lo, s34, v98
	v_add_co_ci_u32_e64 v99, null, s35, v99, vcc_lo
	global_load_d16_u8 v98, v[98:99], off
.LBB0_43:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v98.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.l, v98.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s76
	s_cbranch_execz .LBB0_45
; %bb.44:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v99, s18, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, vcc_lo, s34, v99
	v_add_co_ci_u32_e64 v100, null, s35, v100, vcc_lo
	global_load_d16_u8 v99, v[99:100], off
.LBB0_45:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s50
	s_cbranch_execz .LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v100, s18, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v103, 31, v100
	v_add_co_u32 v102, vcc_lo, s34, v100
	v_add_co_ci_u32_e64 v103, null, s35, v103, vcc_lo
	global_load_d16_hi_u8 v98, v[102:103], off
.LBB0_47:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v101.h, v99.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s81
	s_cbranch_execz .LBB0_49
; %bb.48:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v100, s18, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v103, 31, v100
	v_add_co_u32 v102, vcc_lo, s34, v100
	v_add_co_ci_u32_e64 v103, null, s35, v103, vcc_lo
	global_load_d16_hi_u8 v101, v[102:103], off
.LBB0_49:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s79
	s_cbranch_execz .LBB0_51
; %bb.50:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v100, s18, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v103, 31, v100
	v_add_co_u32 v102, vcc_lo, s34, v100
	v_add_co_ci_u32_e64 v103, null, s35, v103, vcc_lo
	global_load_d16_hi_u8 v99, v[102:103], off
.LBB0_51:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	v_mov_b16_e32 v100.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v100.h, v100.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s77
	s_cbranch_execz .LBB0_53
; %bb.52:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v102, s18, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v103, 31, v102
	v_add_co_u32 v102, vcc_lo, s34, v102
	v_add_co_ci_u32_e64 v103, null, s35, v103, vcc_lo
	global_load_d16_hi_u8 v100, v[102:103], off
.LBB0_53:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s19, s51
	s_cbranch_execz .LBB0_34
; %bb.54:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v102, s18, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v103, 31, v102
	v_add_co_u32 v102, vcc_lo, s34, v102
	v_add_co_ci_u32_e64 v103, null, s35, v103, vcc_lo
	global_load_d16_u8 v100, v[102:103], off
	s_branch .LBB0_34
.LBB0_55:                               ; %._crit_edge82
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_or_b32_e32 v0, v207, v162
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshrrev_b32_e32 v1, 4, v171
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s61, v0
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
	v_mul_lo_u32 v0, s58, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s0, s58, v3
	v_cmp_gt_i32_e64 s1, s58, v4
	v_cmp_gt_i32_e64 s2, s58, v5
	v_cmp_gt_i32_e64 s3, s58, v6
	v_cmp_gt_i32_e64 s4, s58, v7
	v_cmp_gt_i32_e64 s5, s58, v8
	v_cmp_gt_i32_e64 s6, s58, v2
	v_cmp_gt_i32_e64 s7, s58, v9
	v_cmp_gt_i32_e64 s8, s58, v10
	v_cmp_gt_i32_e64 s9, s58, v11
	v_cmp_gt_i32_e64 s10, s58, v12
	v_cmp_gt_i32_e64 s11, s58, v13
	v_cmp_gt_i32_e64 s12, s58, v14
	v_cmp_gt_i32_e64 s13, s58, v15
	v_cmp_gt_i32_e64 s14, s58, v16
	v_cmp_gt_i32_e64 s15, s58, v17
	v_cmp_gt_i32_e64 s16, s58, v18
	v_cmp_gt_i32_e64 s17, s58, v19
	v_cmp_gt_i32_e64 s18, s58, v20
	v_cmp_gt_i32_e64 s19, s58, v21
	v_cmp_gt_i32_e64 s20, s58, v22
	v_cmp_gt_i32_e64 s21, s58, v23
	v_cmp_gt_i32_e64 s22, s58, v24
	v_cmp_gt_i32_e64 s23, s58, v25
	v_cmp_gt_i32_e64 s24, s58, v26
	v_cmp_gt_i32_e64 s25, s58, v27
	v_cmp_gt_i32_e64 s26, s58, v28
	v_cmp_gt_i32_e64 s27, s58, v29
	v_cmp_gt_i32_e64 s28, s58, v30
	v_cmp_gt_i32_e64 s29, s58, v31
	v_cmp_gt_i32_e64 s30, s58, v32
	v_cmp_gt_i32_e64 s31, s58, v1
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
	v_add_lshl_u32 v32, v32, s60, 2
	v_add_lshl_u32 v31, v31, s60, 2
	v_add_lshl_u32 v3, v29, s60, 2
	v_add_lshl_u32 v0, v0, s60, 2
	v_add_lshl_u32 v28, v28, s60, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s30
	v_cndmask_b32_e64 v31, 0x80000000, v31, s29
	v_cndmask_b32_e64 v3, 0x80000000, v3, s27
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v1, v1, s60, 2
	v_add_lshl_u32 v27, v27, s60, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s26
	v_add_lshl_u32 v24, v24, s60, 2
	v_add_lshl_u32 v23, v23, s60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	v_cndmask_b32_e64 v27, 0x80000000, v27, s25
	v_add_lshl_u32 v20, v20, s60, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s22
	v_cndmask_b32_e64 v23, 0x80000000, v23, s21
	buffer_store_b32 v89, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v30, s60, 2
	s_clause 0x1
	buffer_store_b32 v90, v32, s[36:39], 0 offen
	buffer_store_b32 v91, v31, s[36:39], 0 offen
	v_add_lshl_u32 v19, v19, s60, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s18
	v_add_lshl_u32 v16, v16, s60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	s_clause 0x1
	buffer_store_b32 v92, v1, s[36:39], 0 offen
	buffer_store_b32 v93, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v26, s60, 2
	v_add_lshl_u32 v3, v25, s60, 2
	s_clause 0x1
	buffer_store_b32 v94, v28, s[36:39], 0 offen
	buffer_store_b32 v95, v27, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	v_add_lshl_u32 v15, v15, s60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s23
	s_clause 0x1
	buffer_store_b32 v96, v1, s[36:39], 0 offen
	buffer_store_b32 v81, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v22, s60, 2
	v_add_lshl_u32 v3, v21, s60, 2
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
	v_add_lshl_u32 v1, v18, s60, 2
	v_add_lshl_u32 v3, v17, s60, 2
	s_clause 0x1
	buffer_store_b32 v86, v20, s[36:39], 0 offen
	buffer_store_b32 v87, v19, s[36:39], 0 offen
	v_add_lshl_u32 v12, v12, s60, 2
	v_add_lshl_u32 v11, v11, s60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	s_clause 0x1
	buffer_store_b32 v88, v1, s[36:39], 0 offen
	buffer_store_b32 v73, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v14, s60, 2
	v_add_lshl_u32 v3, v13, s60, 2
	s_clause 0x1
	buffer_store_b32 v74, v16, s[36:39], 0 offen
	buffer_store_b32 v75, v15, s[36:39], 0 offen
	v_add_lshl_u32 v2, v2, s60, 2
	v_add_lshl_u32 v8, v8, s60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b32 v76, v1, s[36:39], 0 offen
	buffer_store_b32 v77, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v10, s60, 2
	v_add_lshl_u32 v3, v9, s60, 2
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
	v_add_lshl_u32 v1, v7, s60, 2
	s_clause 0x1
	buffer_store_b32 v66, v2, s[36:39], 0 offen
	buffer_store_b32 v67, v8, s[36:39], 0 offen
	v_add_lshl_u32 v2, v6, s60, 2
	v_add_lshl_u32 v3, v5, s60, 2
	v_add_lshl_u32 v4, v4, s60, 2
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
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp310:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 90
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 90
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23684
; TotalNumSgprs: 92
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 92
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
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
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
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
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     92
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
