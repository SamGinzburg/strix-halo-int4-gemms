	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[12:15], s[0:1], 0x94
	s_load_b128 s[24:27], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x74
	s_load_b32 s55, s[0:1], 0x7c
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v162, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v80, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v36, 0x120, v80
	v_xor_b32_e32 v38, 0x240, v80
	v_add_nc_u32_e32 v154, 0, v80
	v_xor_b32_e32 v37, 0x1b0, v80
	v_xor_b32_e32 v39, 0x2d0, v80
	v_xor_b32_e32 v41, 0x3f0, v80
	v_xor_b32_e32 v40, 0x360, v80
	v_add_nc_u32_e32 v156, 0, v36
	v_add_nc_u32_e32 v158, 0, v38
	v_add_nc_u32_e32 v157, 0, v37
	v_add_nc_u32_e32 v159, 0, v39
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	v_add_nc_u32_e32 v161, 0, v41
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s20, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s24
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s54, s2, 5
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
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s25
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s18, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s9, s24, s25
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s18, s24
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s9, s9, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s19, s3, s5
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
	s_abs_i32 s21, s19
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s9
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s54, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s23, s2, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s54, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s22, s23
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s54, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s22
	s_sub_i32 s34, 0, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s54, 4
	s_or_b32 s8, s54, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s10, s54, 6
	s_or_b32 s2, s54, 7
	s_or_b32 s9, s54, 8
	s_or_b32 s17, s54, 9
	s_or_b32 s24, s54, 10
	s_or_b32 s28, s54, 11
	s_or_b32 s11, s54, 12
	s_or_b32 s29, s54, 13
	s_or_b32 s30, s54, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s16, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s31, s54, 15
	s_or_b32 s35, s54, 16
	s_or_b32 s37, s54, 17
	s_or_b32 s39, s54, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s41, s54, 19
	s_or_b32 s42, s54, 20
	s_or_b32 s44, s54, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s16, s16
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s46, s54, 22
	s_or_b32 s48, s54, 23
	s_or_b32 s53, s54, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s34, s34, s16
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s66, s54, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s34, s16, s34
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s67, s54, 26
	s_or_b32 s68, s54, 27
	s_or_b32 s69, s54, 28
	s_or_b32 s70, s54, 29
	s_or_b32 s71, s54, 30
	s_or_b32 s72, s54, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s16, s16, s34
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s54, s26
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s4, s26
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s5, s26
	s_load_b64 s[4:5], s[0:1], 0x0
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s6, s26
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s7, s26
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s8, s26
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s10, s26
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s2, s26
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s9, s26
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s17, s26
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s24, s26
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s28, s26
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s11, s26
	s_load_b128 s[8:11], s[0:1], 0x38
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s29, s26
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s30, s26
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s31, s26
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s31, s3, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s35, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s55, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s37, s26
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s39, s26
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s41, s26
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s44, s26
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s46, s26
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s48, s26
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s53, s26
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s66, s26
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s67, s26
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s68, s26
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s69, s26
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s70, s26
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s71, s26
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s72, s26
	s_cselect_b32 s17, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s31, s31, s54
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s65, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s53, s31, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_lshl_b32 s42, s33, 5
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s53, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 17                        ; attention_backward.py:160:17
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
	v_add_nc_u32_e32 v1, s42, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v9, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s63, s2
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
	s_and_b32 vcc_lo, s62, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v12, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s33, v6
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s33, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
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
	s_and_b32 vcc_lo, s49, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v10, s33, v8
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v1 :: v_dual_lshlrev_b32 v20, 1, v10
	v_lshlrev_b32_e32 v1, 1, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v18, s33, v10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v19, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
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
	v_add_nc_u32_e32 v19, s33, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s33, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v28, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s33, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s33, v16
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v20
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v23, 0x80000000, v19 :: v_dual_lshlrev_b32 v16, 1, v16
	v_lshlrev_b32_e32 v19, 1, v20
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v20, s33, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s38, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v24, s33, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v25, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 1, v22
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v27, s33, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v29, s33, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v31, 0x80000000, v20 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s33, v27
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v27, 1, v27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v32, 0x80000000, v20 :: v_dual_lshlrev_b32 v33, 1, v29
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s35, s2
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
	s_and_b32 vcc_lo, s28, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v27, 1, v22
	v_add_lshl_u32 v35, v22, s33, 1
	s_clause 0x1
	buffer_load_u16 v24, v31, s[4:7], 0 offen
	buffer_load_u16 v22, v32, s[4:7], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v33, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x1
	buffer_load_u16 v30, v25, s[4:7], 0 offen
	buffer_load_u16 v25, v31, s[4:7], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v34, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v33, 0x80000000, v35, vcc_lo
	s_clause 0x4
	buffer_load_u16 v31, v27, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v32, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v32, v33, s[4:7], 0 offen
	v_xor_b32_e32 v35, 0x90, v80
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	s_and_b32 s4, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v155, 0, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(25)
	v_mad_u64_u32 v[33:34], null, s31, s55, v[0:1]
	v_add_nc_u32_e32 v35, s55, v33
	v_lshl_add_u32 v36, s55, 4, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v37, s55, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 1, v35
	v_lshlrev_b32_e32 v34, 1, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 2, v33
	v_lshlrev_b32_e32 v35, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s55, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_add_nc_u32 v160, 0, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s55, v36
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v67, 0x80000000, v35 :: v_dual_lshlrev_b32 v40, 1, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_lshlrev_b32 v36, 2, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s55, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v69, 0x80000000, v35 :: v_dual_lshlrev_b32 v44, 1, v38
	v_lshlrev_b32_e32 v35, 2, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v68, 0x80000000, v36, s4
	v_lshlrev_b32_e32 v36, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s55, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s55, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s63, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v71, 0x80000000, v35, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v47, 0x80000000, v44, s4
	v_dual_cndmask_b32 v49, 0x80000000, v43 :: v_dual_lshlrev_b32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v70, 0x80000000, v36, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v36, 2, v42
	v_lshlrev_b32_e32 v35, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v48, 0x80000000, v44, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v72, 0x80000000, v36, s4
	v_lshlrev_b32_e32 v36, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s58, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s55, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v73, 0x80000000, v35, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v74, 0x80000000, v36 :: v_dual_lshlrev_b32 v35, 2, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s55, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v55, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v76, 0x80000000, v35 :: v_dual_lshlrev_b32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s55, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v56, 0x80000000, v43 :: v_dual_cndmask_b32 v79, 0x80000000, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v50, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 2, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v75, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s55, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v36
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v77, 0x80000000, v41, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s56, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v36, 2, v36
	v_cndmask_b32_e64 v81, 0x80000000, v35, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s55, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v57, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v83, 0x80000000, v36 :: v_dual_lshlrev_b32 v38, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s55, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 1, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 2, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s55, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v86, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v78, 0x80000000, v44, s4
	v_dual_cndmask_b32 v52, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v36
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v88, 0x80000000, v35, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s38, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s50, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v53, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v82, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v84, 0x80000000, v37, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s55, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 2, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s48, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 2, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v85, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v87, 0x80000000, v41, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s46, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s55, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v58, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v89, 0x80000000, v38, s4
	v_lshlrev_b32_e32 v35, 2, v37
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s55, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v36, 2, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s44, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s55, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 1, v41
	v_cndmask_b32_e64 v64, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 2, v41
	v_cndmask_b32_e64 v91, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v90, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	s_and_b32 s4, s41, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s55, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v54, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v37
	v_cndmask_b32_e64 v65, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v38
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v92, 0x80000000, v41, vcc_lo
	v_cndmask_b32_e64 v93, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s55, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s34, s3
	s_and_b32 s4, s39, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s55, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v94, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v36
	v_cndmask_b32_e64 v66, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v95, 0x80000000, v35, s4
	v_lshlrev_b32_e32 v35, 2, v36
	v_lshlrev_b32_e32 v36, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s55, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v96, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s29, s3
	s_and_b32 s4, s37, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s55, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v97, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 1, v38
	v_cndmask_b32_e64 v98, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v103, 0x80000000, v35 :: v_dual_lshlrev_b32 v38, 2, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v35, s55, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 2, v41
	v_cndmask_b32_e64 v104, 0x80000000, v36, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s35, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 1, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v99, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v105, 0x80000000, v38, vcc_lo
	v_lshlrev_b32_e32 v38, 2, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v42, 1, v35
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s24, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v131, 0x80000000, v41, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s30, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v41, 0x80000000, v43 :: v_dual_cndmask_b32 v106, 0x80000000, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s17, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v100, 0x80000000, v44, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v132, 0x80000000, v38, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s4, s8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v101, 2, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v35, 0x80000000, v42, vcc_lo
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_u16 v43, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v39, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v59, v40, s[4:7], 0 offen
	buffer_load_u16 v60, v47, s[4:7], 0 offen
	buffer_load_u16 v61, v48, s[4:7], 0 offen
	buffer_load_u16 v62, v50, s[4:7], 0 offen
	buffer_load_u16 v63, v58, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v47, v49, s[4:7], 0 offen
	buffer_load_u16 v48, v55, s[4:7], 0 offen
	buffer_load_u16 v49, v56, s[4:7], 0 offen
	buffer_load_u16 v50, v57, s[4:7], 0 offen
	buffer_load_u16 v55, v94, s[4:7], 0 offen
	buffer_load_u16 v56, v97, s[4:7], 0 offen
	buffer_load_u16 v57, v36, s[4:7], 0 offen
	buffer_load_u16 v58, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v75, s[4:7], 0 offen
	buffer_load_u16 v41, v78, s[4:7], 0 offen
	buffer_load_u16 v40, v82, s[4:7], 0 offen
	buffer_load_u16 v39, v85, s[4:7], 0 offen
	buffer_load_u16 v38, v98, s[4:7], 0 offen
	buffer_load_u16 v37, v99, s[4:7], 0 offen
	buffer_load_u16 v36, v100, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	v_cndmask_b32_e32 v1, 0x80000000, v101, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v130, v33, s[4:7], 0 offen
	buffer_load_b32 v129, v67, s[4:7], 0 offen
	buffer_load_b32 v128, v69, s[4:7], 0 offen
	buffer_load_b32 v125, v71, s[4:7], 0 offen
	buffer_load_b32 v122, v86, s[4:7], 0 offen
	buffer_load_b32 v121, v88, s[4:7], 0 offen
	buffer_load_b32 v120, v90, s[4:7], 0 offen
	buffer_load_b32 v119, v92, s[4:7], 0 offen
	buffer_load_b32 v111, v68, s[4:7], 0 offen
	buffer_load_b32 v109, v70, s[4:7], 0 offen
	buffer_load_b32 v108, v72, s[4:7], 0 offen
	buffer_load_b32 v107, v73, s[4:7], 0 offen
	buffer_load_b32 v102, v89, s[4:7], 0 offen
	buffer_load_b32 v101, v91, s[4:7], 0 offen
	buffer_load_b32 v100, v93, s[4:7], 0 offen
	buffer_load_b32 v99, v95, s[4:7], 0 offen
	buffer_load_b32 v127, v74, s[4:7], 0 offen
	buffer_load_b32 v126, v76, s[4:7], 0 offen
	buffer_load_b32 v124, v79, s[4:7], 0 offen
	buffer_load_b32 v123, v83, s[4:7], 0 offen
	buffer_load_b32 v118, v96, s[4:7], 0 offen
	buffer_load_b32 v117, v103, s[4:7], 0 offen
	buffer_load_b32 v116, v105, s[4:7], 0 offen
	buffer_load_b32 v115, v106, s[4:7], 0 offen
	buffer_load_b32 v114, v77, s[4:7], 0 offen
	buffer_load_b32 v113, v81, s[4:7], 0 offen
	buffer_load_b32 v112, v84, s[4:7], 0 offen
	buffer_load_b32 v110, v87, s[4:7], 0 offen
	buffer_load_b32 v106, v104, s[4:7], 0 offen
	buffer_load_b32 v105, v131, s[4:7], 0 offen
	buffer_load_b32 v104, v132, s[4:7], 0 offen
	buffer_load_b32 v103, v1, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 4, v0
	v_lshlrev_b32_e32 v2, 7, v162
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v132, 32, v0
	s_mov_b32 s56, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_or_b32 v163, 0x70, v1, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v2, 1, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v132, 6, v163
	v_xor_b32_e32 v3, 16, v1
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v5, 48, v1
	v_xor_b32_e32 v6, 64, v1
	v_add_nc_u32_e32 v9, 0, v1
	v_xor_b32_e32 v7, 0x50, v1
	v_xor_b32_e32 v8, 0x60, v1
	v_xor_b32_e32 v1, 0x70, v1
	v_add_nc_u32_e32 v134, 0, v3
	v_add_nc_u32_e32 v135, 0, v4
	v_add_nc_u32_e32 v136, 0, v5
	v_add_nc_u32_e32 v137, 0, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:156
	scratch_store_b32 off, v9, off offset:124
	v_add_nc_u32_e32 v138, 0, v7
	v_add_nc_u32_e32 v139, 0, v8
	v_add_nc_u32_e32 v140, 0, v1
	ds_load_b128 v[182:185], v9
	ds_load_b128 v[186:189], v134
	ds_load_b128 v[17:20], v135
	ds_load_b128 v[21:24], v136
	ds_load_b128 v[25:28], v137
	ds_load_b128 v[29:32], v138
	ds_load_b128 v[3:6], v139
	ds_load_b128 v[7:10], v140
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off     ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:16 ; 16-byte Folded Spill
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 16, v43
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v3, 16, v44
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v4, 16, v45
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v5, 16, v46
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v7, 16, v52
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v52, v130, v1 :: v_dual_lshlrev_b32 v9, 16, v54
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v11, 16, v60
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v13, 16, v62
	v_lshlrev_b32_e32 v15, 16, v64
	v_lshlrev_b32_e32 v43, 16, v66
	v_lshlrev_b32_e32 v44, 16, v47
	v_lshlrev_b32_e32 v45, 16, v48
	v_lshlrev_b32_e32 v46, 16, v49
	v_lshlrev_b32_e32 v47, 16, v50
	v_lshlrev_b32_e32 v48, 16, v55
	v_lshlrev_b32_e32 v49, 16, v56
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(15)
	v_mul_f32_e32 v68, v127, v44
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v52, v130, v1 :: v_dual_mul_f32 v71, v123, v47
.Ltmp8:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(10)
	v_mul_f32_e32 v73, v117, v49
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v72, v118, v48 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v77, v113, v41
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 16, v36
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v68, v127, v44 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v73, v117, v49 :: v_dual_mul_f32 v84, v104, v36
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v85, v103, v35
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v77, v113, v41
	v_add_f32_dpp v41, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v84, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v72, v118, v48
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v85, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v110, v39
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v84, v104, v36
	v_add_f32_dpp v36, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v85, v103, v35
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v40, 16, v40
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v71, v123, v47
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v79, v110, v39 :: v_dual_mul_f32 v78, v112, v40
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v39, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v41, v41, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v47, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s43, v41, 31
.Ltmp34:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v8, 16, v53
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v53, v129, v3
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v78, v112, v40
	v_add_f32_dpp v40, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v72, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v47, v1, -1, -1 op_sel:[1,0]
.Ltmp39:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v69, v126, v45
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v53, v129, v3
.Ltmp41:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v55, v125, v5
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v1, v47 :: v_dual_lshlrev_b32 v38, 16, v38
.Ltmp43:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v70, v124, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v83, v105, v37
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s4, v1, 31
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v84, v84 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v50, 16, v57
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v67, v99, v43
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v82, v106, v38
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v69, v126, v45
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v48, v3, -1, -1 op_sel:[1,0]
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v14, 16, v63
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v57, v121, v7
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v125, v5
	v_dual_add_f32 v3, v3, v48 :: v_dual_lshlrev_b32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v64, v102, v14
	v_mul_f32_e32 v74, v116, v50
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v3, 31
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v85, v85 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v70, v124, v46 :: v_dual_fmac_f32 v83, v105, v37
	v_add_f32_dpp v37, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v76, v114, v42
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v16, 16, v65
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v65, v101, v15
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v67, v99, v43 :: v_dual_fmac_f32 v82, v106, v38
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v66, v100, v16
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v57, v121, v7
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v63, v107, v13
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v64, v102, v14
	v_fmac_f32_e32 v66, v100, v16
	v_fmac_f32_e32 v74, v116, v50
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v66, v39, -1, -1 op_sel:[1,0]
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v63, v63 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v65, v101, v15 :: v_dual_fmac_f32 v76, v114, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v39, v39, v66
	v_add_f32_dpp v14, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v39, 31
.Ltmp86:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v6, 16, v51
	v_lshlrev_b32_e32 v51, 16, v58
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v37, -1, -1 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v50, v5, -1, -1 op_sel:[1,0]
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v63, v107, v13
.Ltmp91:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v75, v115, v51
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v15, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v65, v38, -1, -1 op_sel:[1,0]
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v64
	v_add_f32_dpp v70, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v75, v115, v51
	v_add_f32_e32 v5, v5, v50
	v_add_f32_dpp v13, v63, v63 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v63, v36, -1, -1 op_sel:[1,0]
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v65
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v37, 31
	v_mov_b32_e32 v65, s40
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v56, v122, v6
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v52, v7, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v5, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v40, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v69, v42, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v73, v43, -1, -1 op_sel:[1,0]
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v63 :: v_dual_mov_b32 v63, s38
.Ltmp106:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v54, v128, v4
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v7, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v43, v43, v73
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v56, v122, v6
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v40, v67
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s45, v43, 31
.Ltmp111:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v10, 16, v59
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v59, v119, v9
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v42, v69 :: v_dual_mov_b32 v67, s43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v58, v120, v8 :: v_dual_mov_b32 v69, s45
	v_mul_f32_e32 v60, v111, v10
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v7, 31
	v_permlanex16_b32 v7, v5, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v12, 16, v61
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v58, v58 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v59, v59 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v60, v60 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v54, v128, v4
	v_add_f32_dpp v6, v56, v56 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v61, v109, v11
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v5, v7 :: v_dual_mul_f32 v62, v108, v12
	v_dual_fmac_f32 v58, v120, v8 :: v_dual_fmac_f32 v59, v119, v9
	v_fmac_f32_e32 v60, v111, v10
	v_add_f32_dpp v4, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v61, v61 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v58, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v59, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v60, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v61, v109, v11 :: v_dual_fmac_f32 v62, v108, v12
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v51, v6, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v61, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v78, v78 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v49, v4, -1, -1 op_sel:[1,0]
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v51
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v8, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v54, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v55, v10, -1, -1 op_sel:[1,0]
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v4, v49
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v6, 31
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v8, v8, v53 :: v_dual_add_f32 v9, v9, v54
	v_add_f32_e32 v10, v10, v55
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v4, 31
	v_and_b32_e32 v34, 1, v0
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v56, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v57, v12, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v58, v13, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v59, v14, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v60, v15, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v61, v16, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v62, v35, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v74, v44, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v75, v45, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v76, v46, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v77, v72, -1, -1 op_sel:[1,0]
	v_readlane_b32 s10, v8, 31
	v_readlane_b32 s11, v9, 31
	v_readlane_b32 s17, v10, 31
	v_readlane_b32 s44, v42, 31
	v_mov_b32_e32 v37, s6
	v_lshlrev_b32_e32 v33, 6, v34
	v_permlanex16_b32 v8, v6, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v9, v1, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v10, v3, -1, -1 op_sel:[1,0]
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v11, v11, v56 :: v_dual_add_f32 v12, v12, v57
	v_dual_add_f32 v13, v13, v58 :: v_dual_add_f32 v14, v14, v59
	v_dual_add_f32 v15, v15, v60 :: v_dual_add_f32 v16, v16, v61
	v_add_f32_e32 v35, v35, v62
	v_dual_add_f32 v73, v44, v74 :: v_dual_add_f32 v74, v45, v75
	v_dual_add_f32 v75, v46, v76 :: v_dual_add_f32 v4, v72, v77
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v68, s44 :: v_dual_add_nc_u32 v81, 0, v33
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v6, v6, v8 :: v_dual_add_f32 v1, v1, v9
	v_add_f32_e32 v3, v3, v10
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v11, 31
	v_readlane_b32 s28, v12, 31
	v_readlane_b32 s29, v13, 31
	v_readlane_b32 s30, v14, 31
	v_readlane_b32 s34, v15, 31
	v_readlane_b32 s35, v16, 31
	v_readlane_b32 s36, v35, 31
	v_readlane_b32 s37, v36, 31
	v_readlane_b32 s39, v38, 31
	v_readlane_b32 s41, v40, 31
	v_dual_mov_b32 v35, s4 :: v_dual_mov_b32 v36, s5
	v_dual_mov_b32 v38, s7 :: v_dual_mov_b32 v39, s8
	v_dual_mov_b32 v41, s10 :: v_dual_add_nc_u32 v2, 0, v2
	v_readlane_b32 s4, v73, 31
	v_readlane_b32 s5, v74, 31
	v_readlane_b32 s6, v75, 31
	v_readlane_b32 s7, v4, 31
	v_mov_b32_e32 v40, s9
	v_mov_b32_e32 v42, s11
	v_readlane_b32 s8, v5, 31
	v_readlane_b32 s9, v6, 31
	v_readlane_b32 s10, v1, 31
	v_readlane_b32 s11, v3, 31
	v_dual_mov_b32 v43, s17 :: v_dual_mov_b32 v44, s24
	v_dual_mov_b32 v45, s28 :: v_dual_mov_b32 v46, s29
	v_dual_mov_b32 v47, s30 :: v_dual_mov_b32 v48, s34
	v_dual_mov_b32 v49, s35 :: v_dual_mov_b32 v50, s36
	v_mov_b32_e32 v62, s37
	v_mov_b32_e32 v64, s39
	v_mov_b32_e32 v66, s41
	ds_store_b128 v2, v[35:38]
	ds_store_b128 v2, v[39:42] offset:16
	ds_store_b128 v2, v[43:46] offset:32
	ds_store_b128 v2, v[47:50] offset:48
	v_dual_mov_b32 v35, s4 :: v_dual_mov_b32 v36, s5
	v_dual_mov_b32 v37, s6 :: v_dual_mov_b32 v38, s7
	v_dual_mov_b32 v46, s8 :: v_dual_mov_b32 v47, s9
	v_dual_mov_b32 v48, s10 :: v_dual_mov_b32 v49, s11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v81
	ds_load_b128 v[54:57], v81 offset:16
	ds_load_b128 v[50:53], v81 offset:32
	ds_load_b128 v[42:45], v81 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[62:65]
	ds_store_b128 v2, v[66:69] offset:16
	ds_store_b128 v2, v[35:38] offset:32
	ds_store_b128 v2, v[46:49] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v81
	ds_load_b128 v[66:69], v81 offset:16
	ds_load_b128 v[62:65], v81 offset:32
	ds_load_b128 v[46:49], v81 offset:48
.Ltmp137:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s4, s27, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s4, s5
.Ltmp138:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v82, v58 :: v_dual_mov_b32 v83, v59
	v_dual_mov_b32 v85, v60 :: v_dual_mov_b32 v84, v61
	v_dual_mov_b32 v93, v54 :: v_dual_mov_b32 v94, v55
	v_mov_b32_e32 v95, v56
	v_dual_mov_b32 v211, v57 :: v_dual_mov_b32 v216, v50
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v86, v70 :: v_dual_mov_b32 v87, v71
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v92, v73
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v212, v66 :: v_dual_mov_b32 v213, v67
	v_dual_mov_b32 v214, v68 :: v_dual_mov_b32 v215, v69
	v_dual_mov_b32 v217, v51 :: v_dual_mov_b32 v210, v52
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v96, v53 :: v_dual_mov_b32 v209, v62
	v_mov_b32_e32 v208, v63
	v_dual_mov_b32 v206, v64 :: v_dual_mov_b32 v207, v65
	v_dual_mov_b32 v199, v42 :: v_dual_mov_b32 v200, v43
	v_dual_mov_b32 v201, v44 :: v_dual_mov_b32 v202, v45
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v203, v46 :: v_dual_mov_b32 v204, v47
	v_dual_mov_b32 v205, v48 :: v_dual_mov_b32 v146, v49
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v213, v213 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v214, v214 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v215, v215 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v216, v216 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v217, v217 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s4, s21, s16
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s57, s5, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s54, s14
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s7, s54, s13
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, s15
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s7, s7, s15
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s27, s5
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
	s_and_b32 s56, s6, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s57, s57, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x84
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v164, 0, 1, s20
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s5, s19, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s20
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s6, s23, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s7, s54, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 32
	s_min_i32 s7, s27, s7
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
	s_min_i32 s57, s57, s7
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s7, s4, s22
	s_xor_b32 s5, s5, s6
	s_sub_i32 s6, s21, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s6, s22
	s_cmp_ge_u32 s6, s22
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v141, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s22
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v175, 4, v141
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s54, v141
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_cselect_b32 s4, s7, s4
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v180, 8, v141
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s4, s4, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s54, v175
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s12, s4, s5
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s26, v1
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v1, s15, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v152, 12, v141
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v3, s54, v180
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v178, 16, v141
	s_clause 0x2
	s_load_b64 s[28:29], s[0:1], 0x8
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s58, s[0:1], 0x80
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s15, v2
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s54, v152
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_or_b32_e32 v174, 20, v141
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s54, v178
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v145, 24, v141
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s15, v3
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v133, 28, v141
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v6, s54, v174
	v_or_b32_e32 v7, s54, v145
	.loc	1 228 29 is_stmt 1              ; attention_backward.py:228:29
	s_mul_i32 s20, s18, s25
	.loc	1 129 27                        ; attention_backward.py:129:27
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s15, v4
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s54, v133
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s25, s12, s20
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s56, s57
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s5, s26, v2
	.loc	1 129 27                        ; attention_backward.py:129:27
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s15, v5
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s26, v3
	v_cmp_gt_i32_e64 s7, s26, v4
	v_cmp_gt_i32_e64 s8, s26, v5
	v_cmp_gt_i32_e64 s9, s26, v6
	.loc	1 129 27                        ; attention_backward.py:129:27
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s15, v6
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s10, s26, v7
	v_cmp_gt_i32_e64 s11, s26, v8
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v173, s15, v8
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 228 29                        ; attention_backward.py:228:29
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v1, s15, v7
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s60, -1, 0
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s18, s16
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s60
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s12, s19, s17
	.loc	1 228 29                        ; attention_backward.py:228:29
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v165, 5, v0
	s_mov_b32 s15, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s15, -1
                                        ; implicit-def: $vgpr165
.LBB0_7:                                ; %Flow333
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_clause 0x3
	s_load_b128 s[44:47], s[0:1], 0x48
	s_load_b64 s[40:41], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b64 s[38:39], s[0:1], 0x8c
	v_and_b32_e32 v131, 16, v0
	v_and_b32_e32 v79, 48, v0
	v_xor_b32_e32 v142, 16, v163
	v_xor_b32_e32 v143, 32, v163
	v_xor_b32_e32 v144, 48, v163
	v_xor_b32_e32 v190, 64, v163
	v_xor_b32_e32 v191, 0x50, v163
	v_xor_b32_e32 v192, 0x60, v163
	v_xor_b32_e32 v193, 0x70, v163
	v_lshlrev_b32_e32 v177, 3, v162
	v_lshrrev_b32_e32 v179, 2, v131
	v_lshrrev_b32_e32 v176, 4, v132
	v_lshlrev_b32_e32 v181, 2, v0
	v_lshrrev_b32_e32 v151, 1, v131
	v_lshrrev_b32_e32 v153, 5, v132
	v_cmp_eq_u32_e64 s0, 0, v132
	s_mul_f32 s59, s58, 0x3fb8aa3b
	s_mul_i32 s25, s25, s27
	s_and_not1_b32 vcc_lo, exec_lo, s15
	s_add_i32 s30, s12, s18
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v2, s13, v1
	v_add_nc_u32_e32 v1, s14, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:60
	scratch_store_b32 off, v1, off offset:92
	scratch_load_b32 v2, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v3, s13, v2
	v_add_nc_u32_e32 v1, s14, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:64
	scratch_store_b32 off, v1, off offset:96
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v4, s13, v3
	v_add_nc_u32_e32 v1, s14, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:68
	scratch_store_b32 off, v1, off offset:100
	scratch_load_b32 v4, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v5, s13, v4
	v_add_nc_u32_e32 v1, s14, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:72
	scratch_store_b32 off, v1, off offset:104
	scratch_load_b32 v5, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v6, s13, v5
	v_add_nc_u32_e32 v1, s14, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:76
	scratch_store_b32 off, v1, off offset:108
	scratch_load_b32 v6, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v7, s13, v6
	v_add_nc_u32_e32 v1, s14, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:80
	scratch_store_b32 off, v1, off offset:112
	scratch_load_b32 v7, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v8, s13, v7
	v_add_nc_u32_e32 v1, s14, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:84
	scratch_store_b32 off, v1, off offset:116
	v_subrev_nc_u32_e32 v8, s13, v173
	v_add_nc_u32_e32 v1, s14, v173
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:88
	scratch_store_b32 off, v1, off offset:120
	s_cbranch_vccnz .LBB0_30
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v169, v179 :: v_dual_and_b32 v2, 52, v181
	v_dual_mov_b32 v165, v9 :: v_dual_and_b32 v4, 60, v80
	v_dual_mov_b32 v166, v79 :: v_dual_and_b32 v1, 0x180, v9
	v_dual_mov_b32 v170, v153 :: v_dual_and_b32 v3, 2, v0
	v_cndmask_b32_e64 v5, 0x104, 0, s0
	v_dual_mov_b32 v167, v181 :: v_dual_and_b32 v6, 14, v0
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_lshlrev_b32 v8, 2, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v91, v5, v4
	v_or3_b32 v1, v2, v3, v1
	v_lshlrev_b32_e32 v2, 1, v6
	v_dual_mov_b32 v168, v151 :: v_dual_lshlrev_b32 v3, 5, v34
	v_lshl_or_b32 v4, v6, 7, v8
	v_or_b32_e32 v5, v91, v33
	v_or3_b32 v219, v1, v151, v153
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_add_nc_u32 v1, s54, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v220, v4, v3, v2
	v_xor_b32_e32 v2, 0x208, v5
	v_xor_b32_e32 v3, 0x410, v5
	v_xor_b32_e32 v4, 0x618, v5
	v_dual_mov_b32 v248, 0xff800000 :: v_dual_add_nc_u32 v5, 28, v1
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_add_nc_u32 v8, 24, v1
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v9, 20, v1
	v_or3_b32 v90, v179, v176, v177
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v221, s38, v1
	v_mul_lo_u32 v222, s38, v5
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v5, 16, v1
	v_mul_lo_u32 v223, s38, v8
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_add_nc_u32 v8, 12, v1
	v_mul_lo_u32 v224, s38, v9
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v9, 8, v1
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v1, 4, v1
	s_add_i32 s0, s56, s25
	v_xor_b32_e32 v7, 0x90, v90
	s_add_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v228, s38, v1
	v_xor_b32_e32 v1, 0x1b0, v90
	s_mul_i32 s1, s33, s1
	s_add_i32 s12, s0, 2
	s_lshl_b32 s61, s1, 1
	s_mul_i32 s1, s33, s12
	v_dual_mov_b32 v198, 0xff800000 :: v_dual_add_nc_u32 v231, 0, v1
	v_xor_b32_e32 v1, 32, v219
	s_add_i32 s12, s0, 3
	s_lshl_b32 s62, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 4
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_add_nc_u32 v233, 0, v1
	v_xor_b32_e32 v1, 16, v220
	s_lshl_b32 s63, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 5
	s_lshl_b32 s64, s1, 1
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v238, 0, v1
	v_xor_b32_e32 v1, 20, v220
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 6
	s_lshl_b32 s65, s1, 1
	s_mul_i32 s1, s33, s12
	v_add_nc_u32_e32 v239, 0, v1
	v_xor_b32_e32 v1, 24, v220
	s_add_i32 s12, s0, 7
	s_lshl_b32 s66, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 8
	s_lshl_b32 s67, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 9
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v240, 0, v1
	v_xor_b32_e32 v1, 28, v220
	s_lshl_b32 s68, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 10
	v_xor_b32_e32 v6, 0x120, v90
	v_mul_lo_u32 v225, s38, v5
	v_xor_b32_e32 v5, 16, v219
	s_lshl_b32 s69, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 11
	v_add_nc_u32_e32 v241, 0, v1
	v_add_nc_u32_e32 v1, s56, v162
	s_lshl_b32 s70, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 12
	v_mul_lo_u32 v226, s38, v8
	s_lshl_b32 s71, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 13
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v229, 0, v7
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_add_nc_u32 v230, 0, v6
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_add_nc_u32 v232, 0, v5
	v_xor_b32_e32 v5, 48, v219
	v_xor_b32_e32 v6, 4, v220
	v_xor_b32_e32 v7, 8, v220
	v_xor_b32_e32 v8, 12, v220
	v_mul_lo_u32 v227, s38, v9
	s_lshl_b32 s72, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 14
	v_mad_u64_u32 v[78:79], null, s39, v1, s[30:31]
	s_lshl_b32 s73, s1, 1
	s_mul_i32 s1, s33, s12
	s_add_i32 s12, s0, 15
	v_dual_mov_b32 v172, v176 :: v_dual_mov_b32 v171, v177
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v234, 0, v5
	v_add_nc_u32_e32 v235, 0, v6
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v236, 0, v7
	v_add_nc_u32_e32 v237, 0, v8
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v242, 0, v2
	v_add_nc_u32_e32 v243, 0, v3
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v244, 0, v4
	v_mov_b32_e32 v79, 0xff800000
	v_mov_b32_e32 v145, 0xff800000
	v_mov_b32_e32 v131, 0xff800000
	v_mov_b32_e32 v133, 0xff800000
	v_mov_b32_e32 v33, 0
	s_lshl_b32 s74, s1, 1
	s_mul_i32 s1, s33, s12
	s_mul_i32 s0, s33, s0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s49, s29, 0xffff
	s_mov_b32 s48, s28
	s_lshl_b32 s43, s39, 4
	s_lshl_b32 s75, s1, 1
	s_lshl_b32 s76, s0, 1
	s_mov_b32 s77, s56
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v1, s59, v34 :: v_dual_mul_f32 v2, s59, v35
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_waitcnt vmcnt(0)
	v_and_b16 v34.l, 0xff, v77.h
	.loc	1 252 21 is_stmt 0              ; attention_backward.py:252:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v3, s59, v36 :: v_dual_mul_f32 v4, s59, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v34.l
	v_and_b16 v34.l, 0xff, v75.h
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v5, s59, v38 :: v_dual_mul_f32 v6, s59, v39
	v_dual_mul_f32 v7, s59, v40 :: v_dual_mul_f32 v8, s59, v41
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s0, 0, v34.l
	v_and_b16 v34.l, 0xff, v74.l
	.loc	1 252 21 is_stmt 0              ; attention_backward.py:252:21
	s_and_b32 s12, s85, vcc_lo
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s77, s77, 16
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v9, 0, 1, s12
	s_and_b32 s16, s84, s0
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v34.l
	v_and_b16 v34.l, 0xff, v77.l
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s61, s61, s42
	s_add_i32 s62, s62, s42
	s_add_i32 s63, s63, s42
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s15, s82, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s1, 0, v34.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_mov_b16_e32 v34.l, v9.l
	v_cndmask_b32_e64 v9, 0, 1, s16
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s64, s64, s42
	s_add_i32 s65, s65, s42
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s1, s83, s1
	v_lshlrev_b16 v34.l, 8, v34.l
	v_mov_b16_e32 v35.l, v9.l
	v_cndmask_b32_e64 v9, 0, 1, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s66, s66, s42
	s_add_i32 s67, s67, s42
	s_add_i32 s68, s68, s42
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v34.l, v35.l, v34.l
	v_mov_b16_e32 v35.l, v9.l
	v_cndmask_b32_e64 v9, 0, 1, s15
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s69, s69, s42
	s_add_i32 s70, s70, s42
	s_add_i32 s71, s71, s42
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v9.l
	v_add_nc_u32_e32 v9, 0, v90
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s72, s72, s42
	s_add_i32 s73, s73, s42
	s_add_i32 s74, s74, s42
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v34.h, v35.l, v34.h
	ds_store_b16 v9, v34
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_and_b16 v34.l, 0xff, v75.l
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s75, s75, s42
	s_add_i32 s76, s76, s42
	v_add_nc_u32_e32 v78, s43, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v34.l
	v_and_b16 v34.l, 0xff, v74.h
	.loc	1 252 21 is_stmt 0              ; attention_backward.py:252:21
	s_and_b32 s14, s80, vcc_lo
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v34.l
	v_and_b16 v34.l, 0xff, v76.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s13, s78, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s0, 0, v34.l
	v_and_b16 v34.l, 0xff, v76.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s0, s81, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s17, 0, v34.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v9, 0, 1, s0
	s_and_b32 vcc_lo, s79, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v9.l
	v_cndmask_b32_e64 v9, 0, 1, s14
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_lt_i32 s77, s57
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v35.l, v9.l
	v_cndmask_b32_e64 v9, 0, 1, vcc_lo
	v_or_b16 v34.l, v35.l, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v35.l, v9.l
	v_cndmask_b32_e64 v9, 0, 1, s13
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v36.l, v9.l
	v_add_nc_u32_e32 v9, 0, v219
	v_or_b16 v35.l, v36.l, v35.l
	ds_store_b16_d16_hi v229, v34
	ds_store_b16 v230, v34
	ds_store_b16 v231, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v9
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v9 offset:64
	ds_load_u8_d16 v35, v232
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v234 offset:64
	ds_load_u8_d16 v36, v233 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v232 offset:64
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_add_nc_u32_e32 v9, 0, v220
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v34.l
	ds_load_u8_d16 v34, v233
	ds_load_u8_d16 v37, v234
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v1, 0xff800000, v1, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v9, v1
	v_cndmask_b32_e64 v1, 0xff800000, v2, s17
	ds_store_b32 v235, v1
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v3, s17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v236, v1
	v_cndmask_b32_e64 v1, 0xff800000, v4, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v34.l
	v_and_b16 v34.l, 1, v36.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v237, v1
	v_cndmask_b32_e64 v1, 0xff800000, v5, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v34.l
	v_and_b16 v34.l, 1, v36.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v238, v1
	v_cndmask_b32_e64 v1, 0xff800000, v6, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v34.l
	v_and_b16 v34.l, 1, v35.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v239, v1
	v_cndmask_b32_e64 v1, 0xff800000, v7, s17
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s17, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v240, v1
	v_cndmask_b32_e64 v1, 0xff800000, v8, s17
	ds_store_b32 v241, v1
	v_add_nc_u32_e32 v1, v81, v91
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[97:98], v242 offset1:32
	ds_load_2addr_b32 v[34:35], v1 offset1:32
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v34
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v79, v79
.Ltmp150:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v79, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v34, v79
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v149
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v149, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v38, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v2, v1
.Ltmp160:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v149, v38
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v97, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp162:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v150, v1
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v97
.Ltmp164:
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[149:150], v244 offset1:32
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
	v_max_f32_e32 v1, v1, v2
.Ltmp173:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v245, v245
	v_max_f32_e32 v245, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v97, v245
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v148
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v148, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v40, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v2, v1
.Ltmp183:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v148, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v147, v1
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[147:148], v243 offset1:32
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v147
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v147, v147
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
	v_max_f32_e32 v2, v246, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v246, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v147, v246
	v_mov_b32_e32 v147, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s14
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s14, 0xff800000, v151
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp201:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v151, v151
	v_dual_max_f32 v74, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp204:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v151, v74 :: v_dual_max_f32 v2, v149, v149
	v_mov_b32_e32 v151, v74
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s14
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v41, v152, v1
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v152, v41
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
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v247, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v247, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v2, v149, v247 :: v_dual_mov_b32 v149, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s13
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
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
	v_max_f32_e32 v3, v198, v198
	v_dual_max_f32 v76, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp223:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v198, v76 :: v_dual_max_f32 v2, v35, v35
	v_mov_b32_e32 v198, v76
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s13
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v75, v197, v1
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v197, v75
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
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v248, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v248, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v35, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s12, 0xff800000, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
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
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v145, v145
.Ltmp239:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v196, v3, v1 :: v_dual_mov_b32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v77, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp242:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v145, v196 :: v_dual_max_f32 v2, v98, v98
	v_mov_b32_e32 v145, v196
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s12
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v77, v153, v1
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v153, v77
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v1, v1, v2
.Ltmp251:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v249, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v249, v2, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v98, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp258:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v218, v218
	v_max_f32_e32 v97, v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v98, v2, v1
.Ltmp261:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v218, v97 :: v_dual_max_f32 v2, v148, v148
	v_mov_b32_e32 v218, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v98, v89, v1 :: v_dual_mov_b32 v1, v148
	v_mov_b32_e32 v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp270:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v250, v250
	v_max_f32_e32 v250, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v148, v250
	v_mov_b32_e32 v148, v40
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s0, 0xff800000, v131
.Ltmp271:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp277:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v131, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v255, v3, v1
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v254, v2, v1 :: v_dual_sub_f32 v1, v131, v255
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v2, v150, v150 :: v_dual_mov_b32 v131, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp281:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v254, v195, v1 :: v_dual_mov_b32 v1, v150
	v_mov_b32_e32 v195, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp283:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp284:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp285:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp286:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp287:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp288:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp289:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v251, v251
.Ltmp290:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v251, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v150, v251
	v_mov_b32_e32 v150, v37
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v133
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp295:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v133, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp297:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v253, v3, v1
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v252, v2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp300:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v133, v253
	v_mov_b32_e32 v133, v253
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v252, v194, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v194, v252
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_31
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_add_i32 s0, s77, 1
	s_add_i32 s1, s77, 2
	s_add_i32 s12, s77, 3
	s_add_i32 s13, s77, 4
	s_add_i32 s14, s77, 5
	s_add_i32 s15, s77, 6
	s_add_i32 s16, s77, 7
	s_add_i32 s17, s77, 8
	s_add_i32 s18, s77, 9
	s_add_i32 s19, s77, 10
	s_add_i32 s20, s77, 11
	s_add_i32 s21, s77, 12
	s_add_i32 s22, s77, 13
	s_add_i32 s23, s77, 14
	s_add_i32 s24, s77, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s77, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v1, s76, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s0, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v2, s61, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s0, -1, 0
	s_cmp_lt_i32 s1, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v3, s62, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s12, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v4, s63, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v5, s64, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v6, s65, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v7, s66, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s27
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v8, s67, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v41, v40
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v40, v39 :: v_dual_add_nc_u32 v9, s68, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v39, v38 :: v_dual_add_nc_u32 v10, s69, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v38, v37 :: v_dual_add_nc_u32 v11, s70, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v37, v36 :: v_dual_add_nc_u32 v12, s71, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v36, v35 :: v_dual_add_nc_u32 v13, s72, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v35, v34 :: v_dual_add_nc_u32 v14, s73, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s27
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v15, s74, v80
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s24, -1, 0
	.loc	1 231 26 is_stmt 0              ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s78
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_add_nc_u32_e32 v16, s75, v80
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s0
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_add_nc_u32_e32 v74, s77, v162
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s0, s27, v74
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s84, s4, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x5
	buffer_load_u16 v1, v1, s[48:51], 0 offen
	buffer_load_u16 v2, v2, s[48:51], 0 offen
	buffer_load_u16 v3, v3, s[48:51], 0 offen
	buffer_load_u16 v4, v4, s[48:51], 0 offen
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s82, s5, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s80, s6, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s78, s7, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s85, s8, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s83, s9, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s81, s10, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s22
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s79, s11, s0
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s23
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x4
	buffer_load_u16 v9, v9, s[48:51], 0 offen
	buffer_load_u16 v10, v10, s[48:51], 0 offen
	buffer_load_u16 v11, v11, s[48:51], 0 offen
	buffer_load_u16 v12, v12, s[48:51], 0 offen
	buffer_load_u16 v13, v13, s[48:51], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s24
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x4
	buffer_load_u16 v14, v14, s[48:51], 0 offen
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v16, v16, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 238 13                        ; attention_backward.py:238:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v164
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v154, v1
	s_waitcnt vmcnt(9)
	ds_store_b16 v154, v9 offset:1024
	ds_store_b16 v155, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v155, v10 offset:1024
	ds_store_b16 v156, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v156, v11 offset:1024
	ds_store_b16 v157, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v157, v12 offset:1024
	ds_store_b16 v158, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v158, v13 offset:1024
	ds_store_b16 v159, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v159, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v160, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v160, v15 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v161, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v161, v16 offset:1024
	v_add_nc_u32_e32 v1, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[174:177], v1
	v_add_nc_u32_e32 v1, 0, v142
	ds_load_b128 v[178:181], v1
	v_add_nc_u32_e32 v1, 0, v143
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[174:181], v[182:189], v[34:41]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[174:177], v1
	v_add_nc_u32_e32 v1, 0, v144
	ds_load_b128 v[178:181], v1
	v_add_nc_u32_e32 v1, 0, v190
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[174:181], v[17:24], v[34:41]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[174:177], v1
	v_add_nc_u32_e32 v1, 0, v191
	ds_load_b128 v[178:181], v1
	v_add_nc_u32_e32 v1, 0, v192
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[174:181], v[25:32], v[34:41]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[174:177], v1
	v_add_nc_u32_e32 v1, 0, v193
	ds_load_b128 v[178:181], v1
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off
	scratch_load_b128 v[5:8], off, off offset:16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[174:181], v[1:8], v[34:41]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccz .LBB0_27
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 240 13                        ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s52
	s_cbranch_vccz .LBB0_28
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_mov_b16_e32 v74.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v75.h, v74.l
	.loc	1 252 30 is_stmt 1              ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s84
	s_cbranch_execnz .LBB0_29
.LBB0_13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s82
	s_cbranch_execz .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, v228, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v76, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v77, null, s35, v2, vcc_lo
	global_load_d16_u8 v74, v[76:77], off
.LBB0_15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v74.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v75.l, v74.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s80
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, v227, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v76, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v77, null, s35, v2, vcc_lo
	global_load_d16_u8 v75, v[76:77], off
.LBB0_17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s78
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, v226, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v76, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v77, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v74, v[76:77], off
.LBB0_19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	v_mov_b16_e32 v77.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v77.h, v77.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s85
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, v225, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v97, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v98, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v77, v[97:98], off
.LBB0_21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s83
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, v224, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v97, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v98, null, s35, v2, vcc_lo
	global_load_d16_u8 v77, v[97:98], off
.LBB0_23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	v_mov_b16_e32 v76.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v76.h, v76.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s81
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, v223, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v97, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v98, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v76, v[97:98], off
.LBB0_25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s79
	s_cbranch_execz .LBB0_9
; %bb.26:                               ;   in Loop: Header=BB0_10 Depth=1
	v_add_nc_u32_e32 v1, v222, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v97, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v98, null, s35, v2, vcc_lo
	global_load_d16_u8 v76, v[97:98], off
	s_branch .LBB0_9
.LBB0_27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26 is_stmt 1              ; attention_backward.py:239:26
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	v_cmp_le_i32_e64 s16, v74, v173
	s_and_not1_b32 s18, s84, exec_lo
	s_and_not1_b32 s19, s82, exec_lo
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s16, s16, s79
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v74, v1
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s17, vcc_lo, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, exec_lo
	s_or_b32 s84, s18, s17
	s_and_not1_b32 s17, s78, exec_lo
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s0, v74, v1
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s0, s0, s82
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s0, s0, exec_lo
	s_or_b32 s82, s19, s0
	s_and_not1_b32 s0, s80, exec_lo
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v74, v1
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s1, s1, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s80, s0, s1
	s_and_not1_b32 s0, s85, exec_lo
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v74, v1
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s12, s12, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s78, s17, s12
	s_and_not1_b32 s12, s83, exec_lo
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v74, v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s13, s13, s85
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s13, exec_lo
	s_or_b32 s85, s0, s1
	s_and_not1_b32 s0, s81, exec_lo
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v74, v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s14, s14, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s83, s12, s13
	s_and_not1_b32 s12, s79, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s79, s12, s13
	.loc	1 239 26                        ; attention_backward.py:239:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v74, v1
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s15, s15, s81
	s_and_b32 s1, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s81, s0, s1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s52
	s_cbranch_vccnz .LBB0_12
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v74, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s0, v74, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v74, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v74, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v74, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v74, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v74, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v74, v1
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v74, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s17, vcc_lo, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s84
	s_and_b32 s17, s17, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v74, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s0, s0, s18
	s_and_not1_b32 s18, s84, exec_lo
	s_and_b32 s0, s0, s82
	s_or_b32 s84, s18, s17
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s17, s78, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v74, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s1, s1, s19
	s_and_not1_b32 s19, s82, exec_lo
	s_and_b32 s1, s1, s80
	s_or_b32 s82, s19, s0
	s_and_not1_b32 s0, s80, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s80, s0, s1
	s_and_not1_b32 s0, s85, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v74, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s12, s12, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, s78
	s_and_b32 s12, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s78, s17, s12
	s_and_not1_b32 s12, s83, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v74, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s13, s13, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s85
	s_and_b32 s1, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s85, s0, s1
	s_and_not1_b32 s0, s81, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v74, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s83
	s_and_b32 s13, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s83, s12, s13
	s_and_not1_b32 s12, s79, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v74, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s81
	s_and_b32 s1, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s81, s0, s1
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v74, v1
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s16, s16, s24
	s_and_b32 s16, s16, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s79, s12, s13
	v_mov_b16_e32 v74.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v75.h, v74.l
	.loc	1 252 30 is_stmt 1              ; attention_backward.py:252:30
	s_and_saveexec_b32 s0, s84
	s_cbranch_execz .LBB0_13
.LBB0_29:                               ;   in Loop: Header=BB0_10 Depth=1
	v_add_nc_u32_e32 v1, v221, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v75, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v76, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v75, v[75:76], off
	s_or_b32 exec_lo, exec_lo, s0
	s_and_saveexec_b32 s0, s82
	s_cbranch_execnz .LBB0_14
	s_branch .LBB0_15
.LBB0_30:
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_dual_mov_b32 v253, 0xff800000 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v196, 0xff800000
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v76, 0xff800000
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v74, 0xff800000
	v_dual_mov_b32 v255, 0xff800000 :: v_dual_mov_b32 v40, 0xff800000
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_mov_b32 v38, 0xff800000
	s_branch .LBB0_32
.LBB0_31:                               ; %Flow332
	v_dual_mov_b32 v176, v172 :: v_dual_and_b32 v131, 16, v0
	v_or_b32_e32 v133, 28, v141
	v_or_b32_e32 v145, 24, v141
	v_or_b32_e32 v180, 8, v141
	v_or_b32_e32 v152, 12, v141
	v_or_b32_e32 v178, 16, v141
	v_or_b32_e32 v174, 20, v141
	v_or_b32_e32 v175, 4, v141
	v_mov_b32_e32 v177, v171
	v_mov_b32_e32 v153, v170
	v_mov_b32_e32 v179, v169
	v_mov_b32_e32 v151, v168
	v_mov_b32_e32 v181, v167
	v_mov_b32_e32 v79, v166
.LBB0_32:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v37
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v1, 31, v0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v39
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v81, v58, v82 :: v_dual_add_f32 v84, v61, v84
.Ltmp302:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v3, 0, 32, s0
.Ltmp303:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v82, v59, v83
.Ltmp304:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s54, v1
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s12, 0x800000, v41
	v_cndmask_b32_e64 v5, 0, 32, s1
	v_ldexp_f32 v3, v37, v3
	v_cndmask_b32_e64 v4, 0, 0x42000000, s1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s26, v2
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 0x42000000, s0
	v_cndmask_b32_e64 v7, 0, 32, s12
	v_ldexp_f32 v5, v39, v5
	v_log_f32_e32 v3, v3
	v_cmp_gt_f32_e64 s0, 0x800000, v75
	v_cmp_gt_f32_e64 s1, 0x800000, v77
	v_cndmask_b32_e64 v6, 0, 0x42000000, s12
	v_ldexp_f32 v7, v41, v7
	v_log_f32_e32 v5, v5
	v_cndmask_b32_e64 v9, 0, 32, s0
	v_cndmask_b32_e64 v10, 0, 0x42000000, s1
	v_cndmask_b32_e64 v11, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v254
	v_cmp_gt_f32_e64 s12, 0x800000, v252
.Ltmp305:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v54, v93 :: v_dual_add_f32 v36, v57, v211
	v_dual_add_f32 v93, v50, v216 :: v_dual_add_f32 v150, v65, v207
.Ltmp306:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v7, v7
	v_cndmask_b32_e64 v8, 0, 0x42000000, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v98
	v_cndmask_b32_e64 v15, 0, 32, s1
	v_cndmask_b32_e64 v50, 0, 32, s12
	v_ldexp_f32 v9, v75, v9
	v_dual_sub_f32 v2, v3, v2 :: v_dual_sub_f32 v3, v5, v4
	v_cndmask_b32_e64 v12, 0, 0x42000000, s0
	v_cndmask_b32_e64 v13, 0, 32, s0
	v_ldexp_f32 v11, v77, v11
	v_ldexp_f32 v15, v254, v15
	v_ldexp_f32 v50, v252, v50
	v_log_f32_e32 v9, v9
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v2, v38, v2 :: v_dual_add_f32 v3, v40, v3
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v37
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v13, v98, v13
	v_log_f32_e32 v11, v11
	v_log_f32_e32 v15, v15
	v_log_f32_e32 v50, v50
	v_sub_f32_e32 v4, v7, v6
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v2, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v39
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v14, 0, 0x42000000, s1
	v_cndmask_b32_e64 v16, 0, 0x42000000, s12
	v_log_f32_e32 v13, v13
	v_sub_f32_e32 v5, v9, v8
.Ltmp307:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v149, v64, v206 :: v_dual_add_f32 v4, v74, v4
.Ltmp308:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v38, 0, v3, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v6, v11, v10
	v_dual_sub_f32 v8, v15, v14 :: v_dual_sub_f32 v9, v50, v16
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v5, v76, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v39, 0, v4, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v75
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v7, v13, v12 :: v_dual_add_f32 v6, v196, v6
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v8, v255, v8 :: v_dual_add_f32 v83, v60, v85
.Ltmp309:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v90, v71, v87
.Ltmp310:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v40, 0, v5, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v77
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v7, v97, v7
.Ltmp311:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v91, v72, v88 :: v_dual_add_f32 v34, v55, v94
	v_dual_add_f32 v87, v68, v214 :: v_dual_add_f32 v94, v51, v217
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp312:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v50, 0, v6, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v98
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v2, 0x60, v165
.Ltmp313:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v165, v42, v199
.Ltmp314:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v194, 1, v132
.Ltmp315:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v56, v95
.Ltmp316:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v51, 0, v7, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v254
.Ltmp317:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v95, v52, v210 :: v_dual_add_f32 v96, v53, v96
.Ltmp318:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v9, v253, v9 :: v_dual_add_nc_u32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	v_cndmask_b32_e64 v52, 0, v8, s0
.Ltmp319:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v168, v45, v202 :: v_dual_and_b32 v97, 12, v0
.Ltmp320:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v252
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	v_lshl_add_u32 v3, v79, 1, 0
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v5, 28, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v4, v2, v194, v97
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v53, 0, v9, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s0, 0, v132
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_barrier
	ds_store_b128 v3, v[37:40]
	ds_store_b128 v3, v[50:53] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v206, v4
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[37:40]
	ds_store_b128 v3, v[50:53] offset:16
	v_add_lshl_u32 v3, s31, v1, 2
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v40, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v2, v2, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v98, 2, v1
	ds_load_b32 v2, v2
.Ltmp321:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v166, v43, v200 :: v_dual_add_f32 v167, v44, v201
	v_dual_add_f32 v89, v70, v86 :: v_dual_add_f32 v92, v73, v92
.Ltmp322:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v1, 0, v98
.Ltmp323:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v85, v66, v212 :: v_dual_add_f32 v88, v69, v215
	v_dual_add_f32 v86, v67, v213 :: v_dual_add_f32 v169, v46, v203
	v_dual_add_f32 v170, v47, v204 :: v_dual_add_f32 v171, v48, v205
	v_add_f32_e32 v172, v49, v146
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_dual_add_f32 v147, v62, v209 :: v_dual_add_f32 v148, v63, v208
.Ltmp324:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s45, 0xffff
	s_mov_b32 s12, s44
	s_mov_b32 s14, s42
	s_mov_b32 s15, s43
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v4, v129, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v2, v3, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[81:84]
	ds_store_b128 v40, v[89:92] offset:16
	ds_store_b128 v40, v[33:36] offset:32
	ds_store_b128 v40, v[85:88] offset:48
	ds_store_b128 v40, v[93:96] offset:64
	ds_store_b128 v40, v[147:150] offset:80
	ds_store_b128 v40, v[165:168] offset:96
	ds_store_b128 v40, v[169:172] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	s_and_b32 s13, s47, 0xffff
	s_mov_b32 s12, s46
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v2, v130, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_cmp_o_f32_e64 s0, v129, v129
	v_cmp_o_f32_e64 s1, v128, v128
	v_bfe_u32 v5, v103, 16, 1
	v_add3_u32 v2, v130, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v103, v5, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v125, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v2, v125, v2, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[12:15], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v1, v128, 16, 1
	v_add3_u32 v3, v129, v4, 0x7fff
	v_bfe_u32 v4, v99, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v124, 16, 1
	v_add3_u32 v1, v128, v1, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v127, 16, 1
	v_cmp_o_f32_e64 s0, v127, v127
	v_add3_u32 v2, v124, v2, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v126, 16, 1
	v_add3_u32 v3, v127, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v126, v126
	v_cmp_o_f32_e32 vcc_lo, v124, v124
	v_cmp_o_f32_e64 s12, v104, v104
	v_add3_u32 v1, v126, v1, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v123, 16, 1
	v_cmp_o_f32_e64 s0, v123, v123
	v_cndmask_b16 v41.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v39.h, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v122, 16, 1
	v_add3_u32 v3, v123, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_bfe_u32 v2, v121, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_add3_u32 v1, v122, v1, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v120, 16, 1
	v_add3_u32 v2, v121, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v120, v120
	v_cndmask_b16 v42.l, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v119, 16, 1
	v_add3_u32 v3, v120, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v119, v119
	v_cndmask_b16 v42.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v118, 16, 1
	v_add3_u32 v1, v119, v1, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v117, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	v_add3_u32 v2, v118, v2, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v116, 16, 1
	v_add3_u32 v3, v117, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v117, v117
	v_cmp_o_f32_e64 s1, v116, v116
	v_cndmask_b16 v44.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v1, v116, v1, 0x7fff
	v_bfe_u32 v2, v115, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v111, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_cndmask_b16 v45.l, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v109, 16, 1
	v_add3_u32 v2, v115, v2, 0x7fff
	v_add3_u32 v3, v111, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v111, v111
	v_cmp_o_f32_e64 s1, v109, v109
	v_add3_u32 v1, v109, v1, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v108, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v107, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v114, 16, 1
	v_add3_u32 v2, v108, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_add3_u32 v3, v107, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_add3_u32 v1, v114, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v114, v114
	v_cndmask_b16 v47.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v113, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v112, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v110, 16, 1
	v_add3_u32 v2, v113, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_add3_u32 v3, v112, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v112, v112
	v_add3_u32 v1, v110, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v110, v110
	v_cndmask_b16 v48.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v102, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v101, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v100, 16, 1
	v_add3_u32 v2, v102, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_add3_u32 v3, v101, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_add3_u32 v1, v100, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_cndmask_b16 v50.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v106, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v105, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v1.h, s1
	v_add3_u32 v1, v99, v4, 0x7fff
	v_bfe_u32 v4, v104, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_add3_u32 v2, v106, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v106, v106
	v_add3_u32 v3, v105, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v105, v105
	v_add3_u32 v4, v104, v4, 0x7fff
	v_cmp_o_f32_e64 s13, v103, v103
	v_cndmask_b16 v51.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v52.l, 0x7fff, v2.h, s0
	v_cndmask_b16 v52.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v53.l, 0x7fff, v4.h, s12
	v_cndmask_b16 v53.h, 0x7fff, v5.h, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v154, v37
	ds_store_b16 v154, v42 offset:1024
	ds_store_b16 v154, v46 offset:2048
	ds_store_b16 v154, v50 offset:3072
	ds_store_b16_d16_hi v155, v37
	ds_store_b16_d16_hi v155, v42 offset:1024
	ds_store_b16_d16_hi v155, v46 offset:2048
	ds_store_b16_d16_hi v155, v50 offset:3072
	ds_store_b16 v156, v38
	ds_store_b16 v156, v43 offset:1024
	ds_store_b16 v156, v47 offset:2048
	ds_store_b16 v156, v51 offset:3072
	ds_store_b16_d16_hi v157, v38
	ds_store_b16_d16_hi v157, v43 offset:1024
	ds_store_b16_d16_hi v157, v47 offset:2048
	ds_store_b16_d16_hi v157, v51 offset:3072
	ds_store_b16 v158, v39
	ds_store_b16 v158, v44 offset:1024
	ds_store_b16 v158, v48 offset:2048
	ds_store_b16 v158, v52 offset:3072
	ds_store_b16_d16_hi v159, v39
	ds_store_b16_d16_hi v159, v44 offset:1024
	ds_store_b16_d16_hi v159, v48 offset:2048
	ds_store_b16_d16_hi v159, v52 offset:3072
	ds_store_b16 v160, v41
	ds_store_b16 v160, v45 offset:1024
	ds_store_b16 v160, v49 offset:2048
	ds_store_b16 v160, v53 offset:3072
	ds_store_b16_d16_hi v161, v41
	ds_store_b16_d16_hi v161, v45 offset:1024
	ds_store_b16_d16_hi v161, v49 offset:2048
	ds_store_b16_d16_hi v161, v53 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s60
	.loc	1 392 17                        ; attention_backward.py:392:17
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v1
	ds_load_b128 v[53:56], v134
	ds_load_b128 v[57:60], v135
	ds_load_b128 v[61:64], v136
	ds_load_b128 v[65:68], v137
	ds_load_b128 v[69:72], v138
	ds_load_b128 v[73:76], v139
	ds_load_b128 v[77:80], v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[81:84]
	ds_store_b128 v40, v[89:92] offset:16
	ds_store_b128 v40, v[33:36] offset:32
	ds_store_b128 v40, v[85:88] offset:48
	ds_store_b128 v40, v[93:96] offset:64
	ds_store_b128 v40, v[147:150] offset:80
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
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
	ds_store_b128 v40, v[165:168] offset:96
	ds_store_b128 v40, v[169:172] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_vccnz .LBB0_56
; %bb.33:                               ; %.lr.ph81
	.loc	1 396 43                        ; attention_backward.py:396:43
	scratch_load_b32 v2, off, off offset:156 ; 4-byte Folded Reload
	v_mul_lo_u32 v33, s39, v162
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v1, 2, v162
	v_cmp_eq_u32_e32 vcc_lo, 0, v131
	v_lshlrev_b32_e32 v3, 4, v162
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b32 off, v194, off offset:208
	scratch_store_b128 off, v[17:20], off offset:124
	scratch_store_b128 off, v[21:24], off offset:140
	v_or3_b32 v198, v179, v177, v176
	v_or_b32_e32 v194, v176, v98
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[4:5], null, s38, v175, v[33:34]
	v_dual_cndmask_b32 v40, 0x3276, v40 :: v_dual_mov_b32 v17, v182
	v_dual_mov_b32 v18, v183 :: v_dual_mov_b32 v19, v184
	v_mov_b32_e32 v20, v185
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:156
	scratch_store_b32 off, v131, off offset:204
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[4:5], null, s38, v180, v[33:34]
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v40, 0x760076, v40
	v_lshlrev_b32_e32 v39, 7, v162
	v_dual_mov_b32 v21, v186 :: v_dual_mov_b32 v22, v187
	v_dual_mov_b32 v23, v188 :: v_dual_mov_b32 v24, v189
	scratch_store_b64 off, v[4:5], off offset:164 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s38, v178, v[33:34]
	v_mov_b32_e32 v90, v137
	v_or_b32_e32 v195, v39, v1
	v_mad_u64_u32 v[254:255], null, s38, v152, v[33:34]
	v_mad_u64_u32 v[187:188], null, s38, v141, v[33:34]
	scratch_store_b64 off, v[4:5], off offset:172 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s38, v174, v[33:34]
	v_xor_b32_e32 v9, 0x84, v194
	v_xor_b32_e32 v10, 0x108, v194
	v_xor_b32_e32 v11, 0x18c, v194
	v_xor_b32_e32 v12, 0x210, v194
	v_xor_b32_e32 v13, 0x294, v194
	v_xor_b32_e32 v14, 0x318, v194
	scratch_store_b64 off, v[4:5], off offset:180 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s38, v145, v[33:34]
	v_xor_b32_e32 v15, 0x39c, v194
	v_xor_b32_e32 v16, 0x420, v194
	v_xor_b32_e32 v35, 0x5ac, v194
	v_xor_b32_e32 v36, 0x630, v194
	v_xor_b32_e32 v37, 0x6b4, v194
	v_xor_b32_e32 v38, 0x738, v194
	scratch_store_b64 off, v[4:5], off offset:188 ; 8-byte Folded Spill
	v_and_or_b32 v4, v0, 2, v151
	v_mad_u64_u32 v[5:6], null, s38, v133, v[33:34]
	v_xor_b32_e32 v33, 0x4a4, v194
	v_xor_b32_e32 v34, 0x528, v194
	v_xor_b32_e32 v41, 4, v195
	v_xor_b32_e32 v42, 8, v195
	v_xor_b32_e32 v43, 12, v195
	v_xor_b32_e32 v44, 16, v195
	scratch_store_b64 off, v[5:6], off offset:196 ; 8-byte Folded Spill
	v_xor_b32_e32 v5, 0x1b0, v198
	v_xor_b32_e32 v45, 20, v195
	v_xor_b32_e32 v46, 24, v195
	v_xor_b32_e32 v47, 28, v195
	v_xor_b32_e32 v48, 32, v195
	v_xor_b32_e32 v81, 36, v195
	v_xor_b32_e32 v82, 40, v195
	v_xor_b32_e32 v83, 44, v195
	v_xor_b32_e32 v84, 48, v195
	v_lshl_or_b32 v40, v40, 4, v40
	v_xor_b32_e32 v85, 52, v195
	v_xor_b32_e32 v86, 56, v195
	v_xor_b32_e32 v87, 60, v195
	v_add_nc_u32_e32 v201, 0, v3
	v_dual_mov_b32 v96, v137 :: v_dual_and_b32 v199, 0x7060706, v40
	v_add_nc_u32_e32 v203, 0, v143
	v_dual_mov_b32 v91, v137 :: v_dual_add_nc_u32 v204, 0, v144
	v_dual_mov_b32 v93, v137 :: v_dual_add_nc_u32 v190, 0, v190
	v_dual_mov_b32 v88, v137 :: v_dual_add_nc_u32 v191, 0, v191
	v_dual_mov_b32 v95, v137 :: v_dual_add_nc_u32 v192, 0, v192
	v_add_nc_u32_e32 v193, 0, v193
	v_add_nc_u32_e32 v208, 0, v5
	v_add_nc_u32_e32 v212, 0, v9
	v_add_nc_u32_e32 v213, 0, v10
	v_add_nc_u32_e32 v214, 0, v11
	v_add_nc_u32_e32 v215, 0, v12
	v_add_nc_u32_e32 v216, 0, v13
	v_dual_mov_b32 v40, v137 :: v_dual_add_nc_u32 v217, 0, v14
	v_add_nc_u32_e32 v218, 0, v15
	v_add_nc_u32_e32 v220, 0, v16
	v_add_nc_u32_e32 v221, 0, v33
	v_add_nc_u32_e32 v222, 0, v34
	v_add_nc_u32_e32 v223, 0, v35
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v224, 0, v36
	v_add_nc_u32_e32 v225, 0, v37
	v_dual_mov_b32 v35, v137 :: v_dual_add_nc_u32 v226, 0, v38
	v_dual_mov_b32 v37, v137 :: v_dual_add_nc_u32 v228, 0, v41
	v_add_nc_u32_e32 v229, 0, v42
	v_add_nc_u32_e32 v230, 0, v43
	v_add_nc_u32_e32 v231, 0, v44
	v_add_nc_u32_e32 v232, 0, v45
	v_add_nc_u32_e32 v233, 0, v46
	v_add_nc_u32_e32 v234, 0, v47
	v_add_nc_u32_e32 v235, 0, v48
	v_add_nc_u32_e32 v236, 0, v81
	v_add_nc_u32_e32 v237, 0, v82
	v_add_nc_u32_e32 v238, 0, v83
	v_add_nc_u32_e32 v239, 0, v84
	v_add_nc_u32_e32 v240, 0, v85
	v_add_nc_u32_e32 v241, 0, v86
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v242, 0, v87
	v_mov_b32_e32 v84, v137
	v_mov_b32_e32 v85, v137
	v_mov_b32_e32 v86, v137
	v_mov_b32_e32 v87, v137
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, v137
	v_mov_b32_e32 v43, v137
	v_mov_b32_e32 v45, v137
	v_mov_b32_e32 v47, v137
	v_mov_b32_e32 v36, v137
	v_mov_b32_e32 v38, v137
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s0, s38, s54
	s_and_b32 s29, s29, 0xffff
	s_add_i32 s44, s30, s0
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s38, 0x76543210
	v_dual_mov_b32 v39, 0x5410 :: v_dual_add_nc_u32 v202, 0, v142
	v_mov_b32_e32 v92, v137
	v_mov_b32_e32 v44, v137
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v46, v137 :: v_dual_cndmask_b32 v39, 0x1054, v39
	v_mov_b32_e32 v83, v137
	v_mov_b32_e32 v48, v137
	v_mov_b32_e32 v34, v137
	v_mov_b32_e32 v94, v137
	v_lshl_or_b32 v39, v39, 8, v39
	v_dual_mov_b32 v82, v137 :: v_dual_mov_b32 v89, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 0x540054, v39
	v_lshl_or_b32 v39, v39, 4, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v197, 0x5040504, v39
	v_lshlrev_b32_e32 v39, 4, v0
	v_add_nc_u32_e32 v200, 0, v39
	v_mov_b32_e32 v39, v137
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt vmcnt(0)
	v_add3_u32 v2, 0, v1, v2
	v_xor_b32_e32 v1, 0x7bc, v194
	ds_load_b32 v196, v2
	v_and_b32_e32 v2, 52, v181
	v_add_nc_u32_e32 v227, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v97, 5, v2
	v_or3_b32 v153, v4, v153, v2
	v_xor_b32_e32 v2, 0x90, v198
	v_xor_b32_e32 v4, 0x120, v198
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v6, 16, v153
	v_xor_b32_e32 v7, 32, v153
	v_xor_b32_e32 v8, 48, v153
	v_add_nc_u32_e32 v205, 0, v2
	v_add_nc_u32_e32 v207, 0, v4
	v_add_nc_u32_e32 v209, 0, v6
	v_add_nc_u32_e32 v210, 0, v7
	v_add_nc_u32_e32 v211, 0, v8
	s_branch .LBB0_35
.LBB0_34:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_waitcnt vmcnt(0)
	v_and_b16 v97.l, 0xff, v101.h
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_add_i32 s56, s56, 16
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v138, v137
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v97.l
	v_and_b16 v97.l, 0xff, v99.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v140, v137
	v_mov_b32_e32 v139, v137
	v_mov_b32_e32 v142, v137
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s77, vcc_lo
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s0, 0, v97.l
	v_and_b16 v97.l, 0xff, v98.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v1, 0, 1, s13
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_mov_b32_e32 v141, v137
	v_mov_b32_e32 v144, v137
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s0, s76, s0
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s1, 0, v97.l
	v_and_b16 v97.l, 0xff, v100.l
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_mov_b32_e32 v143, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s12, 0, v97.l
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	v_mov_b16_e32 v97.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s75, s12
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v98.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s74, s1
	v_or_b16 v97.l, v98.l, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v98.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	v_lshlrev_b16 v97.h, 8, v98.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v100.l, v1.l
	v_add_nc_u32_e32 v1, 0, v198
	v_or_b16 v97.h, v100.l, v97.h
	ds_store_b16 v1, v97
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_and_b16 v97.l, 0xff, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v97.l
	v_and_b16 v97.l, 0xff, v98.h
	v_cmp_ne_u16_e64 s0, 0, v97.l
	v_and_b16 v97.l, 0xff, v101.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s0, s70, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s1, 0, v97.l
	v_and_b16 v97.l, 0xff, v100.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s1, s73, s1
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s12, 0, v97.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_and_b32 s1, s72, vcc_lo
	.loc	1 387 26 is_stmt 1              ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v97.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_and_b32 s1, s71, s12
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v98.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s1
	v_or_b16 v97.l, v98.l, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v98.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	v_lshlrev_b16 v98.l, 8, v98.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v99.l, v1.l
	v_or_b16 v98.l, v99.l, v98.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[99:100], null, s69, s55, v[0:1]
	.loc	1 340 21                        ; attention_backward.py:340:21
	ds_store_b16_d16_hi v205, v97
	ds_store_b16 v207, v97
	ds_store_b16 v208, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v97, 0, v153
	ds_load_u8_d16 v188, v97
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v188, v97 offset:64
	ds_load_u8_d16 v255, v209
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v255, v210
	ds_load_u8_d16 v219, v211
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v219, v211 offset:64
	ds_load_u8_d16 v189, v210 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v189, v209 offset:64
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v1, s55, v99
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v97, 0, v194
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v3, s55, v1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v2, 1, v99
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v4, s55, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s67
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v5, s55, v4
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v6, s55, v5
	v_add_nc_u32_e32 v7, s55, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s55, v7
	v_add_nc_u32_e32 v9, s55, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v10, s55, v9
	v_add_nc_u32_e32 v11, s55, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v12, s55, v11
	v_add_nc_u32_e32 v13, s55, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v14, s55, v13
	v_add_nc_u32_e32 v15, s55, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v16, 1, v15
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v4, 1, v4
	v_add_lshl_u32 v15, v15, s55, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s65
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s64
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s61
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x7
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s51
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s50
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s49
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s48
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s46
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s47
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s45
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s56, s57
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0x7
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v97, v2
	s_waitcnt vmcnt(14)
	ds_store_b16 v212, v1
	s_waitcnt vmcnt(13)
	ds_store_b16 v213, v3
	s_waitcnt vmcnt(12)
	ds_store_b16 v214, v4
	s_waitcnt vmcnt(11)
	ds_store_b16 v215, v5
	s_waitcnt vmcnt(10)
	ds_store_b16 v216, v6
	s_waitcnt vmcnt(9)
	ds_store_b16 v217, v7
	s_waitcnt vmcnt(8)
	ds_store_b16 v218, v8
	s_waitcnt vmcnt(7)
	ds_store_b16 v220, v9
	s_waitcnt vmcnt(6)
	ds_store_b16 v221, v10
	s_waitcnt vmcnt(5)
	ds_store_b16 v222, v11
	s_waitcnt vmcnt(4)
	ds_store_b16 v223, v12
	s_waitcnt vmcnt(3)
	ds_store_b16 v224, v13
	s_waitcnt vmcnt(2)
	ds_store_b16 v225, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v226, v16
	s_waitcnt vmcnt(0)
	ds_store_b16 v227, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[243:244], v228 offset1:16
	ds_load_2addr_b32 v[245:246], v232 offset1:16
	ds_load_2addr_b32 v[247:248], v236 offset1:16
	ds_load_2addr_b32 v[249:250], v240 offset1:16
	ds_load_2addr_b32 v[13:14], v239 offset1:16
	ds_load_2addr_b32 v[183:184], v229 offset1:16
	ds_load_2addr_b32 v[185:186], v230 offset1:16
	ds_load_2addr_b32 v[3:4], v233 offset1:16
	ds_load_2addr_b32 v[5:6], v234 offset1:16
	ds_load_2addr_b32 v[7:8], v235 offset1:16
	ds_load_2addr_b32 v[9:10], v237 offset1:16
	ds_load_2addr_b32 v[11:12], v238 offset1:16
	ds_load_2addr_b32 v[15:16], v241 offset1:16
	ds_load_2addr_b32 v[181:182], v242 offset1:16
	v_dual_mov_b32 v97, v137 :: v_dual_mov_b32 v98, v138
	v_dual_mov_b32 v99, v139 :: v_dual_mov_b32 v100, v140
	v_dual_mov_b32 v101, v141 :: v_dual_mov_b32 v102, v142
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v165.h, v243.l
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e64 v167.h, v245.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v169.h, v247.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v171.h, v249.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v249.l, v13.h
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v1, 0, v195
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v166.l, v183.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v166.h, v185.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v168.l, v3.l
	v_mov_b32_e32 v180, v249
	ds_load_2addr_b32 v[252:253], v1 offset1:16
	ds_load_2addr_b32 v[1:2], v231 offset1:16
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v168.h, v5.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v169.l, v7.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v170.l, v9.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v170.h, v11.l
	v_mov_b16_e64 v171.l, v13.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v172.l, v15.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v172.h, v181.l
	v_dual_mov_b32 v103, v143 :: v_dual_mov_b32 v104, v144
	v_mov_b16_e64 v185.l, v183.h
	v_mov_b16_e32 v5.l, v3.h
	v_mov_b16_e64 v247.l, v7.h
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e64 v181.l, v15.h
	v_mov_b32_e32 v175, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v177, v5 :: v_dual_mov_b32 v178, v247
	v_mov_b32_e32 v179, v11
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v165.l, v252.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v167.l, v1.l
	v_mov_b16_e64 v243.l, v252.h
	v_mov_b16_e64 v245.l, v1.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v1, s59, v145, -v206
	v_fma_f32 v3, s59, v147, -v206
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[97:104], v[165:172], v[49:56], v[97:104]
	v_mov_b16_e64 v165.l, v253.l
	v_mov_b16_e64 v165.h, v244.l
	v_mov_b16_e64 v166.l, v184.l
	v_mov_b16_e64 v166.h, v186.l
	v_mov_b16_e64 v167.l, v2.l
	v_mov_b16_e64 v167.h, v246.l
	v_mov_b16_e64 v168.l, v4.l
	v_mov_b16_e64 v168.h, v6.l
	v_mov_b16_e64 v169.l, v8.l
	v_mov_b16_e64 v169.h, v248.l
	v_mov_b16_e64 v170.l, v10.l
	v_mov_b16_e64 v170.h, v12.l
	v_mov_b16_e64 v171.l, v14.l
	v_mov_b16_e64 v171.h, v250.l
	v_mov_b16_e64 v172.l, v16.l
	v_mov_b16_e64 v172.h, v182.l
	v_mov_b16_e64 v182.l, v16.h
	v_mov_b32_e32 v174, v243
	v_mov_b32_e32 v176, v245
	v_mov_b16_e64 v186.l, v184.h
	v_wmma_f32_16x16x16_bf16 v[97:104], v[165:172], v[57:64], v[97:104]
	v_mov_b16_e64 v246.l, v2.h
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v12.l, v10.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v2, s59, v146, -v206
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v251, v182
	v_wmma_f32_16x16x16_bf16 v[97:104], v[174:181], v[65:72], v[97:104]
	v_mov_b16_e64 v244.l, v253.h
	v_mov_b16_e64 v248.l, v8.h
	v_mov_b16_e64 v250.l, v14.h
	v_mov_b32_e32 v247, v6
	v_mov_b32_e32 v249, v12
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v245, v186
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v4, s59, v148, -v206
	v_fma_f32 v5, s59, v149, -v206
	v_fma_f32 v6, s59, v150, -v206
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[97:104], v[244:251], v[73:80], v[97:104]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v7, s59, v151, -v206
	v_fma_f32 v8, s59, v152, -v206
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v9, v97, v196
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v97.l, 1, v188.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v12, v100, v196
	v_sub_f32_e32 v10, v98, v196
	v_sub_f32_e32 v11, v99, v196
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v99.l, 1, v255.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v97.l
	v_and_b16 v97.l, 1, v255.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v16, v104, v196
	v_dual_sub_f32 v14, v102, v196 :: v_dual_cndmask_b32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v97.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v9 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s58, v1 :: v_dual_mul_f32 v2, v2, v10
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v9, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s58, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v9, v2, 16, 1
	v_cmp_o_f32_e64 s0, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v9, 0x7fff
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	v_and_b16 v99.l, 1, v219.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s38, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v97, v2, v1, v197
	v_perm_b32 v98, v2, v1, v199
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v3
	v_exp_f32_e32 v2, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v12
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v2, s58, v2 :: v_dual_mul_f32 v1, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s58, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v2, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	v_permlanex16_b32 v2, v1, s38, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v99, v2, v1, v197
	v_perm_b32 v100, v2, v1, v199
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v5
	v_exp_f32_e32 v2, v6
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v13, v101, v196
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v101.l, 1, v188.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_eq_u16_e32 vcc_lo, 1, v101.l
	v_and_b16 v101.l, 1, v189.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v101.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mul_f32 v1, v1, v13
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v15, v103, v196
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v103.l, 1, v189.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v2, v2, v14 :: v_dual_mul_f32 v1, s58, v1
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s58, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s0, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v3, 0x7fff
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v103.l
	v_and_b16 v103.l, 1, v219.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s38, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v2, v1, v197
	v_perm_b32 v102, v2, v1, v199
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v7
	v_exp_f32_e32 v2, v8
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v103.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v15 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s58, v1 :: v_dual_mul_f32 v2, v2, v16
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s58, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v1, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s0, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v3, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s38, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v103, v2, v1, v197
	v_perm_b32 v104, v2, v1, v199
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[97:104], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[97:104], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[113:120], v[97:104], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[97:104], v[33:40]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc0 .LBB0_55
.LBB0_35:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s0, s56, 1
	s_or_b32 s1, s56, 2
	s_or_b32 s12, s56, 3
	s_or_b32 s13, s56, 4
	s_or_b32 s14, s56, 5
	s_or_b32 s15, s56, 6
	s_or_b32 s16, s56, 7
	s_or_b32 s17, s56, 8
	s_or_b32 s18, s56, 9
	s_or_b32 s19, s56, 10
	s_or_b32 s20, s56, 11
	s_or_b32 s21, s56, 12
	s_or_b32 s22, s56, 13
	s_or_b32 s23, s56, 14
	s_or_b32 s24, s56, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s56, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v139, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s0, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v138, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s1, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v140, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s12, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s13, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v144, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s14, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v141, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s15, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v143, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s16, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v152, v144
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s17, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v147, v139
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s18, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v150, v142
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s19, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v148, v140
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s20, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v151, v143
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s21, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v146, v138
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s22, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v145, v137
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s23, s27
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v149, v141
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s24, s27
	s_cselect_b32 s45, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s69, s56, s25
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[97:98], null, s69, s33, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, s33, v97
	v_add_nc_u32_e32 v3, s33, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v4, 1, v3
	v_lshlrev_b32_e32 v1, 1, v97
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x1
	buffer_load_u16 v97, v1, s[28:31], 0 offen
	buffer_load_u16 v98, v4, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v1, s33, v3
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v4, 1, v3
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s63
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v99, v4, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v3
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v5, 1, v4
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s60
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v100, v5, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v4
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v1, 1, v1
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
	s_and_b32 vcc_lo, s2, s50
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v8, 1, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_load_u16 v101, v6, s[28:31], 0 offen
	buffer_load_u16 v102, v8, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s33, v7
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v8, 1, v7
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s47
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v103, v8, s[28:31], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v8, s33, v7
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v9, 1, v8
	v_add_lshl_u32 v8, v8, s33, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s65
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s61
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v104, v9, s[28:31], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s62
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s67
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s49
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x3
	buffer_load_u16 v4, v4, s[28:31], 0 offen
	buffer_load_u16 v3, v3, s[28:31], 0 offen
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s45
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s46
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s51
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x3
	buffer_load_u16 v8, v8, s[28:31], 0 offen
	buffer_load_u16 v7, v7, s[28:31], 0 offen
	buffer_load_u16 v6, v6, s[28:31], 0 offen
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v164
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v100.h, v4.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v99.h, v3.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v98.h, v1.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v97.h, v2.l
	ds_store_b128 v200, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v201
	ds_load_b128 v[121:124], v201 offset:256
	ds_load_b128 v[113:116], v201 offset:512
	ds_load_b128 v[105:108], v201 offset:768
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v104.h, v8.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v103.h, v7.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v102.h, v6.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.h, v5.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v200, v[101:104]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v201
	ds_load_b128 v[125:128], v201 offset:256
	ds_load_b128 v[117:120], v201 offset:512
	ds_load_b128 v[109:112], v201 offset:768
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v159, v3
	ds_store_b16 v155, v2
	ds_store_b16 v154, v97
	ds_store_b16 v156, v98
	ds_store_b16 v158, v99
	ds_store_b16 v160, v100
	ds_store_b16 v158, v103 offset:1024
	ds_store_b16 v160, v104 offset:1024
	ds_store_b16 v154, v101 offset:1024
	ds_store_b16 v156, v102 offset:1024
	ds_store_b16 v155, v5 offset:1024
	ds_store_b16 v157, v1
	ds_store_b16 v157, v6 offset:1024
	ds_store_b16 v159, v7 offset:1024
	ds_store_b16 v161, v4
	ds_store_b16 v161, v8 offset:1024
	v_add_nc_u32_e32 v1, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[174:177], v1
	ds_load_b128 v[178:181], v202
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:124
	scratch_load_b128 v[5:8], off, off offset:140
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v98, s56, v162
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s0, s27, v98
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s76, s4, s0
	s_and_b32 s74, s5, s0
	s_and_b32 s72, s6, s0
	s_and_b32 s70, s7, s0
	s_and_b32 s77, s8, s0
	s_and_b32 s75, s9, s0
	s_and_b32 s73, s10, s0
	s_and_b32 s71, s11, s0
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[174:181], v[17:24], v[145:152]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[174:177], v203
	ds_load_b128 v[178:181], v204
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[174:181], v[1:8], v[145:152]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off
	scratch_load_b128 v[5:8], off, off offset:16
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[174:177], v190
	ds_load_b128 v[178:181], v191
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[174:181], v[25:32], v[145:152]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[174:177], v192
	ds_load_b128 v[178:181], v193
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[174:181], v[1:8], v[145:152]
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_cbranch_vccnz .LBB0_37
; %bb.36:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	v_cmp_le_i32_e64 s16, v98, v173
	s_and_not1_b32 s18, s76, exec_lo
	s_and_not1_b32 s19, s74, exec_lo
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s16, s16, s71
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v98, v1
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s17, vcc_lo, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, exec_lo
	s_or_b32 s76, s18, s17
	s_and_not1_b32 s17, s70, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s0, v98, v1
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s0, s0, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s0, s0, exec_lo
	s_or_b32 s74, s19, s0
	s_and_not1_b32 s0, s72, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v98, v1
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s1, s1, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s72, s0, s1
	s_and_not1_b32 s0, s77, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v98, v1
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s12, s12, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s70, s17, s12
	s_and_not1_b32 s12, s75, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v98, v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s13, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s13, exec_lo
	s_or_b32 s77, s0, s1
	s_and_not1_b32 s0, s73, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v98, v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s75, s12, s13
	s_and_not1_b32 s12, s71, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s71, s12, s13
	.loc	1 327 26                        ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v98, v1
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s15, s15, s73
	s_and_b32 s1, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s73, s0, s1
.LBB0_37:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s52
	s_cbranch_vccnz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v98, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s0, v98, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v98, v1
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
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v98, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s17, vcc_lo, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s76
	s_and_b32 s17, s17, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v98, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s0, s18
	s_and_not1_b32 s18, s76, exec_lo
	s_and_b32 s0, s0, s74
	s_or_b32 s76, s18, s17
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s17, s70, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v98, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, s19
	s_and_not1_b32 s19, s74, exec_lo
	s_and_b32 s1, s1, s72
	s_or_b32 s74, s19, s0
	s_and_not1_b32 s0, s72, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s72, s0, s1
	s_and_not1_b32 s0, s77, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v98, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s12, s12, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, s70
	s_and_b32 s12, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s70, s17, s12
	s_and_not1_b32 s12, s75, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v98, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s13, s13, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s77
	s_and_b32 s1, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s77, s0, s1
	s_and_not1_b32 s0, s73, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v98, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s75
	s_and_b32 s13, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s75, s12, s13
	s_and_not1_b32 s12, s71, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v98, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s73
	s_and_b32 s1, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s73, s0, s1
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v98, v1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_and_b32 s16, s16, s71
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s71, s12, s13
.LBB0_39:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v98.l, 0
	.loc	1 333 21 is_stmt 1              ; attention_backward.py:333:21
	s_mul_i32 s0, s56, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s44, s0
	v_mov_b16_e32 v99.h, v98.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s76
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s0, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v99, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v100, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v99, v[99:100], off
.LBB0_41:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s74
	s_cbranch_execz .LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	scratch_load_b64 v[1:2], off, off offset:156 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v97, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v98, null, s35, v2, vcc_lo
	global_load_d16_u8 v98, v[97:98], off
.LBB0_43:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v98.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.l, v98.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s72
	s_cbranch_execz .LBB0_45
; %bb.44:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	scratch_load_b64 v[1:2], off, off offset:164 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v100, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v101, null, s35, v2, vcc_lo
	global_load_d16_u8 v99, v[100:101], off
.LBB0_45:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s70
	s_cbranch_execz .LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s0, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v100, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v101, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v98, v[100:101], off
.LBB0_47:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v100.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v101.h, v100.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s77
	s_cbranch_execz .LBB0_49
; %bb.48:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	scratch_load_b64 v[1:2], off, off offset:172 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v101, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v102, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v101, v[101:102], off
.LBB0_49:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s75
	s_cbranch_execz .LBB0_51
; %bb.50:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	scratch_load_b64 v[1:2], off, off offset:180 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v102, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v103, null, s35, v2, vcc_lo
	global_load_d16_u8 v100, v[102:103], off
.LBB0_51:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v100.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v101.l, v100.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s73
	s_cbranch_execz .LBB0_53
; %bb.52:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	scratch_load_b64 v[1:2], off, off offset:188 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v102, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v103, null, s35, v2, vcc_lo
	global_load_d16_u8 v101, v[102:103], off
.LBB0_53:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s1, s71
	s_cbranch_execz .LBB0_34
; %bb.54:                               ;   in Loop: Header=BB0_35 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	scratch_load_b64 v[1:2], off, off offset:196 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v102, vcc_lo, s34, v1
	v_add_co_ci_u32_e64 v103, null, s35, v2, vcc_lo
	global_load_d16_hi_u8 v100, v[102:103], off
	s_branch .LBB0_34
.LBB0_55:                               ; %Flow
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:204
	scratch_load_b32 v194, off, off offset:208
.LBB0_56:                               ; %._crit_edge82
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v194, v162
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshrrev_b32_e32 v1, 4, v131
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s54, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v3, 62, v1
	v_or_b32_e32 v4, 60, v1
	v_or_b32_e32 v5, 58, v1
	v_or_b32_e32 v6, 56, v1
	v_or_b32_e32 v7, 54, v1
	v_or_b32_e32 v8, 52, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s26, v2
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
	v_add_lshl_u32 v32, v32, s53, 2
	v_add_lshl_u32 v31, v31, s53, 2
	v_add_lshl_u32 v3, v29, s53, 2
	v_add_lshl_u32 v28, v28, s53, 2
	v_add_lshl_u32 v0, v0, s53, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s30
	v_cndmask_b32_e64 v31, 0x80000000, v31, s29
	v_cndmask_b32_e64 v3, 0x80000000, v3, s27
	v_add_lshl_u32 v27, v27, s53, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v1, v1, s53, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s26
	v_add_lshl_u32 v24, v24, s53, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s25
	v_add_lshl_u32 v23, v23, s53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	v_add_lshl_u32 v20, v20, s53, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s22
	v_add_lshl_u32 v19, v19, s53, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s21
	buffer_store_b32 v89, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v30, s53, 2
	s_clause 0x1
	buffer_store_b32 v90, v32, s[36:39], 0 offen
	buffer_store_b32 v91, v31, s[36:39], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	v_add_lshl_u32 v16, v16, s53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	s_clause 0x1
	buffer_store_b32 v92, v1, s[36:39], 0 offen
	buffer_store_b32 v93, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v26, s53, 2
	v_add_lshl_u32 v3, v25, s53, 2
	s_clause 0x1
	buffer_store_b32 v94, v28, s[36:39], 0 offen
	buffer_store_b32 v95, v27, s[36:39], 0 offen
	v_add_lshl_u32 v15, v15, s53, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s14
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s23
	s_clause 0x1
	buffer_store_b32 v96, v1, s[36:39], 0 offen
	buffer_store_b32 v81, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v22, s53, 2
	v_add_lshl_u32 v3, v21, s53, 2
	s_clause 0x1
	buffer_store_b32 v82, v24, s[36:39], 0 offen
	buffer_store_b32 v83, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v15, 0x80000000, v15, s13
	v_add_lshl_u32 v12, v12, s53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	s_clause 0x1
	buffer_store_b32 v84, v1, s[36:39], 0 offen
	buffer_store_b32 v85, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, s53, 2
	v_add_lshl_u32 v3, v17, s53, 2
	s_clause 0x1
	buffer_store_b32 v86, v20, s[36:39], 0 offen
	buffer_store_b32 v87, v19, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s53, 2
	v_add_lshl_u32 v2, v2, s53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	s_clause 0x1
	buffer_store_b32 v88, v1, s[36:39], 0 offen
	buffer_store_b32 v41, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v14, s53, 2
	v_add_lshl_u32 v3, v13, s53, 2
	s_clause 0x1
	buffer_store_b32 v42, v16, s[36:39], 0 offen
	buffer_store_b32 v43, v15, s[36:39], 0 offen
	v_add_lshl_u32 v8, v8, s53, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b32 v44, v1, s[36:39], 0 offen
	buffer_store_b32 v45, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v10, s53, 2
	v_add_lshl_u32 v3, v9, s53, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	s_clause 0x3
	buffer_store_b32 v46, v12, s[36:39], 0 offen
	buffer_store_b32 v47, v11, s[36:39], 0 offen
	buffer_store_b32 v48, v1, s[36:39], 0 offen
	buffer_store_b32 v33, v3, s[36:39], 0 offen
	v_add_lshl_u32 v1, v7, s53, 2
	s_clause 0x1
	buffer_store_b32 v34, v2, s[36:39], 0 offen
	buffer_store_b32 v35, v8, s[36:39], 0 offen
	v_add_lshl_u32 v2, v6, s53, 2
	v_add_lshl_u32 v3, v5, s53, 2
	v_add_lshl_u32 v4, v4, s53, 2
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
.Ltmp325:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 216
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
		.amdhsa_next_free_sgpr 86
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 86
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 216
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25548
; TotalNumSgprs: 88
; NumVgprs: 256
; ScratchSize: 216
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 88
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
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
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
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
	.quad	.Ltmp99-.Lfunc_begin0
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
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
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
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
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
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
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
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
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
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
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
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 216
    .sgpr_count:     88
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 55
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
