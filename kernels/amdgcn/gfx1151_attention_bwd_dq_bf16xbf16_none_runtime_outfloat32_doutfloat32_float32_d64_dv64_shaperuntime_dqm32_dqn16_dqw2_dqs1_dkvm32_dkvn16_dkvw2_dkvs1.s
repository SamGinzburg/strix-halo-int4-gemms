	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v108, 32, v0
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
	s_sub_i32 s29, s3, s9
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
	s_abs_i32 s28, s29
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s13
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s8, s26, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s30, s2, s13
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s26, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s18, s30
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
	s_or_b32 s27, s26, 11
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
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s25, s22
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s27, s22
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s27, s3, s22
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s15, s22
	s_load_b128 s[12:15], s[0:1], 0x38
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s31, s22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s34, s22
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s39, s22
	s_cselect_b32 s25, -1, 0
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
	s_add_i32 s27, s27, s26
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s34, s27, s33
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
	s_and_b32 vcc_lo, s20, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s2
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
	v_mad_u64_u32 v[1:2], null, s27, s35, v[0:1]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v39, 0x240, v3
	v_xor_b32_e32 v40, 0x2d0, v3
	v_xor_b32_e32 v41, 0x360, v3
	v_add_nc_u32_e32 v146, 0, v36
	v_add_nc_u32_e32 v147, 0, v37
	v_add_nc_u32_e32 v148, 0, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s35, v1
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v149, 0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 2, v36
	v_dual_cndmask_b32 v65, 0x80000000, v1 :: v_dual_add_nc_u32 v150, 0, v40
	v_lshl_add_u32 v1, s35, 6, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 2, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v36, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v38, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v36
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v67, 0x80000000, v37 :: v_dual_lshlrev_b32 v36, 2, v36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v69, 0x80000000, v36 :: v_dual_lshlrev_b32 v38, 2, v39
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v70, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 2, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v72, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v73, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v86, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v98, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v99, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v74, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v75, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v76, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v88, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s38, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v77, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v89, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s37, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v78, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v94, 0x80000000, v36 :: v_dual_add_nc_u32 v151, 0, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v40, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v36, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v100, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, s35, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v101, 0x80000000, v36, vcc_lo
	v_lshlrev_b32_e32 v36, 2, v40
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s3
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
	v_dual_cndmask_b32 v102, 0x80000000, v37 :: v_dual_lshlrev_b32 v37, 2, v38
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v38, v38, s35, 2
	v_dual_cndmask_b32 v105, 0x80000000, v36 :: v_dual_lshlrev_b32 v36, 2, v39
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s20, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v39, v39, s35, 2
	v_cndmask_b32_e32 v103, 0x80000000, v37, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v104, 0x80000000, v38, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s39, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v106, 0x80000000, v36, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v107, 0x80000000, v39, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v45, v65, s[8:11], 0 offen
	buffer_load_b32 v46, v66, s[8:11], 0 offen
	buffer_load_b32 v47, v3, s[8:11], 0 offen
	buffer_load_b32 v48, v68, s[8:11], 0 offen
	buffer_load_b32 v33, v70, s[8:11], 0 offen
	buffer_load_b32 v34, v72, s[8:11], 0 offen
	buffer_load_b32 v35, v86, s[8:11], 0 offen
	buffer_load_b32 v36, v87, s[8:11], 0 offen
	buffer_load_b32 v53, v74, s[8:11], 0 offen
	buffer_load_b32 v54, v76, s[8:11], 0 offen
	buffer_load_b32 v55, v77, s[8:11], 0 offen
	buffer_load_b32 v56, v78, s[8:11], 0 offen
	buffer_load_b32 v37, v100, s[8:11], 0 offen
	buffer_load_b32 v38, v102, s[8:11], 0 offen
	buffer_load_b32 v39, v103, s[8:11], 0 offen
	buffer_load_b32 v40, v104, s[8:11], 0 offen
	buffer_load_b32 v57, v1, s[8:11], 0 offen
	buffer_load_b32 v58, v2, s[8:11], 0 offen
	buffer_load_b32 v59, v67, s[8:11], 0 offen
	buffer_load_b32 v60, v69, s[8:11], 0 offen
	buffer_load_b32 v41, v71, s[8:11], 0 offen
	buffer_load_b32 v42, v73, s[8:11], 0 offen
	buffer_load_b32 v43, v98, s[8:11], 0 offen
	buffer_load_b32 v44, v99, s[8:11], 0 offen
	buffer_load_b32 v61, v75, s[8:11], 0 offen
	buffer_load_b32 v62, v88, s[8:11], 0 offen
	buffer_load_b32 v63, v89, s[8:11], 0 offen
	buffer_load_b32 v64, v94, s[8:11], 0 offen
	buffer_load_b32 v49, v101, s[8:11], 0 offen
	buffer_load_b32 v50, v105, s[8:11], 0 offen
	buffer_load_b32 v51, v106, s[8:11], 0 offen
	buffer_load_b32 v52, v107, s[8:11], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_clause 0x1f
	buffer_load_b32 v93, v65, s[8:11], 0 offen
	buffer_load_b32 v92, v66, s[8:11], 0 offen
	buffer_load_b32 v91, v3, s[8:11], 0 offen
	buffer_load_b32 v90, v68, s[8:11], 0 offen
	buffer_load_b32 v85, v74, s[8:11], 0 offen
	buffer_load_b32 v84, v76, s[8:11], 0 offen
	buffer_load_b32 v83, v77, s[8:11], 0 offen
	buffer_load_b32 v82, v78, s[8:11], 0 offen
	buffer_load_b32 v81, v1, s[8:11], 0 offen
	buffer_load_b32 v80, v2, s[8:11], 0 offen
	buffer_load_b32 v79, v67, s[8:11], 0 offen
	buffer_load_b32 v78, v69, s[8:11], 0 offen
	buffer_load_b32 v77, v75, s[8:11], 0 offen
	buffer_load_b32 v76, v88, s[8:11], 0 offen
	buffer_load_b32 v75, v89, s[8:11], 0 offen
	buffer_load_b32 v74, v94, s[8:11], 0 offen
	buffer_load_b32 v97, v70, s[8:11], 0 offen
	buffer_load_b32 v96, v72, s[8:11], 0 offen
	buffer_load_b32 v95, v86, s[8:11], 0 offen
	buffer_load_b32 v94, v87, s[8:11], 0 offen
	buffer_load_b32 v89, v100, s[8:11], 0 offen
	buffer_load_b32 v88, v102, s[8:11], 0 offen
	buffer_load_b32 v87, v103, s[8:11], 0 offen
	buffer_load_b32 v86, v104, s[8:11], 0 offen
	buffer_load_b32 v109, v71, s[8:11], 0 offen
	buffer_load_b32 v104, v73, s[8:11], 0 offen
	buffer_load_b32 v103, v98, s[8:11], 0 offen
	buffer_load_b32 v102, v99, s[8:11], 0 offen
	buffer_load_b32 v101, v101, s[8:11], 0 offen
	buffer_load_b32 v100, v105, s[8:11], 0 offen
	buffer_load_b32 v99, v106, s[8:11], 0 offen
	buffer_load_b32 v98, v107, s[8:11], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v105, 4, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(24)
	v_mul_f32_e32 v65, v56, v82
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v67, v58, v80 :: v_dual_mul_f32 v66, v57, v81
	s_waitcnt vmcnt(21)
	v_mul_f32_e32 v68, v59, v79
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v120, v33, v97 :: v_dual_fmac_f32 v65, v56, v82
	s_waitcnt vmcnt(13)
	v_mul_f32_e32 v122, v35, v95
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v121, v34, v96
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v72, v63, v75
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v122, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v67, v58, v80
.Ltmp9:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v127, v40, v86 :: v_dual_fmac_f32 v120, v33, v97
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v122, v35, v95 :: v_dual_mul_f32 v133, v50, v100
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v134, v51, v99
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v127, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v133, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v134, v134 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v107, 15, v0
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v72, v63, v75 :: v_dual_fmac_f32 v133, v50, v100
	v_fmac_f32_e32 v134, v51, v99
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp17:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v106, 7, v107
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v127, v40, v86
	v_add_f32_dpp v40, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_and_or_b32 v153, 0x70, v105, v106
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v108, 6, v153
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v65, v33, -1, -1 op_sel:[1,0]
.Ltmp25:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v70, v61, v77 :: v_dual_mul_f32 v69, v60, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v6, 64, v2
	v_xor_b32_e32 v4, 32, v2
	v_xor_b32_e32 v7, 0x50, v2
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v71, v62, v76
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v40, -1, -1 op_sel:[1,0]
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v35, v67 :: v_dual_add_nc_u32 v114, 0, v6
.Ltmp30:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v6, v53, v85
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v65 :: v_dual_add_nc_u32 v112, 0, v4
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v4, v47, v91
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v40, v40, v72 :: v_dual_add_nc_u32 v115, 0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v6, v6 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v7, v54, v84
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v4, v4 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v123, v36, v94
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v6, v53, v85
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v7, v7 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v4, v47, v91
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v66, v57, v81
	v_add_f32_dpp v6, v6, v6 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v125, v38, v88
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v129, v42, v104
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v7, v54, v84 :: v_dual_mul_f32 v124, v37, v89
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v123, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v68, v59, v79 :: v_dual_fmac_f32 v121, v34, v96
	v_add_f32_dpp v34, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v125, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v129, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v70, v61, v77
	v_add_f32_dpp v7, v7, v7 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v124, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v69, v60, v78
	v_fmac_f32_e32 v71, v62, v76
	v_fmac_f32_e32 v123, v36, v94
	v_add_f32_dpp v36, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v62, v6, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v1, 6, v0
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v125, v38, v88
	v_fmac_f32_e32 v129, v42, v104
	v_add_f32_dpp v38, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v124, v37, v89
	v_add_f32_dpp v37, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v60, v4, -1, -1 op_sel:[1,0]
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v6, v6, v62 :: v_dual_and_b32 v1, 64, v1
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v66, v34, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v4, v60 :: v_dual_add_nc_u32 v119, 0, v1
.Ltmp61:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v1, 16, v2
	v_xor_b32_e32 v5, 48, v2
	v_xor_b32_e32 v8, 0x60, v2
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v63, v7, -1, -1 op_sel:[1,0]
.Ltmp64:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v110, 0, v2
	v_xor_b32_e32 v2, 0x70, v2
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v36, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v111, 0, v1
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v1, v45, v93
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v70, v38, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v113, 0, v5
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v5, v48, v90
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v42, -1, -1 op_sel:[1,0]
.Ltmp71:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v117, 0, v2
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v2, v46, v92
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v1, v1 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v69, v37, -1, -1 op_sel:[1,0]
.Ltmp73:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v116, 0, v8
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v8, v55, v83 :: v_dual_mul_f32 v73, v64, v74
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v2, v2 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v5, v5 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v1, v45, v93
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v126, v39, v87
	v_mul_f32_e32 v128, v41, v109
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v130, v43, v103 :: v_dual_mul_f32 v131, v44, v102
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v132, v49, v101 :: v_dual_mul_f32 v135, v52, v98
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v2, v46, v92 :: v_dual_fmac_f32 v5, v48, v90
	v_fmac_f32_e32 v8, v55, v83
	v_add_f32_dpp v1, v1, v1 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v126, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v128, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v73, v64, v74
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v130, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v131, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v132, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v135, v135 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v126, v39, v87
	v_fmac_f32_e32 v128, v41, v109
	v_add_f32_dpp v39, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v130, v43, v103 :: v_dual_fmac_f32 v131, v44, v102
	v_dual_fmac_f32 v132, v49, v101 :: v_dual_fmac_f32 v135, v52, v98
	v_add_f32_dpp v44, v122, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v124, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v123, v123 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v125, v125 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v126, v126 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v127, v127 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v128, v128 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v129, v129 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v130, v130 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v131, v131 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v132, v132 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v133, v133 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v134, v134 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v135, v135 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v58, v1, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v59, v2, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v61, v5, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v64, v8, -1, -1 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v1, v58 :: v_dual_lshlrev_b32 v118, 1, v108
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v39, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v73, v41, -1, -1 op_sel:[1,0]
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v44, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v124, v46, -1, -1 op_sel:[1,0]
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v2, v59 :: v_dual_add_f32 v5, v5, v61
	v_dual_add_f32 v8, v8, v64 :: v_dual_add_nc_u32 v3, 0, v118
	v_add_f32_e32 v7, v7, v63
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v121, v43, -1, -1 op_sel:[1,0]
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v66
	v_dual_add_f32 v36, v36, v68 :: v_dual_add_f32 v37, v37, v69
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v123, v45, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v125, v47, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v126, v48, -1, -1 op_sel:[1,0]
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v70 :: v_dual_add_f32 v39, v39, v71
	v_dual_add_f32 v44, v44, v122 :: v_dual_add_f32 v41, v41, v73
	v_add_f32_e32 v46, v46, v124
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v127, v49, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v128, v50, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v129, v51, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v130, v52, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v131, v53, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v132, v54, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v133, v55, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v134, v56, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v135, v57, -1, -1 op_sel:[1,0]
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v42, v120
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v1, 31
	v_readlane_b32 s9, v2, 31
	v_readlane_b32 s10, v4, 31
	v_readlane_b32 s11, v5, 31
	v_readlane_b32 s12, v6, 31
	v_readlane_b32 s13, v7, 31
	v_readlane_b32 s14, v8, 31
	v_readlane_b32 s15, v33, 31
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v43, v121 :: v_dual_add_f32 v48, v48, v126
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s20, v34, 31
	v_readlane_b32 s25, v35, 31
	v_readlane_b32 s31, v36, 31
	v_readlane_b32 s36, v37, 31
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v45, v123 :: v_dual_add_f32 v50, v50, v128
	v_dual_add_f32 v47, v47, v125 :: v_dual_add_f32 v52, v52, v130
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v38, 31
	v_readlane_b32 s38, v39, 31
	v_readlane_b32 s39, v40, 31
	v_readlane_b32 s40, v41, 31
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v49, v127 :: v_dual_add_f32 v54, v54, v132
	v_dual_add_f32 v51, v51, v129 :: v_dual_add_f32 v56, v56, v134
	v_dual_add_f32 v53, v53, v131 :: v_dual_mov_b32 v34, s9
	v_dual_add_f32 v55, v55, v133 :: v_dual_mov_b32 v36, s11
	v_dual_add_f32 v57, v57, v135 :: v_dual_mov_b32 v38, s13
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v42, 31
	v_readlane_b32 s43, v44, 31
	v_readlane_b32 s45, v46, 31
	v_dual_mov_b32 v33, s8 :: v_dual_mov_b32 v40, s15
	v_dual_mov_b32 v35, s10 :: v_dual_mov_b32 v42, s25
	v_dual_mov_b32 v37, s12 :: v_dual_mov_b32 v44, s36
	v_dual_mov_b32 v39, s14 :: v_dual_mov_b32 v46, s38
	v_readlane_b32 s42, v43, 31
	v_mov_b32_e32 v41, s20
	v_dual_mov_b32 v43, s31 :: v_dual_mov_b32 v58, s41
	v_readlane_b32 s44, v45, 31
	v_readlane_b32 s46, v47, 31
	v_readlane_b32 s47, v48, 31
	v_dual_mov_b32 v45, s37 :: v_dual_mov_b32 v60, s43
	v_dual_mov_b32 v47, s39 :: v_dual_mov_b32 v62, s45
	v_mov_b32_e32 v48, s40
.Ltmp106:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[228:231], v110
	ds_load_b128 v[232:235], v111
	ds_load_b128 v[9:12], v112
	ds_load_b128 v[13:16], v113
	ds_load_b128 v[17:20], v114
	ds_load_b128 v[21:24], v115
	ds_load_b128 v[25:28], v116
	ds_load_b128 v[29:32], v117
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s48, v49, 31
	v_readlane_b32 s49, v50, 31
	v_readlane_b32 s50, v51, 31
	v_readlane_b32 s51, v52, 31
	v_readlane_b32 s52, v53, 31
	v_readlane_b32 s53, v54, 31
	v_readlane_b32 s54, v55, 31
	v_readlane_b32 s55, v56, 31
	v_readlane_b32 s56, v57, 31
	ds_store_b128 v3, v[33:36]
	ds_store_b128 v3, v[37:40] offset:16
	ds_store_b128 v3, v[41:44] offset:32
	ds_store_b128 v3, v[45:48] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v119
	ds_load_b128 v[50:53], v119 offset:16
	ds_load_b128 v[46:49], v119 offset:32
	ds_load_b128 v[42:45], v119 offset:48
	v_dual_mov_b32 v59, s42 :: v_dual_mov_b32 v64, s47
	v_dual_mov_b32 v61, s44 :: v_dual_mov_b32 v66, s49
	v_dual_mov_b32 v63, s46 :: v_dual_mov_b32 v68, s51
	v_dual_mov_b32 v65, s48 :: v_dual_mov_b32 v70, s53
	v_dual_mov_b32 v67, s50 :: v_dual_mov_b32 v72, s55
	v_mov_b32_e32 v69, s52
	v_mov_b32_e32 v71, s54
	v_mov_b32_e32 v73, s56
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp108:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s8, s23, 15
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v178, v54
	v_mov_b32_e32 v174, v56
	ds_store_b128 v3, v[58:61]
	ds_store_b128 v3, v[62:65] offset:16
	ds_store_b128 v3, v[66:69] offset:32
	ds_store_b128 v3, v[70:73] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v119
	ds_load_b128 v[62:65], v119 offset:16
	ds_load_b128 v[66:69], v119 offset:32
	ds_load_b128 v[58:61], v119 offset:48
	v_mov_b32_e32 v179, v55
	v_dual_mov_b32 v175, v57 :: v_dual_mov_b32 v172, v50
	v_mov_b32_e32 v173, v51
	v_dual_mov_b32 v139, v52 :: v_dual_mov_b32 v168, v47
	v_dual_mov_b32 v140, v53 :: v_dual_mov_b32 v167, v46
	v_dual_mov_b32 v169, v48 :: v_dual_mov_b32 v130, v42
	v_dual_mov_b32 v138, v49 :: v_dual_mov_b32 v131, v43
	v_dual_mov_b32 v132, v44 :: v_dual_mov_b32 v133, v45
.Ltmp110:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s9, s8, 31
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s9, s9, 28
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v176, v70 :: v_dual_mov_b32 v177, v71
	v_dual_mov_b32 v170, v72 :: v_dual_mov_b32 v171, v73
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v142, v63 :: v_dual_mov_b32 v141, v62
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v143, v64 :: v_dual_mov_b32 v136, v66
	v_dual_mov_b32 v144, v65 :: v_dual_mov_b32 v137, v67
	v_dual_mov_b32 v128, v68 :: v_dual_mov_b32 v129, v69
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v134, v58 :: v_dual_mov_b32 v135, v59
	v_dual_mov_b32 v127, v60 :: v_dual_mov_b32 v126, v61
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v129, v129 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v133, v133 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v134, v134 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s9, s8, s9
	s_mov_b32 s20, 0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s8, s28, s24
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s38, s9, -16
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
	s_and_b32 s20, s9, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s38, s38, s4
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x8
	s_load_b32 s39, s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v1, 0, 1, s17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s9, s29, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s10, s30, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s4, 1, v1
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
	s_min_i32 s38, s38, s11
.LBB0_4:
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v108
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s11, s8, s18
	s_xor_b32 s9, s9, s10
	s_sub_i32 s10, s28, s11
	s_load_b64 s[36:37], s[0:1], 0x58
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v162, v1, v107
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x48
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s10, s18
	s_cmp_ge_u32 s10, s18
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s26, v162
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
	v_add_nc_u32_e32 v163, s7, v1
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
	v_cmp_gt_i32_e64 s0, s22, v1
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s48, s1, s16
	v_subrev_nc_u32_e32 v164, s5, v163
	v_add_nc_u32_e32 v165, s6, v163
	v_xor_b32_e32 v119, 16, v153
	v_xor_b32_e32 v120, 32, v153
	v_xor_b32_e32 v121, 48, v153
	v_xor_b32_e32 v122, 64, v153
	v_xor_b32_e32 v123, 0x50, v153
	v_xor_b32_e32 v124, 0x60, v153
	v_xor_b32_e32 v125, 0x70, v153
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s21, s39, 0x3fb8aa3b
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s20, s38
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_mul_i32 s48, s48, s23
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s30, -1, 0
	s_cmp_ge_i32 s20, s38
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v181, 0xff800000 :: v_dual_add_nc_u32 v166, 0, v119
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v180, 0, v120
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v182, 0, v121
	v_add_nc_u32_e32 v183, 0, v122
	v_add_nc_u32_e32 v184, 0, v123
	v_add_nc_u32_e32 v185, 0, v124
	v_add_nc_u32_e32 v186, 0, v125
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s45, s25, 0xffff
	s_mov_b32 s44, s24
	s_mov_b32 s31, 0x76543210
	s_mov_b32 s49, s20
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 235 17 is_stmt 1              ; attention_backward.py:235:17
	v_dual_mul_f32 v1, s21, v34 :: v_dual_mul_f32 v2, s21, v35
	v_dual_mul_f32 v3, s21, v36 :: v_dual_mul_f32 v4, s21, v37
	v_dual_mul_f32 v5, s21, v38 :: v_dual_mul_f32 v6, s21, v39
	v_dual_mul_f32 v7, s21, v40 :: v_dual_mul_f32 v8, s21, v41
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v1, s54
	v_cndmask_b32_e64 v2, 0xff800000, v2, s51
	v_cndmask_b32_e64 v3, 0xff800000, v3, s56
	v_cndmask_b32_e64 v4, 0xff800000, v4, s50
	v_cndmask_b32_e64 v5, 0xff800000, v5, s55
	v_cndmask_b32_e64 v6, 0xff800000, v6, s52
	v_cndmask_b32_e64 v7, 0xff800000, v7, s57
	v_cndmask_b32_e64 v8, 0xff800000, v8, s53
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v1, v2, v3
.Ltmp116:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v181
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v35, v4, v5, v6
.Ltmp118:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s49, s49, 16
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v7, v8
.Ltmp120:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s49, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v34, v35, v36
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v35, v34, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v181, v34, v35
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v1, v1, v34
	v_sub_f32_e32 v2, v2, v34
	v_sub_f32_e32 v3, v3, v34
	v_sub_f32_e32 v4, v4, v34
	v_sub_f32_e32 v7, v7, v34
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v7, v7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v6, v6, v34
	v_sub_f32_e32 v8, v8, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v1, 0, v1, s54
	v_cndmask_b32_e64 v2, 0, v2, s51
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v3, 0, v3, s56
	v_cndmask_b32_e64 v4, 0, v4, s50
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v5, v5, v34
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v7, 0, v7, s57
.Ltmp124:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v1, v1, v2 :: v_dual_add_f32 v2, v3, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp125:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v5, v5
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v6, 0, v6, s52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0, v5, s55
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v5, v6
.Ltmp127:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v5, v181, v34
	v_mov_b32_e32 v181, v34
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v8, 0, v8, s53
.Ltmp128:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v7, v8 :: v_dual_add_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v2, v3, v4
.Ltmp129:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v3, v5
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v2, v1, s31, 0xfedcba98 op_sel:[1,0]
.Ltmp132:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v1, v2
.Ltmp134:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v35, v187, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v187, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_or_b32 s1, s49, 1
	s_or_b32 s5, s49, 2
	s_or_b32 s6, s49, 3
	s_or_b32 s7, s49, 4
	s_or_b32 s8, s49, 5
	s_or_b32 s9, s49, 6
	s_or_b32 s10, s49, 7
	s_or_b32 s11, s49, 8
	s_or_b32 s12, s49, 9
	s_or_b32 s13, s49, 10
	s_or_b32 s14, s49, 11
	s_or_b32 s15, s49, 12
	s_or_b32 s16, s49, 13
	s_or_b32 s17, s49, 14
	s_or_b32 s18, s49, 15
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s49, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v188, s49, v154
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s1, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v189, s49, v155
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s5, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v190, s49, v156
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v193, s49, v159
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s7, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v194, s49, v160
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s23
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v195, s49, v161
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
	s_add_i32 s51, s49, s48
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s50
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_mad_u64_u32 v[34:35], null, s51, s33, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, s33, v34
	v_add_nc_u32_e32 v2, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v4, s33, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v6, s33, v4
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v5, 1, v34
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v7, s33, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v8, s33, v7
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s5
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s1, s23, v189
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v34, s33, v8
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s5, s23, v190
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v35, s33, v34
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 231 61 is_stmt 0              ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s8, s23, v193
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v36, s33, v35
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v7, 1, v7
	s_clause 0x5
	buffer_load_u16 v5, v5, s[44:47], 0 offen
	buffer_load_u16 v1, v1, s[44:47], 0 offen
	buffer_load_u16 v2, v2, s[44:47], 0 offen
	buffer_load_u16 v3, v3, s[44:47], 0 offen
	buffer_load_u16 v4, v4, s[44:47], 0 offen
	buffer_load_u16 v6, v6, s[44:47], 0 offen
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v37, s33, v36
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s9, s23, v194
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s51, s0, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v38, s33, v37
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v39, s33, v38
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s10, s23, v195
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s56, s0, s5
	s_and_b32 s52, s0, s8
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v40, s33, v39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_lshlrev_b32_e32 v37, 1, v37
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v39, 1, v39
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s57, s0, s9
	s_and_b32 s53, s0, s10
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_load_u16 v41, v34, s[44:47], 0 offen
	buffer_load_u16 v35, v35, s[44:47], 0 offen
	buffer_load_u16 v36, v36, s[44:47], 0 offen
	buffer_load_u16 v37, v37, s[44:47], 0 offen
	buffer_load_u16 v38, v38, s[44:47], 0 offen
	v_lshlrev_b32_e32 v34, 1, v40
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_lshl_u32 v40, v40, s33, 1
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_load_u16 v39, v39, s[44:47], 0 offen
	buffer_load_u16 v7, v7, s[44:47], 0 offen
	buffer_load_u16 v191, v34, s[44:47], 0 offen
	buffer_load_u16 v8, v8, s[44:47], 0 offen
	buffer_load_u16 v40, v40, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v34, v33
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e32 vcc_lo, s23, v188
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(15)
	ds_store_b16 v145, v5
	s_waitcnt vmcnt(9)
	ds_store_b16 v145, v41 offset:1024
	ds_store_b16 v146, v1
	s_waitcnt vmcnt(8)
	ds_store_b16 v146, v35 offset:1024
	ds_store_b16 v147, v2
	s_waitcnt vmcnt(7)
	ds_store_b16 v147, v36 offset:1024
	ds_store_b16 v148, v3
	s_waitcnt vmcnt(6)
	ds_store_b16 v148, v37 offset:1024
	ds_store_b16 v149, v4
	s_waitcnt vmcnt(5)
	ds_store_b16 v149, v38 offset:1024
	ds_store_b16 v150, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v150, v39 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v151, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v151, v191 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v152, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v152, v40 offset:1024
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v39
	v_dual_mov_b32 v39, v38 :: v_dual_add_nc_u32 v192, 0, v153
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[196:199], v192
	ds_load_b128 v[200:203], v166
	ds_load_b128 v[204:207], v180
	ds_load_b128 v[208:211], v182
	ds_load_b128 v[212:215], v183
	ds_load_b128 v[216:219], v184
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[220:223], v185
	ds_load_b128 v[224:227], v186
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v191, s49, v157
	v_or_b32_e32 v192, s49, v158
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s54, s0, vcc_lo
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e64 s6, s23, v191
	v_cmp_gt_i32_e64 s7, s23, v192
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s50, s0, s6
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[196:203], v[228:235], v[34:41]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s55, s0, s7
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[204:211], v[9:16], v[34:41]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[212:219], v[17:24], v[34:41]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[34:41], v[220:227], v[25:32], v[34:41]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v188, v163
	v_cmp_le_i32_e64 s1, v189, v163
	v_cmp_le_i32_e64 s5, v190, v163
	v_cmp_le_i32_e64 s6, v191, v163
	v_cmp_le_i32_e64 s7, v192, v163
	v_cmp_le_i32_e64 s8, v193, v163
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s11, vcc_lo, s54
	s_and_b32 s1, s1, s51
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s9, v194, v163
	v_cmp_le_i32_e64 s10, v195, v163
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
	v_cmp_ge_i32_e32 vcc_lo, v188, v164
	v_cmp_ge_i32_e64 s1, v189, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s11, v188, v165
	v_cmp_le_i32_e64 s12, v189, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s5, v190, v164
	v_cmp_ge_i32_e64 s6, v191, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s13, v190, v165
	v_cmp_le_i32_e64 s14, v191, v165
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v192, v164
	v_cmp_ge_i32_e64 s8, v193, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s15, v192, v165
	v_cmp_le_i32_e64 s16, v193, v165
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s9, v194, v164
	v_cmp_ge_i32_e64 s10, v195, v164
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v194, v165
	v_cmp_le_i32_e64 s18, v195, v165
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
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v35, 0
.LBB0_12:                               ; %Flow235
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v35
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v54, v178 :: v_dual_and_b32 v1, 31, v0
	v_dual_add_f32 v51, v51, v173 :: v_dual_add_f32 v52, v52, v139
.Ltmp136:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v3, 0, 32, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42000000, vcc_lo
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v139, v62, v141
	v_dual_add_f32 v37, v55, v179 :: v_dual_add_f32 v38, v56, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v3, v35, v3
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v39, v57, v175 :: v_dual_add_f32 v54, v70, v176
	v_dual_add_f32 v55, v71, v177 :: v_dual_add_f32 v56, v72, v170
.Ltmp140:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v3, v3
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v141, v64, v143
	v_dual_add_f32 v57, v73, v171 :: v_dual_add_f32 v50, v50, v172
	v_dual_add_f32 v170, v46, v167 :: v_dual_add_f32 v171, v47, v168
	v_dual_add_f32 v172, v48, v169 :: v_dual_add_f32 v173, v49, v138
	v_dual_add_f32 v175, v67, v137 :: v_dual_lshlrev_b32 v46, 2, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp142:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v2, v3, v2
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v43, v131 :: v_dual_lshlrev_b32 v48, 2, v1
.Ltmp144:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v35
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s26, v1
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v2, v34, v2 :: v_dual_add_f32 v177, v69, v129
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v174, v66, v136
.Ltmp146:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add3_u32 v47, 0, v46, v118
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_dual_cndmask_b32 v167, 0, v2 :: v_dual_add_nc_u32 v2, 0, v48
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v133
.Ltmp148:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s22, v3
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v47, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v3, v2
	v_cmp_eq_u32_e64 s1, 0, v108
	v_add_lshl_u32 v1, s27, v1, 2
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v44, v132 :: v_dual_mov_b32 v41, 0
	v_dual_add_f32 v53, v53, v140 :: v_dual_add_f32 v140, v63, v142
.Ltmp150:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v42, v130 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_add_f32_e32 v142, v65, v144
.Ltmp152:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s41, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s40
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v176, v68, v128 :: v_dual_add_f32 v129, v59, v135
	v_dual_add_f32 v130, v60, v127 :: v_dual_add_f32 v131, v61, v126
	v_mov_b32_e32 v40, 0
	v_add_f32_e32 v128, v58, v134
.Ltmp154:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v3, v1, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[36:39]
	ds_store_b128 v41, v[54:57] offset:16
	ds_store_b128 v41, v[50:53] offset:32
	ds_store_b128 v41, v[139:142] offset:48
	ds_store_b128 v41, v[170:173] offset:64
	ds_store_b128 v41, v[174:177] offset:80
	ds_store_b128 v41, v[42:45] offset:96
	ds_store_b128 v41, v[128:131] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v2
	s_and_b32 s9, s43, 0xffff
	s_mov_b32 s8, s42
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v3, v93, 16, 1
	v_bfe_u32 v4, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_cmp_o_f32_e64 s1, v92, v92
	v_cmp_o_f32_e64 s5, v91, v91
	v_bfe_u32 v5, v98, 16, 1
	v_cmp_o_f32_e64 s6, v99, v99
	v_cmp_o_f32_e64 s7, v98, v98
	v_lshrrev_b32_e32 v166, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v98, v5, 0x7fff
	v_mov_b32_e32 v98, v40
	v_cndmask_b16 v69.h, 0x7fff, v5.h, s7
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v2, v1, s[8:11], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v1, v91, 16, 1
	v_add3_u32 v2, v93, v3, 0x7fff
	v_add3_u32 v3, v92, v4, 0x7fff
	v_bfe_u32 v4, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, v91, v1, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v90, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v97, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v96, 16, 1
	v_add3_u32 v2, v90, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v3, v97, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_add3_u32 v1, v96, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v96, v96
	v_cndmask_b16 v34.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v95, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v94, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v85, 16, 1
	v_add3_u32 v2, v95, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v3, v94, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_add3_u32 v1, v85, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v85, v85
	v_cndmask_b16 v49.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v84, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v83, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v82, 16, 1
	v_add3_u32 v2, v84, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_add3_u32 v3, v83, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v83, v83
	v_add3_u32 v1, v82, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v82, v82
	v_cndmask_b16 v58.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v89, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v88, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v87, 16, 1
	v_add3_u32 v2, v89, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v3, v88, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_add3_u32 v1, v87, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v87, v87
	v_cndmask_b16 v60.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v86, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v81, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v80, 16, 1
	v_add3_u32 v2, v86, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_add3_u32 v3, v81, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_add3_u32 v1, v80, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v80, v80
	v_cndmask_b16 v61.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v79, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v78, 16, 1
	v_cndmask_b16 v62.h, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v109, 16, 1
	v_add3_u32 v2, v79, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_add3_u32 v3, v78, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v78, v78
	v_add3_u32 v1, v109, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v109, v109
	v_cndmask_b16 v63.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v104, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v103, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v102, 16, 1
	v_add3_u32 v2, v104, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_add3_u32 v3, v103, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_add3_u32 v1, v102, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v102, v102
	v_cndmask_b16 v64.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v77, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v76, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v75, 16, 1
	v_add3_u32 v2, v77, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v3, v76, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_add3_u32 v1, v75, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v75, v75
	v_cndmask_b16 v66.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v101, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v100, 16, 1
	v_cndmask_b16 v67.l, 0x7fff, v1.h, s5
	v_add3_u32 v1, v74, v4, 0x7fff
	v_bfe_u32 v4, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v2, v101, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v101, v101
	v_add3_u32 v3, v100, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v100, v100
	v_add3_u32 v4, v99, v4, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v68.l, 0x7fff, v2.h, s1
	s_barrier
	v_cndmask_b16 v68.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v69.l, 0x7fff, v4.h, s6
	ds_store_b16 v145, v33
	ds_store_b16 v145, v58 offset:1024
	ds_store_b16 v145, v62 offset:2048
	ds_store_b16 v145, v66 offset:3072
	ds_store_b16_d16_hi v146, v33
	ds_store_b16_d16_hi v146, v58 offset:1024
	ds_store_b16_d16_hi v146, v62 offset:2048
	ds_store_b16_d16_hi v146, v66 offset:3072
	ds_store_b16 v147, v34
	ds_store_b16 v147, v59 offset:1024
	ds_store_b16 v147, v63 offset:2048
	ds_store_b16 v147, v67 offset:3072
	ds_store_b16_d16_hi v148, v34
	ds_store_b16_d16_hi v148, v59 offset:1024
	ds_store_b16_d16_hi v148, v63 offset:2048
	ds_store_b16_d16_hi v148, v67 offset:3072
	ds_store_b16 v149, v35
	ds_store_b16 v149, v60 offset:1024
	ds_store_b16 v149, v64 offset:2048
	ds_store_b16 v149, v68 offset:3072
	ds_store_b16_d16_hi v150, v35
	ds_store_b16_d16_hi v150, v60 offset:1024
	ds_store_b16_d16_hi v150, v64 offset:2048
	ds_store_b16_d16_hi v150, v68 offset:3072
	ds_store_b16 v151, v49
	ds_store_b16 v151, v61 offset:1024
	ds_store_b16 v151, v65 offset:2048
	ds_store_b16 v151, v69 offset:3072
	ds_store_b16_d16_hi v152, v49
	ds_store_b16_d16_hi v152, v61 offset:1024
	ds_store_b16_d16_hi v152, v65 offset:2048
	ds_store_b16_d16_hi v152, v69 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v110
	ds_load_b128 v[69:72], v111
	ds_load_b128 v[73:76], v112
	ds_load_b128 v[77:80], v113
	ds_load_b128 v[81:84], v114
	ds_load_b128 v[85:88], v115
	ds_load_b128 v[89:92], v116
	ds_load_b128 v[93:96], v117
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[36:39]
	ds_store_b128 v41, v[54:57] offset:16
	ds_store_b128 v41, v[50:53] offset:32
	ds_store_b128 v41, v[139:142] offset:48
	ds_store_b128 v41, v[170:173] offset:64
	ds_store_b128 v41, v[174:177] offset:80
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
	v_mov_b32_e32 v104, v40
	v_mov_b32_e32 v103, v40
	v_mov_b32_e32 v102, v40
	v_mov_b32_e32 v101, v40
	v_mov_b32_e32 v100, v40
	v_mov_b32_e32 v99, v40
	v_mov_b32_e32 v97, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v41, v[42:45] offset:96
	ds_store_b128 v41, v[128:131] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_lshrrev_b32_e32 v1, 4, v108
	v_dual_mov_b32 v100, v41 :: v_dual_and_b32 v39, 16, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v169, v47
	v_or_b32_e32 v170, v106, v46
	v_or_b32_e32 v168, v1, v48
	v_dual_mov_b32 v98, v41 :: v_dual_lshlrev_b32 v1, 4, v107
	v_mov_b32_e32 v43, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_dual_mov_b32 v39, 0x7632 :: v_dual_add_nc_u32 v176, 0, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v174, 0, v1
	v_dual_cndmask_b32 v43, 0x1054, v43 :: v_dual_add_nc_u32 v178, 0, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v39, 0x3276, v39 :: v_dual_add_nc_u32 v180, 0, v124
	v_xor_b32_e32 v2, 0x84, v168
	v_xor_b32_e32 v3, 0x108, v168
	v_lshl_or_b32 v43, v43, 8, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v39, v39, 8, v39
	v_xor_b32_e32 v4, 0x18c, v168
	v_xor_b32_e32 v5, 0x210, v168
	v_xor_b32_e32 v6, 0x294, v168
	v_dual_mov_b32 v102, v41 :: v_dual_and_b32 v43, 0x540054, v43
	v_dual_mov_b32 v104, v41 :: v_dual_and_b32 v39, 0x760076, v39
	v_xor_b32_e32 v7, 0x318, v168
	v_xor_b32_e32 v8, 0x39c, v168
	v_xor_b32_e32 v33, 0x420, v168
	v_xor_b32_e32 v34, 0x4a4, v168
	v_xor_b32_e32 v35, 0x528, v168
	v_xor_b32_e32 v36, 0x5ac, v168
	v_xor_b32_e32 v37, 0x630, v168
	v_xor_b32_e32 v38, 0x6b4, v168
	v_xor_b32_e32 v40, 0x738, v168
	v_xor_b32_e32 v42, 0x7bc, v168
	v_xor_b32_e32 v44, 4, v170
	v_xor_b32_e32 v45, 8, v170
	v_xor_b32_e32 v46, 12, v170
	v_xor_b32_e32 v47, 16, v170
	v_xor_b32_e32 v48, 20, v170
	v_xor_b32_e32 v49, 24, v170
	v_xor_b32_e32 v50, 28, v170
	v_xor_b32_e32 v51, 32, v170
	v_xor_b32_e32 v52, 36, v170
	v_xor_b32_e32 v53, 40, v170
	v_xor_b32_e32 v54, 44, v170
	v_xor_b32_e32 v55, 48, v170
	v_lshl_or_b32 v43, v43, 4, v43
	v_lshl_or_b32 v39, v39, 4, v39
	v_xor_b32_e32 v56, 52, v170
	v_xor_b32_e32 v57, 56, v170
	v_xor_b32_e32 v58, 60, v170
	v_and_b32_e32 v171, 0x5040504, v43
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v172, 0x7060706, v39
	v_dual_mov_b32 v60, v41 :: v_dual_add_nc_u32 v173, 0, v105
	v_dual_mov_b32 v62, v41 :: v_dual_add_nc_u32 v175, 0, v119
	v_dual_mov_b32 v64, v41 :: v_dual_add_nc_u32 v177, 0, v121
	v_add_nc_u32_e32 v179, 0, v123
	v_add_nc_u32_e32 v181, 0, v125
	v_dual_mov_b32 v99, v41 :: v_dual_add_nc_u32 v182, 0, v2
	v_add_nc_u32_e32 v183, 0, v3
	v_dual_mov_b32 v101, v41 :: v_dual_add_nc_u32 v184, 0, v4
	v_add_nc_u32_e32 v185, 0, v5
	v_dual_mov_b32 v103, v41 :: v_dual_add_nc_u32 v186, 0, v6
	v_add_nc_u32_e32 v187, 0, v7
	v_add_nc_u32_e32 v188, 0, v8
	v_add_nc_u32_e32 v189, 0, v33
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v190, 0, v34
	v_add_nc_u32_e32 v191, 0, v35
	v_dual_mov_b32 v61, v41 :: v_dual_add_nc_u32 v192, 0, v36
	v_add_nc_u32_e32 v193, 0, v37
	v_dual_mov_b32 v63, v41 :: v_dual_add_nc_u32 v194, 0, v38
	v_add_nc_u32_e32 v195, 0, v40
	v_add_nc_u32_e32 v196, 0, v42
	v_add_nc_u32_e32 v197, 0, v44
	v_add_nc_u32_e32 v198, 0, v45
	v_add_nc_u32_e32 v199, 0, v46
	v_add_nc_u32_e32 v200, 0, v47
	v_add_nc_u32_e32 v201, 0, v48
	v_add_nc_u32_e32 v202, 0, v49
	v_add_nc_u32_e32 v203, 0, v50
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v204, 0, v51
	v_add_nc_u32_e32 v205, 0, v52
	v_dual_mov_b32 v35, v41 :: v_dual_add_nc_u32 v206, 0, v53
	v_add_nc_u32_e32 v207, 0, v54
	v_dual_mov_b32 v37, v41 :: v_dual_add_nc_u32 v208, 0, v55
	v_add_nc_u32_e32 v209, 0, v56
	v_dual_mov_b32 v39, v41 :: v_dual_add_nc_u32 v210, 0, v57
	v_add_nc_u32_e32 v211, 0, v58
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, v41
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v40, v41
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s22, 0x76543210
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[228:231], off
	scratch_store_b128 off, v[232:235], off offset:16
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 386 21 is_stmt 1              ; attention_backward.py:386:21
	v_mad_u64_u32 v[42:43], null, s65, s35, v[0:1]
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s64
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v213, 0, v168
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s20, s20, 16
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v1, s35, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v3, s35, v1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v2, 1, v42
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v4, s35, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v8, s35, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s59
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s58
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v42, 1, v8
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v8, s35, v8
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v43, s35, v8
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s57
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v44, s35, v43
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s56
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v43, 1, v43
	v_lshlrev_b32_e32 v8, 1, v8
	s_clause 0x7
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	buffer_load_u16 v3, v3, s[28:31], 0 offen
	buffer_load_u16 v4, v4, s[28:31], 0 offen
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	buffer_load_u16 v6, v6, s[28:31], 0 offen
	buffer_load_u16 v7, v7, s[28:31], 0 offen
	buffer_load_u16 v42, v42, s[28:31], 0 offen
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v45, s35, v44
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v46, s35, v45
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v45, 1, v45
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v47, s35, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s53
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v48, s35, v47
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s52
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v47, 1, v47
	v_lshlrev_b32_e32 v46, 1, v46
	v_lshlrev_b32_e32 v212, 1, v48
	v_add_lshl_u32 v48, v48, s35, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s49
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s50
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v212, 0x80000000, v212, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s51
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s20, s38
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x7
	buffer_load_u16 v8, v8, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v212, v212, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v213, v2
	s_waitcnt vmcnt(14)
	ds_store_b16 v182, v1
	s_waitcnt vmcnt(13)
	ds_store_b16 v183, v3
	s_waitcnt vmcnt(12)
	ds_store_b16 v184, v4
	s_waitcnt vmcnt(11)
	ds_store_b16 v185, v5
	s_waitcnt vmcnt(10)
	ds_store_b16 v186, v6
	s_waitcnt vmcnt(9)
	ds_store_b16 v187, v7
	s_waitcnt vmcnt(8)
	ds_store_b16 v188, v42
	s_waitcnt vmcnt(7)
	ds_store_b16 v189, v8
	s_waitcnt vmcnt(6)
	ds_store_b16 v190, v43
	s_waitcnt vmcnt(5)
	ds_store_b16 v191, v44
	s_waitcnt vmcnt(4)
	ds_store_b16 v192, v45
	s_waitcnt vmcnt(3)
	ds_store_b16 v193, v46
	s_waitcnt vmcnt(2)
	ds_store_b16 v194, v47
	s_waitcnt vmcnt(1)
	ds_store_b16 v195, v212
	s_waitcnt vmcnt(0)
	ds_store_b16 v196, v48
	v_add_nc_u32_e32 v1, 0, v170
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[212:213], v197 offset1:16
	ds_load_2addr_b32 v[214:215], v201 offset1:16
	ds_load_2addr_b32 v[216:217], v205 offset1:16
	ds_load_2addr_b32 v[218:219], v209 offset1:16
	ds_load_2addr_b32 v[240:241], v198 offset1:16
	ds_load_2addr_b32 v[238:239], v1 offset1:16
	ds_load_2addr_b32 v[242:243], v199 offset1:16
	ds_load_2addr_b32 v[244:245], v200 offset1:16
	ds_load_2addr_b32 v[246:247], v202 offset1:16
	ds_load_2addr_b32 v[248:249], v203 offset1:16
	ds_load_2addr_b32 v[250:251], v204 offset1:16
	ds_load_2addr_b32 v[252:253], v206 offset1:16
	ds_load_2addr_b32 v[254:255], v207 offset1:16
	ds_load_2addr_b32 v[1:2], v208 offset1:16
	ds_load_2addr_b32 v[3:4], v210 offset1:16
	ds_load_2addr_b32 v[228:229], v211 offset1:16
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v237, v48
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v220.h, v212.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v220.l, v238.l
	v_mov_b16_e64 v221.l, v240.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v221.h, v242.l
	s_waitcnt lgkmcnt(8)
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
	v_mov_b16_e64 v226.l, v1.l
	v_mov_b16_e64 v226.h, v218.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v227.l, v3.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v227.h, v228.l
	v_dual_mov_b32 v236, v47 :: v_dual_mov_b32 v235, v46
	v_dual_mov_b32 v234, v45 :: v_dual_mov_b32 v233, v44
	v_dual_mov_b32 v232, v43 :: v_dual_mov_b32 v231, v42
	v_mov_b32_e32 v230, v41
	v_mov_b16_e64 v212.l, v238.h
	v_mov_b16_e64 v242.l, v240.h
	v_mov_b16_e64 v214.l, v244.h
	v_mov_b16_e64 v248.l, v246.h
	v_wmma_f32_16x16x16_bf16 v[230:237], v[220:227], v[65:72], v[230:237]
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
	v_mov_b16_e64 v226.l, v2.l
	v_mov_b16_e64 v226.h, v219.l
	v_mov_b16_e64 v227.l, v4.l
	v_mov_b16_e64 v227.h, v229.l
	v_mov_b16_e64 v216.l, v250.h
	v_mov_b16_e64 v254.l, v252.h
	v_mov_b16_e64 v218.l, v1.h
	v_mov_b16_e64 v228.l, v3.h
	v_wmma_f32_16x16x16_bf16 v[230:237], v[220:227], v[73:80], v[230:237]
	v_mov_b16_e64 v229.l, v4.h
	v_dual_mov_b32 v221, v212 :: v_dual_mov_b32 v222, v242
	v_dual_mov_b32 v223, v214 :: v_dual_mov_b32 v224, v248
	v_dual_mov_b32 v225, v216 :: v_dual_mov_b32 v226, v254
	v_mov_b32_e32 v227, v218
	v_mov_b16_e64 v243.l, v241.h
	v_mov_b16_e64 v249.l, v247.h
	v_mov_b16_e64 v255.l, v253.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v1, s21, v137, -v167
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v220, v229
	v_wmma_f32_16x16x16_bf16 v[230:237], v[221:228], v[81:88], v[230:237]
	v_mov_b16_e64 v213.l, v239.h
	v_mov_b16_e64 v215.l, v245.h
	v_mov_b16_e64 v217.l, v251.h
	v_mov_b16_e64 v219.l, v2.h
	v_mov_b32_e32 v214, v243
	v_mov_b32_e32 v216, v249
	v_mov_b32_e32 v218, v255
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v2, s21, v138, -v167
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v3, s21, v139, -v167
	v_fma_f32 v4, s21, v140, -v167
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[230:237], v[213:220], v[89:96], v[230:237]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v5, s21, v141, -v167
	v_fma_f32 v6, s21, v142, -v167
	v_fma_f32 v7, s21, v143, -v167
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v43, v231, v169
	v_sub_f32_e32 v45, v233, v169
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v1, 0, v1, s47
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v44, v232, v169
	v_sub_f32_e32 v42, v230, v169
	v_sub_f32_e32 v47, v235, v169
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v2, 0, v2, s46
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v8, s21, v144, -v167
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v143, v237, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v42 :: v_dual_mul_f32 v2, v2, v43
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s39, v1 :: v_dual_mul_f32 v2, s39, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v42, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v42, 0x7fff
	v_bfe_u32 v42, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v42, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v2, v1, v171
	v_perm_b32 v138, v2, v1, v172
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v3
	v_exp_f32_e32 v2, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v1, 0, v1, s45
	v_cndmask_b32_e64 v2, 0, v2, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v44 :: v_dual_mul_f32 v2, v2, v45
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s39, v1 :: v_dual_mul_f32 v2, s39, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v3, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v2, v1, v171
	v_perm_b32 v140, v2, v1, v172
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v5
	v_exp_f32_e32 v2, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v1, 0, v1, s43
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v48, v236, v169
	v_sub_f32_e32 v46, v234, v169
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v2, 0, v2, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v46 :: v_dual_mul_f32 v2, v2, v47
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s39, v1 :: v_dual_mul_f32 v2, s39, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v3, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v141, v2, v1, v171
	v_perm_b32 v142, v2, v1, v172
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v7
	v_exp_f32_e32 v2, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v1, 0, v1, s41
	v_cndmask_b32_e64 v2, 0, v2, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v1, v1, v48 :: v_dual_mul_f32 v2, v2, v143
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v1, s39, v1 :: v_dual_mul_f32 v2, s39, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v3, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v3, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v2, v1, v171
	v_perm_b32 v144, v2, v1, v172
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[97:104], v[129:136], v[137:144], v[97:104]
	v_wmma_f32_16x16x16_bf16 v[57:64], v[121:128], v[137:144], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[113:120], v[137:144], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[137:144], v[33:40]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s1, s20, 1
	s_or_b32 s5, s20, 2
	s_or_b32 s6, s20, 3
	s_or_b32 s7, s20, 4
	s_or_b32 s8, s20, 5
	s_or_b32 s9, s20, 6
	s_or_b32 s10, s20, 7
	s_or_b32 s11, s20, 8
	s_or_b32 s12, s20, 9
	s_or_b32 s13, s20, 10
	s_or_b32 s14, s20, 11
	s_or_b32 s15, s20, 12
	s_or_b32 s16, s20, 13
	s_or_b32 s17, s20, 14
	s_or_b32 s18, s20, 15
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s20, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v212, s20, v154
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s1, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v213, s20, v155
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s5, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v214, s20, v156
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s6, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v215, s20, v157
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s7, s23
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v216, s20, v158
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
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s17, s23
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s18, s23
	s_cselect_b32 s51, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s65, s20, s48
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s64
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[42:43], null, s65, s33, v[0:1]
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s1, s2, s63
	s_and_b32 s5, s2, s62
	s_and_b32 s6, s2, s61
	s_and_b32 s7, s2, s60
	s_and_b32 s8, s2, s59
	s_and_b32 s12, s2, s55
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v1, s33, v42
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v7, 1, v42
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s9, s2, s58
	s_and_b32 s10, s2, s57
	s_and_b32 s14, s2, s53
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v2, s33, v1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s51
	s_and_b32 s16, s2, s49
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v2, 1, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	buffer_load_u16 v43, v7, s[24:27], 0 offen
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s11, s2, s56
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v3
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v3, 1, v3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s13, s2, s54
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v4
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	buffer_load_u16 v44, v2, s[24:27], 0 offen
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s15, s2, s52
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s33, v5
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	v_lshlrev_b32_e32 v2, 1, v5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s17, s2, s50
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v8, s33, v6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v6, 1, v6
	v_cndmask_b32_e64 v2, 0x80000000, v2, s8
	buffer_load_u16 v45, v4, s[24:27], 0 offen
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s1, s23, v213
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v42, s33, v8
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s5, s23, v214
	v_cmp_gt_i32_e64 s6, s23, v215
	v_cmp_gt_i32_e64 s7, s23, v216
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v7, s33, v42
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v8, 0x80000000, v8, s10
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s46, s0, s1
	s_and_b32 s45, s0, s5
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v5, s33, v7
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v7, 1, v7
	buffer_load_u16 v8, v8, s[24:27], 0 offen
	v_cndmask_b32_e64 v42, 0x80000000, v42, s11
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s44, s0, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v47, s33, v5
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v7, 0x80000000, v7, s12
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s43, s0, s7
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_u16 v7, v7, s[24:27], 0 offen
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s9
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s33, v47
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v47, 1, v47
	v_cndmask_b32_e64 v5, 0x80000000, v5, s13
	buffer_load_u16 v46, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v47, 0x80000000, v47, s14
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v4, s33, v6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v48, s33, v4
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_lshlrev_b32_e32 v4, 1, v4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v105, v48, s33, 1
	v_lshlrev_b32_e32 v48, 1, v48
	v_cndmask_b32_e64 v4, 0x80000000, v4, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	v_cndmask_b32_e64 v48, 0x80000000, v48, s17
	s_clause 0x5
	buffer_load_u16 v4, v4, s[24:27], 0 offen
	buffer_load_u16 v141, v105, s[24:27], 0 offen
	buffer_load_u16 v137, v42, s[24:27], 0 offen
	buffer_load_u16 v138, v5, s[24:27], 0 offen
	buffer_load_u16 v139, v6, s[24:27], 0 offen
	buffer_load_u16 v140, v48, s[24:27], 0 offen
	v_add_nc_u32_e32 v5, 0, v153
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v42, v41
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e32 vcc_lo, s23, v212
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s47, s0, vcc_lo
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v43.h, v1.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v44.h, v3.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v46.h, v8.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v137.h, v7.l
	v_mov_b16_e32 v45.h, v2.l
	ds_store_b128 v173, v[43:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v174
	ds_load_b128 v[121:124], v174 offset:256
	ds_load_b128 v[113:116], v174 offset:512
	ds_load_b128 v[105:108], v174 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v138.h, v47.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v139.h, v4.l
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
	ds_store_b16 v145, v43
	ds_store_b16 v145, v137 offset:1024
	ds_store_b16 v146, v1
	ds_store_b16 v146, v7 offset:1024
	ds_store_b16 v147, v44
	ds_store_b16 v147, v138 offset:1024
	ds_store_b16 v148, v3
	ds_store_b16 v148, v47 offset:1024
	ds_store_b16 v149, v45
	ds_store_b16 v149, v139 offset:1024
	ds_store_b16 v150, v2
	ds_store_b16 v150, v4 offset:1024
	ds_store_b16 v151, v46
	ds_store_b16 v151, v140 offset:1024
	ds_store_b16 v152, v8
	ds_store_b16 v152, v141 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[217:220], v5
	ds_load_b128 v[221:224], v175
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off
	scratch_load_b128 v[5:8], off, off offset:16
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[225:228], v176
	ds_load_b128 v[229:232], v177
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[233:236], v178
	ds_load_b128 v[237:240], v179
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, v48 :: v_dual_mov_b32 v141, v45
	v_dual_mov_b32 v142, v46 :: v_dual_mov_b32 v143, v47
	v_dual_mov_b32 v140, v44 :: v_dual_mov_b32 v139, v43
	v_dual_mov_b32 v138, v42 :: v_dual_mov_b32 v137, v41
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[241:244], v180
	ds_load_b128 v[245:248], v181
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v42, s20, v159
	v_or_b32_e32 v43, s20, v160
	v_or_b32_e32 v44, s20, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s8, s23, v42
	v_cmp_gt_i32_e64 s9, s23, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s10, s23, v44
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s42, s0, s8
	s_and_b32 s41, s0, s9
	s_and_b32 s40, s0, s10
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[217:224], v[1:8], v[137:144]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[225:232], v[9:16], v[137:144]
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
	v_cmp_le_i32_e64 s8, v42, v163
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s11, vcc_lo, s47
	s_and_b32 s1, s1, s46
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s9, v43, v163
	v_cmp_le_i32_e64 s10, v44, v163
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s5, s5, s45
	s_and_b32 s6, s6, s44
	s_and_not1_b32 s12, s47, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s46, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s43
	s_and_b32 s8, s8, s42
	s_or_b32 s47, s12, s11
	s_or_b32 s46, s13, s1
	s_and_not1_b32 s1, s45, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s44, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s41
	s_and_b32 s10, s10, s40
	s_or_b32 s45, s1, s5
	s_or_b32 s44, s11, s6
	s_and_not1_b32 s1, s43, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s42, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s43, s1, s5
	s_or_b32 s42, s6, s7
	s_and_not1_b32 s1, s41, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s40, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s41, s1, s5
	s_or_b32 s40, s6, s7
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
	v_cmp_ge_i32_e64 s8, v42, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s15, v216, v165
	v_cmp_le_i32_e64 s16, v42, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v43, v164
	v_cmp_ge_i32_e64 s10, v44, v164
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s17, v43, v165
	v_cmp_le_i32_e64 s18, v44, v165
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s11, s11, s47
	s_and_b32 s1, s1, s46
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s5, s5, s45
	s_and_b32 s6, s6, s44
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s47, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s46, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s7, s7, s43
	s_and_b32 s8, s8, s42
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_or_b32 s47, s12, s11
	s_or_b32 s46, s13, s1
	s_and_not1_b32 s1, s45, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s11, s44, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s41
	s_and_b32 s10, s10, s40
	s_or_b32 s45, s1, s5
	s_or_b32 s44, s11, s6
	s_and_not1_b32 s1, s43, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_and_not1_b32 s6, s42, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s43, s1, s5
	s_or_b32 s42, s6, s7
	s_and_not1_b32 s1, s41, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_and_not1_b32 s6, s40, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s41, s1, s5
	s_or_b32 s40, s6, s7
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
	s_endpgm
.Ltmp155:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 36
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 36
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17488
; TotalNumSgprs: 75
; NumVgprs: 256
; ScratchSize: 36
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 36
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 8
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
