	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[36:39], s[0:1], 0x64
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v234, v0
	s_clause 0x1
	s_load_b32 s64, s[0:1], 0x74
	s_load_b32 s57, s[0:1], 0x7c
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp0:
	.loc	1 161 44 prologue_end           ; attention_backward.py:161:44
	v_or_b32_e32 v1, 0x80, v234
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s7, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s36
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s33, s2, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s5
	s_xor_b32 s5, s3, s36
	s_mul_i32 s6, s2, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s6, s8, s6
	s_add_i32 s8, s2, 1
	s_sub_i32 s9, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s8, s2
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s2, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s8, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s8, s37
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s2, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s6, s8
	s_sub_i32 s9, 0, s8
	s_xor_b32 s10, s36, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s6, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s9, s6, s9
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s6, s2, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s2, s4, s9
	.loc	1 158 27                        ; attention_backward.py:158:27
	s_mul_i32 s5, s6, s36
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s2, s8
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s18, s3, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s4, s4, s9
	s_add_i32 s5, s2, 1
	s_sub_i32 s9, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s2, s5, s2
	s_cselect_b32 s4, s9, s4
	s_add_i32 s5, s2, 1
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s2, s5, s2
	.loc	1 123 19 is_stmt 0              ; attention_backward.py:123:19
	s_abs_i32 s16, s18
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s2, s2, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s33, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s19, s2, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s8, s33, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s17, s19
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s33, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s5, s17
	s_sub_i32 s40, 0, s17
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s11, s33, 4
	s_or_b32 s12, s33, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v0, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s13, s33, 6
	s_or_b32 s2, s33, 7
	s_or_b32 s10, s33, 8
	s_or_b32 s14, s33, 9
	s_or_b32 s15, s33, 10
	s_or_b32 s24, s33, 11
	s_or_b32 s25, s33, 12
	s_or_b32 s26, s33, 13
	s_or_b32 s27, s33, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s5, v0
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s28, s33, 15
	s_or_b32 s29, s33, 16
	s_or_b32 s30, s33, 17
	s_or_b32 s31, s33, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s34, s33, 19
	s_or_b32 s35, s33, 20
	s_or_b32 s36, s33, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s5, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s63, s33, 22
	s_or_b32 s65, s33, 23
	s_or_b32 s66, s33, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s40, s40, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s67, s33, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s40, s5, s40
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s33, 26
	s_or_b32 s69, s33, 27
	s_or_b32 s70, s33, 28
	s_or_b32 s71, s33, 29
	s_or_b32 s72, s33, 30
	s_or_b32 s73, s33, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s5, s5, s40
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s33, s38
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s16, s5
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s4, s38
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s8, s38
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s9, s38
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s11, s38
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s12, s38
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s13, s38
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s2, s38
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s10, s38
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s14, s38
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s15, s38
	s_load_b128 s[12:15], s[0:1], 0x38
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s24, s38
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s25, s38
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s26, s38
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s27, s38
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s28, s38
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s29, s38
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s30, s38
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s31, s38
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s34, s38
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_mul_i32 s34, s3, s38
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s35, s38
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s3, s64, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s36, s38
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s63, s38
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s65, s38
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s66, s38
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s67, s38
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s68, s38
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s69, s38
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s70, s38
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s71, s38
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s72, s38
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s73, s38
	s_cselect_b32 s27, -1, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s68, s34, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s2, s68, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v0, s2, v234
	v_writelane_b32 v255, s2, 1
	v_lshlrev_b32_e32 v2, 1, v0
	v_add_nc_u32_e32 v0, s64, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v1, 0x100, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v3, s64, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s64, v234
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v254, 1, v234
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s57, v234
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v224, 15, v234
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v4, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s62, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v82, 0x18c0, v254
	v_xor_b32_e32 v85, 0x1ce0, v254
	v_xor_b32_e32 v80, 0x14a0, v254
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v7, s64, v3
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s62, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v8, 1, v7
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s61, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v7, s64, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v5, 0x80000000, v0, vcc_lo
	v_add_nc_u32_e32 v0, 0x100, v0
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v81, 0x16b0, v254
	v_cndmask_b32_e32 v6, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v4, 0x100, v4
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s61, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v18, 1, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s60, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v7, s64, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v83, 0x1ad0, v254
	v_cndmask_b32_e32 v9, 0x80000000, v3, vcc_lo
	v_add_nc_u32_e32 v3, 0x100, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v104, 0, v81
	v_cndmask_b32_e32 v16, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s59, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v8, 0x100, v8
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x7
	buffer_load_u16 v14, v2, s[8:11], 0 offen
	buffer_load_u16 v15, v1, s[8:11], 0 offen
	buffer_load_u16 v13, v5, s[8:11], 0 offen
	buffer_load_u16 v11, v6, s[8:11], 0 offen
	buffer_load_u16 v12, v4, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v3, s[8:11], 0 offen
	buffer_load_u16 v17, v0, s[8:11], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v3, s64, v7
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s58, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v2, 1, v7
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v0, 0x80000000, v8, vcc_lo
	v_add_nc_u32_e32 v1, 0x100, v18
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v6, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v5, 0x100, v2
	v_add_nc_u32_e32 v106, 0, v83
	v_add_nc_u32_e32 v7, 0x100, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v8, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v161, 9, v224
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v240, 32, v234
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v105, 0, v82
	v_add_nc_u32_e32 v107, 0, v85
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v19, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v18, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s56, s3
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v229, 64, v234
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v217, 4, v224
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s55, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s54, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v24, v16, s[8:11], 0 offen
	buffer_load_u16 v25, v0, s[8:11], 0 offen
	buffer_load_u16 v26, v4, s[8:11], 0 offen
	buffer_load_u16 v27, v1, s[8:11], 0 offen
	buffer_load_u16 v28, v2, s[8:11], 0 offen
	buffer_load_u16 v29, v5, s[8:11], 0 offen
	buffer_load_u16 v30, v6, s[8:11], 0 offen
	buffer_load_u16 v31, v7, s[8:11], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s64, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v18, 0x80000000, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	v_add_nc_u32_e32 v8, 0x100, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v5, 1, v2
	v_add_nc_u32_e32 v2, s64, v2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s53, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v1, 0x100, v19
	v_cndmask_b32_e32 v0, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v8, 1, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v19, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s52, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v2, s64, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v6, 0x100, v3
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v7, 0x100, v5
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s51, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v19, 1, v2
	v_add_nc_u32_e32 v2, s64, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v16, 0x100, v8
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s50, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v32, v0, s[8:11], 0 offen
	buffer_load_u16 v33, v4, s[8:11], 0 offen
	buffer_load_u16 v34, v1, s[8:11], 0 offen
	buffer_load_u16 v35, v3, s[8:11], 0 offen
	buffer_load_u16 v36, v6, s[8:11], 0 offen
	buffer_load_u16 v37, v5, s[8:11], 0 offen
	buffer_load_u16 v38, v7, s[8:11], 0 offen
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v3, 1, v2
	v_add_nc_u32_e32 v2, s64, v2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v1, 0x100, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v5, 0x100, v3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v6, s64, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s49, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v19, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s48, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x3
	buffer_load_u16 v19, v8, s[8:11], 0 offen
	buffer_load_u16 v39, v0, s[8:11], 0 offen
	buffer_load_u16 v40, v4, s[8:11], 0 offen
	buffer_load_u16 v41, v1, s[8:11], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s47, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v0, 0x80000000, v5 :: v_dual_lshlrev_b32 v1, 1, v6
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v5, s64, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v7, 1, v5
	v_add_nc_u32_e32 v5, s64, v5
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v8, 0x100, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s64, v5
	v_lshlrev_b32_e32 v5, 1, v5
	v_add_nc_u32_e32 v20, s64, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v21, 0x100, v5
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v16, 1, v16
	v_add_nc_u32_e32 v22, s64, v20
	v_lshlrev_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v4, 0x80000000, v2, vcc_lo
	v_add_nc_u32_e32 v2, 0x100, v2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v42, s64, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v6, 0x80000000, v1, vcc_lo
	v_add_nc_u32_e32 v1, 0x100, v1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s46, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s45, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v23, 0x100, v16
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v44, s64, v42
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s44, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s43, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s42, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x7
	buffer_load_u16 v45, v6, s[8:11], 0 offen
	buffer_load_u16 v46, v1, s[8:11], 0 offen
	buffer_load_u16 v47, v7, s[8:11], 0 offen
	buffer_load_u16 v48, v8, s[8:11], 0 offen
	buffer_load_u16 v49, v5, s[8:11], 0 offen
	buffer_load_u16 v50, v21, s[8:11], 0 offen
	buffer_load_u16 v51, v16, s[8:11], 0 offen
	buffer_load_u16 v52, v23, s[8:11], 0 offen
	v_cndmask_b32_e32 v43, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x100, v20
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v8, s64, v44
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s41, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v7, 1, v42
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v6, 0x100, v22
	v_cndmask_b32_e32 v1, 0x80000000, v20, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v21, s64, v8
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v5, 0x80000000, v22 :: v_dual_lshlrev_b32 v16, 1, v44
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s40, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v20, 0x100, v7
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s36, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v23, s64, v21
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v22, 0x100, v16
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s35, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s35, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v42, 0x100, v8
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v44, s64, v23
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x7
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v53, v1, s[8:11], 0 offen
	buffer_load_u16 v54, v5, s[8:11], 0 offen
	buffer_load_u16 v55, v6, s[8:11], 0 offen
	buffer_load_u16 v56, v7, s[8:11], 0 offen
	buffer_load_u16 v57, v20, s[8:11], 0 offen
	buffer_load_u16 v58, v16, s[8:11], 0 offen
	buffer_load_u16 v59, v22, s[8:11], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s31, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v6, 1, v23
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v5, 0x100, v21
	v_cndmask_b32_e32 v1, 0x80000000, v42, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v16, s64, v44
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v7, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v44
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s30, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v21, 0x100, v6
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v22, s64, v16
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s29, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v16, 1, v16
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v23, 0x100, v20
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v42, s64, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s28, s3
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v44, 0x100, v16
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_clause 0x7
	buffer_load_u16 v60, v8, s[8:11], 0 offen
	buffer_load_u16 v61, v1, s[8:11], 0 offen
	buffer_load_u16 v62, v7, s[8:11], 0 offen
	buffer_load_u16 v63, v5, s[8:11], 0 offen
	buffer_load_u16 v64, v6, s[8:11], 0 offen
	buffer_load_u16 v65, v21, s[8:11], 0 offen
	buffer_load_u16 v66, v20, s[8:11], 0 offen
	buffer_load_u16 v67, v23, s[8:11], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s26, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v1, 0x100, v22
	v_cndmask_b32_e32 v5, 0x80000000, v44, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshlrev_b32_e32 v7, 1, v42
	v_add_lshl_u32 v8, v42, s64, 1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v21, 0xc60, v254
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s24, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	buffer_load_u16 v42, v16, s[8:11], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v16, 0x100, v7
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v20, 0x100, v8
	v_xor_b32_e32 v23, 0x1080, v254
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s25, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_add_nc_u32 v99, 0, v21
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s27, s3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_add_nc_u32 v101, 0, v23
	s_clause 0xa
	buffer_load_u16 v44, v5, s[8:11], 0 offen
	buffer_load_u16 v68, v6, s[8:11], 0 offen
	buffer_load_u16 v69, v1, s[8:11], 0 offen
	buffer_load_u16 v70, v7, s[8:11], 0 offen
	buffer_load_u16 v71, v3, s[8:11], 0 offen
	buffer_load_u16 v72, v0, s[8:11], 0 offen
	buffer_load_u16 v73, v4, s[8:11], 0 offen
	buffer_load_u16 v74, v2, s[8:11], 0 offen
	buffer_load_u16 v75, v8, s[8:11], 0 offen
	buffer_load_u16 v76, v20, s[8:11], 0 offen
	buffer_load_u16 v77, v16, s[8:11], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[0:1], null, s68, s57, v[234:235]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v4, 0x210, v254
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v6, 0x420, v254
	v_xor_b32_e32 v16, 0xa50, v254
	v_xor_b32_e32 v7, 0x630, v254
	v_add_nc_u32_e32 v94, 0, v4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s57, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v95, 0, v6
	v_add_nc_u32_e32 v98, 0, v16
	v_xor_b32_e32 v22, 0xe70, v254
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v2, s57, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v103, 0, v80
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v80, 0x80000000, v0, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s57, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v0, 1, v2
	v_cndmask_b32_e32 v90, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v8, 0x840, v254
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v5, s57, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v91, 0x80000000, v0 :: v_dual_lshlrev_b32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v96, 0, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s57, v5
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v0, 1, v5
	v_cndmask_b32_e32 v16, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v100, 0, v22
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v79, s57, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v20
	v_cndmask_b32_e32 v20, 0x80000000, v0, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v97, 0, v8
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v84, s57, v79
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v21, 0x80000000, v2 :: v_dual_lshlrev_b32 v0, 1, v79
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s9, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v4, s57, v84
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v84
	v_cndmask_b32_e32 v22, 0x80000000, v0, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s8, s12
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v6, s57, v4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v2 :: v_dual_lshlrev_b32 v0, 1, v4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s4
	scratch_store_b32 off, v101, off offset:36 ; 4-byte Folded Spill
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v7, s57, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v4, 1, v6
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s4
	s_mov_b32 s58, 0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v8, s57, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v81, 0x80000000, v4 :: v_dual_lshlrev_b32 v6, 1, v7
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v4, 1, v8
	v_cndmask_b32_e32 v82, 0x80000000, v6, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v83, 0x80000000, v4, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v78, 0x1290, v254
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v86, 0x1ef0, v254
	v_add_nc_u32_e32 v235, 0, v254
	v_add_nc_u32_e32 v102, 0, v78
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v78, s57, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v108, 0, v86
	scratch_store_b32 off, v107, off offset:60 ; 4-byte Folded Spill
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s57, v78
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v8, 1, v78
	scratch_store_b32 off, v108, off offset:64 ; 4-byte Folded Spill
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s57, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v5, s57, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v79, s57, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, s57, v79
	v_add_nc_u32_e32 v7, s57, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v6, s57, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v84, 0x80000000, v8, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v85, 0x80000000, v1, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v4, s57, v6
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s47, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v5
	v_lshlrev_b32_e32 v5, 1, v6
	scratch_store_b32 off, v94, off offset:8 ; 4-byte Folded Spill
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v8, s57, v4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v86, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v79
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s46, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v6, 1, v4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v78, s57, v8
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v87, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v95, off offset:12
	scratch_store_b32 off, v96, off offset:16
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v79, s57, v78
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v7
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v7, 1, v8
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v88, s57, v79
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v79, 1, v79
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s43, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v8, 1, v78
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v89, s57, v88
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s42, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v88, 1, v88
	v_cndmask_b32_e32 v4, 0x80000000, v5, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v78, s57, v89
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s41, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(62)
	ds_store_b16 v235, v14
	ds_store_b16 v235, v15 offset:256
	s_waitcnt vmcnt(35)
	ds_store_b16 v235, v45 offset:8192
	ds_store_b16 v94, v13
	ds_store_b16 v94, v17 offset:256
	s_waitcnt vmcnt(34)
	ds_store_b16 v235, v46 offset:8448
	s_waitcnt vmcnt(33)
	ds_store_b16 v94, v47 offset:8192
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s40, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v92, s57, v78
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s36, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v7, 0x80000000, v8 :: v_dual_lshlrev_b32 v78, 1, v78
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s35, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v93, s57, v92
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v8, 0x80000000, v79 :: v_dual_lshlrev_b32 v79, 1, v89
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s31, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v92, 1, v92
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s30, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(32)
	ds_store_b16 v94, v48 offset:8448
	ds_store_b16 v95, v11
	ds_store_b16 v95, v12 offset:256
	s_waitcnt vmcnt(31)
	ds_store_b16 v95, v49 offset:8192
	ds_store_b16 v96, v9
	ds_store_b16 v96, v10 offset:256
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v89, 0x80000000, v79, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v79, s57, v93
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s29, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(30)
	ds_store_b16 v95, v50 offset:8448
	s_waitcnt vmcnt(29)
	ds_store_b16 v96, v51 offset:8192
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v155, 0x80000000, v78 :: v_dual_lshlrev_b32 v78, 1, v93
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v93, s57, v79
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v156, 0x80000000, v92 :: v_dual_lshlrev_b32 v79, 1, v79
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v92, v93, s57, 1
	v_dual_cndmask_b32 v157, 0x80000000, v78 :: v_dual_lshlrev_b32 v78, 1, v93
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s24, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(28)
	ds_store_b16 v96, v52 offset:8448
	ds_store_b16 v97, v24
	ds_store_b16 v97, v25 offset:256
	s_waitcnt vmcnt(27)
	ds_store_b16 v97, v43 offset:8192
	ds_store_b16 v98, v26
	ds_store_b16 v98, v27 offset:256
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v158, 0x80000000, v79, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s25, s4
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v97, off offset:20
	scratch_store_b32 off, v98, off offset:24
	scratch_store_b32 off, v99, off offset:28
	scratch_store_b32 off, v100, off offset:32
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v159, 0x80000000, v78, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(26)
	ds_store_b16 v97, v53 offset:8448
	s_waitcnt vmcnt(25)
	ds_store_b16 v98, v54 offset:8192
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v160, 0x80000000, v92, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(24)
	ds_store_b16 v98, v55 offset:8448
	ds_store_b16 v99, v28
	ds_store_b16 v99, v29 offset:256
	s_waitcnt vmcnt(23)
	ds_store_b16 v99, v56 offset:8192
	ds_store_b16 v100, v30
	ds_store_b16 v100, v31 offset:256
	s_waitcnt vmcnt(22)
	ds_store_b16 v99, v57 offset:8448
	s_waitcnt vmcnt(21)
	ds_store_b16 v100, v58 offset:8192
	s_waitcnt vmcnt(20)
	ds_store_b16 v100, v59 offset:8448
	ds_store_b16 v101, v18
	ds_store_b16 v101, v32 offset:256
	s_waitcnt vmcnt(19)
	ds_store_b16 v101, v60 offset:8192
	ds_store_b16 v102, v33
	ds_store_b16 v102, v34 offset:256
	s_waitcnt vmcnt(18)
	ds_store_b16 v101, v61 offset:8448
	s_waitcnt vmcnt(17)
	ds_store_b16 v102, v62 offset:8192
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v102, off offset:40
	scratch_store_b32 off, v103, off offset:44
	scratch_store_b32 off, v104, off offset:48
	scratch_store_b32 off, v105, off offset:52
	scratch_store_b32 off, v106, off offset:56
	s_waitcnt vmcnt(16)
	ds_store_b16 v102, v63 offset:8448
	ds_store_b16 v103, v35
	ds_store_b16 v103, v36 offset:256
	s_waitcnt vmcnt(15)
	ds_store_b16 v103, v64 offset:8192
	ds_store_b16 v104, v37
	ds_store_b16 v104, v38 offset:256
	s_waitcnt vmcnt(14)
	ds_store_b16 v103, v65 offset:8448
	s_waitcnt vmcnt(13)
	ds_store_b16 v104, v66 offset:8192
	s_waitcnt vmcnt(12)
	ds_store_b16 v104, v67 offset:8448
	ds_store_b16 v105, v19
	ds_store_b16 v105, v39 offset:256
	s_waitcnt vmcnt(11)
	ds_store_b16 v105, v42 offset:8192
	ds_store_b16 v106, v40
	ds_store_b16 v106, v41 offset:256
	s_waitcnt vmcnt(10)
	ds_store_b16 v105, v44 offset:8448
	s_waitcnt vmcnt(9)
	ds_store_b16 v106, v68 offset:8192
	s_waitcnt vmcnt(8)
	ds_store_b16 v106, v69 offset:8448
	s_waitcnt vmcnt(6)
	ds_store_b16 v107, v71
	s_waitcnt vmcnt(5)
	ds_store_b16 v107, v72 offset:256
	ds_store_b16 v107, v70 offset:8192
	s_waitcnt vmcnt(4)
	ds_store_b16 v108, v73
	s_waitcnt vmcnt(3)
	ds_store_b16 v108, v74 offset:256
	s_waitcnt vmcnt(2)
	ds_store_b16 v108, v75 offset:8192
	s_waitcnt vmcnt(1)
	ds_store_b16 v108, v76 offset:8448
	s_waitcnt vmcnt(0)
	ds_store_b16 v107, v77 offset:8448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_u16 v24, v80, s[8:11], 0 offen
	buffer_load_u16 v25, v90, s[8:11], 0 offen
	buffer_load_u16 v26, v91, s[8:11], 0 offen
	buffer_load_u16 v27, v16, s[8:11], 0 offen
	buffer_load_u16 v173, v20, s[8:11], 0 offen
	buffer_load_u16 v172, v21, s[8:11], 0 offen
	buffer_load_u16 v171, v22, s[8:11], 0 offen
	buffer_load_u16 v170, v23, s[8:11], 0 offen
	buffer_load_u16 v169, v0, s[8:11], 0 offen
	buffer_load_u16 v168, v81, s[8:11], 0 offen
	buffer_load_u16 v167, v82, s[8:11], 0 offen
	buffer_load_u16 v166, v83, s[8:11], 0 offen
	buffer_load_u16 v153, v84, s[8:11], 0 offen
	buffer_load_u16 v152, v85, s[8:11], 0 offen
	buffer_load_u16 v151, v86, s[8:11], 0 offen
	buffer_load_u16 v150, v87, s[8:11], 0 offen
	buffer_load_u16 v19, v1, s[8:11], 0 offen
	buffer_load_u16 v18, v2, s[8:11], 0 offen
	buffer_load_u16 v17, v3, s[8:11], 0 offen
	buffer_load_u16 v162, v4, s[8:11], 0 offen
	buffer_load_u16 v76, v5, s[8:11], 0 offen
	buffer_load_u16 v75, v6, s[8:11], 0 offen
	buffer_load_u16 v74, v7, s[8:11], 0 offen
	buffer_load_u16 v73, v8, s[8:11], 0 offen
	buffer_load_u16 v165, v88, s[8:11], 0 offen
	buffer_load_u16 v164, v89, s[8:11], 0 offen
	buffer_load_u16 v163, v155, s[8:11], 0 offen
	buffer_load_u16 v154, v156, s[8:11], 0 offen
	buffer_load_u16 v149, v157, s[8:11], 0 offen
	buffer_load_u16 v148, v158, s[8:11], 0 offen
	buffer_load_u16 v147, v159, s[8:11], 0 offen
	buffer_load_u16 v146, v160, s[8:11], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_clause 0xb
	buffer_load_u16 v174, v80, s[8:11], 0 offen
	buffer_load_u16 v175, v90, s[8:11], 0 offen
	buffer_load_u16 v176, v91, s[8:11], 0 offen
	buffer_load_u16 v177, v16, s[8:11], 0 offen
	buffer_load_u16 v200, v3, s[8:11], 0 offen
	buffer_load_u16 v199, v4, s[8:11], 0 offen
	buffer_load_u16 v181, v5, s[8:11], 0 offen
	buffer_load_u16 v180, v6, s[8:11], 0 offen
	buffer_load_u16 v179, v7, s[8:11], 0 offen
	buffer_load_u16 v178, v8, s[8:11], 0 offen
	buffer_load_u16 v194, v1, s[8:11], 0 offen
	buffer_load_u16 v201, v2, s[8:11], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 7, v229
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_clause 0x3
	buffer_load_u16 v189, v20, s[8:11], 0 offen
	buffer_load_u16 v188, v21, s[8:11], 0 offen
	buffer_load_u16 v187, v22, s[8:11], 0 offen
	buffer_load_u16 v186, v23, s[8:11], 0 offen
	scratch_store_b32 off, v161, off offset:1512 ; 4-byte Folded Spill
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_or3_b32 v77, v161, v1, v217
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v5, 0, v77
	v_xad_u32 v142, 0xf0, v77, 0
	v_xad_u32 v13, v77, 16, 0
	v_xad_u32 v29, v77, 48, 0
	v_xad_u32 v28, v77, 32, 0
	v_xad_u32 v45, 0x50, v77, 0
	v_xad_u32 v41, v77, 64, 0
	v_xad_u32 v61, 0x70, v77, 0
	v_xad_u32 v57, 0x60, v77, 0
	v_xad_u32 v94, 0x90, v77, 0
	v_xad_u32 v90, 0x80, v77, 0
	v_xad_u32 v110, 0xb0, v77, 0
	v_xad_u32 v106, 0xa0, v77, 0
	v_xad_u32 v126, 0xd0, v77, 0
	v_xad_u32 v122, 0xc0, v77, 0
	v_xad_u32 v77, 0xe0, v77, 0
	ds_load_b128 v[134:137], v142
	ds_load_b128 v[130:133], v77
	ds_load_b128 v[138:141], v77 offset:256
	ds_load_b128 v[142:145], v142 offset:256
	ds_load_b128 v[1:4], v5
	ds_load_b128 v[9:12], v5 offset:256
	ds_load_b128 v[5:8], v13
	ds_load_b128 v[13:16], v13 offset:256
	ds_load_b128 v[53:56], v61
	ds_load_b128 v[49:52], v57
	ds_load_b128 v[57:60], v57 offset:256
	ds_load_b128 v[61:64], v61 offset:256
	ds_load_b128 v[69:72], v94
	ds_load_b128 v[65:68], v90
	ds_load_b128 v[90:93], v90 offset:256
	ds_load_b128 v[94:97], v94 offset:256
	ds_load_b128 v[102:105], v110
	ds_load_b128 v[98:101], v106
	ds_load_b128 v[106:109], v106 offset:256
	ds_load_b128 v[110:113], v110 offset:256
	ds_load_b128 v[118:121], v126
	ds_load_b128 v[114:117], v122
	ds_load_b128 v[122:125], v122 offset:256
	ds_load_b128 v[126:129], v126 offset:256
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v20, 16, v24
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v21, 16, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_clause 0xf
	buffer_load_u16 v206, v0, s[8:11], 0 offen
	buffer_load_u16 v198, v88, s[8:11], 0 offen
	buffer_load_u16 v81, v81, s[8:11], 0 offen
	buffer_load_u16 v197, v89, s[8:11], 0 offen
	buffer_load_u16 v207, v82, s[8:11], 0 offen
	buffer_load_u16 v196, v155, s[8:11], 0 offen
	buffer_load_u16 v208, v83, s[8:11], 0 offen
	buffer_load_u16 v195, v156, s[8:11], 0 offen
	buffer_load_u16 v193, v84, s[8:11], 0 offen
	buffer_load_u16 v185, v157, s[8:11], 0 offen
	buffer_load_u16 v192, v85, s[8:11], 0 offen
	buffer_load_u16 v184, v158, s[8:11], 0 offen
	buffer_load_u16 v191, v86, s[8:11], 0 offen
	buffer_load_u16 v183, v159, s[8:11], 0 offen
	buffer_load_u16 v190, v87, s[8:11], 0 offen
	buffer_load_u16 v182, v160, s[8:11], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v0, 8, v240
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v22, 16, v26
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v23, 16, v27
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_or3_b32 v77, v161, v0, v217
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v82, 16, v77
	v_add_nc_u32_e32 v0, 0, v77
	v_xor_b32_e32 v84, 48, v77
	v_xor_b32_e32 v83, 32, v77
	v_xor_b32_e32 v86, 0x50, v77
	v_add_nc_u32_e32 v82, 0, v82
	ds_load_b128 v[213:216], v82
	ds_load_b128 v[209:212], v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:692
	scratch_store_b128 off, v[213:216], off offset:708
	ds_load_b128 v[209:212], v0 offset:256
	ds_load_b128 v[213:216], v82 offset:256
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v83, 0, v83
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:724 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:740 ; 16-byte Folded Spill
	ds_load_b128 v[213:216], v84
	ds_load_b128 v[209:212], v83
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:756
	scratch_store_b128 off, v[213:216], off offset:772
	ds_load_b128 v[209:212], v83 offset:256
	ds_load_b128 v[213:216], v84 offset:256
	v_xor_b32_e32 v85, 64, v77
	v_add_nc_u32_e32 v86, 0, v86
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:788 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:804 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v85, 0, v85
	ds_load_b128 v[213:216], v86
	ds_load_b128 v[209:212], v85
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:820
	scratch_store_b128 off, v[213:216], off offset:836
	ds_load_b128 v[209:212], v85 offset:256
	ds_load_b128 v[213:216], v86 offset:256
	v_xor_b32_e32 v88, 0x70, v77
	v_xor_b32_e32 v87, 0x60, v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:852 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:868 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v87, 0, v87
	ds_load_b128 v[213:216], v88
	ds_load_b128 v[209:212], v87
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:884
	scratch_store_b128 off, v[213:216], off offset:900
	ds_load_b128 v[209:212], v87 offset:256
	ds_load_b128 v[213:216], v88 offset:256
	v_xor_b32_e32 v155, 0x90, v77
	v_xor_b32_e32 v89, 0x80, v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:916 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:932 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v155, 0, v155
	v_add_nc_u32_e32 v89, 0, v89
	ds_load_b128 v[213:216], v155
	ds_load_b128 v[209:212], v89
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:948
	scratch_store_b128 off, v[213:216], off offset:964
	ds_load_b128 v[209:212], v89 offset:256
	ds_load_b128 v[213:216], v155 offset:256
	v_xor_b32_e32 v157, 0xb0, v77
	v_xor_b32_e32 v156, 0xa0, v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:980 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:996 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v157, 0, v157
	v_add_nc_u32_e32 v156, 0, v156
	ds_load_b128 v[213:216], v157
	ds_load_b128 v[209:212], v156
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:1012
	scratch_store_b128 off, v[213:216], off offset:1028
	ds_load_b128 v[209:212], v156 offset:256
	ds_load_b128 v[213:216], v157 offset:256
	v_xor_b32_e32 v159, 0xd0, v77
	v_xor_b32_e32 v158, 0xc0, v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1044 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1060 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v159, 0, v159
	v_add_nc_u32_e32 v158, 0, v158
	ds_load_b128 v[213:216], v159
	ds_load_b128 v[209:212], v158
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:1076
	scratch_store_b128 off, v[213:216], off offset:1092
	ds_load_b128 v[209:212], v158 offset:256
	ds_load_b128 v[213:216], v159 offset:256
	v_xor_b32_e32 v160, 0xe0, v77
	v_xor_b32_e32 v77, 0xf0, v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1108 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1124 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v161, 0, v77
	v_add_nc_u32_e32 v160, 0, v160
	ds_load_b128 v[213:216], v161
	ds_load_b128 v[209:212], v160
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v24, 16, v174
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v25, 16, v175
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[209:212], off offset:1140
	scratch_store_b128 off, v[213:216], off offset:1156
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v26, v20, v24 :: v_dual_mul_f32 v31, v21, v25
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[209:212], v160 offset:256
	ds_load_b128 v[213:216], v161 offset:256
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v19, 16, v19
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v27, 16, v176
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v30, 16, v177
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v32, 16, v194
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v26 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v26, 16, v201
	v_lshlrev_b32_e32 v33, 16, v200
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v31 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v31, v22, v27 :: v_dual_fmac_f32 v78, v20, v24
	v_mul_f32_e32 v20, v23, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v24, v19, v32 :: v_dual_fmac_f32 v79, v21, v25
	v_mul_f32_e32 v21, v18, v26
	v_mul_f32_e32 v25, v17, v33
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v31 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v202, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v203, v24 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v204, v21 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v205, v25 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v77, 0x110, v254, 0
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v80, v22, v27
	v_fmac_f32_e32 v202, v23, v30
	v_dual_fmac_f32 v203, v19, v32 :: v_dual_fmac_f32 v204, v18, v26
.Ltmp8:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[21:24], v29
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v205, v17, v33
.Ltmp10:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[17:20], v28
	ds_load_b128 v[25:28], v28 offset:256
	ds_load_b128 v[29:32], v29 offset:256
	ds_load_b128 v[37:40], v45
	ds_load_b128 v[33:36], v41
	ds_load_b128 v[41:44], v41 offset:256
	ds_load_b128 v[45:48], v45 offset:256
	s_waitcnt lgkmcnt(9)
	scratch_store_b128 off, v[209:212], off offset:1172 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(8)
	scratch_store_b128 off, v[213:216], off offset:1188 ; 16-byte Folded Spill
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v235, v174
	ds_store_b16 v77, v175
	v_xad_u32 v174, 0x220, v254, 0
	ds_store_b16 v77, v201 offset:4096
	ds_store_b16 v174, v176
	v_xad_u32 v77, 0x330, v254, 0
	ds_store_b16 v174, v200 offset:4096
	ds_store_b16 v77, v177
	ds_store_b16 v77, v199 offset:4096
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v162
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v162, 16, v199
	v_xad_u32 v175, 0x550, v254, 0
	scratch_store_b32 off, v217, off offset:1516 ; 4-byte Folded Spill
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v174, v77, v162 :: v_dual_lshlrev_b32 v75, 16, v75
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v74, 16, v74
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v174, v174 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v174, v77, v162 :: v_dual_lshlrev_b32 v77, 8, v224
.Ltmp13:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v162, 7, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v174, v174, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v77, v77, v162, v217
	v_xad_u32 v162, 0x440, v254, 0
	ds_store_b16 v162, v181 offset:4096
	s_waitcnt vmcnt(18)
	ds_store_b16 v175, v188
	ds_store_b16 v162, v189
	v_xad_u32 v162, 0x660, v254, 0
	ds_store_b16 v175, v180 offset:4096
	s_waitcnt vmcnt(17)
	ds_store_b16 v162, v187
	v_xad_u32 v175, 0x770, v254, 0
	ds_store_b16 v162, v179 offset:4096
	s_waitcnt vmcnt(16)
	ds_store_b16 v175, v186
	ds_store_b16 v175, v178 offset:4096
	v_xad_u32 v162, 0x880, v254, 0
	v_xad_u32 v175, 0x990, v254, 0
	s_waitcnt vmcnt(14)
	ds_store_b16 v162, v198 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b16 v175, v81
	ds_store_b16 v162, v206
	v_xad_u32 v162, 0xaa0, v254, 0
	s_waitcnt vmcnt(12)
	ds_store_b16 v175, v197 offset:4096
	s_waitcnt vmcnt(11)
	ds_store_b16 v162, v207
	v_xad_u32 v175, 0xbb0, v254, 0
	s_waitcnt vmcnt(10)
	ds_store_b16 v162, v196 offset:4096
	s_waitcnt vmcnt(9)
	ds_store_b16 v175, v208
	s_waitcnt vmcnt(8)
	ds_store_b16 v175, v195 offset:4096
	v_xad_u32 v162, 0xcc0, v254, 0
	v_xad_u32 v175, 0xdd0, v254, 0
	s_waitcnt vmcnt(6)
	ds_store_b16 v162, v185 offset:4096
	s_waitcnt vmcnt(5)
	ds_store_b16 v175, v192
	ds_store_b16 v162, v193
	v_xad_u32 v162, 0xee0, v254, 0
	s_waitcnt vmcnt(4)
	ds_store_b16 v175, v184 offset:4096
	s_waitcnt vmcnt(3)
	ds_store_b16 v162, v191
	v_xad_u32 v175, 0xff0, v254, 0
	s_waitcnt vmcnt(2)
	ds_store_b16 v162, v183 offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b16 v175, v190
	s_waitcnt vmcnt(0)
	ds_store_b16 v175, v182 offset:4096
	ds_store_b16 v235, v194 offset:4096
	v_add_nc_u32_e32 v162, 0, v77
	v_xad_u32 v175, v77, 16, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, v77, 32, 0
	v_xad_u32 v175, v77, 48, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1204 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1220 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, v77, 64, 0
	v_xad_u32 v175, 0x50, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1236 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1252 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, 0x60, v77, 0
	v_xad_u32 v175, 0x70, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1268 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1284 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, 0x80, v77, 0
	v_xad_u32 v175, 0x90, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1300 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1316 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, 0xa0, v77, 0
	v_xad_u32 v175, 0xb0, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1332 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1348 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, 0xc0, v77, 0
	v_xad_u32 v175, 0xd0, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1364 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1380 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v175
	v_xad_u32 v162, 0xe0, v77, 0
	v_xad_u32 v77, 0xf0, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1396 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1412 ; 16-byte Folded Spill
	ds_load_b128 v[209:212], v162
	ds_load_b128 v[213:216], v77
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v78, v78 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v174, v174, v174 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v194, 0x60, v234
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[209:212], off offset:1428 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[213:216], off offset:1444 ; 16-byte Folded Spill
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v174, v174, v174 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v77, v78
	v_add_f32_dpp v78, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v77, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v78, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v78, v78, v79
	v_add_f32_dpp v79, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v78, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v79, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v79, v79, v80
	v_add_f32_dpp v80, v202, v202 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v79, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v79, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v162, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v80, v80, v162
	v_add_f32_dpp v162, v203, v203 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v80, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v162, v162, v162 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v80, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v162, v162, v162 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v175, v162, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v162, v162, v175
	v_add_f32_dpp v175, v204, v204 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v162, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v175, v175, v175 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v199, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v175, v175, v175 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v176, v175, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v175, v175, v176
	v_add_f32_dpp v176, v205, v205 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v175, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v176, v176, v176 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v200, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v176, v176, v176 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v177, v176, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v176, v176, v177
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v177, v174, -1, -1 op_sel:[1,0]
	v_readlane_b32 s14, v176, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v174, v174, v177 :: v_dual_mov_b32 v201, s14
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v174, 31
	v_add_nc_u32_e32 v174, 0, v194
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v202, s15
	ds_store_b128 v174, v[77:80]
	ds_store_b128 v174, v[199:202] offset:16
.Ltmp62:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v173
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v189
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v77, v78
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v77, v78
.Ltmp67:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v172
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v188
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v80, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v80, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v171
.Ltmp70:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v162, v77, v78
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v162, v77, v78
.Ltmp73:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v170
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v186
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v170, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v170, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v170, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v78, v76, v77
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v78, v76, v77
.Ltmp79:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v76, 16, v180
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v77, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v77, v75, v76
.Ltmp82:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v75, 16, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v76, v74, v75
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v76, v74, v75
.Ltmp85:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v74, 16, v178
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v75, v73, v74
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v73, v74
	v_add_f32_dpp v73, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v74, v73, -1, -1 op_sel:[1,0]
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v73, v73, v74
	v_add_f32_dpp v74, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v73, 31
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v78, v78 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v74, -1, -1 op_sel:[1,0]
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v74, v74, v79
	v_add_f32_dpp v79, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v74, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v74, v73, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v78, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v73, v73, v74
	v_add_f32_dpp v74, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v79, -1, -1 op_sel:[1,0]
	v_readlane_b32 s12, v73, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v73, 5, v234
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v79, v79, v80
	v_add_f32_dpp v80, v170, v170 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v170, s12 :: v_dual_and_b32 v73, 0x60, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s10, v79, 31
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v74, -1, -1 op_sel:[1,0]
	v_add_nc_u32_e32 v175, 0, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v79, s10
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v74, v74, v77
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v76, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v162, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s13, v74, 31
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v77
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v75, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v80, v80, v162 :: v_dual_mov_b32 v171, s13
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v76, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v75, v75, v77
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, s8
	v_readlane_b32 s11, v80, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v172, s14
	v_readlane_b32 s15, v75, 31
	ds_load_b128 v[176:179], v175
	ds_load_b128 v[73:76], v175 offset:16
	v_mov_b32_e32 v80, s11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v173, s15
	ds_store_b128 v174, v[77:80]
	ds_store_b128 v174, v[170:173] offset:16
.Ltmp116:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v169
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v206
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v77, v78
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v77, v78
.Ltmp121:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v168
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v81
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v80, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v80, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v167
.Ltmp124:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v81, v77, v78
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v81, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v81, v77, v78
.Ltmp127:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v166
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v208
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[166:169], v175
	ds_load_b128 v[170:173], v175 offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp129:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v162, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v162, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v165
.Ltmp132:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v165, v77, v78
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v165, v77, v78
.Ltmp135:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v164
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v197
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v164, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v164, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v163
.Ltmp138:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v163, v77, v78
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v163, v77, v78
.Ltmp141:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v154
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v195
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v154, v77, v78
	v_add_f32_dpp v77, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v77, v78
	v_add_f32_dpp v78, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v77, 31
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v78, -1, -1 op_sel:[1,0]
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v78, v78, v79
	v_add_f32_dpp v79, v81, v81 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v78, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v77, v77, v78
	v_add_f32_dpp v78, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v79, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s12, v77, 31
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v79, v79, v80
	v_add_f32_dpp v80, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v162, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s10, v79, 31
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v78, -1, -1 op_sel:[1,0]
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v78, v78, v79
	v_add_f32_dpp v79, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v81, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s13, v78, 31
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v80, v80, v81 :: v_dual_mov_b32 v163, s13
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v80, 31
	v_permlanex16_b32 v81, v79, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v80, s11 :: v_dual_add_f32 v79, v79, v81
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v79, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v79, s10 :: v_dual_mov_b32 v164, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v154, v81, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v81, v81, v154
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v81, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v165, s15
	ds_store_b128 v174, v[77:80]
	ds_store_b128 v174, v[162:165] offset:16
.Ltmp175:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v153
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v193
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v77, v78
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v77, v78
.Ltmp180:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v152
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v192
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v80, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v80, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v151
.Ltmp183:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v81, v77, v78
.Ltmp184:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v81, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v81, v77, v78
.Ltmp186:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v150
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v190
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v150, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v150, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v149
.Ltmp189:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v149, v77, v78
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v149, v77, v78
.Ltmp192:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v148
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v184
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v148, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v148, v77, v78 :: v_dual_lshlrev_b32 v77, 16, v147
.Ltmp195:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v147, v77, v78
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v147, v77, v78
.Ltmp198:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v77, 16, v146
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v182
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v146, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v146, v77, v78
	v_add_f32_dpp v77, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v77, v78
	v_add_f32_dpp v78, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v77, 31
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v78, -1, -1 op_sel:[1,0]
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v78, v78, v79
	v_add_f32_dpp v79, v81, v81 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v78, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v77, v77, v78
	v_add_f32_dpp v78, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v79, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s12, v77, 31
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, s8
.Ltmp214:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s8, s39, 31
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v79, v79, v80
	v_add_f32_dpp v80, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[150:153], v175
	ds_load_b128 v[162:165], v175 offset:16
	s_waitcnt lgkmcnt(0)
	v_readlane_b32 s10, v79, 31
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v78, -1, -1 op_sel:[1,0]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v78, v78, v79
	v_add_f32_dpp v79, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v81, v80, -1, -1 op_sel:[1,0]
	v_readlane_b32 s13, v78, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, s9
.Ltmp223:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s9, s8, 31
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v80, v80, v81 :: v_dual_mov_b32 v147, s13
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp225:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s9, s9, 27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v80, 31
.Ltmp227:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s8, s8, s9
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v81, v79, -1, -1 op_sel:[1,0]
.Ltmp229:
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s26, s8, 0xffffffe0
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s8, s20, 0x10008
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v80, s11 :: v_dual_add_f32 v79, v79, v81
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v79, 31
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v79, s10 :: v_dual_mov_b32 v148, s14
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v81, v81, v81 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v146, v81, -1, -1 op_sel:[1,0]
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v81, v81, v146 :: v_dual_mov_b32 v146, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v81, 31
	v_mov_b32_e32 v149, s15
	ds_store_b128 v174, v[77:80]
	ds_store_b128 v174, v[146:149] offset:16
	v_dual_mov_b32 v77, v176 :: v_dual_mov_b32 v78, v177
	v_dual_mov_b32 v79, v178 :: v_dual_mov_b32 v80, v179
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_barrier
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v221, v176, v77 :: v_dual_add_f32 v222, v177, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v220, v178, v79
	v_dual_add_f32 v154, v179, v80 :: v_dual_mov_b32 v77, v166
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v78, v167 :: v_dual_mov_b32 v79, v168
	v_mov_b32_e32 v80, v169
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v221, off offset:132
	scratch_store_b32 off, v220, off offset:100
	scratch_store_b32 off, v154, off offset:68
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v154, v154 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v174, v166, v77 :: v_dual_add_f32 v223, v167, v78
	v_dual_add_f32 v167, v168, v79 :: v_dual_add_f32 v166, v169, v80
.Ltmp242:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v77, v150 :: v_dual_mov_b32 v78, v151
	v_dual_mov_b32 v79, v152 :: v_dual_mov_b32 v80, v153
	scratch_store_b32 off, v222, off offset:164 ; 4-byte Folded Spill
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v154, off offset:1472
	scratch_store_b32 off, v174, off offset:228
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v168, v150, v77 :: v_dual_add_f32 v169, v151, v78
	v_dual_add_f32 v176, v152, v79 :: v_dual_add_f32 v153, v153, v80
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[77:80], v175
	ds_load_b128 v[146:149], v175 offset:16
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v221, v221 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v222, v222 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v210, v153
	v_mov_b32_dpp v220, v220 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v174, off offset:1480
	scratch_store_b32 off, v223, off offset:260
	v_mov_b32_dpp v223, v223 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v81, v77
	v_dual_mov_b32 v151, v79 :: v_dual_mov_b32 v152, v80
	v_mov_b32_e32 v150, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v151, v151 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v152, v152 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v150, v150 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v211, v77, v81 :: v_dual_add_f32 v216, v79, v151
	v_add_f32_e32 v81, v80, v152
.Ltmp246:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, v73
	v_dual_mov_b32 v79, v75 :: v_dual_mov_b32 v80, v76
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v213, v78, v150
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v167, off offset:292
	scratch_store_b32 off, v211, off offset:392
	scratch_store_b32 off, v213, off offset:408
	scratch_store_b32 off, v216, off offset:424
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v214, v73, v77 :: v_dual_add_f32 v215, v75, v79
	v_dual_add_f32 v218, v76, v80 :: v_dual_mov_b32 v73, v170
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v75, v172 :: v_dual_mov_b32 v76, v173
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v215, off offset:460
	scratch_store_b32 off, v218, off offset:476
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v217, v74, v78 :: v_dual_mov_b32 v74, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v219, v170, v73
	v_dual_add_f32 v151, v172, v75 :: v_dual_add_f32 v152, v173, v76
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v73, v162
	v_dual_mov_b32 v75, v164 :: v_dual_mov_b32 v76, v165
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v214, off offset:492
	scratch_store_b32 off, v217, off offset:528
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v150, v171, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v74, v163 :: v_dual_add_f32 v77, v162, v73
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v79, v164, v75 :: v_dual_add_f32 v80, v165, v76
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v73, v146
	v_dual_mov_b32 v75, v148 :: v_dual_mov_b32 v76, v149
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v78, v163, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v74, v147 :: v_dual_add_f32 v73, v146, v73
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v146, v148, v75 :: v_dual_add_f32 v75, v149, v76
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v76, v150
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v167, off offset:1484
	scratch_store_b32 off, v166, off offset:196
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v166, off offset:1488
	scratch_store_b32 off, v168, off offset:324
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v74, v147, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v219, off offset:544
	scratch_store_b32 off, v146, off offset:612
.Ltmp262:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	scratch_store_b32 off, v76, off offset:1468 ; 4-byte Folded Spill
	v_mov_b32_e32 v76, v151
	scratch_store_b32 off, v74, off offset:596 ; 4-byte Folded Spill
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v168, off offset:1492
	scratch_store_b32 off, v169, off offset:360
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v212, v81 :: v_dual_mov_b32 v225, v152
	v_mov_b32_e32 v149, v77
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v169, off offset:1496
	scratch_store_b32 off, v176, off offset:376
	scratch_store_b32 off, v76, off offset:1476
	v_mov_b32_e32 v76, v78
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v213, v213 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v216, v216 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v214, v214 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v217, v217 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v215, v215 row_xmask:1 row_mask:0xf bank_mask:0xf
	scratch_store_b32 off, v76, off offset:628 ; 4-byte Folded Spill
	v_mov_b32_e32 v76, v79
	v_mov_b32_dpp v218, v218 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v219, v219 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v225, v225 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v74, off offset:1460
	scratch_store_b32 off, v76, off offset:644
	scratch_store_b32 off, v176, off offset:1500
	v_mov_b32_e32 v76, v80
	scratch_store_b32 off, v146, off offset:1464 ; 4-byte Folded Spill
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v76, off offset:660
	scratch_store_b32 off, v73, off offset:560
	v_mov_b32_e32 v76, v75
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	scratch_store_b32 off, v73, off offset:676 ; 4-byte Folded Spill
.Ltmp263:
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s33, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s10, s33, s21
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s8, s23
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s10, s10, s23
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s8, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s8, s39, s8
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s9, s8, 31
	s_lshr_b32 s9, s9, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s8, s8, s9
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s9, s10, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_not1_b32 s8, s8, 31
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s58, s9, 0x7fffffe0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s26, s26, s8
.LBB0_2:
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cndmask_b32_e64 v73, 0, 1, s7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s8, s18, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s7
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s7, s19, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s27, 1, v73
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s9, s33, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 32
	s_min_i32 s9, s39, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 31
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 27
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_not1_b32 s9, s9, 31
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s26, s26, s9
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s9, s5, s17
	s_xor_b32 s7, s8, s7
	s_sub_i32 s8, s16, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s8, s17
	s_cmp_ge_u32 s8, s17
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x8
	s_load_b32 s60, s[0:1], 0x80
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s8, s17
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v73, 2, v229
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s9, s5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v74, 31, v234
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s5, s5, s7
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_mul_i32 s6, s6, s37
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v73, v73, v224
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s5, s5, s7
	v_lshlrev_b32_e32 v148, 2, v224
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_add_i32 s5, s5, s6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s58, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v147, s33, v73
	v_lshlrev_b32_e32 v162, 2, v74
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s61, -1, 0
	scratch_store_b32 off, v73, off offset:1664 ; 4-byte Folded Spill
	s_and_b32 vcc_lo, exec_lo, s61
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v224, off offset:1508
	scratch_store_b32 off, v74, off offset:1504
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshlrev_b32_e32 v154, 2, v224
	v_lshlrev_b32_e32 v146, 2, v74
	s_mov_b32 s6, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr146
.LBB0_7:                                ; %Flow869
	s_clause 0x2
	s_load_b64 s[8:9], s[0:1], 0x58
	s_load_b128 s[12:15], s[0:1], 0x48
	s_load_b64 s[52:53], s[0:1], 0x10
	v_lshrrev_b32_e32 v73, 1, v240
	v_cmp_gt_i32_e64 s0, s38, v147
	v_bfe_u32 v253, v234, 4, 1
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_mul_i32 s37, s5, s39
	scratch_store_b32 off, v73, off offset:1668 ; 4-byte Folded Spill
	v_mov_b32_e32 v73, v234
	scratch_store_b64 off, v[73:74], off    ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s8, 2
	v_writelane_b32 v255, s9, 3
	v_writelane_b32 v255, s10, 4
	v_writelane_b32 v255, s11, 5
	v_writelane_b32 v255, s0, 6
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	v_writelane_b32 v255, s12, 7
	s_mov_b64 s[6:7], s[22:23]
	s_mov_b32 s5, s21
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s1, s58, s37
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v149, off offset:1572
	scratch_store_b32 off, v76, off offset:1568
	scratch_store_b32 off, v152, off offset:1564
	scratch_store_b32 off, v151, off offset:1560
	scratch_store_b32 off, v150, off offset:1556
	scratch_store_b32 off, v81, off offset:1552
	scratch_store_b32 off, v80, off offset:1548
	scratch_store_b32 off, v79, off offset:1544
	scratch_store_b32 off, v78, off offset:1540
	scratch_store_b32 off, v77, off offset:1536
	scratch_store_b32 off, v75, off offset:1532
	scratch_store_b32 off, v153, off offset:1528
	v_writelane_b32 v255, s13, 8
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v226, s23, v147
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v73, 1, v194
	v_writelane_b32 v255, s14, 9
	v_add_nc_u32_e32 v74, 0, v148
	v_dual_mov_b32 v232, 0 :: v_dual_lshlrev_b32 v75, 1, v229
	v_add_nc_u32_e32 v76, 0, v162
	v_writelane_b32 v255, s15, 10
	v_subrev_nc_u32_e32 v227, s21, v226
	v_add_nc_u32_e32 v228, s22, v226
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v194, off offset:1524
	scratch_store_b32 off, v229, off offset:1520
	scratch_store_b32 off, v148, off offset:1576
	scratch_store_b32 off, v162, off offset:1580
	v_writelane_b32 v255, s4, 11
	v_add_nc_u32_e32 v229, v74, v73
	v_add_nc_u32_e32 v230, v76, v75
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_writelane_b32 v255, s5, 12
	s_and_b32 s29, s49, 0xffff
	s_mov_b32 s28, s48
	s_lshl_b32 s35, s64, 6
	s_mov_b32 s80, 0x76543210
	v_writelane_b32 v255, s6, 13
	s_mov_b32 s81, s58
	v_writelane_b32 v255, s7, 14
	s_add_i32 s6, s1, 1
	s_add_i32 s7, s1, 2
	s_mul_i32 s6, s64, s6
	s_mul_i32 s5, s64, s1
	s_lshl_b32 s36, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 3
	v_writelane_b32 v255, s37, 15
	s_lshl_b32 s37, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 4
	s_lshl_b32 s40, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 5
	s_lshl_b32 s41, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 6
	s_lshl_b32 s42, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 7
	s_lshl_b32 s43, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 8
	s_lshl_b32 s44, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 9
	s_lshl_b32 s45, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 10
	s_lshl_b32 s46, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 11
	s_lshl_b32 s47, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 12
	s_lshl_b32 s50, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 13
	s_lshl_b32 s51, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 14
	s_lshl_b32 s54, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 15
	s_lshl_b32 s55, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 16
	s_lshl_b32 s56, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 17
	s_lshl_b32 s59, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 18
	s_lshl_b32 s62, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 19
	s_lshl_b32 s63, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 20
	s_lshl_b32 s65, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 21
	s_lshl_b32 s66, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 22
	s_lshl_b32 s67, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 23
	s_lshl_b32 s70, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 24
	s_lshl_b32 s71, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 25
	s_lshl_b32 s72, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 26
	s_lshl_b32 s73, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 27
	s_lshl_b32 s74, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 28
	s_lshl_b32 s75, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 29
	s_lshl_b32 s76, s6, 1
	s_mul_i32 s6, s64, s7
	s_add_i32 s7, s1, 30
	s_add_i32 s1, s1, 31
	s_lshl_b32 s77, s6, 1
	s_mul_i32 s6, s64, s7
	s_mul_i32 s1, s64, s1
	s_lshl_b32 s5, s5, 1
	s_lshl_b32 s78, s6, 1
	s_lshl_b32 s79, s1, 1
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	scratch_load_b64 v[234:235], off, off   ; 8-byte Folded Reload
	s_mul_f32 s0, s60, 0x3fb8aa3b
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp265:
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v73, s0, v147 :: v_dual_mul_f32 v74, s0, v148
	v_dual_mul_f32 v75, s0, v149 :: v_dual_mul_f32 v76, s0, v150
	v_dual_mul_f32 v77, s0, v151 :: v_dual_mul_f32 v78, s0, v152
	v_dual_mul_f32 v79, s0, v153 :: v_dual_mul_f32 v80, s0, v154
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v73, 0xff800000, v73, s89
	v_cndmask_b32_e64 v74, 0xff800000, v74, s84
	v_cndmask_b32_e64 v75, 0xff800000, v75, s88
	v_cndmask_b32_e64 v76, 0xff800000, v76, s83
	v_cndmask_b32_e64 v77, 0xff800000, v77, s87
	v_cndmask_b32_e64 v78, 0xff800000, v78, s82
	v_cndmask_b32_e64 v79, 0xff800000, v79, s86
	v_cndmask_b32_e64 v80, 0xff800000, v80, s85
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v147, v73, v74, v75
.Ltmp267:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s81, s81, 32
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v148, v76, v77, v78
.Ltmp269:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s5, s5, s35
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v149, v79, v80
.Ltmp271:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s36, s36, s35
	s_add_i32 s37, s37, s35
	s_add_i32 s40, s40, s35
	s_add_i32 s41, s41, s35
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v147, v147, v148, v149
.Ltmp273:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s42, s42, s35
	s_add_i32 s43, s43, s35
	s_add_i32 s44, s44, s35
	s_add_i32 s45, s45, s35
.Ltmp274:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v148, v147, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp275:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s46, s46, s35
	s_add_i32 s47, s47, s35
	s_add_i32 s50, s50, s35
	s_add_i32 s51, s51, s35
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v148, v148, v148
.Ltmp277:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s54, s54, s35
	s_add_i32 s55, s55, s35
	s_add_i32 s56, s56, s35
	s_add_i32 s59, s59, s35
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v147, v147, v148
.Ltmp279:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s62, s62, s35
	s_add_i32 s63, s63, s35
	s_add_i32 s65, s65, s35
	s_add_i32 s66, s66, s35
.Ltmp280:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	ds_store_b32 v229, v147
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v147, v230
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp282:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s67, s67, s35
	s_add_i32 s70, s70, s35
	s_add_i32 s71, s71, s35
	s_add_i32 s72, s72, s35
	s_add_i32 s73, s73, s35
	s_add_i32 s74, s74, s35
	s_add_i32 s75, s75, s35
	s_add_i32 s76, s76, s35
	s_add_i32 s77, s77, s35
	s_add_i32 s78, s78, s35
	s_add_i32 s79, s79, s35
	s_cmp_lt_i32 s81, s26
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v148, v147, s80, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v147, v231, v147, v148
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v73, v73, v147
	v_sub_f32_e32 v74, v74, v147
	v_sub_f32_e32 v75, v75, v147
	v_sub_f32_e32 v79, v79, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v79, v79
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v73, 0, v73, s89
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v74, 0, v74, s84
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v76, v76, v147
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v75, 0, v75, s88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v79, 0, v79, s86
.Ltmp285:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp286:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v76, v76
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v76, 0, v76, s83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v77, v77, v147 :: v_dual_add_f32 v74, v75, v76
	v_sub_f32_e32 v78, v78, v147
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp287:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v73, v74
.Ltmp288:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v77, 0, v77, s87
	v_cndmask_b32_e64 v78, 0, v78, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v80, v80, v147 :: v_dual_add_f32 v75, v77, v78
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v80, 0, v80, s85
.Ltmp289:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v76, v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v74, v75, v76
	v_add_f32_e32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v74, v73, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v73, v73, v74 :: v_dual_sub_f32 v74, v231, v147
	v_mov_b32_e32 v231, v147
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	ds_store_b32 v229, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v73, v230
.Ltmp293:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
.Ltmp294:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v75, v73, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v148, v73, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v148, v232, v74
	v_mov_b32_e32 v232, v148
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	s_add_i32 s1, s81, 1
	s_add_i32 s6, s81, 2
	s_add_i32 s7, s81, 3
	s_add_i32 s8, s81, 4
	s_add_i32 s9, s81, 5
	s_add_i32 s10, s81, 6
	s_add_i32 s11, s81, 7
	s_add_i32 s12, s81, 8
	s_add_i32 s13, s81, 9
	s_add_i32 s14, s81, 10
	s_add_i32 s15, s81, 11
	s_add_i32 s16, s81, 12
	s_add_i32 s17, s81, 13
	s_add_i32 s18, s81, 14
	s_add_i32 s19, s81, 15
	s_add_i32 s82, s81, 16
	s_add_i32 s96, s81, 17
	s_add_i32 s97, s81, 18
	s_add_i32 s98, s81, 19
	s_add_i32 s99, s81, 20
	s_add_i32 s100, s81, 21
	s_add_i32 s101, s81, 22
	s_add_i32 s102, s81, 23
	s_add_i32 s103, s81, 24
	s_add_i32 s104, s81, 25
	s_add_i32 vcc_lo, s81, 26
	s_add_i32 vcc_hi, s81, 27
	s_add_i32 s34, s81, 28
	s_add_i32 s20, s81, 29
	s_add_i32 s21, s81, 30
	s_add_i32 s22, s81, 31
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cmp_lt_i32 s81, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v73, s5, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s1, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v75, s36, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s6, s39
	v_dual_mov_b32 v81, v240 :: v_dual_add_nc_u32 v74, 0x100, v73
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s7, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v77, s37, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s8, s39
	v_dual_mov_b32 v189, v253 :: v_dual_add_nc_u32 v76, 0x100, v75
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s9, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v79, s40, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s10, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v78, 0x100, v77
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s11, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v80, 0x100, v79
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s12, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v162, s65, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s13, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v164, s66, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s14, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v163, 0x100, v162
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v166, s67, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s16, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v165, 0x100, v164
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s17, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v168, s70, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s18, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v167, 0x100, v166
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s19, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v170, s71, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s82, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v169, 0x100, v168
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s96, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v172, s72, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s97, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v171, 0x100, v170
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s98, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v174, s73, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s99, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v173, 0x100, v172
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s100, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v176, s74, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s101, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v175, 0x100, v174
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s102, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v178, s75, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s103, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v177, 0x100, v176
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s104, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v180, s76, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 vcc_lo, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v179, 0x100, v178
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 vcc_hi, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v182, s77, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s34, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v181, 0x100, v180
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s20, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v184, s78, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s21, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v183, 0x100, v182
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s22, s39
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v186, s79, v254
	.loc	1 231 61                        ; attention_backward.py:231:61
	s_cselect_b32 s1, -1, 0
	.loc	1 231 26 is_stmt 0              ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s23
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_add_nc_u32_e32 v185, 0x100, v184
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v187, 0x100, v186
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s24
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_add_nc_u32 v188, 0, v254
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s24
	v_readlane_b32 s0, v255, 6
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s25
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s25
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s95
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s95
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x7
	buffer_load_u16 v153, v73, s[28:31], 0 offen
	buffer_load_u16 v154, v74, s[28:31], 0 offen
	buffer_load_u16 v151, v75, s[28:31], 0 offen
	buffer_load_u16 v152, v76, s[28:31], 0 offen
	buffer_load_u16 v149, v77, s[28:31], 0 offen
	buffer_load_u16 v150, v78, s[28:31], 0 offen
	buffer_load_u16 v147, v79, s[28:31], 0 offen
	buffer_load_u16 v148, v80, s[28:31], 0 offen
	v_add_nc_u32_e32 v73, s41, v254
	v_add_nc_u32_e32 v75, s42, v254
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s94
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v77, s43, v254
	v_add_nc_u32_e32 v79, s44, v254
	v_add_nc_u32_e32 v74, 0x100, v73
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s94
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v76, 0x100, v75
	v_add_nc_u32_e32 v78, 0x100, v77
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s93
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v80, 0x100, v79
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s93
	.loc	1 229 28                        ; attention_backward.py:229:28
	buffer_load_u16 v239, v73, s[28:31], 0 offen
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s92
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v73, s45, v254
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s92
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s91
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s91
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x6
	buffer_load_u16 v240, v74, s[28:31], 0 offen
	buffer_load_u16 v237, v75, s[28:31], 0 offen
	buffer_load_u16 v238, v76, s[28:31], 0 offen
	buffer_load_u16 v235, v77, s[28:31], 0 offen
	buffer_load_u16 v236, v78, s[28:31], 0 offen
	buffer_load_u16 v233, v79, s[28:31], 0 offen
	buffer_load_u16 v234, v80, s[28:31], 0 offen
	v_add_nc_u32_e32 v75, s46, v254
	v_add_nc_u32_e32 v74, 0x100, v73
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s90
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v77, s47, v254
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s90
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v76, 0x100, v75
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s89
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v79, s50, v254
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s89
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v78, 0x100, v77
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s88
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v80, 0x100, v79
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s88
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s87
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s87
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x7
	buffer_load_u16 v247, v73, s[28:31], 0 offen
	buffer_load_u16 v248, v74, s[28:31], 0 offen
	buffer_load_u16 v245, v75, s[28:31], 0 offen
	buffer_load_u16 v246, v76, s[28:31], 0 offen
	buffer_load_u16 v243, v77, s[28:31], 0 offen
	buffer_load_u16 v244, v78, s[28:31], 0 offen
	buffer_load_u16 v241, v79, s[28:31], 0 offen
	buffer_load_u16 v242, v80, s[28:31], 0 offen
	v_add_nc_u32_e32 v73, s51, v254
	v_add_nc_u32_e32 v75, s54, v254
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s86
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v77, s55, v254
	v_add_nc_u32_e32 v79, s63, v254
	v_add_nc_u32_e32 v74, 0x100, v73
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s86
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v76, 0x100, v75
	v_add_nc_u32_e32 v78, 0x100, v77
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s85
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v80, 0x100, v79
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s85
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s84
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s84
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0x5
	buffer_load_u16 v253, v73, s[28:31], 0 offen
	buffer_load_u16 v224, v74, s[28:31], 0 offen
	buffer_load_u16 v251, v75, s[28:31], 0 offen
	buffer_load_u16 v252, v76, s[28:31], 0 offen
	buffer_load_u16 v249, v77, s[28:31], 0 offen
	buffer_load_u16 v250, v78, s[28:31], 0 offen
	v_add_nc_u32_e32 v73, s56, v254
	v_add_nc_u32_e32 v75, s59, v254
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s83
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v77, s62, v254
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v74, 0x100, v73
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s83
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v76, 0x100, v75
	v_add_nc_u32_e32 v78, 0x100, v77
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s82
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s82
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s19
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v162, 0x80000000, v162, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v163, 0x80000000, v163, vcc_lo
	s_clause 0x7
	buffer_load_u16 v75, v75, s[28:31], 0 offen
	buffer_load_u16 v76, v76, s[28:31], 0 offen
	buffer_load_u16 v77, v77, s[28:31], 0 offen
	buffer_load_u16 v78, v78, s[28:31], 0 offen
	buffer_load_u16 v79, v79, s[28:31], 0 offen
	buffer_load_u16 v80, v80, s[28:31], 0 offen
	buffer_load_u16 v162, v162, s[28:31], 0 offen
	buffer_load_u16 v163, v163, s[28:31], 0 offen
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v164, 0x80000000, v164, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v166, 0x80000000, v166, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v169, 0x80000000, v169, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v170, 0x80000000, v170, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v171, 0x80000000, v171, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x7
	buffer_load_u16 v164, v164, s[28:31], 0 offen
	buffer_load_u16 v165, v165, s[28:31], 0 offen
	buffer_load_u16 v166, v166, s[28:31], 0 offen
	buffer_load_u16 v167, v167, s[28:31], 0 offen
	buffer_load_u16 v168, v168, s[28:31], 0 offen
	buffer_load_u16 v169, v169, s[28:31], 0 offen
	buffer_load_u16 v170, v170, s[28:31], 0 offen
	buffer_load_u16 v171, v171, s[28:31], 0 offen
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s12
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v173, 0x80000000, v173, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v174, 0x80000000, v174, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s11
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v176, 0x80000000, v176, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s10
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v177, 0x80000000, v177, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v178, 0x80000000, v178, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s9
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v179, 0x80000000, v179, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v180, 0x80000000, v180, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s8
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v182, 0x80000000, v182, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s7
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v183, 0x80000000, v183, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0xb
	buffer_load_u16 v172, v172, s[28:31], 0 offen
	buffer_load_u16 v173, v173, s[28:31], 0 offen
	buffer_load_u16 v174, v174, s[28:31], 0 offen
	buffer_load_u16 v175, v175, s[28:31], 0 offen
	buffer_load_u16 v176, v176, s[28:31], 0 offen
	buffer_load_u16 v177, v177, s[28:31], 0 offen
	buffer_load_u16 v178, v178, s[28:31], 0 offen
	buffer_load_u16 v179, v179, s[28:31], 0 offen
	buffer_load_u16 v180, v180, s[28:31], 0 offen
	buffer_load_u16 v181, v181, s[28:31], 0 offen
	buffer_load_u16 v182, v182, s[28:31], 0 offen
	buffer_load_u16 v183, v183, s[28:31], 0 offen
	v_cndmask_b32_e32 v184, 0x80000000, v184, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s6
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v185, 0x80000000, v185, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v186, 0x80000000, v186, vcc_lo
	.loc	1 231 26                        ; attention_backward.py:231:26
	s_and_b32 vcc_lo, s3, s1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e32 v187, 0x80000000, v187, vcc_lo
	s_clause 0x5
	buffer_load_u16 v184, v184, s[28:31], 0 offen
	buffer_load_u16 v185, v185, s[28:31], 0 offen
	buffer_load_u16 v73, v73, s[28:31], 0 offen
	buffer_load_u16 v74, v74, s[28:31], 0 offen
	buffer_load_u16 v186, v186, s[28:31], 0 offen
	buffer_load_u16 v187, v187, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v188, v153
	s_waitcnt vmcnt(62)
	ds_store_b16 v188, v154 offset:256
	s_waitcnt vmcnt(33)
	ds_store_b16 v188, v75 offset:8192
	s_waitcnt vmcnt(32)
	ds_store_b16 v188, v76 offset:8448
	scratch_load_b32 v75, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v153, v146
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v151
	ds_store_b16 v75, v152 offset:256
	ds_store_b16 v75, v77 offset:8192
	ds_store_b16 v75, v78 offset:8448
	scratch_load_b32 v75, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v151, v146
	v_mov_b32_e32 v152, v146
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v149
	ds_store_b16 v75, v150 offset:256
	ds_store_b16 v75, v79 offset:8192
	ds_store_b16 v75, v80 offset:8448
	scratch_load_b32 v75, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v149, v146
	v_mov_b32_e32 v150, v146
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v147
	ds_store_b16 v75, v148 offset:256
	ds_store_b16 v75, v162 offset:8192
	ds_store_b16 v75, v163 offset:8448
	scratch_load_b32 v75, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v147, v146
	v_mov_b32_e32 v148, v146
	v_mov_b32_e32 v154, v153
	v_mov_b32_e32 v153, v152
	v_mov_b32_e32 v152, v151
	v_mov_b32_e32 v151, v150
	v_mov_b32_e32 v150, v149
	v_mov_b32_e32 v149, v148
	v_mov_b32_e32 v148, v147
	v_mov_b32_e32 v147, v146
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v239
	ds_store_b16 v75, v240 offset:256
	ds_store_b16 v75, v164 offset:8192
	ds_store_b16 v75, v165 offset:8448
	scratch_load_b32 v75, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v237
	ds_store_b16 v75, v238 offset:256
	ds_store_b16 v75, v166 offset:8192
	ds_store_b16 v75, v167 offset:8448
	scratch_load_b32 v75, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v235
	ds_store_b16 v75, v236 offset:256
	ds_store_b16 v75, v168 offset:8192
	ds_store_b16 v75, v169 offset:8448
	scratch_load_b32 v75, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v233
	ds_store_b16 v75, v234 offset:256
	ds_store_b16 v75, v170 offset:8192
	ds_store_b16 v75, v171 offset:8448
	scratch_load_b32 v75, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v247
	ds_store_b16 v75, v248 offset:256
	ds_store_b16 v75, v172 offset:8192
	ds_store_b16 v75, v173 offset:8448
	scratch_load_b32 v75, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v245
	ds_store_b16 v75, v246 offset:256
	ds_store_b16 v75, v174 offset:8192
	ds_store_b16 v75, v175 offset:8448
	scratch_load_b32 v75, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v243
	ds_store_b16 v75, v244 offset:256
	ds_store_b16 v75, v176 offset:8192
	ds_store_b16 v75, v177 offset:8448
	scratch_load_b32 v75, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v241
	ds_store_b16 v75, v242 offset:256
	ds_store_b16 v75, v178 offset:8192
	ds_store_b16 v75, v179 offset:8448
	scratch_load_b32 v75, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v224 offset:256
	ds_store_b16 v75, v180 offset:8192
	ds_store_b16 v75, v181 offset:8448
	ds_store_b16 v75, v253
	scratch_load_b32 v75, off, off offset:56 ; 4-byte Folded Reload
	v_mov_b32_e32 v253, v189
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v251
	ds_store_b16 v75, v252 offset:256
	ds_store_b16 v75, v182 offset:8192
	ds_store_b16 v75, v183 offset:8448
	scratch_load_b32 v75, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v249
	ds_store_b16 v75, v250 offset:256
	ds_store_b16 v75, v184 offset:8192
	ds_store_b16 v75, v185 offset:8448
	scratch_load_b32 v75, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v73
	ds_store_b16 v75, v74 offset:256
	ds_store_b16 v75, v186 offset:8192
	ds_store_b16 v75, v187 offset:8448
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[233:236], v0
	ds_load_b128 v[237:240], v82
	ds_load_b128 v[241:244], v0 offset:256
	ds_load_b128 v[245:248], v82 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[1:8], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v84
	ds_load_b128 v[233:236], v83
	ds_load_b128 v[162:165], v83 offset:256
	ds_load_b128 v[166:169], v84 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[17:24], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v86
	ds_load_b128 v[233:236], v85
	ds_load_b128 v[73:76], v85 offset:256
	ds_load_b128 v[77:80], v86 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[33:40], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v88
	ds_load_b128 v[233:236], v87
	ds_load_b128 v[170:173], v87 offset:256
	ds_load_b128 v[174:177], v88 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[49:56], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v155
	ds_load_b128 v[233:236], v89
	ds_load_b128 v[178:181], v89 offset:256
	ds_load_b128 v[182:185], v155 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[65:72], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v157
	ds_load_b128 v[233:236], v156
	ds_load_b128 v[186:189], v156 offset:256
	ds_load_b128 v[190:193], v157 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[98:105], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v159
	ds_load_b128 v[233:236], v158
	ds_load_b128 v[194:197], v158 offset:256
	ds_load_b128 v[198:201], v159 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[114:121], v[147:154]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[237:240], v161
	ds_load_b128 v[233:236], v160
	ds_load_b128 v[202:205], v160 offset:256
	ds_load_b128 v[206:209], v161 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[233:240], v[130:137], v[147:154]
	v_mov_b32_e32 v240, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[241:248], v[9:16], v[147:154]
	v_wmma_f32_16x16x16_bf16 v[147:154], v[162:169], v[25:32], v[147:154]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[73:80], v[41:48], v[147:154]
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshrrev_b32_e32 v73, 1, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_wmma_f32_16x16x16_bf16 v[147:154], v[170:177], v[57:64], v[147:154]
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_add_nc_u32_e32 v73, v73, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_wmma_f32_16x16x16_bf16 v[147:154], v[178:185], v[90:97], v[147:154]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_add_nc_u32_e32 v224, s81, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_wmma_f32_16x16x16_bf16 v[147:154], v[186:193], v[106:113], v[147:154]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_add_nc_u32_e32 v233, 2, v224
	v_add_nc_u32_e32 v234, 4, v224
	v_add_nc_u32_e32 v235, 6, v224
	v_add_nc_u32_e32 v236, 8, v224
	v_add_nc_u32_e32 v237, 10, v224
	v_add_nc_u32_e32 v238, 12, v224
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_add_nc_u32_e32 v239, 14, v224
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_wmma_f32_16x16x16_bf16 v[147:154], v[194:201], v[122:129], v[147:154]
	.loc	1 231 61                        ; attention_backward.py:231:61
	v_cmp_gt_i32_e32 vcc_lo, s39, v224
	v_cmp_gt_i32_e64 s1, s39, v233
	v_cmp_gt_i32_e64 s6, s39, v234
	v_cmp_gt_i32_e64 s7, s39, v235
	v_cmp_gt_i32_e64 s8, s39, v236
	v_cmp_gt_i32_e64 s9, s39, v237
	v_cmp_gt_i32_e64 s10, s39, v238
	v_cmp_gt_i32_e64 s11, s39, v239
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[202:209], v[138:145], v[147:154]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s89, s0, vcc_lo
	s_and_b32 s84, s0, s1
	s_and_b32 s88, s0, s6
	s_and_b32 s83, s0, s7
	s_and_b32 s87, s0, s8
	s_and_b32 s82, s0, s9
	s_and_b32 s86, s0, s10
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s27
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s85, s0, s11
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v224, v226
	v_cmp_le_i32_e64 s1, v233, v226
	v_cmp_le_i32_e64 s6, v234, v226
	v_cmp_le_i32_e64 s7, v235, v226
	v_cmp_le_i32_e64 s8, v236, v226
	v_cmp_le_i32_e64 s9, v237, v226
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s12, vcc_lo, s89
	s_and_b32 s1, s1, s84
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s10, v238, v226
	v_cmp_le_i32_e64 s11, v239, v226
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s6, s6, s88
	s_and_b32 s7, s7, s83
	s_and_not1_b32 s13, s89, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s84, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s87
	s_and_b32 s9, s9, s82
	s_or_b32 s89, s13, s12
	s_or_b32 s84, s14, s1
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s12, s83, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s86
	s_and_b32 s11, s11, s85
	s_or_b32 s88, s1, s6
	s_or_b32 s83, s12, s7
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s82, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s87, s1, s6
	s_or_b32 s82, s7, s8
	s_and_not1_b32 s1, s86, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s85, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s86, s1, s6
	s_or_b32 s85, s7, s8
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	v_readlane_b32 s1, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v224, v227
	v_cmp_ge_i32_e64 s1, v233, v227
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s12, v224, v228
	v_cmp_le_i32_e64 s13, v233, v228
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s6, v234, v227
	v_cmp_ge_i32_e64 s7, v235, v227
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s14, v234, v228
	v_cmp_le_i32_e64 s15, v235, v228
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s8, v236, v227
	v_cmp_ge_i32_e64 s9, v237, v227
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s16, v236, v228
	v_cmp_le_i32_e64 s17, v237, v228
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s1, s1, s13
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s10, v238, v227
	v_cmp_ge_i32_e64 s11, v239, v227
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s18, v238, v228
	v_cmp_le_i32_e64 s19, v239, v228
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s12, s12, s89
	s_and_b32 s1, s1, s84
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s6, s6, s88
	s_and_b32 s7, s7, s83
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_not1_b32 s13, s89, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s84, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s87
	s_and_b32 s9, s9, s82
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_or_b32 s89, s13, s12
	s_or_b32 s84, s14, s1
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s12, s83, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s86
	s_and_b32 s11, s11, s85
	s_or_b32 s88, s1, s6
	s_or_b32 s83, s12, s7
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s82, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s87, s1, s6
	s_or_b32 s82, s7, s8
	s_and_not1_b32 s1, s86, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s85, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s86, s1, s6
	s_or_b32 s85, s7, s8
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_mov_b32 v148, 0
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow868
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v229, off, off offset:1520
	scratch_load_b32 v194, off, off offset:1524
	scratch_load_b32 v153, off, off offset:1528
	scratch_load_b32 v75, off, off offset:1532
	scratch_load_b32 v77, off, off offset:1536
	scratch_load_b32 v78, off, off offset:1540
	scratch_load_b32 v79, off, off offset:1544
	scratch_load_b32 v80, off, off offset:1548
	scratch_load_b32 v81, off, off offset:1552
	scratch_load_b32 v150, off, off offset:1556
	scratch_load_b32 v151, off, off offset:1560
	scratch_load_b32 v152, off, off offset:1564
	scratch_load_b32 v76, off, off offset:1568
	scratch_load_b32 v149, off, off offset:1572
	scratch_load_b32 v154, off, off offset:1576
	scratch_load_b32 v146, off, off offset:1580
	v_readlane_b32 s20, v255, 11
	v_readlane_b32 s12, v255, 7
	v_readlane_b32 s37, v255, 15
	v_readlane_b32 s21, v255, 12
	v_readlane_b32 s22, v255, 13
	v_readlane_b32 s23, v255, 14
	v_readlane_b32 s13, v255, 8
	v_readlane_b32 s14, v255, 9
	v_readlane_b32 s15, v255, 10
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v235, 0, v254
.LBB0_16:                               ; %._crit_edge
.Ltmp297:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v18, off, off offset:492
	scratch_load_b32 v1, off, off offset:68
	scratch_load_b32 v5, off, off offset:1472
.Ltmp298:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v148
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt vmcnt(18)
	v_cmp_eq_u32_e64 s1, 0, v194
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s8, s12
	s_mov_b32 s10, s54
	s_mov_b32 s11, s55
	s_mov_b32 s72, 0
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v19, off, off offset:528
	scratch_load_b32 v23, off, off offset:1468
	scratch_load_b32 v24, off, off offset:1476
	scratch_load_b32 v37, off, off offset:1504
	s_waitcnt vmcnt(12)
	v_add_f32_e32 v25, v152, v225
.Ltmp300:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v35, 0, v146
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v74, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v91, v93
	v_mov_b32_e32 v92, v93
	v_mov_b32_e32 v90, v93
	v_mov_b32_e32 v89, v93
	v_mov_b32_e32 v88, v93
	v_mov_b32_e32 v87, v93
	v_mov_b32_e32 v86, v93
	v_mov_b32_e32 v104, v93
	v_mov_b32_e32 v103, v93
	v_mov_b32_e32 v102, v93
	v_mov_b32_e32 v101, v93
	v_mov_b32_e32 v100, v93
	v_mov_b32_e32 v99, v93
	v_mov_b32_e32 v98, v93
	v_mov_b32_e32 v97, v93
	v_mov_b32_e32 v112, v93
	v_mov_b32_e32 v111, v93
	v_mov_b32_e32 v110, v93
	v_mov_b32_e32 v109, v93
	v_mov_b32_e32 v108, v93
	v_mov_b32_e32 v107, v93
	v_mov_b32_e32 v106, v93
	v_mov_b32_e32 v105, v93
	v_mov_b32_e32 v120, v93
	v_mov_b32_e32 v119, v93
	v_mov_b32_e32 v118, v93
	v_mov_b32_e32 v117, v93
	v_mov_b32_e32 v116, v93
	v_mov_b32_e32 v115, v93
	v_mov_b32_e32 v114, v93
	v_mov_b32_e32 v113, v93
	v_mov_b32_e32 v128, v93
	v_mov_b32_e32 v127, v93
	v_mov_b32_e32 v126, v93
	v_mov_b32_e32 v125, v93
	v_mov_b32_e32 v124, v93
	v_mov_b32_e32 v123, v93
	v_mov_b32_e32 v122, v93
	v_mov_b32_e32 v121, v93
	v_mov_b32_e32 v136, v93
	v_mov_b32_e32 v135, v93
	v_mov_b32_e32 v134, v93
	v_mov_b32_e32 v133, v93
	v_mov_b32_e32 v132, v93
	v_mov_b32_e32 v131, v93
	v_mov_b32_e32 v130, v93
	v_mov_b32_e32 v129, v93
	v_mov_b32_e32 v144, v93
	v_mov_b32_e32 v143, v93
	v_mov_b32_e32 v142, v93
	v_mov_b32_e32 v141, v93
	v_mov_b32_e32 v140, v93
	v_mov_b32_e32 v139, v93
	v_mov_b32_e32 v138, v93
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v137, v93 :: v_dual_add_f32 v2, v0, v221
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v5, v1, v5 :: v_dual_add_f32 v18, v18, v214
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:228
	scratch_load_b32 v6, off, off offset:1480
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v19, v19, v217
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v23, v150, v23 :: v_dual_add_f32 v24, v151, v24
.Ltmp302:
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v26, s33, v37
.Ltmp303:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v3, v0, v222
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v6, v1, v6
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v1, v223
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:292
	scratch_load_b32 v8, off, off offset:1484
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v1, v8
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:196
	scratch_load_b32 v9, off, off offset:1488
	v_add_f32_e32 v4, v0, v220
.Ltmp304:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v0, 0, 32, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v148, v0
	v_log_f32_e32 v0, v0
.Ltmp305:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v1, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:324
	scratch_load_b32 v10, off, off offset:1492
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v1, v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:360
	scratch_load_b32 v11, off, off offset:1496
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v1, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:376
	scratch_load_b32 v12, off, off offset:1500
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v1, v12
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v1, v211
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v1, v213
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v1, v216
.Ltmp306:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v1, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v0, v0, v1
.Ltmp307:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	v_dual_add_f32 v13, v153, v210 :: v_dual_add_f32 v0, v147, v0
.Ltmp308:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s38, v26
.Ltmp309:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v26, v77, v149
	v_mov_b32_e32 v77, v93
.Ltmp310:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s1, vcc_lo
.Ltmp311:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v1, v215
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v21, v1, v218
	scratch_load_b32 v1, off, off offset:544 ; 4-byte Folded Reload
.Ltmp312:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp313:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v22, v1, v219 :: v_dual_add_nc_u32 v1, 0, v154
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp314:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v34, v1, v229
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_lshl_add_u32 v1, v240, 1, v1
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp315:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:560
	scratch_load_b32 v31, off, off offset:676
	v_add_f32_e32 v17, v81, v212
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v27, off, off offset:628
	scratch_load_b32 v28, off, off offset:644
	scratch_load_b32 v29, off, off offset:660
.Ltmp316:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v36, v35
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v81, v93 :: v_dual_add_f32 v30, v30, v31
.Ltmp317:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:596
	scratch_load_b32 v32, off, off offset:1460
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v27, v78, v27 :: v_dual_mov_b32 v78, v93
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v29, v80, v29 :: v_dual_mov_b32 v80, v93
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v31, v31, v32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:612
	scratch_load_b32 v33, off, off offset:1464
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v32, v33
.Ltmp318:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, s68, v37, 2
.Ltmp319:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v28, v79, v28 :: v_dual_mov_b32 v79, v93
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp320:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v37, 0x80000000, v33, vcc_lo
.Ltmp321:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v75, v76 :: v_dual_mov_b32 v76, v93
	v_mov_b32_e32 v75, v93
.Ltmp322:
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s61
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v36, v37, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v74, v[2:5]
	ds_store_b128 v74, v[6:9] offset:16
	ds_store_b128 v74, v[10:13] offset:32
	ds_store_b128 v74, v[14:17] offset:48
	ds_store_b128 v74, v[18:21] offset:64
	ds_store_b128 v74, v[22:25] offset:80
	ds_store_b128 v74, v[26:29] offset:96
	ds_store_b128 v74, v[30:33] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v35, v35
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v35, v37, s[8:11], 0 offen
	.loc	1 345 58                        ; attention_backward.py:345:58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v34, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v252, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v74, v[2:5]
	ds_store_b128 v74, v[6:9] offset:16
	ds_store_b128 v74, v[10:13] offset:32
	ds_store_b128 v74, v[14:17] offset:48
	ds_store_b128 v74, v[18:21] offset:64
	ds_store_b128 v74, v[22:25] offset:80
	v_mov_b32_e32 v2, v93
	ds_store_b128 v74, v[26:29] offset:96
	ds_store_b128 v74, v[30:33] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_vccnz .LBB0_24
; %bb.17:                               ; %.lr.ph101
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v45, off, off offset:1508
	scratch_load_b32 v32, off, off offset:1512
	scratch_load_b32 v3, off, off offset:1516
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_lshrrev_b32_e32 v0, 1, v240
	v_dual_mov_b32 v138, v74 :: v_dual_lshlrev_b32 v17, 2, v234
	v_writelane_b32 v255, s27, 11
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v82, v1
	v_dual_mov_b32 v76, v74 :: v_dual_add_nc_u32 v1, 0, v240
	v_xor_b32_e32 v21, 0x204, v17
	v_xor_b32_e32 v22, 0x408, v17
	v_xor_b32_e32 v23, 0x60c, v17
	v_xor_b32_e32 v24, 0x810, v17
	v_xor_b32_e32 v25, 0xa14, v17
	v_xor_b32_e32 v26, 0xc18, v17
	v_xor_b32_e32 v27, 0xe1c, v17
	v_xor_b32_e32 v28, 0x1020, v17
	v_xor_b32_e32 v29, 0x1224, v17
	v_xor_b32_e32 v30, 0x1428, v17
	v_xor_b32_e32 v31, 0x162c, v17
	v_xor_b32_e32 v33, 0x1a34, v17
	v_xor_b32_e32 v34, 0x1c38, v17
	v_dual_mov_b32 v79, v74 :: v_dual_and_b32 v46, 16, v234
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	v_dual_mov_b32 v77, v74 :: v_dual_lshlrev_b32 v4, 3, v240
	v_lshl_add_u32 v1, v46, 2, v1
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_writelane_b32 v255, s72, 15
	v_lshrrev_b32_e32 v42, 1, v229
	v_mov_b32_e32 v81, v74
	v_mov_b32_e32 v135, v74
	v_mov_b32_e32 v121, v74
	v_writelane_b32 v255, s73, 16
	v_dual_mov_b32 v123, v74 :: v_dual_add_nc_u32 v42, 0, v42
	v_mov_b32_e32 v125, v74
	v_mov_b32_e32 v127, v74
	v_writelane_b32 v255, s74, 17
	v_mov_b32_e32 v113, v74
	v_mov_b32_e32 v115, v74
	v_mov_b32_e32 v117, v74
	v_mov_b32_e32 v119, v74
	v_writelane_b32 v255, s75, 18
	v_mov_b32_e32 v105, v74
	v_mov_b32_e32 v107, v74
	v_mov_b32_e32 v109, v74
	v_mov_b32_e32 v111, v74
	v_writelane_b32 v255, s76, 19
	v_mov_b32_e32 v97, v74
	v_mov_b32_e32 v99, v74
	v_mov_b32_e32 v101, v74
	v_mov_b32_e32 v103, v74
	v_writelane_b32 v255, s77, 20
	v_mov_b32_e32 v87, v74
	v_mov_b32_e32 v89, v74
	v_mov_b32_e32 v91, v74
	v_mov_b32_e32 v93, v74
	v_writelane_b32 v255, s78, 21
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	v_writelane_b32 v255, s79, 22
	v_mov_b32_e32 v140, v74
	v_mov_b32_e32 v80, v74
	v_mov_b32_e32 v75, v74
	v_mov_b32_e32 v78, v74
	v_mov_b32_e32 v137, v74
	v_writelane_b32 v255, s26, 23
	v_mov_b32_e32 v142, v74
	v_mov_b32_e32 v144, v74
	v_mov_b32_e32 v130, v74
	v_mov_b32_e32 v132, v74
	v_mov_b32_e32 v134, v74
	v_mov_b32_e32 v136, v74
	v_mov_b32_e32 v122, v74
	v_mov_b32_e32 v124, v74
	v_mov_b32_e32 v126, v74
	v_mov_b32_e32 v128, v74
	v_mov_b32_e32 v114, v74
	v_mov_b32_e32 v116, v74
	v_mov_b32_e32 v118, v74
	v_mov_b32_e32 v120, v74
	v_mov_b32_e32 v106, v74
	v_mov_b32_e32 v108, v74
	v_mov_b32_e32 v110, v74
	v_mov_b32_e32 v112, v74
	v_mov_b32_e32 v98, v74
	v_mov_b32_e32 v100, v74
	v_mov_b32_e32 v102, v74
	v_mov_b32_e32 v104, v74
	v_mov_b32_e32 v86, v74
	v_mov_b32_e32 v88, v74
	v_mov_b32_e32 v90, v74
	v_mov_b32_e32 v92, v74
	v_mov_b32_e32 v139, v74
	v_mov_b32_e32 v141, v74
	v_mov_b32_e32 v143, v74
	v_mov_b32_e32 v129, v74
	v_mov_b32_e32 v131, v74
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_waitcnt vmcnt(2)
	v_or3_b32 v2, s33, v45, v0
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v32, v3
	v_lshlrev_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, s38, v2
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v47, s23, v2
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v2, 0, v3
	v_lshlrev_b32_e32 v3, 4, v234
	v_xor_b32_e32 v5, 16, v0
	v_xor_b32_e32 v6, 32, v0
	v_xor_b32_e32 v7, 48, v0
	v_xor_b32_e32 v8, 64, v0
	v_add_nc_u32_e32 v3, 0, v3
	scratch_store_b32 off, v0, off offset:1460 ; 4-byte Folded Spill
	v_xor_b32_e32 v9, 0x50, v0
	v_xor_b32_e32 v10, 0x60, v0
	v_xor_b32_e32 v11, 0x70, v0
	scratch_store_b32 off, v3, off offset:1468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v5
	v_xor_b32_e32 v12, 0x80, v0
	v_xor_b32_e32 v13, 0x90, v0
	v_xor_b32_e32 v14, 0xa0, v0
	v_xor_b32_e32 v15, 0xb0, v0
	v_xor_b32_e32 v16, 0xc0, v0
	v_xor_b32_e32 v18, 0xd0, v0
	v_xor_b32_e32 v19, 0xe0, v0
	v_xor_b32_e32 v20, 0xf0, v0
	v_or_b32_e32 v0, v32, v154
	scratch_store_b32 off, v3, off offset:1472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v6
	v_xor_b32_e32 v32, 0x1830, v17
	v_xor_b32_e32 v17, 0x1e3c, v17
	v_xor_b32_e32 v35, 4, v0
	v_xor_b32_e32 v36, 8, v0
	scratch_store_b32 off, v3, off offset:1476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v7
	v_xor_b32_e32 v37, 12, v0
	v_xor_b32_e32 v38, 16, v0
	v_xor_b32_e32 v39, 20, v0
	v_xor_b32_e32 v40, 24, v0
	scratch_store_b32 off, v3, off offset:1480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v8
	v_xor_b32_e32 v41, 28, v0
	v_xor_b32_e32 v43, 32, v0
	v_xor_b32_e32 v44, 36, v0
	v_xor_b32_e32 v46, 40, v0
	scratch_store_b32 off, v3, off offset:1484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v9
	v_add_nc_u32_e32 v83, v2, v4
	v_xor_b32_e32 v2, 44, v0
	v_add_nc_u32_e32 v84, v1, v45
	v_xor_b32_e32 v1, 48, v0
	scratch_store_b32 off, v3, off offset:1488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v10
	v_xor_b32_e32 v4, 56, v0
	scratch_store_b32 off, v0, off offset:1464 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 60, v0
	v_add_nc_u32_e32 v85, v42, v45
	scratch_store_b32 off, v3, off offset:1492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v11
	v_mov_b32_e32 v133, v74
	scratch_store_b32 off, v3, off offset:1496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v12
	scratch_store_b32 off, v3, off offset:1500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v13
	scratch_store_b32 off, v3, off offset:1504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v14
	scratch_store_b32 off, v3, off offset:1508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v15
	scratch_store_b32 off, v3, off offset:1512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v16
	scratch_store_b32 off, v3, off offset:1516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v18
	scratch_store_b32 off, v3, off offset:1520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v19
	scratch_store_b32 off, v3, off offset:1524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v20
	scratch_store_b32 off, v3, off offset:1528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v21
	scratch_store_b32 off, v3, off offset:1532 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v22
	scratch_store_b32 off, v3, off offset:1536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v23
	scratch_store_b32 off, v3, off offset:1540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v24
	scratch_store_b32 off, v3, off offset:1544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v25
	scratch_store_b32 off, v3, off offset:1548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v26
	scratch_store_b32 off, v3, off offset:1552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v27
	scratch_store_b32 off, v3, off offset:1556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v28
	scratch_store_b32 off, v3, off offset:1560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v29
	scratch_store_b32 off, v3, off offset:1564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v30
	scratch_store_b32 off, v3, off offset:1568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v31
	scratch_store_b32 off, v3, off offset:1572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v32
	scratch_store_b32 off, v3, off offset:1576 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v33
	scratch_store_b32 off, v3, off offset:1580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v34
	scratch_store_b32 off, v3, off offset:1584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v17
	scratch_store_b32 off, v3, off offset:1588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v35
	scratch_store_b32 off, v3, off offset:1592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v36
	scratch_store_b32 off, v3, off offset:1596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v37
	scratch_store_b32 off, v3, off offset:1600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v38
	scratch_store_b32 off, v3, off offset:1604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v39
	scratch_store_b32 off, v3, off offset:1608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v40
	scratch_store_b32 off, v3, off offset:1612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v41
	scratch_store_b32 off, v3, off offset:1616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v43
	scratch_store_b32 off, v3, off offset:1620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v44
	scratch_store_b32 off, v3, off offset:1624 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v46
	scratch_store_b32 off, v3, off offset:1628 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 52, v0
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v0, off offset:1632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	scratch_store_b32 off, v0, off offset:1636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v0, off offset:1640 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v0, off offset:1644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v0, off offset:1648 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s21, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1656
	scratch_store_b32 off, v47, off offset:1652
	v_add_nc_u32_e32 v0, s22, v47
	scratch_store_b32 off, v0, off offset:1660 ; 4-byte Folded Spill
	s_branch .LBB0_19
.LBB0_18:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[65:66], null, s43, s57, v[234:235]
	v_readlane_b32 s72, v255, 15
	v_readlane_b32 s73, v255, 16
	v_readlane_b32 s74, v255, 17
	v_readlane_b32 s75, v255, 18
	v_readlane_b32 s76, v255, 19
	v_readlane_b32 s77, v255, 20
	v_add_nc_u32_e32 v66, s57, v65
	v_readlane_b32 s78, v255, 21
	v_readlane_b32 s79, v255, 22
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s97
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v115, v235, v254
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v67, s57, v66
	v_readlane_b32 s26, v255, 23
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s58, s58, 32
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v68, s57, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v69, s57, v68
	v_add_nc_u32_e32 v70, s57, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v71, s57, v70
	v_add_nc_u32_e32 v72, s57, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v73, s57, v72
	v_add_nc_u32_e32 v78, s57, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v79, s57, v78
	v_add_nc_u32_e32 v80, s57, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v81, s57, v80
	v_add_nc_u32_e32 v98, s57, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v99, s57, v98
	v_add_nc_u32_e32 v100, s57, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v101, s57, v100
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v102, 1, v101
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v101, s57, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_lshlrev_b32 v65, 1, v65
	v_lshlrev_b32_e32 v66, 1, v66
	v_lshlrev_b32_e32 v103, 1, v101
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s96
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v101, s57, v101
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_u16 v102, v102, s[52:55], 0 offen
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v104, s57, v101
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v68, 1, v68
	v_lshlrev_b32_e32 v67, 1, v67
	v_lshlrev_b32_e32 v105, 1, v104
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v104, s57, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v106, s57, v104
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v70, 1, v70
	v_lshlrev_b32_e32 v69, 1, v69
	v_lshlrev_b32_e32 v104, 1, v104
	v_lshlrev_b32_e32 v101, 1, v101
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v107, s57, v106
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_lshlrev_b32 v106, 1, v106
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v72, 1, v72
	v_lshlrev_b32_e32 v71, 1, v71
	v_lshlrev_b32_e32 v108, 1, v107
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v107, s57, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_lshlrev_b32 v109, 1, v107
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x7
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v68, v68, s[52:55], 0 offen
	buffer_load_u16 v69, v69, s[52:55], 0 offen
	buffer_load_u16 v70, v70, s[52:55], 0 offen
	buffer_load_u16 v71, v71, s[52:55], 0 offen
	buffer_load_u16 v72, v72, s[52:55], 0 offen
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s95
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s44
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v78, 1, v78
	v_lshlrev_b32_e32 v73, 1, v73
	s_clause 0x5
	buffer_load_u16 v101, v101, s[52:55], 0 offen
	buffer_load_u16 v105, v105, s[52:55], 0 offen
	buffer_load_u16 v104, v104, s[52:55], 0 offen
	buffer_load_u16 v106, v106, s[52:55], 0 offen
	buffer_load_u16 v108, v108, s[52:55], 0 offen
	buffer_load_u16 v109, v109, s[52:55], 0 offen
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s69
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s68
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v80, 1, v80
	v_lshlrev_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s46
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s47
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v98, 1, v98
	v_lshlrev_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s71
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s38
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v100, 1, v100
	v_lshlrev_b32_e32 v99, 1, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v65.h, v102.l
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v102, s57, v107
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v66.h, v103.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v103, s57, v102
	v_add_nc_u32_e32 v107, s57, v103
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v103, 1, v103
	v_lshlrev_b32_e32 v102, 1, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v110, s57, v107
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v111, 1, v110
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v110, s57, v110
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s0
	.loc	1 385 30                        ; attention_backward.py:385:30
	buffer_load_u16 v102, v102, s[52:55], 0 offen
	s_mul_f32 s0, s60, 0x3fb8aa3b
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v112, s57, v110
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v110, 1, v110
	v_lshlrev_b32_e32 v107, 1, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v113, s57, v112
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_lshlrev_b32 v112, 1, v112
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_lshlrev_b32 v114, 1, v113
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s45
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v113, v113, s57, 1
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s66
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s67
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s4, s70
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s58, s26
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	s_clause 0xe
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	buffer_load_u16 v107, v107, s[52:55], 0 offen
	buffer_load_u16 v111, v111, s[52:55], 0 offen
	buffer_load_u16 v110, v110, s[52:55], 0 offen
	buffer_load_u16 v112, v112, s[52:55], 0 offen
	buffer_load_u16 v114, v114, s[52:55], 0 offen
	buffer_load_u16 v113, v113, s[52:55], 0 offen
	buffer_load_u16 v73, v73, s[52:55], 0 offen
	buffer_load_u16 v78, v78, s[52:55], 0 offen
	buffer_load_u16 v79, v79, s[52:55], 0 offen
	buffer_load_u16 v80, v80, s[52:55], 0 offen
	buffer_load_u16 v81, v81, s[52:55], 0 offen
	buffer_load_u16 v98, v98, s[52:55], 0 offen
	buffer_load_u16 v99, v99, s[52:55], 0 offen
	buffer_load_u16 v100, v100, s[52:55], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:1532 ; 4-byte Folded Reload
	ds_store_b32 v115, v65
	s_waitcnt vmcnt(22)
	v_mov_b16_e32 v67.h, v101.l
	s_waitcnt vmcnt(21)
	v_mov_b16_e32 v68.h, v105.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e32 v69.h, v104.l
	s_waitcnt vmcnt(19)
	v_mov_b16_e32 v70.h, v106.l
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v71.h, v108.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v72.h, v109.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v73.h, v102.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v78.h, v103.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v79.h, v107.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v80.h, v111.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v81.h, v110.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v98.h, v112.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v99.h, v114.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v100.h, v113.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v66
	scratch_load_b32 v0, off, off offset:1536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v67
	scratch_load_b32 v0, off, off offset:1540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v68
	scratch_load_b32 v0, off, off offset:1544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v69
	scratch_load_b32 v0, off, off offset:1548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v70
	scratch_load_b32 v0, off, off offset:1552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v71
	scratch_load_b32 v0, off, off offset:1556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v72
	scratch_load_b32 v0, off, off offset:1560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v73
	scratch_load_b32 v0, off, off offset:1564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v78
	scratch_load_b32 v0, off, off offset:1568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v79
	scratch_load_b32 v0, off, off offset:1572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v80
	scratch_load_b32 v0, off, off offset:1576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v81
	scratch_load_b32 v0, off, off offset:1580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v98
	scratch_load_b32 v0, off, off offset:1584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v99
	scratch_load_b32 v0, off, off offset:1588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x19                           ; 224-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1600
	scratch_load_b32 v28, off, off offset:1608
	scratch_load_b32 v30, off, off offset:1616
	scratch_load_b32 v29, off, off offset:1612
	scratch_load_b32 v27, off, off offset:1604
	scratch_load_b32 v25, off, off offset:1596
	scratch_load_b32 v24, off, off offset:1592
	scratch_load_b32 v0, off, off offset:1464
	scratch_load_b32 v32, off, off offset:1624
	scratch_load_b32 v214, off, off offset:1640
	scratch_load_b32 v216, off, off offset:1632
	scratch_load_b32 v218, off, off offset:1648
	scratch_load_b32 v232, off, off offset:1644
	scratch_load_b32 v230, off, off offset:1636
	scratch_load_b32 v228, off, off offset:1628
	scratch_load_b32 v31, off, off offset:1620
	scratch_load_b128 v[236:239], off, off offset:1204
	scratch_load_b128 v[240:243], off, off offset:1220
	scratch_load_b128 v[244:247], off, off offset:1236
	scratch_load_b128 v[248:251], off, off offset:1252
	scratch_load_b128 v[86:89], off, off offset:1268
	scratch_load_b128 v[90:93], off, off offset:1284
	scratch_load_b128 v[8:11], off, off offset:1332
	scratch_load_b128 v[12:15], off, off offset:1348
	scratch_load_b128 v[16:19], off, off offset:1364
	scratch_load_b128 v[20:23], off, off offset:1380
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v105, s79 :: v_dual_mov_b32 v104, s78
	v_dual_mov_b32 v103, s77 :: v_dual_mov_b32 v102, s76
	v_dual_mov_b32 v101, s75 :: v_dual_mov_b32 v100, s74
	v_dual_mov_b32 v99, s73 :: v_dual_mov_b32 v98, s72
	s_waitcnt vmcnt(25)
	ds_load_2addr_b32 v[67:68], v26 offset1:16
	s_waitcnt vmcnt(24)
	ds_load_2addr_b32 v[108:109], v28 offset1:16
	s_waitcnt vmcnt(23)
	ds_load_2addr_b32 v[69:70], v30 offset1:16
	s_waitcnt vmcnt(22)
	ds_load_2addr_b32 v[115:116], v29 offset1:16
	s_waitcnt vmcnt(21)
	ds_load_2addr_b32 v[80:81], v27 offset1:16
	s_waitcnt vmcnt(20)
	ds_load_2addr_b32 v[78:79], v25 offset1:16
	s_waitcnt vmcnt(19)
	ds_load_2addr_b32 v[106:107], v24 offset1:16
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v153, 0, v0
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1300
	scratch_load_b128 v[4:7], off, off offset:1316
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(19)
	ds_load_2addr_b32 v[110:111], v32 offset1:16
	s_waitcnt vmcnt(18)
	ds_load_2addr_b32 v[112:113], v214 offset1:16
	s_waitcnt vmcnt(17)
	ds_load_2addr_b32 v[71:72], v216 offset1:16
	ds_load_2addr_b32 v[123:124], v153 offset1:16
	s_waitcnt vmcnt(14)
	ds_load_2addr_b32 v[121:122], v230 offset1:16
	s_waitcnt vmcnt(13)
	ds_load_2addr_b32 v[119:120], v228 offset1:16
	s_waitcnt vmcnt(12)
	ds_load_2addr_b32 v[117:118], v31 offset1:16
	ds_load_2addr_b32 v[125:126], v232 offset1:16
	ds_load_2addr_b32 v[131:132], v30 offset0:32 offset1:48
	ds_load_2addr_b32 v[133:134], v216 offset0:32 offset1:48
	ds_load_2addr_b32 v[135:136], v153 offset0:32 offset1:48
	s_waitcnt lgkmcnt(17)
	v_mov_b16_e64 v171.h, v67.l
	s_waitcnt lgkmcnt(16)
	v_mov_b16_e64 v172.h, v108.l
	v_mov_b16_e64 v179.h, v68.l
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v173.h, v69.l
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e32 v108.l, v80.h
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e32 v67.l, v78.h
	v_mov_b16_e32 v68.l, v79.h
	v_mov_b16_e64 v181.h, v70.l
	v_mov_b16_e32 v69.l, v115.h
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v174.h, v110.l
	v_mov_b16_e32 v70.l, v116.h
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v175.h, v71.l
	v_mov_b16_e64 v176.h, v112.l
	v_mov_b16_e64 v183.h, v72.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e32 v71.l, v119.h
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v110.l, v117.h
	v_mov_b16_e32 v112.l, v121.h
	v_mov_b16_e32 v72.l, v120.h
	v_dual_mov_b32 v66, v67 :: v_dual_mov_b32 v67, v108
	v_mov_b32_e32 v108, v68
	v_dual_mov_b32 v68, v69 :: v_dual_mov_b32 v69, v110
	v_mov_b32_e32 v110, v70
	v_dual_mov_b32 v70, v71 :: v_dual_mov_b32 v71, v112
	v_mov_b32_e32 v112, v72
	ds_load_2addr_b32 v[72:73], v218 offset1:16
	v_mov_b16_e64 v170.h, v106.l
	v_mov_b16_e32 v106.l, v123.h
	v_mov_b16_e64 v178.h, v107.l
	v_mov_b16_e64 v180.h, v109.l
	v_mov_b16_e64 v182.h, v111.l
	v_mov_b16_e64 v184.h, v113.l
	v_mov_b32_e32 v65, v106
	v_mov_b16_e32 v107.l, v124.h
	v_mov_b16_e32 v109.l, v81.h
	v_mov_b16_e32 v111.l, v118.h
	v_mov_b16_e32 v113.l, v122.h
	ds_load_2addr_b32 v[137:138], v25 offset0:32 offset1:48
	ds_load_2addr_b32 v[139:140], v27 offset0:32 offset1:48
	ds_load_2addr_b32 v[141:142], v29 offset0:32 offset1:48
	ds_load_2addr_b32 v[143:144], v31 offset0:32 offset1:48
	ds_load_2addr_b32 v[145:146], v228 offset0:32 offset1:48
	ds_load_2addr_b32 v[147:148], v230 offset0:32 offset1:48
	ds_load_2addr_b32 v[149:150], v232 offset0:32 offset1:48
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v118.h, v131.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v185.h, v73.l
	v_mov_b16_e32 v73.l, v126.h
	v_mov_b16_e64 v177.h, v72.l
	v_mov_b16_e32 v72.l, v125.h
	v_mov_b16_e64 v120.h, v133.l
	v_mov_b16_e64 v126.h, v132.l
	v_mov_b32_e32 v114, v73
	ds_load_2addr_b32 v[194:195], v30 offset0:64 offset1:80
	s_waitcnt vmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[186:193], v[65:72], v[236:243], v[98:105]
	ds_load_2addr_b32 v[65:66], v24 offset0:32 offset1:48
	ds_load_2addr_b32 v[67:68], v28 offset0:32 offset1:48
	ds_load_2addr_b32 v[69:70], v32 offset0:32 offset1:48
	ds_load_2addr_b32 v[71:72], v214 offset0:32 offset1:48
	ds_load_2addr_b32 v[127:128], v26 offset0:32 offset1:48
	ds_load_2addr_b32 v[196:197], v216 offset0:64 offset1:80
	ds_load_2addr_b32 v[198:199], v153 offset0:64 offset1:80
	s_waitcnt vmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[186:193], v[107:114], v[244:251], v[186:193]
	ds_load_2addr_b32 v[113:114], v218 offset0:32 offset1:48
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v131.l, v141.h
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v133.l, v145.h
	v_mov_b16_e64 v132.l, v142.h
	ds_load_2addr_b32 v[200:201], v25 offset0:64 offset1:80
	ds_load_2addr_b32 v[202:203], v27 offset0:64 offset1:80
	v_mov_b32_e32 v109, v131
	v_mov_b32_e32 v111, v133
	ds_load_2addr_b32 v[204:205], v29 offset0:64 offset1:80
	ds_load_2addr_b32 v[206:207], v31 offset0:64 offset1:80
	ds_load_2addr_b32 v[208:209], v228 offset0:64 offset1:80
	ds_load_2addr_b32 v[210:211], v230 offset0:64 offset1:80
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e32 v115.h, v65.l
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e32 v117.h, v67.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e32 v119.h, v69.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e32 v121.h, v71.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e32 v116.h, v127.l
	v_mov_b16_e64 v65.l, v135.h
	v_mov_b16_e64 v127.l, v137.h
	v_mov_b16_e64 v67.l, v139.h
	v_mov_b16_e64 v69.l, v143.h
	v_mov_b16_e64 v71.l, v147.h
	v_mov_b16_e64 v124.h, v128.l
	v_mov_b16_e64 v128.l, v138.h
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e32 v122.h, v113.l
	v_mov_b16_e64 v113.l, v149.h
	v_mov_b16_e64 v130.h, v114.l
	v_mov_b16_e64 v114.l, v150.h
	v_dual_mov_b32 v106, v65 :: v_dual_mov_b32 v107, v127
	v_mov_b32_e32 v108, v67
	v_mov_b32_e32 v110, v69
	v_dual_mov_b32 v112, v71 :: v_dual_mov_b32 v67, v128
	v_mov_b16_e64 v128.h, v134.l
	v_mov_b16_e64 v134.l, v146.h
	v_mov_b32_e32 v73, v114
	s_waitcnt vmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[186:193], v[106:113], v[86:93], v[186:193]
	v_mov_b32_e32 v69, v132
	v_mov_b16_e32 v123.h, v66.l
	v_mov_b32_e32 v71, v134
	v_mov_b16_e32 v125.h, v68.l
	v_mov_b16_e32 v127.h, v70.l
	v_mov_b16_e64 v129.h, v72.l
	v_mov_b16_e64 v66.l, v136.h
	v_mov_b16_e64 v68.l, v140.h
	v_mov_b16_e64 v70.l, v144.h
	v_mov_b16_e64 v72.l, v148.h
	ds_load_2addr_b32 v[113:114], v218 offset0:64 offset1:80
	ds_load_2addr_b32 v[212:213], v232 offset0:64 offset1:80
	v_mov_b16_e64 v134.h, v194.l
	v_mov_b16_e64 v136.h, v196.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v194.l, v204.h
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v196.l, v208.h
	v_mov_b16_e64 v142.h, v195.l
	v_mov_b16_e64 v195.l, v205.h
	v_mov_b16_e64 v144.h, v197.l
	v_mov_b16_e64 v197.l, v209.h
	ds_load_2addr_b32 v[220:221], v25 offset0:96 offset1:112
	ds_load_2addr_b32 v[222:223], v27 offset0:96 offset1:112
	ds_load_2addr_b32 v[224:225], v29 offset0:96 offset1:112
	ds_load_2addr_b32 v[226:227], v31 offset0:96 offset1:112
	ds_load_2addr_b32 v[216:217], v216 offset0:96 offset1:112
	ds_load_2addr_b32 v[228:229], v228 offset0:96 offset1:112
	ds_load_2addr_b32 v[230:231], v230 offset0:96 offset1:112
	ds_load_2addr_b32 v[232:233], v232 offset0:96 offset1:112
	v_mov_b16_e64 v170.l, v123.l
	v_mov_b16_e64 v171.l, v78.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v138.h, v113.l
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v113.l, v212.h
	v_mov_b16_e64 v146.h, v114.l
	v_mov_b16_e64 v114.l, v213.h
	v_mov_b16_e64 v172.l, v80.l
	v_mov_b16_e64 v173.l, v115.l
	v_mov_b16_e64 v174.l, v117.l
	v_mov_b16_e64 v175.l, v119.l
	v_mov_b16_e64 v176.l, v121.l
	v_mov_b16_e64 v177.l, v125.l
	v_mov_b16_e64 v178.l, v124.l
	v_mov_b16_e64 v179.l, v79.l
	v_mov_b16_e64 v180.l, v81.l
	v_mov_b16_e64 v181.l, v116.l
	v_mov_b16_e64 v182.l, v118.l
	v_mov_b16_e64 v183.l, v120.l
	v_mov_b16_e64 v184.l, v122.l
	v_mov_b16_e64 v185.l, v126.l
	v_mov_b16_e64 v115.l, v135.l
	v_mov_b16_e64 v116.l, v137.l
	v_mov_b16_e64 v117.l, v139.l
	v_mov_b16_e64 v118.l, v141.l
	v_mov_b16_e64 v119.l, v143.l
	v_mov_b16_e64 v120.l, v145.l
	v_mov_b16_e64 v121.l, v147.l
	v_mov_b16_e64 v122.l, v149.l
	v_mov_b16_e64 v123.l, v136.l
	v_mov_b16_e64 v124.l, v138.l
	v_mov_b16_e64 v125.l, v140.l
	v_mov_b16_e64 v126.l, v142.l
	v_mov_b16_e64 v127.l, v144.l
	v_mov_b16_e64 v128.l, v146.l
	v_mov_b16_e64 v129.l, v148.l
	v_mov_b16_e64 v130.l, v150.l
	v_mov_b16_e64 v131.l, v198.l
	v_mov_b16_e64 v132.l, v200.l
	v_mov_b16_e64 v133.l, v202.l
	v_mov_b16_e64 v134.l, v204.l
	v_mov_b16_e64 v135.l, v206.l
	v_mov_b16_e64 v136.l, v208.l
	v_mov_b16_e64 v137.l, v210.l
	v_mov_b16_e64 v138.l, v212.l
	v_mov_b16_e64 v139.l, v199.l
	v_mov_b16_e64 v140.l, v201.l
	v_mov_b16_e64 v141.l, v203.l
	v_mov_b16_e64 v142.l, v205.l
	v_mov_b16_e64 v143.l, v207.l
	v_mov_b16_e64 v144.l, v209.l
	v_mov_b16_e64 v145.l, v211.l
	v_mov_b16_e64 v146.l, v213.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v198.l, v226.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v199.l, v228.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v200.l, v230.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v201.l, v232.l
	v_mov_b16_e64 v203.l, v221.l
	v_mov_b16_e64 v204.l, v223.l
	v_mov_b16_e64 v205.l, v225.l
	v_mov_b16_e64 v206.l, v227.l
	v_mov_b16_e64 v207.l, v229.l
	v_mov_b16_e64 v208.l, v231.l
	v_mov_b16_e64 v209.l, v233.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v78, s0, v163, -v252
	v_fma_f32 v79, s0, v164, -v252
	v_fma_f32 v80, s0, v165, -v252
	v_fma_f32 v81, s0, v166, -v252
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v109, v194
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[186:193], v[66:73], v[0:7], v[186:193]
	ds_load_2addr_b32 v[65:66], v24 offset0:64 offset1:80
	ds_load_2addr_b32 v[67:68], v28 offset0:64 offset1:80
	ds_load_2addr_b32 v[69:70], v32 offset0:64 offset1:80
	ds_load_2addr_b32 v[71:72], v214 offset0:64 offset1:80
	ds_load_2addr_b32 v[151:152], v26 offset0:64 offset1:80
	v_mov_b32_e32 v73, v114
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v131.h, v65.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v133.h, v67.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v135.h, v69.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v137.h, v71.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v132.h, v151.l
	v_mov_b16_e64 v65.l, v198.h
	v_mov_b16_e64 v151.l, v200.h
	v_mov_b16_e64 v67.l, v202.h
	v_mov_b16_e64 v69.l, v206.h
	v_mov_b16_e64 v71.l, v210.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v106, v65 :: v_dual_mov_b32 v107, v151
	v_mov_b32_e32 v108, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v110, v69 :: v_dual_mov_b32 v111, v196
	v_mov_b32_e32 v112, v71
	v_mov_b16_e64 v140.h, v152.l
	v_mov_b16_e64 v152.l, v201.h
	v_mov_b32_e32 v69, v195
	v_mov_b32_e32 v71, v197
	v_wmma_f32_16x16x16_bf16 v[186:193], v[106:113], v[8:15], v[186:193]
	v_mov_b16_e64 v139.h, v66.l
	v_mov_b32_e32 v67, v152
	v_mov_b16_e64 v141.h, v68.l
	v_mov_b16_e64 v143.h, v70.l
	v_mov_b16_e64 v145.h, v72.l
	v_mov_b16_e64 v66.l, v199.h
	v_mov_b16_e64 v68.l, v203.h
	v_mov_b16_e64 v70.l, v207.h
	v_mov_b16_e64 v72.l, v211.h
	ds_load_2addr_b32 v[113:114], v218 offset0:96 offset1:112
	ds_load_2addr_b32 v[218:219], v153 offset0:96 offset1:112
	v_mov_b16_e64 v199.h, v216.l
	v_mov_b16_e64 v216.l, v228.h
	v_wmma_f32_16x16x16_bf16 v[186:193], v[66:73], v[16:23], v[186:193]
	ds_load_2addr_b32 v[65:66], v24 offset0:96 offset1:112
	ds_load_2addr_b32 v[67:68], v28 offset0:96 offset1:112
	ds_load_2addr_b32 v[69:70], v32 offset0:96 offset1:112
	ds_load_2addr_b32 v[71:72], v214 offset0:96 offset1:112
	ds_load_2addr_b32 v[151:152], v26 offset0:96 offset1:112
	ds_load_2addr_b32 v[214:215], v30 offset0:96 offset1:112
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[24:27], off, off offset:1396
	scratch_load_b128 v[28:31], off, off offset:1412
	v_mov_b32_e32 v111, v216
	v_mov_b16_e64 v207.h, v217.l
	v_mov_b16_e64 v217.l, v229.h
	v_mov_b16_e64 v195.l, v220.l
	v_mov_b16_e64 v196.l, v222.l
	v_mov_b16_e64 v197.l, v224.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v201.h, v113.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v194.h, v65.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v196.h, v67.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v198.h, v69.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v200.h, v71.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v195.h, v151.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v197.h, v214.l
	v_mov_b16_e64 v65.l, v218.h
	v_mov_b16_e64 v151.l, v220.h
	v_mov_b16_e64 v67.l, v222.h
	v_mov_b16_e64 v214.l, v224.h
	v_mov_b16_e64 v69.l, v226.h
	v_mov_b16_e64 v71.l, v230.h
	v_mov_b16_e64 v113.l, v232.h
	v_dual_mov_b32 v106, v65 :: v_dual_mov_b32 v107, v151
	v_dual_mov_b32 v108, v67 :: v_dual_mov_b32 v109, v214
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v112, v71
	v_mov_b32_e32 v110, v69
	v_mov_b16_e64 v209.h, v114.l
	v_mov_b16_e64 v114.l, v233.h
	v_mov_b16_e64 v203.h, v152.l
	v_mov_b16_e64 v152.l, v221.h
	v_mov_b16_e64 v205.h, v215.l
	v_mov_b16_e64 v215.l, v225.h
	v_mov_b32_e32 v73, v114
	v_mov_b32_e32 v71, v217
	v_mov_b32_e32 v67, v152
	v_mov_b16_e64 v202.h, v66.l
	v_mov_b32_e32 v69, v215
	v_mov_b16_e64 v204.h, v68.l
	v_mov_b16_e64 v206.h, v70.l
	v_mov_b16_e64 v208.h, v72.l
	v_mov_b16_e64 v66.l, v219.h
	v_mov_b16_e64 v68.l, v223.h
	v_mov_b16_e64 v70.l, v227.h
	v_mov_b16_e64 v72.l, v231.h
	v_mov_b16_e64 v194.l, v218.l
	v_mov_b16_e64 v202.l, v219.l
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[186:193], v[106:113], v[24:31], v[186:193]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[106:109], off, off offset:1428
	scratch_load_b128 v[110:113], off, off offset:1444
	.loc	1 397 33                        ; attention_backward.py:397:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[186:193], v[66:73], v[106:113], v[186:193]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[170:177], v[236:243], v[98:105]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, s0, v162, -v252
	v_fma_f32 v103, s0, v156, -v252
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v114, v191, v82
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[178:185], v[244:251], v[65:72]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v98, s0, v167, -v252
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v73
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v102, s0, v155, -v252
	v_fma_f32 v99, s0, v168, -v252
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[115:122], v[86:93], v[65:72]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v115, v192, v82
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v100, s0, v169, -v252
	v_fma_f32 v101, s0, v154, -v252
	v_fma_f32 v104, s0, v157, -v252
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[123:130], v[0:7], v[65:72]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v105, s0, v158, -v252
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s42
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e64 v155.h, v60.l
	v_mov_b16_e32 v60.l, v59.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[131:138], v[8:15], v[65:72]
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v158.l, v61.l
	v_mov_b16_e64 v158.h, v62.l
	v_mov_b16_e64 v155.l, v59.l
	v_mov_b16_e64 v154.h, v58.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[139:146], v[16:23], v[65:72]
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v62.l, v61.h
	v_mov_b16_e32 v58.l, v57.h
	v_mov_b32_e32 v59, v60
	v_mov_b16_e64 v154.l, v57.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[194:201], v[24:31], v[65:72]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[202:209], v[106:113], v[65:72]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v112, v189, v82
	v_sub_f32_e32 v110, v187, v82
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v106, s0, v159, -v252
	v_fma_f32 v107, s0, v160, -v252
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v65, v65, v82
	v_sub_f32_e32 v66, v66, v82
	v_sub_f32_e32 v68, v68, v82
	v_sub_f32_e32 v67, v67, v82
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v160.h, v75.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v65, v73, v65
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v78
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v159.h, v64.l
	v_mov_b16_e32 v75.l, v74.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v111, v188, v82
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v64.l, v63.h
	v_mov_b16_e64 v159.l, v63.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v78, v102
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v70, v82
	v_sub_f32_e32 v72, v72, v82
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b32_e32 v63, v64
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s40
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b32_e32 v64, v75
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v71, v82
	v_sub_f32_e32 v109, v186, v82
	v_sub_f32_e32 v113, v190, v82
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v73, v66
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v79
	v_exp_f32_e32 v79, v103
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v78, 0, v78, s103
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v108, s0, v161, -v252
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e64 v161.h, v77.l
	v_mov_b16_e32 v77.l, v76.h
	v_mov_b16_e64 v161.l, v76.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v78, v78, v110 :: v_dual_mul_f32 v65, s60, v65
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v160.l, v74.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s41
	v_cndmask_b32_e64 v79, 0, v79, s104
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v116, v193, v82
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v73, v67
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v80
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v79, v79, v111
	.loc	1 396 43 is_stmt 0              ; attention_backward.py:396:43
	v_sub_f32_e32 v69, v69, v82
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v80, v104
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v80, 0, v80, s101
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v73, v68
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v81
	v_exp_f32_e32 v81, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v80, v80, v112
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v81, 0, v81, s102
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v73, v69
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v98
	v_exp_f32_e32 v98, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v81, v81, v113
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v98, 0, v98, s99
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v73, v70
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v99
	v_exp_f32_e32 v99, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v98, v98, v114
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v99, 0, v99, s100
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v73, v71
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v99, v99, v115
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v100, v108
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, vcc_hi
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v100, 0, v100, s98
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v72, v73, v72
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v101
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v101, v65, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v100, v100, v116
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v101, v65, v101, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s62
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v66, v65, 16, 1
	v_cmp_o_f32_e64 s6, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v73, v109
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v67, v65, 16, 1
	v_cmp_o_f32_e64 s7, v65, v65
	v_add3_u32 v67, v65, v67, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v68, v65, 16, 1
	v_cmp_o_f32_e64 s8, v65, v65
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v69, v65, 16, 1
	v_cmp_o_f32_e64 s9, v65, v65
	v_add3_u32 v69, v65, v69, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v70, v65, 16, 1
	v_cmp_o_f32_e64 s10, v65, v65
	v_add3_u32 v70, v65, v70, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v71, v65, 16, 1
	v_cmp_o_f32_e64 s11, v65, v65
	v_add3_u32 v71, v65, v71, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v72, v65, 16, 1
	v_cmp_o_f32_e64 s12, v65, v65
	v_add3_u32 v72, v65, v72, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v73, v65, 16, 1
	v_cmp_o_f32_e64 s13, v65, v65
	v_add3_u32 v73, v65, v73, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v78, v65, 16, 1
	v_cmp_o_f32_e64 s14, v65, v65
	v_add3_u32 v78, v65, v78, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v79, v65, 16, 1
	v_cmp_o_f32_e64 s15, v65, v65
	v_add3_u32 v79, v65, v79, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v80, v65, 16, 1
	v_cmp_o_f32_e64 s16, v65, v65
	v_add3_u32 v80, v65, v80, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v81, v65, 16, 1
	v_cmp_o_f32_e64 s17, v65, v65
	v_add3_u32 v81, v65, v81, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v98, v65, 16, 1
	v_cmp_o_f32_e64 s18, v65, v65
	v_add3_u32 v98, v65, v98, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v99, v65, 16, 1
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v99, v65, v99, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s60, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v100, v65, 16, 1
	v_cmp_o_f32_e64 s20, v65, v65
	v_add3_u32 v100, v65, v100, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v101.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s6
	ds_store_b16 v84, v65
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s7
	ds_store_b16_d16_hi v84, v65 offset:128
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s8
	ds_store_b16 v84, v65 offset:256
	v_cndmask_b16 v65.l, 0x7fff, v69.h, s9
	ds_store_b16_d16_hi v84, v65 offset:384
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s10
	ds_store_b16 v84, v65 offset:512
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s11
	ds_store_b16_d16_hi v84, v65 offset:640
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s12
	ds_store_b16 v84, v65 offset:768
	ds_store_b16_d16_hi v84, v65 offset:896
	v_cndmask_b16 v65.l, 0x7fff, v73.h, s13
	v_cndmask_b16 v65.h, 0x7fff, v78.h, s14
	ds_store_b16 v84, v65 offset:1024
	v_cndmask_b16 v65.l, 0x7fff, v79.h, s15
	ds_store_b16_d16_hi v84, v65 offset:1152
	v_cndmask_b16 v65.h, 0x7fff, v80.h, s16
	ds_store_b16 v84, v65 offset:1280
	v_cndmask_b16 v65.l, 0x7fff, v81.h, s17
	ds_store_b16_d16_hi v84, v65 offset:1408
	v_cndmask_b16 v65.h, 0x7fff, v98.h, s18
	ds_store_b16 v84, v65 offset:1536
	v_cndmask_b16 v65.l, 0x7fff, v99.h, s19
	ds_store_b16_d16_hi v84, v65 offset:1664
	v_cndmask_b16 v65.h, 0x7fff, v100.h, s20
	ds_store_b16 v84, v65 offset:1792
	ds_store_b16_d16_hi v84, v65 offset:1920
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[12:15], off, off offset:644
	scratch_load_b128 v[8:11], off, off offset:628
	scratch_load_b128 v[113:116], off, off offset:196
	scratch_load_b128 v[117:120], off, off offset:212
	ds_load_u16_d16 v66, v85
	ds_load_u16_d16 v67, v85 offset:128
	ds_load_u16_d16 v68, v85 offset:256
	ds_load_u16_d16 v69, v85 offset:384
	ds_load_u16_d16 v70, v85 offset:512
	ds_load_u16_d16 v71, v85 offset:640
	ds_load_u16_d16 v72, v85 offset:768
	ds_load_u16_d16 v73, v85 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v66, v85 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v67, v85 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v68, v85 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v69, v85 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v70, v85 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v71, v85 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v85 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v85 offset:960
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b32_e32 v65, v77
	s_clause 0x10                           ; 272-byte Folded Reload
	scratch_load_b128 v[105:108], off, off offset:164
	scratch_load_b128 v[109:112], off, off offset:180
	scratch_load_b128 v[19:22], off, off offset:676
	scratch_load_b128 v[4:7], off, off offset:612
	scratch_load_b128 v[0:3], off, off offset:596
	scratch_load_b128 v[137:140], off, off offset:292
	scratch_load_b128 v[141:144], off, off offset:308
	scratch_load_b128 v[86:89], off, off offset:100
	scratch_load_b128 v[90:93], off, off offset:116
	scratch_load_b128 v[121:124], off, off offset:228
	scratch_load_b128 v[125:128], off, off offset:244
	scratch_load_b128 v[149:152], off, off offset:544
	scratch_load_b128 v[145:148], off, off offset:528
	scratch_load_b128 v[74:77], off, off offset:68
	scratch_load_b128 v[78:81], off, off offset:84
	scratch_load_b128 v[129:132], off, off offset:260
	scratch_load_b128 v[133:136], off, off offset:276
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v157.h, v15.l
	v_mov_b16_e64 v156.h, v13.l
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v15.l, v14.h
	v_mov_b16_e64 v157.l, v14.l
	v_mov_b16_e64 v156.l, v12.l
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v60, v13 :: v_dual_mov_b32 v61, v15
	scratch_load_b128 v[15:18], off, off offset:660 ; 16-byte Folded Reload
	s_waitcnt vmcnt(18) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[58:65], v[66:73], v[113:120]
	v_mov_b16_e32 v65.h, v97.l
	v_mov_b16_e32 v97.l, v96.h
	v_mov_b16_e32 v64.h, v95.l
	v_mov_b16_e32 v63.h, v56.l
	v_mov_b16_e32 v61.h, v11.l
	v_mov_b16_e32 v60.h, v9.l
	v_mov_b32_e32 v57, v97
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:132
	scratch_load_b128 v[101:104], off, off offset:148
	v_mov_b16_e32 v59.h, v52.l
	v_mov_b16_e32 v95.l, v94.h
	v_mov_b16_e32 v56.l, v55.h
	v_mov_b16_e32 v52.l, v51.h
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v63.l, v55.l
	v_mov_b16_e32 v62.l, v53.l
	v_mov_b16_e32 v62.h, v54.l
	v_mov_b16_e32 v59.l, v51.l
	v_mov_b16_e32 v58.h, v50.l
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v50.l, v49.h
	v_dual_mov_b32 v51, v52 :: v_dual_mov_b32 v52, v9
	v_mov_b32_e32 v53, v11
	v_dual_mov_b32 v55, v56 :: v_dual_mov_b32 v56, v95
	v_mov_b16_e32 v58.l, v49.l
	v_mov_b16_e32 v65.l, v96.l
	v_mov_b16_e32 v64.l, v94.l
	v_mov_b16_e32 v61.l, v10.l
	s_waitcnt vmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[50:57], v[66:73], v[105:112]
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v57.h, v22.l
	v_mov_b16_e32 v56.h, v20.l
	v_mov_b16_e32 v55.h, v48.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v53.h, v7.l
	v_mov_b16_e32 v52.h, v5.l
	v_mov_b16_e32 v51.h, v44.l
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e32 v48.l, v47.h
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e32 v55.l, v47.l
	v_mov_b16_e32 v54.l, v45.l
	v_mov_b16_e32 v54.h, v46.l
	v_mov_b16_e32 v51.l, v43.l
	v_mov_b16_e32 v50.h, v42.l
	v_mov_b16_e32 v46.l, v45.h
	v_mov_b16_e32 v42.l, v41.h
	v_dual_mov_b32 v43, v44 :: v_dual_mov_b32 v44, v5
	v_mov_b32_e32 v45, v7
	v_mov_b32_e32 v47, v48
	v_dual_mov_b32 v48, v20 :: v_dual_mov_b32 v49, v22
	v_mov_b16_e32 v60.l, v8.l
	v_mov_b16_e32 v53.l, v6.l
	v_mov_b16_e32 v52.l, v4.l
	v_mov_b16_e32 v50.l, v41.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v32.h, v146.l
	v_wmma_f32_16x16x16_bf16 v[137:144], v[58:65], v[66:73], v[137:144]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[62:65], off, off offset:408
	scratch_load_b128 v[58:61], off, off offset:392
	v_mov_b16_e64 v146.l, v145.h
	v_mov_b16_e32 v57.l, v21.l
	v_mov_b16_e32 v56.l, v19.l
	s_waitcnt vmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[154:161], v[66:73], v[74:81]
	v_mov_b16_e64 v32.l, v145.l
	s_waitcnt vmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[50:57], v[66:73], v[129:136]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[54:57], off, off offset:376
	scratch_load_b128 v[50:53], off, off offset:360
	s_waitcnt vmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[42:49], v[66:73], v[97:104]
	v_mov_b16_e32 v45.h, v3.l
	v_mov_b16_e32 v44.h, v1.l
	v_mov_b16_e32 v43.h, v36.l
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v46.l, v37.l
	v_mov_b16_e32 v46.h, v38.l
	v_mov_b16_e32 v43.l, v35.l
	v_mov_b16_e32 v38.l, v37.h
	v_dual_mov_b32 v35, v36 :: v_dual_mov_b32 v36, v1
	v_mov_b32_e32 v37, v3
	v_mov_b16_e32 v45.l, v2.l
	v_mov_b16_e32 v44.l, v0.l
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:560
	scratch_load_b128 v[4:7], off, off offset:576
	scratch_load_b32 v8, off, off offset:592
	v_mov_b16_e32 v49.h, v18.l
	v_mov_b16_e32 v48.h, v16.l
	v_mov_b16_e32 v47.h, v40.l
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v47.l, v39.l
	v_mov_b16_e32 v42.h, v34.l
	v_mov_b32_e32 v41, v18
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v40, v16
	v_mov_b16_e32 v42.l, v33.l
	v_mov_b16_e32 v49.l, v17.l
	v_mov_b16_e32 v48.l, v15.l
	v_mov_b16_e64 v33.h, v148.l
	v_wmma_f32_16x16x16_bf16 v[86:93], v[34:41], v[66:73], v[86:93]
	.loc	1 397 33                        ; attention_backward.py:397:33
	ds_load_u16_d16 v34, v85 offset:1024
	ds_load_u16_d16 v35, v85 offset:1152
	ds_load_u16_d16 v36, v85 offset:1280
	ds_load_u16_d16 v37, v85 offset:1408
	ds_load_u16_d16 v38, v85 offset:1536
	ds_load_u16_d16 v39, v85 offset:1664
	ds_load_u16_d16 v40, v85 offset:1792
	ds_load_u16_d16 v41, v85 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v34, v85 offset:1088
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v35, v85 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v36, v85 offset:1344
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v37, v85 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v38, v85 offset:1600
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v39, v85 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v40, v85 offset:1856
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v85 offset:1984
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[121:128], v[42:49], v[66:73], v[121:128]
	v_mov_b16_e64 v49.h, v152.l
	v_mov_b16_e64 v48.h, v150.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v45.h, v65.l
	v_mov_b16_e32 v44.h, v63.l
	v_mov_b16_e32 v63.l, v62.h
	v_mov_b16_e32 v65.l, v64.h
	v_mov_b16_e64 v150.l, v149.h
	v_mov_b16_e64 v152.l, v151.h
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v29.h, v61.l
	v_mov_b16_e32 v28.h, v59.l
	v_mov_b16_e32 v59.l, v58.h
	v_mov_b16_e32 v61.l, v60.h
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v8, v152
	v_mov_b16_e64 v148.l, v147.h
	scratch_load_b128 v[69:72], off, off offset:476 ; 16-byte Folded Reload
	v_mov_b16_e32 v21.h, v57.l
	v_mov_b16_e32 v20.h, v55.l
	v_mov_b16_e32 v55.l, v54.h
	v_mov_b16_e32 v57.l, v56.h
	v_mov_b16_e32 v13.h, v53.l
	v_mov_b16_e32 v12.h, v51.l
	v_mov_b16_e32 v51.l, v50.h
	v_mov_b16_e32 v53.l, v52.h
	v_mov_b16_e64 v49.l, v151.l
	v_mov_b16_e64 v48.l, v149.l
	v_mov_b16_e32 v45.l, v64.l
	v_mov_b16_e32 v44.l, v62.l
	v_mov_b16_e64 v33.l, v147.l
	v_mov_b16_e32 v29.l, v60.l
	v_mov_b16_e32 v28.l, v58.l
	v_mov_b16_e32 v21.l, v56.l
	v_mov_b16_e32 v20.l, v54.l
	v_mov_b16_e32 v13.l, v52.l
	v_mov_b16_e32 v12.l, v50.l
	v_mov_b16_e32 v43.h, v3.l
	v_mov_b16_e32 v47.h, v7.l
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e32 v47.l, v6.l
	v_mov_b16_e32 v46.l, v4.l
	v_mov_b16_e32 v46.h, v5.l
	v_mov_b16_e32 v43.l, v2.l
	v_mov_b16_e32 v42.h, v1.l
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b32_e32 v2, v3
	v_dual_mov_b32 v3, v63 :: v_dual_mov_b32 v4, v65
	v_dual_mov_b32 v6, v7 :: v_dual_mov_b32 v7, v150
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v42.l, v0.l
	scratch_load_b128 v[65:68], off, off offset:460 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[1:8], v[34:41], v[113:120]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:492
	scratch_load_b128 v[4:7], off, off offset:508
	scratch_load_b32 v8, off, off offset:524
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v8, v148
	v_wmma_f32_16x16x16_bf16 v[74:81], v[42:49], v[34:41], v[74:81]
	v_mov_b16_e32 v25.h, v72.l
	v_mov_b16_e32 v24.h, v70.l
	v_mov_b16_e32 v72.l, v71.h
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e32 v25.l, v71.l
	v_mov_b16_e32 v24.l, v69.l
	v_mov_b16_e32 v17.h, v68.l
	v_mov_b16_e32 v16.h, v66.l
	v_mov_b16_e32 v27.h, v3.l
	v_mov_b16_e32 v31.h, v7.l
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e32 v31.l, v6.l
	v_mov_b16_e32 v30.l, v4.l
	v_mov_b16_e32 v30.h, v5.l
	v_mov_b16_e32 v27.l, v2.l
	v_mov_b16_e32 v26.h, v1.l
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b32_e32 v2, v3
	v_dual_mov_b32 v3, v59 :: v_dual_mov_b32 v4, v61
	v_dual_mov_b32 v6, v7 :: v_dual_mov_b32 v7, v146
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v26.l, v0.l
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v17.l, v67.l
	v_wmma_f32_16x16x16_bf16 v[105:112], v[1:8], v[34:41], v[105:112]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:424
	scratch_load_b128 v[4:7], off, off offset:440
	scratch_load_b32 v8, off, off offset:456
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v8, v72
	v_mov_b16_e32 v16.l, v65.l
	v_wmma_f32_16x16x16_bf16 v[137:144], v[26:33], v[34:41], v[137:144]
	v_mov_b16_e32 v19.h, v3.l
	v_mov_b16_e32 v23.h, v7.l
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v23.l, v6.l
	v_mov_b16_e32 v22.l, v4.l
	v_mov_b16_e32 v22.h, v5.l
	v_mov_b16_e32 v19.l, v2.l
	v_mov_b16_e32 v18.h, v1.l
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b32_e32 v2, v3
	v_dual_mov_b32 v3, v55 :: v_dual_mov_b32 v4, v57
	v_dual_mov_b32 v6, v7 :: v_dual_mov_b32 v7, v70
	v_mov_b16_e32 v18.l, v0.l
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[34:41], v[97:104]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:324
	scratch_load_b128 v[4:7], off, off offset:340
	scratch_load_b32 v8, off, off offset:356
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v8, v68
	v_wmma_f32_16x16x16_bf16 v[129:136], v[18:25], v[34:41], v[129:136]
	v_mov_b16_e32 v11.h, v3.l
	v_mov_b16_e32 v15.h, v7.l
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v15.l, v6.l
	v_mov_b16_e32 v14.l, v4.l
	v_mov_b16_e32 v14.h, v5.l
	v_mov_b16_e32 v11.l, v2.l
	v_mov_b16_e32 v10.h, v1.l
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b32_e32 v2, v3
	v_dual_mov_b32 v3, v51 :: v_dual_mov_b32 v4, v53
	v_dual_mov_b32 v6, v7 :: v_dual_mov_b32 v7, v66
	v_mov_b16_e32 v10.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[86:93], v[1:8], v[34:41], v[86:93]
	v_wmma_f32_16x16x16_bf16 v[121:128], v[10:17], v[34:41], v[121:128]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc0 .LBB0_23
.LBB0_19:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s5, s58, 1
	s_or_b32 s6, s58, 2
	s_or_b32 s7, s58, 3
	s_or_b32 s8, s58, 4
	s_or_b32 s9, s58, 5
	s_or_b32 s10, s58, 6
	s_or_b32 s11, s58, 7
	s_or_b32 s12, s58, 8
	s_or_b32 s13, s58, 9
	s_or_b32 s14, s58, 10
	s_or_b32 s15, s58, 11
	s_or_b32 s16, s58, 12
	s_or_b32 s17, s58, 13
	s_or_b32 s18, s58, 14
	s_or_b32 s19, s58, 15
	s_or_b32 s20, s58, 16
	s_or_b32 s21, s58, 17
	s_or_b32 s22, s58, 18
	s_or_b32 s23, s58, 19
	s_or_b32 s24, s58, 20
	s_or_b32 s25, s58, 21
	s_or_b32 s26, s58, 22
	s_or_b32 s27, s58, 23
	s_or_b32 s28, s58, 24
	s_or_b32 s29, s58, 25
	s_or_b32 s30, s58, 26
	s_or_b32 s31, s58, 27
	s_or_b32 s33, s58, 28
	s_or_b32 s34, s58, 29
	s_or_b32 s35, s58, 30
	s_or_b32 s36, s58, 31
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cmp_lt_i32 s58, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v185, s79
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s5, s39
	s_clause 0xd                            ; 224-byte Folded Spill
	scratch_store_b128 off, v[137:140], off offset:292
	scratch_store_b128 off, v[141:144], off offset:308
	scratch_store_b128 off, v[129:132], off offset:260
	scratch_store_b128 off, v[133:136], off offset:276
	scratch_store_b128 off, v[121:124], off offset:228
	scratch_store_b128 off, v[125:128], off offset:244
	scratch_store_b128 off, v[113:116], off offset:196
	scratch_store_b128 off, v[117:120], off offset:212
	scratch_store_b128 off, v[105:108], off offset:164
	scratch_store_b128 off, v[109:112], off offset:180
	scratch_store_b128 off, v[97:100], off offset:132
	scratch_store_b128 off, v[101:104], off offset:148
	scratch_store_b128 off, v[74:77], off offset:68
	scratch_store_b128 off, v[78:81], off offset:84
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s6, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v184, s78
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s7, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v182, s76
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s8, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v180, s74
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s9, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v178, s72
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s10, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v183, s77
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s11, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v181, s75
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s12, s39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v179, s73
	.loc	1 318 61                        ; attention_backward.py:318:61
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s13, s39
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s14, s39
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s15, s39
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s16, s39
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s17, s39
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s18, s39
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s19, s39
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s20, s39
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s21, s39
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s22, s39
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s23, s39
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s24, s39
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s25, s39
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s26, s39
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s27, s39
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s28, s39
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s29, s39
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s30, s39
	s_cselect_b32 s0, -1, 0
	s_cmp_lt_i32 s31, s39
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s33, s39
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s34, s39
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s35, s39
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s36, s39
	s_cselect_b32 s70, -1, 0
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_add_i32 s43, s58, s37
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s92
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_mad_u64_u32 v[1:2], null, s43, s64, v[234:235]
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s93
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v3, s64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v2, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	v_add_nc_u32_e32 v2, 0x100, v2
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s91
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v4, 0x80000000, v1, s6
	s_clause 0x1
	buffer_load_u16 v65, v4, s[48:51], 0 offen
	buffer_load_u16 v66, v5, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v4, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s88
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s90
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v4, 0x100, v4
	buffer_load_u16 v67, v5, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v5, 1, v3
	v_add_nc_u32_e32 v3, s64, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v6, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s87
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v68, v6, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s64, v3
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v7, 1, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v8, 0x80000000, v3, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s64, v6
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s44
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v3, 0x100, v3
	v_cndmask_b32_e32 v9, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_u16 v69, v8, s[48:51], 0 offen
	buffer_load_u16 v70, v9, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v8, 1, v6
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s85
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v6, s64, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v9, 0x80000000, v8, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s86
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v71, v9, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v9, 1, v6
	v_add_nc_u32_e32 v6, s64, v6
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v10, 0x80000000, v9, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s69
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v5, 0x100, v5
	buffer_load_u16 v72, v10, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v10, s64, v6
	v_lshlrev_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v11, 1, v10
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v12, 0x80000000, v6, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v10, s64, v10
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_u16 v78, v12, s[48:51], 0 offen
	buffer_load_u16 v79, v13, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v12, 1, v10
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s68
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v10, s64, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v13, 0x80000000, v12, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s46
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v80, v13, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v13, 1, v10
	v_add_nc_u32_e32 v10, s64, v10
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v14, 0x80000000, v13, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s71
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v81, v14, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v14, s64, v10
	v_lshlrev_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v15, 1, v14
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v16, 0x80000000, v10, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v14, s64, v14
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s97
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v17, 0x80000000, v15, vcc_lo
	s_clause 0x1
	buffer_load_u16 v154, v16, s[48:51], 0 offen
	buffer_load_u16 v155, v17, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v16, 1, v14
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s38
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v14, s64, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v17, 0x80000000, v16, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s63
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v156, v17, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v17, 1, v14
	v_add_nc_u32_e32 v14, s64, v14
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s96
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v157, v18, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v18, s64, v14
	v_lshlrev_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v19, 1, v18
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v20, 0x80000000, v14, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v18, s64, v18
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s89
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v21, 0x80000000, v19, vcc_lo
	s_clause 0x1
	buffer_load_u16 v158, v20, s[48:51], 0 offen
	buffer_load_u16 v159, v21, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v20, 1, v18
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s94
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v18, s64, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v21, 0x80000000, v20, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s95
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v160, v21, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v21, 1, v18
	v_add_nc_u32_e32 v18, s64, v18
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v22, 0x80000000, v21, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s84
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v161, v22, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v22, s64, v18
	v_lshlrev_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v23, 1, v22
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v24, 0x80000000, v18, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v22, s64, v22
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v25, 0x80000000, v23, vcc_lo
	s_clause 0x1
	buffer_load_u16 v162, v24, s[48:51], 0 offen
	buffer_load_u16 v163, v25, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v24, 1, v22
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s83
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v22, s64, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v25, 0x80000000, v24, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s82
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v164, v25, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v25, 1, v22
	v_add_nc_u32_e32 v22, s64, v22
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v26, 0x80000000, v25, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s80
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v165, v26, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v26, s64, v22
	v_lshlrev_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v27, 1, v26
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v28, 0x80000000, v22, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v26, s64, v26
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 s6, s2, s45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v29, 0x80000000, v27, vcc_lo
	s_clause 0x1
	buffer_load_u16 v166, v28, s[48:51], 0 offen
	buffer_load_u16 v167, v29, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v28, 1, v26
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s0
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v26, s64, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v29, 0x80000000, v28, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s61
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v168, v29, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v29, 1, v26
	v_add_nc_u32_e32 v26, s64, v26
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v30, 0x80000000, v29, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s66
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v169, v30, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v30, s64, v26
	v_lshlrev_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v31, 1, v30
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v32, 0x80000000, v26, s6
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v30, s64, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v33, 0x80000000, v31, vcc_lo
	s_clause 0x1
	buffer_load_u16 v170, v32, s[48:51], 0 offen
	buffer_load_u16 v171, v33, s[48:51], 0 offen
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_lshlrev_b32_e32 v32, 1, v30
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s67
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_lshl_u32 v30, v30, s64, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v33, 0x80000000, v32, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s2, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v172, v33, s[48:51], 0 offen
	v_cndmask_b32_e32 v33, 0x80000000, v30, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s92
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s90
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v1, 0x100, v1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s91
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s93
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v73, v5, s[48:51], 0 offen
	buffer_load_u16 v98, v4, s[48:51], 0 offen
	buffer_load_u16 v99, v2, s[48:51], 0 offen
	buffer_load_u16 v100, v1, s[48:51], 0 offen
	v_add_nc_u32_e32 v2, 0x100, v8
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s88
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v4, 0x100, v9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s85
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v1, 0x100, v7
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s86
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v5, 0x100, v6
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s87
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v6, 0x100, v11
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v101, v4, s[48:51], 0 offen
	buffer_load_u16 v102, v2, s[48:51], 0 offen
	buffer_load_u16 v103, v1, s[48:51], 0 offen
	buffer_load_u16 v104, v3, s[48:51], 0 offen
	v_add_nc_u32_e32 v1, 0x100, v13
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s69
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v2, 0x100, v12
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s46
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v6, 0x100, v19
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s68
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v7, 0x100, v20
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s44
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v5, vcc_lo
	v_add_nc_u32_e32 v5, 0x100, v10
	s_clause 0x3
	buffer_load_u16 v105, v1, s[48:51], 0 offen
	buffer_load_u16 v106, v2, s[48:51], 0 offen
	buffer_load_u16 v107, v3, s[48:51], 0 offen
	buffer_load_u16 v108, v4, s[48:51], 0 offen
	v_add_nc_u32_e32 v1, 0x100, v15
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s47
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v3, 0x100, v16
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s71
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v4, 0x100, v17
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s38
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v5, 0x100, v14
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s63
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v8, 0x100, v21
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s97
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s96
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s94
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s95
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v109, v4, s[48:51], 0 offen
	buffer_load_u16 v110, v3, s[48:51], 0 offen
	buffer_load_u16 v111, v1, s[48:51], 0 offen
	buffer_load_u16 v112, v2, s[48:51], 0 offen
	buffer_load_u16 v113, v8, s[48:51], 0 offen
	buffer_load_u16 v114, v7, s[48:51], 0 offen
	buffer_load_u16 v115, v6, s[48:51], 0 offen
	buffer_load_u16 v116, v5, s[48:51], 0 offen
	v_add_nc_u32_e32 v1, 0x100, v23
	v_add_nc_u32_e32 v3, 0x100, v25
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s84
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v4, 0x100, v24
	v_add_nc_u32_e32 v2, 0x100, v18
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s82
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s83
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s89
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_u16 v117, v3, s[48:51], 0 offen
	buffer_load_u16 v118, v4, s[48:51], 0 offen
	buffer_load_u16 v119, v1, s[48:51], 0 offen
	buffer_load_u16 v120, v2, s[48:51], 0 offen
	v_add_nc_u32_e32 v1, 0x100, v27
	v_add_nc_u32_e32 v3, 0x100, v29
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s80
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v4, 0x100, v28
	v_add_nc_u32_e32 v2, 0x100, v22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s61
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s0
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s81
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_u16 v121, v3, s[48:51], 0 offen
	buffer_load_u16 v122, v4, s[48:51], 0 offen
	buffer_load_u16 v123, v1, s[48:51], 0 offen
	buffer_load_u16 v124, v2, s[48:51], 0 offen
	v_add_nc_u32_e32 v1, 0x100, v31
	v_add_nc_u32_e32 v3, 0x100, v30
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s66
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v4, 0x100, v32
	v_add_nc_u32_e32 v2, 0x100, v26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s70
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s67
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 318 26                        ; attention_backward.py:318:26
	s_and_b32 vcc_lo, s3, s45
	.loc	1 316 28                        ; attention_backward.py:316:28
	buffer_load_u16 v173, v33, s[48:51], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_u16 v125, v3, s[48:51], 0 offen
	buffer_load_u16 v126, v4, s[48:51], 0 offen
	buffer_load_u16 v127, v1, s[48:51], 0 offen
	buffer_load_u16 v128, v2, s[48:51], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:1468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(33)
	v_mov_b16_e32 v68.h, v73.l
	s_waitcnt vmcnt(32)
	v_mov_b16_e32 v67.h, v98.l
	s_waitcnt vmcnt(31)
	v_mov_b16_e32 v66.h, v99.l
	s_waitcnt vmcnt(30)
	v_mov_b16_e32 v65.h, v100.l
	s_waitcnt vmcnt(29)
	v_mov_b16_e32 v72.h, v101.l
	s_waitcnt vmcnt(28)
	v_mov_b16_e32 v71.h, v102.l
	s_waitcnt vmcnt(27)
	v_mov_b16_e32 v70.h, v103.l
	s_waitcnt vmcnt(26)
	v_mov_b16_e32 v69.h, v104.l
	s_waitcnt vmcnt(25)
	v_mov_b16_e32 v81.h, v105.l
	s_waitcnt vmcnt(24)
	v_mov_b16_e32 v80.h, v106.l
	s_waitcnt vmcnt(23)
	v_mov_b16_e32 v79.h, v107.l
	s_waitcnt vmcnt(22)
	v_mov_b16_e32 v78.h, v108.l
	s_waitcnt vmcnt(21)
	v_mov_b16_e64 v157.h, v109.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v156.h, v110.l
	s_waitcnt vmcnt(19)
	v_mov_b16_e64 v155.h, v111.l
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v154.h, v112.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v161.h, v113.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v160.h, v114.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v159.h, v115.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v158.h, v116.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v165.h, v117.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v164.h, v118.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v163.h, v119.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v162.h, v120.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v169.h, v121.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v168.h, v122.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v167.h, v123.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v166.h, v124.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v173.h, v125.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v172.h, v126.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v171.h, v127.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v170.h, v128.l
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v83
	ds_load_b128 v[49:52], v83 offset:512
	ds_load_b128 v[41:44], v83 offset:1024
	ds_load_b128 v[33:36], v83 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[69:72]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v83
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:644 ; 16-byte Folded Spill
	ds_load_b128 v[1:4], v83 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:628 ; 16-byte Folded Spill
	ds_load_b128 v[1:4], v83 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:612 ; 16-byte Folded Spill
	ds_load_b128 v[1:4], v83 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:596 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v83
	ds_load_b128 v[53:56], v83 offset:512
	ds_load_b128 v[45:48], v83 offset:1024
	ds_load_b128 v[37:40], v83 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[154:157]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v83
	ds_load_b128 v[94:97], v83 offset:512
	ds_load_b128 v[1:4], v83 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:676 ; 16-byte Folded Spill
	ds_load_b128 v[1:4], v83 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:660 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[158:161]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v83
	ds_load_b128 v[13:16], v83 offset:512
	ds_load_b128 v[9:12], v83 offset:1024
	ds_load_b128 v[1:4], v83 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[162:165]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v83
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:408 ; 16-byte Folded Spill
	ds_load_b128 v[5:8], v83 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:392 ; 16-byte Folded Spill
	ds_load_b128 v[5:8], v83 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:376 ; 16-byte Folded Spill
	ds_load_b128 v[5:8], v83 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:360 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[166:169]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v83
	ds_load_b128 v[5:8], v83 offset:1536
	scratch_store_b128 off, v[17:20], off offset:560 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 20-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:576
	scratch_store_b32 off, v25, off offset:592
	ds_load_b128 v[17:20], v83 offset:512
	scratch_store_b128 off, v[13:16], off offset:492 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 20-byte Folded Spill
	scratch_store_b128 off, v[17:20], off offset:508
	scratch_store_b32 off, v21, off offset:524
	ds_load_b128 v[13:16], v83 offset:1024
	scratch_store_b128 off, v[9:12], off offset:424 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x4                            ; 56-byte Folded Spill
	scratch_store_b128 off, v[13:16], off offset:440
	scratch_store_b32 off, v17, off offset:456
	scratch_store_b128 off, v[1:4], off offset:324
	scratch_store_b128 off, v[5:8], off offset:340
	scratch_store_b32 off, v9, off offset:356
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[170:173]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v83
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:544 ; 16-byte Folded Spill
	ds_load_b128 v[0:3], v83 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:528 ; 16-byte Folded Spill
	ds_load_b128 v[0:3], v83 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:476 ; 16-byte Folded Spill
	ds_load_b128 v[0:3], v83 offset:1536
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:460 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v129, off, off offset:28
	scratch_load_b32 v131, off, off offset:44
	scratch_load_b32 v130, off, off offset:32
	s_waitcnt vmcnt(2)
	ds_store_b16 v129, v71
	ds_store_b16 v129, v164 offset:8192
	s_waitcnt vmcnt(1)
	ds_store_b16 v131, v80
	ds_store_b16 v131, v168 offset:8192
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:48
	scratch_load_b32 v71, off, off offset:20
	s_waitcnt vmcnt(2)
	ds_store_b16 v130, v72
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:40
	scratch_load_b32 v132, off, off offset:64
	s_waitcnt vmcnt(1)
	ds_store_b16 v72, v79
	ds_store_b16 v72, v167 offset:8192
	ds_store_b16 v80, v169 offset:8192
	scratch_load_b32 v79, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v79, v155
	ds_store_b16 v79, v171 offset:8192
	ds_store_b16 v132, v173 offset:8192
	ds_store_b16 v235, v65
	ds_store_b16 v235, v158 offset:8192
	scratch_load_b32 v65, off, off offset:8 ; 4-byte Folded Reload
	ds_store_b16 v71, v69
	ds_store_b16 v71, v162 offset:8192
	scratch_load_b32 v69, off, off offset:24 ; 4-byte Folded Reload
	ds_store_b16 v80, v81
	ds_store_b16 v132, v157
	scratch_load_b32 v81, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v81, v156
	ds_store_b16 v81, v172 offset:8192
	ds_store_b16 v65, v66
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	ds_store_b16 v69, v70
	ds_store_b16 v69, v163 offset:8192
	ds_store_b16 v130, v165 offset:8192
	scratch_load_b32 v70, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_store_b16 v66, v67
	ds_store_b16 v66, v160 offset:8192
	scratch_load_b32 v67, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_store_b16 v70, v78
	ds_store_b16 v70, v166 offset:8192
	scratch_load_b32 v78, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v78, v154
	ds_store_b16 v78, v170 offset:8192
	ds_store_b16 v67, v68
	ds_store_b16 v67, v161 offset:8192
	ds_store_b16 v65, v159 offset:8192
	ds_store_b16 v235, v100 offset:256
	ds_store_b16 v235, v116 offset:8448
	ds_store_b16 v65, v99 offset:256
	ds_store_b16 v65, v115 offset:8448
	ds_store_b16 v66, v98 offset:256
	ds_store_b16 v66, v114 offset:8448
	ds_store_b16 v67, v73 offset:256
	ds_store_b16 v67, v113 offset:8448
	ds_store_b16 v71, v104 offset:256
	ds_store_b16 v71, v120 offset:8448
	ds_store_b16 v69, v103 offset:256
	ds_store_b16 v69, v119 offset:8448
	ds_store_b16 v129, v102 offset:256
	ds_store_b16 v129, v118 offset:8448
	ds_store_b16 v130, v101 offset:256
	ds_store_b16 v130, v117 offset:8448
	ds_store_b16 v70, v108 offset:256
	ds_store_b16 v70, v124 offset:8448
	ds_store_b16 v72, v107 offset:256
	ds_store_b16 v72, v123 offset:8448
	ds_store_b16 v131, v106 offset:256
	ds_store_b16 v131, v122 offset:8448
	ds_store_b16 v80, v105 offset:256
	ds_store_b16 v80, v121 offset:8448
	ds_store_b16 v78, v112 offset:256
	ds_store_b16 v78, v128 offset:8448
	ds_store_b16 v79, v111 offset:256
	ds_store_b16 v79, v127 offset:8448
	ds_store_b16 v81, v110 offset:256
	ds_store_b16 v81, v126 offset:8448
	ds_store_b16 v132, v109 offset:256
	ds_store_b16 v132, v125 offset:8448
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xb                            ; 168-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1460
	scratch_load_b32 v1, off, off offset:1480
	scratch_load_b128 v[98:101], off, off offset:692
	scratch_load_b128 v[102:105], off, off offset:708
	scratch_load_b128 v[194:197], off, off offset:948
	scratch_load_b128 v[198:201], off, off offset:964
	scratch_load_b128 v[210:213], off, off offset:1012
	scratch_load_b128 v[214:217], off, off offset:1028
	scratch_load_b128 v[226:229], off, off offset:1076
	scratch_load_b128 v[230:233], off, off offset:1092
	scratch_load_b128 v[242:245], off, off offset:1140
	scratch_load_b128 v[246:249], off, off offset:1156
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v73, 0, v0
	scratch_load_b32 v0, off, off offset:1472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[69:72], v0
	ds_load_b128 v[106:109], v73 offset:8192
	ds_load_b128 v[110:113], v0 offset:8192
	ds_load_b128 v[114:117], v73 offset:256
	ds_load_b128 v[118:121], v0 offset:256
	ds_load_b128 v[170:173], v73 offset:8448
	ds_load_b128 v[174:177], v0 offset:8448
	ds_load_b128 v[65:68], v73
	scratch_load_b32 v0, off, off offset:1476 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[106:113], v[98:105], v[178:185]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[98:105], v[178:185]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[98:101], off, off offset:756
	scratch_load_b128 v[102:105], off, off offset:772
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1
	s_waitcnt vmcnt(2)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[106:109], v0 offset:256
	ds_load_b128 v[110:113], v1 offset:256
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[98:105], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[178:181], v0 offset:8448
	ds_load_b128 v[182:185], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1488
	scratch_load_b32 v0, off, off offset:1484
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[98:105], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[98:101], off, off offset:820
	scratch_load_b128 v[102:105], off, off offset:836
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[186:189], v0 offset:256
	ds_load_b128 v[190:193], v1 offset:256
	ds_load_b128 v[69:72], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[98:105], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[122:125], v0 offset:8448
	ds_load_b128 v[126:129], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1496
	scratch_load_b32 v0, off, off offset:1492
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[98:105], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[98:101], off, off offset:884
	scratch_load_b128 v[102:105], off, off offset:900
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[130:133], v0 offset:256
	ds_load_b128 v[134:137], v1 offset:256
	ds_load_b128 v[69:72], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[98:105], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[138:141], v0 offset:8448
	ds_load_b128 v[142:145], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1504
	scratch_load_b32 v0, off, off offset:1500
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[98:105], v[154:161]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[146:149], v0 offset:256
	ds_load_b128 v[150:153], v1 offset:256
	ds_load_b128 v[69:72], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[194:201], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[98:101], v0 offset:8448
	ds_load_b128 v[102:105], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1512
	scratch_load_b32 v0, off, off offset:1508
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[194:201], v[154:161]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[194:197], v0 offset:256
	ds_load_b128 v[198:201], v1 offset:256
	ds_load_b128 v[69:72], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[210:217], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[202:205], v0 offset:8448
	ds_load_b128 v[206:209], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1520
	scratch_load_b32 v0, off, off offset:1516
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[210:217], v[154:161]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[210:213], v0 offset:256
	ds_load_b128 v[214:217], v1 offset:256
	ds_load_b128 v[69:72], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[226:233], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[218:221], v0 offset:8448
	ds_load_b128 v[222:225], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1528
	scratch_load_b32 v0, off, off offset:1524
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[226:233], v[154:161]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[226:229], v0 offset:256
	ds_load_b128 v[230:233], v1 offset:256
	ds_load_b128 v[69:72], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[65:72], v[242:249], v[162:169]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[65:68], v0 offset:8192
	ds_load_b128 v[234:237], v0 offset:8448
	ds_load_b128 v[238:241], v1 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[242:249], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:724
	scratch_load_b128 v[69:72], off, off offset:740
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[114:121], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[170:177], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:788
	scratch_load_b128 v[69:72], off, off offset:804
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[106:113], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[178:185], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:852
	scratch_load_b128 v[69:72], off, off offset:868
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[186:193], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[122:129], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:916
	scratch_load_b128 v[69:72], off, off offset:932
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[130:137], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[138:145], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:980
	scratch_load_b128 v[69:72], off, off offset:996
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[146:153], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[98:105], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:1044
	scratch_load_b128 v[69:72], off, off offset:1060
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[194:201], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[202:209], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:1108
	scratch_load_b128 v[69:72], off, off offset:1124
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[210:217], v[65:72], v[162:169]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[218:225], v[65:72], v[154:161]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:1172
	scratch_load_b128 v[69:72], off, off offset:1188
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[226:233], v[65:72], v[162:169]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[234:241], v[65:72], v[154:161]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v65, s58, v253
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v66, 2, v65
	v_or_b32_e32 v67, 4, v65
	v_or_b32_e32 v68, 6, v65
	v_or_b32_e32 v69, 8, v65
	v_or_b32_e32 v70, 10, v65
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e64 s6, s39, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, 12, v65
	v_or_b32_e32 v72, 14, v65
	v_or_b32_e32 v73, 16, v65
	v_or_b32_e32 v78, 18, v65
	v_or_b32_e32 v79, 20, v65
	v_or_b32_e32 v80, 22, v65
	v_or_b32_e32 v81, 24, v65
	v_or_b32_e32 v170, 26, v65
	v_or_b32_e32 v171, 28, v65
	v_or_b32_e32 v172, 30, v65
	.loc	1 318 61                        ; attention_backward.py:318:61
	v_cmp_gt_i32_e32 vcc_lo, s39, v65
	v_cmp_gt_i32_e64 s7, s39, v67
	v_cmp_gt_i32_e64 s8, s39, v68
	v_cmp_gt_i32_e64 s9, s39, v69
	v_cmp_gt_i32_e64 s10, s39, v70
	v_cmp_gt_i32_e64 s11, s39, v71
	v_cmp_gt_i32_e64 s12, s39, v72
	v_cmp_gt_i32_e64 s13, s39, v73
	v_cmp_gt_i32_e64 s14, s39, v78
	v_cmp_gt_i32_e64 s15, s39, v79
	v_cmp_gt_i32_e64 s16, s39, v80
	v_cmp_gt_i32_e64 s17, s39, v81
	v_cmp_gt_i32_e64 s18, s39, v170
	v_cmp_gt_i32_e64 s19, s39, v171
	v_cmp_gt_i32_e64 s20, s39, v172
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s40, s1, s6
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_readlane_b32 s6, v255, 11
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s42, s1, vcc_lo
	s_and_b32 s41, s1, s7
	s_and_b32 s59, s1, s8
	s_and_b32 s65, s1, s9
	s_and_b32 s56, s1, s10
	s_and_b32 s5, s1, s11
	s_and_b32 vcc_hi, s1, s12
	s_and_b32 s62, s1, s13
	s_and_b32 s103, s1, s14
	s_and_b32 s104, s1, s15
	s_and_b32 s101, s1, s16
	s_and_b32 s102, s1, s17
	s_and_b32 s99, s1, s18
	s_and_b32 s100, s1, s19
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s6
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s98, s1, s20
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_cbranch_vccnz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	scratch_load_b32 v0, off, off offset:1652 ; 4-byte Folded Reload
	s_and_not1_b32 s22, s42, exec_lo
	s_and_not1_b32 s23, s40, exec_lo
	.loc	1 327 26 is_stmt 1              ; attention_backward.py:327:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v65, v0
	v_cmp_le_i32_e64 s6, v66, v0
	v_cmp_le_i32_e64 s7, v67, v0
	v_cmp_le_i32_e64 s8, v68, v0
	v_cmp_le_i32_e64 s9, v69, v0
	v_cmp_le_i32_e64 s10, v70, v0
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s21, vcc_lo, s42
	s_and_b32 s6, s6, s40
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s11, v71, v0
	v_cmp_le_i32_e64 s12, v72, v0
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s7, s7, s41
	s_and_b32 s8, s8, s59
	s_and_b32 s21, s21, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s13, v73, v0
	v_cmp_le_i32_e64 s14, v78, v0
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s9, s9, s65
	s_and_b32 s10, s10, s56
	s_or_b32 s42, s22, s21
	s_or_b32 s40, s23, s6
	s_and_not1_b32 s6, s41, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s21, s59, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s15, v79, v0
	v_cmp_le_i32_e64 s16, v80, v0
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s11, s11, s5
	s_and_b32 s12, s12, vcc_hi
	s_or_b32 s41, s6, s7
	s_or_b32 s59, s21, s8
	s_and_not1_b32 s6, s65, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s8, s56, exec_lo
	s_and_b32 s9, s10, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s17, v81, v0
	v_cmp_le_i32_e64 s18, v170, v0
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s13, s62
	s_and_b32 s14, s14, s103
	s_or_b32 s65, s6, s7
	s_or_b32 s56, s8, s9
	s_and_not1_b32 s5, s5, exec_lo
	s_and_b32 s6, s11, exec_lo
	s_and_not1_b32 s7, vcc_hi, exec_lo
	s_and_b32 s8, s12, exec_lo
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s19, v171, v0
	v_cmp_le_i32_e64 s20, v172, v0
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s15, s15, s104
	s_and_b32 s16, s16, s101
	s_or_b32 s5, s5, s6
	s_or_b32 vcc_hi, s7, s8
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s13, exec_lo
	s_and_not1_b32 s8, s103, exec_lo
	s_and_b32 s9, s14, exec_lo
	s_and_b32 s17, s17, s102
	s_and_b32 s18, s18, s99
	s_or_b32 s62, s6, s7
	s_or_b32 s103, s8, s9
	s_and_not1_b32 s6, s104, exec_lo
	s_and_b32 s7, s15, exec_lo
	s_and_not1_b32 s8, s101, exec_lo
	s_and_b32 s9, s16, exec_lo
	s_and_b32 s19, s19, s100
	s_and_b32 s20, s20, s98
	s_or_b32 s104, s6, s7
	s_or_b32 s101, s8, s9
	s_and_not1_b32 s6, s102, exec_lo
	s_and_b32 s7, s17, exec_lo
	s_and_not1_b32 s8, s99, exec_lo
	s_and_b32 s9, s18, exec_lo
	s_or_b32 s102, s6, s7
	s_or_b32 s99, s8, s9
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s7, s19, exec_lo
	s_and_not1_b32 s8, s98, exec_lo
	s_and_b32 s9, s20, exec_lo
	s_or_b32 s100, s6, s7
	s_or_b32 s98, s8, s9
.LBB0_21:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	scratch_load_b64 v[234:235], off, off   ; 8-byte Folded Reload
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	v_readlane_b32 s6, v255, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, 0, v254
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[86:89], off offset:100
	scratch_store_b128 off, v[90:93], off offset:116
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_18
; %bb.22:                               ;   in Loop: Header=BB0_19 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	scratch_load_b32 v0, off, off offset:1656 ; 4-byte Folded Reload
	s_mov_b32 s72, s37
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v65, v0
	v_cmp_ge_i32_e64 s6, v66, v0
	v_cmp_ge_i32_e64 s7, v67, v0
	v_cmp_ge_i32_e64 s8, v68, v0
	v_cmp_ge_i32_e64 s9, v69, v0
	v_cmp_ge_i32_e64 s10, v70, v0
	v_cmp_ge_i32_e64 s11, v71, v0
	v_cmp_ge_i32_e64 s12, v72, v0
	v_cmp_ge_i32_e64 s13, v73, v0
	v_cmp_ge_i32_e64 s14, v78, v0
	v_cmp_ge_i32_e64 s15, v79, v0
	v_cmp_ge_i32_e64 s16, v80, v0
	v_cmp_ge_i32_e64 s17, v81, v0
	v_cmp_ge_i32_e64 s18, v170, v0
	v_cmp_ge_i32_e64 s19, v171, v0
	v_cmp_ge_i32_e64 s20, v172, v0
	scratch_load_b32 v0, off, off offset:1660 ; 4-byte Folded Reload
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v65, v0
	v_cmp_le_i32_e64 s22, v66, v0
	v_cmp_le_i32_e64 s23, v67, v0
	v_cmp_le_i32_e64 s24, v68, v0
	v_cmp_le_i32_e64 s25, v69, v0
	v_cmp_le_i32_e64 s26, v70, v0
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s6, s6, s22
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v71, v0
	v_cmp_le_i32_e64 s28, v72, v0
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s21, s21, s42
	s_and_b32 s6, s6, s40
	s_and_b32 s7, s7, s23
	s_and_b32 s8, s8, s24
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s29, v73, v0
	v_cmp_le_i32_e64 s30, v78, v0
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s7, s7, s41
	s_and_b32 s8, s8, s59
	s_and_b32 s9, s9, s25
	s_and_b32 s10, s10, s26
	s_and_not1_b32 s22, s42, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s40, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s31, v79, v0
	v_cmp_le_i32_e64 s33, v80, v0
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s9, s9, s65
	s_and_b32 s10, s10, s56
	s_and_b32 s11, s11, s27
	s_and_b32 s12, s12, s28
	s_or_b32 s42, s22, s21
	s_or_b32 s40, s23, s6
	s_and_not1_b32 s6, s41, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s21, s59, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s34, v81, v0
	v_cmp_le_i32_e64 s35, v170, v0
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s11, s11, s5
	s_and_b32 s12, s12, vcc_hi
	s_and_b32 s13, s13, s29
	s_and_b32 s14, s14, s30
	s_or_b32 s41, s6, s7
	s_or_b32 s59, s21, s8
	s_and_not1_b32 s6, s65, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s8, s56, exec_lo
	s_and_b32 s9, s10, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s36, v171, v0
	v_cmp_le_i32_e64 s37, v172, v0
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s13, s13, s62
	s_and_b32 s14, s14, s103
	s_and_b32 s15, s15, s31
	s_and_b32 s16, s16, s33
	s_or_b32 s65, s6, s7
	s_or_b32 s56, s8, s9
	s_and_not1_b32 s5, s5, exec_lo
	s_and_b32 s6, s11, exec_lo
	s_and_not1_b32 s7, vcc_hi, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_b32 s15, s15, s104
	s_and_b32 s16, s16, s101
	s_and_b32 s17, s17, s34
	s_and_b32 s18, s18, s35
	s_or_b32 s5, s5, s6
	s_or_b32 vcc_hi, s7, s8
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s13, exec_lo
	s_and_not1_b32 s8, s103, exec_lo
	s_and_b32 s9, s14, exec_lo
	s_and_b32 s17, s17, s102
	s_and_b32 s18, s18, s99
	s_and_b32 s19, s19, s36
	s_and_b32 s20, s20, s37
	s_or_b32 s62, s6, s7
	s_or_b32 s103, s8, s9
	s_and_not1_b32 s6, s104, exec_lo
	s_and_b32 s7, s15, exec_lo
	s_and_not1_b32 s8, s101, exec_lo
	s_and_b32 s9, s16, exec_lo
	s_and_b32 s19, s19, s100
	s_and_b32 s20, s20, s98
	s_or_b32 s104, s6, s7
	s_or_b32 s101, s8, s9
	s_and_not1_b32 s6, s102, exec_lo
	s_and_b32 s7, s17, exec_lo
	s_and_not1_b32 s8, s99, exec_lo
	s_and_b32 s9, s18, exec_lo
	s_or_b32 s102, s6, s7
	s_or_b32 s99, s8, s9
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s7, s19, exec_lo
	s_and_not1_b32 s8, s98, exec_lo
	s_and_b32 s9, s20, exec_lo
	s_mov_b32 s37, s72
	s_or_b32 s100, s6, s7
	s_or_b32 s98, s8, s9
	s_branch .LBB0_18
.LBB0_23:                               ; %Flow
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b32_e32 v2, v74
.LBB0_24:                               ; %._crit_edge102
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1668
	scratch_load_b32 v65, off, off offset:1664
	v_readlane_b32 s65, v255, 1
	v_readlane_b32 s0, v255, 6
	v_readlane_b32 s68, v255, 2
	v_readlane_b32 s69, v255, 3
	v_readlane_b32 s70, v255, 4
	v_readlane_b32 s71, v255, 5
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s69, s69, 0xffff
	.loc	1 124 31                        ; attention_backward.py:124:31
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, v253, v0
	.loc	1 401 13                        ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v65, s64, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, 2, v0
	v_or_b32_e32 v3, 4, v0
	v_or_b32_e32 v4, 6, v0
	v_or_b32_e32 v5, 8, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v6, 0xee, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v7, 10, v0
	v_or_b32_e32 v8, 12, v0
	v_or_b32_e32 v9, 14, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v10, 0xec, v0
	v_or_b32_e32 v11, 0xea, v0
	v_or_b32_e32 v12, 0xe8, v0
	v_or_b32_e32 v13, 0xe6, v0
	v_or_b32_e32 v14, 0xe4, v0
	v_or_b32_e32 v15, 0xe2, v0
	v_or_b32_e32 v16, 0xe0, v0
	v_or_b32_e32 v17, 0xce, v0
	v_or_b32_e32 v18, 0xcc, v0
	v_or_b32_e32 v19, 0xca, v0
	v_or_b32_e32 v20, 0xc8, v0
	v_or_b32_e32 v21, 0xc6, v0
	v_or_b32_e32 v22, 0xc4, v0
	v_or_b32_e32 v23, 0xc2, v0
	v_or_b32_e32 v24, 0xc0, v0
	v_or_b32_e32 v25, 0xae, v0
	v_or_b32_e32 v26, 0xac, v0
	v_or_b32_e32 v27, 0xaa, v0
	v_or_b32_e32 v28, 0xa8, v0
	v_or_b32_e32 v29, 0xa6, v0
	v_or_b32_e32 v30, 0xa4, v0
	v_or_b32_e32 v31, 0xa2, v0
	v_or_b32_e32 v32, 0xa0, v0
	v_or_b32_e32 v33, 0x8e, v0
	v_or_b32_e32 v34, 0x8c, v0
	v_or_b32_e32 v35, 0x8a, v0
	v_or_b32_e32 v36, 0x88, v0
	v_or_b32_e32 v37, 0x86, v0
	v_or_b32_e32 v38, 0x84, v0
	v_or_b32_e32 v39, 0x82, v0
	v_or_b32_e32 v40, 0x80, v0
	v_or_b32_e32 v41, 0x6e, v0
	v_or_b32_e32 v42, 0x6c, v0
	v_or_b32_e32 v43, 0x6a, v0
	v_or_b32_e32 v44, 0x68, v0
	v_or_b32_e32 v45, 0x66, v0
	v_or_b32_e32 v46, 0x64, v0
	v_or_b32_e32 v47, 0x62, v0
	v_or_b32_e32 v48, 0x60, v0
	v_or_b32_e32 v49, 0x4e, v0
	v_or_b32_e32 v50, 0x4c, v0
	v_or_b32_e32 v51, 0x4a, v0
	v_or_b32_e32 v52, 0x48, v0
	v_or_b32_e32 v53, 0x46, v0
	v_or_b32_e32 v54, 0x44, v0
	v_or_b32_e32 v55, 0x42, v0
	v_or_b32_e32 v56, 64, v0
	v_or_b32_e32 v57, 46, v0
	v_or_b32_e32 v58, 44, v0
	v_or_b32_e32 v59, 42, v0
	v_or_b32_e32 v60, 40, v0
	v_or_b32_e32 v61, 38, v0
	v_or_b32_e32 v62, 36, v0
	v_or_b32_e32 v63, 34, v0
	v_or_b32_e32 v64, 32, v0
	v_cmp_gt_i32_e32 vcc_lo, s64, v6
	v_cmp_gt_i32_e64 s1, s64, v10
	v_cmp_gt_i32_e64 s2, s64, v11
	v_cmp_gt_i32_e64 s3, s64, v12
	v_cmp_gt_i32_e64 s4, s64, v13
	v_cmp_gt_i32_e64 s5, s64, v14
	v_cmp_gt_i32_e64 s6, s64, v15
	v_cmp_gt_i32_e64 s7, s64, v16
	v_cmp_gt_i32_e64 s8, s64, v17
	v_cmp_gt_i32_e64 s9, s64, v18
	v_cmp_gt_i32_e64 s10, s64, v19
	v_cmp_gt_i32_e64 s11, s64, v20
	v_cmp_gt_i32_e64 s12, s64, v21
	v_cmp_gt_i32_e64 s13, s64, v22
	v_cmp_gt_i32_e64 s14, s64, v23
	v_cmp_gt_i32_e64 s15, s64, v24
	v_cmp_gt_i32_e64 s16, s64, v25
	v_cmp_gt_i32_e64 s17, s64, v26
	v_cmp_gt_i32_e64 s18, s64, v27
	v_cmp_gt_i32_e64 s19, s64, v28
	v_cmp_gt_i32_e64 s20, s64, v29
	v_cmp_gt_i32_e64 s21, s64, v30
	v_cmp_gt_i32_e64 s22, s64, v31
	v_cmp_gt_i32_e64 s23, s64, v32
	v_cmp_gt_i32_e64 s24, s64, v33
	v_cmp_gt_i32_e64 s25, s64, v34
	v_cmp_gt_i32_e64 s26, s64, v35
	v_cmp_gt_i32_e64 s27, s64, v36
	v_cmp_gt_i32_e64 s28, s64, v37
	v_cmp_gt_i32_e64 s29, s64, v38
	v_cmp_gt_i32_e64 s30, s64, v39
	v_cmp_gt_i32_e64 s31, s64, v40
	v_cmp_gt_i32_e64 s33, s64, v41
	v_cmp_gt_i32_e64 s34, s64, v42
	v_cmp_gt_i32_e64 s35, s64, v43
	v_cmp_gt_i32_e64 s36, s64, v44
	v_cmp_gt_i32_e64 s37, s64, v45
	v_cmp_gt_i32_e64 s38, s64, v46
	v_cmp_gt_i32_e64 s39, s64, v47
	v_cmp_gt_i32_e64 s40, s64, v48
	v_cmp_gt_i32_e64 s41, s64, v49
	v_cmp_gt_i32_e64 s42, s64, v50
	v_cmp_gt_i32_e64 s43, s64, v51
	v_cmp_gt_i32_e64 s44, s64, v52
	v_cmp_gt_i32_e64 s45, s64, v53
	v_cmp_gt_i32_e64 s46, s64, v54
	v_cmp_gt_i32_e64 s47, s64, v55
	v_cmp_gt_i32_e64 s48, s64, v56
	v_cmp_gt_i32_e64 s49, s64, v57
	v_cmp_gt_i32_e64 s50, s64, v58
	v_cmp_gt_i32_e64 s51, s64, v59
	v_cmp_gt_i32_e64 s52, s64, v60
	v_cmp_gt_i32_e64 s53, s64, v61
	v_cmp_gt_i32_e64 s54, s64, v62
	v_cmp_gt_i32_e64 s55, s64, v63
	v_cmp_gt_i32_e64 s56, s64, v64
	v_cmp_gt_i32_e64 s57, s64, v9
	v_cmp_gt_i32_e64 s58, s64, v8
	v_cmp_gt_i32_e64 s59, s64, v7
	v_cmp_gt_i32_e64 s60, s64, v5
	v_cmp_gt_i32_e64 s61, s64, v4
	v_cmp_gt_i32_e64 s62, s64, v3
	v_cmp_gt_i32_e64 s63, s64, v1
	v_cmp_gt_i32_e64 s64, s64, v0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v65, v0
	v_add_nc_u32_e32 v4, v65, v4
	v_add_nc_u32_e32 v6, v65, v6
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, vcc_lo
	s_and_b32 s64, s0, s64
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v0, s65, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v3, v65, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s63, s0, s63
	s_and_b32 s62, s0, s62
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, v65, v5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s64
	v_add_lshl_u32 v3, v3, s65, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v7, v65, v7
	v_add_nc_u32_e32 v8, v65, v8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s61, s0, s61
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v2, v0, s[68:71], 0 offen
	v_add_lshl_u32 v0, v4, s65, 2
	v_add_lshl_u32 v4, v6, s65, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v1, v65, v1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s62
	v_add_lshl_u32 v2, v7, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s60, s0, s60
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v1, v1, s65, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v9, v65, v9
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s61
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s59, s0, s59
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v64, v65, v64
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s63
	s_clause 0x1
	buffer_store_b32 v75, v1, s[68:71], 0 offen
	buffer_store_b32 v76, v3, s[68:71], 0 offen
	v_add_lshl_u32 v1, v5, s65, 2
	v_add_lshl_u32 v3, v8, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s58, s0, s58
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v63, v65, v63
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s59
	v_cndmask_b32_e64 v1, 0x80000000, v1, s60
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v62, v65, v62
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s58
	s_clause 0x1
	buffer_store_b32 v77, v0, s[68:71], 0 offen
	buffer_store_b32 v78, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v9, s65, 2
	v_add_lshl_u32 v1, v64, s65, 2
	s_clause 0x1
	buffer_store_b32 v79, v2, s[68:71], 0 offen
	buffer_store_b32 v80, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v63, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s57, s0, s57
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v62, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s56, s0, s56
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v61, v65, v61
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s57
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s55, s0, s55
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v60, v65, v60
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s56
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s54, s0, s54
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v59, v65, v59
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s55
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v58, v65, v58
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s54
	s_clause 0x1
	buffer_store_b32 v81, v0, s[68:71], 0 offen
	buffer_store_b32 v137, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v61, s65, 2
	v_add_lshl_u32 v1, v60, s65, 2
	s_clause 0x1
	buffer_store_b32 v138, v2, s[68:71], 0 offen
	buffer_store_b32 v139, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v59, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s53, s0, s53
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v58, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s52, s0, s52
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v57, v65, v57
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s53
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s51, s0, s51
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v56, v65, v56
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s52
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s50, s0, s50
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v55, v65, v55
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s51
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v54, v65, v54
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s50
	s_clause 0x1
	buffer_store_b32 v140, v0, s[68:71], 0 offen
	buffer_store_b32 v141, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v57, s65, 2
	v_add_lshl_u32 v1, v56, s65, 2
	s_clause 0x1
	buffer_store_b32 v142, v2, s[68:71], 0 offen
	buffer_store_b32 v143, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v55, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s49, s0, s49
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v54, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s48, s0, s48
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v53, v65, v53
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s49
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s47, s0, s47
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v52, v65, v52
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s48
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s46, s0, s46
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v51, v65, v51
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s47
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v50, v65, v50
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s46
	s_clause 0x1
	buffer_store_b32 v144, v0, s[68:71], 0 offen
	buffer_store_b32 v129, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v53, s65, 2
	v_add_lshl_u32 v1, v52, s65, 2
	s_clause 0x1
	buffer_store_b32 v130, v2, s[68:71], 0 offen
	buffer_store_b32 v131, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v51, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s45, s0, s45
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v50, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s44, s0, s44
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v49, v65, v49
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s45
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s43, s0, s43
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v48, v65, v48
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s44
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s42, s0, s42
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v47, v65, v47
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s43
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v46, v65, v46
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s42
	s_clause 0x1
	buffer_store_b32 v132, v0, s[68:71], 0 offen
	buffer_store_b32 v133, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v49, s65, 2
	v_add_lshl_u32 v1, v48, s65, 2
	s_clause 0x1
	buffer_store_b32 v134, v2, s[68:71], 0 offen
	buffer_store_b32 v135, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v47, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s41, s0, s41
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v46, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s40, s0, s40
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v45, v65, v45
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s41
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s39, s0, s39
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v44, v65, v44
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s40
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s38, s0, s38
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v43, v65, v43
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s39
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v42, v65, v42
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s38
	s_clause 0x1
	buffer_store_b32 v136, v0, s[68:71], 0 offen
	buffer_store_b32 v121, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v45, s65, 2
	v_add_lshl_u32 v1, v44, s65, 2
	s_clause 0x1
	buffer_store_b32 v122, v2, s[68:71], 0 offen
	buffer_store_b32 v123, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v43, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s37, s0, s37
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v42, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s36, s0, s36
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v41, v65, v41
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s37
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s35, s0, s35
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v40, v65, v40
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s36
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s34, s0, s34
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v39, v65, v39
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s35
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v38, v65, v38
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s34
	s_clause 0x1
	buffer_store_b32 v124, v0, s[68:71], 0 offen
	buffer_store_b32 v125, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v41, s65, 2
	v_add_lshl_u32 v1, v40, s65, 2
	s_clause 0x1
	buffer_store_b32 v126, v2, s[68:71], 0 offen
	buffer_store_b32 v127, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v39, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s33, s0, s33
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v38, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s31, s0, s31
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v37, v65, v37
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s33
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s30, s0, s30
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v36, v65, v36
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s29, s0, s29
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v35, v65, v35
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s30
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v34, v65, v34
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s29
	s_clause 0x1
	buffer_store_b32 v128, v0, s[68:71], 0 offen
	buffer_store_b32 v113, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v37, s65, 2
	v_add_lshl_u32 v1, v36, s65, 2
	s_clause 0x1
	buffer_store_b32 v114, v2, s[68:71], 0 offen
	buffer_store_b32 v115, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v35, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s28, s0, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v34, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s27, s0, s27
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v33, v65, v33
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s28
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s26, s0, s26
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v32, v65, v32
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s27
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s25, s0, s25
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v31, v65, v31
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s26
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v30, v65, v30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s25
	s_clause 0x1
	buffer_store_b32 v116, v0, s[68:71], 0 offen
	buffer_store_b32 v117, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v33, s65, 2
	v_add_lshl_u32 v1, v32, s65, 2
	s_clause 0x1
	buffer_store_b32 v118, v2, s[68:71], 0 offen
	buffer_store_b32 v119, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v31, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s24, s0, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v30, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s23, s0, s23
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v29, v65, v29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s24
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s22, s0, s22
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v28, v65, v28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s23
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s21, s0, s21
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v27, v65, v27
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s22
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v26, v65, v26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s21
	s_clause 0x1
	buffer_store_b32 v120, v0, s[68:71], 0 offen
	buffer_store_b32 v105, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v29, s65, 2
	v_add_lshl_u32 v1, v28, s65, 2
	s_clause 0x1
	buffer_store_b32 v106, v2, s[68:71], 0 offen
	buffer_store_b32 v107, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v27, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s20, s0, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v26, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s19, s0, s19
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v25, v65, v25
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s20
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s18, s0, s18
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v24, v65, v24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s17, s0, s17
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v23, v65, v23
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v22, v65, v22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s17
	s_clause 0x1
	buffer_store_b32 v108, v0, s[68:71], 0 offen
	buffer_store_b32 v109, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v25, s65, 2
	v_add_lshl_u32 v1, v24, s65, 2
	s_clause 0x1
	buffer_store_b32 v110, v2, s[68:71], 0 offen
	buffer_store_b32 v111, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v23, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s16, s0, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v22, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s15, s0, s15
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, v65, v21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s16
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s14, s0, s14
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v20, v65, v20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s15
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s13, s0, s13
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v19, v65, v19
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s14
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v18, v65, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s13
	s_clause 0x1
	buffer_store_b32 v112, v0, s[68:71], 0 offen
	buffer_store_b32 v97, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v21, s65, 2
	v_add_lshl_u32 v1, v20, s65, 2
	s_clause 0x1
	buffer_store_b32 v98, v2, s[68:71], 0 offen
	buffer_store_b32 v99, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v19, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s12, s0, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v18, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s11, s0, s11
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v17, v65, v17
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s10, s0, s10
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v16, v65, v16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s11
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s9, s0, s9
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v15, v65, v15
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s10
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v14, v65, v14
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s9
	s_clause 0x1
	buffer_store_b32 v100, v0, s[68:71], 0 offen
	buffer_store_b32 v101, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v17, s65, 2
	v_add_lshl_u32 v1, v16, s65, 2
	s_clause 0x1
	buffer_store_b32 v102, v2, s[68:71], 0 offen
	buffer_store_b32 v103, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v15, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s8, s0, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v14, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s7, s0, s7
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v13, v65, v13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s6, s0, s6
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v12, v65, v12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s7
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s5, s0, s5
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v11, v65, v11
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v10, v65, v10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	s_clause 0x1
	buffer_store_b32 v104, v0, s[68:71], 0 offen
	buffer_store_b32 v86, v1, s[68:71], 0 offen
	v_add_lshl_u32 v0, v13, s65, 2
	v_add_lshl_u32 v1, v12, s65, 2
	s_clause 0x1
	buffer_store_b32 v87, v2, s[68:71], 0 offen
	buffer_store_b32 v88, v3, s[68:71], 0 offen
	v_add_lshl_u32 v2, v11, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, s0, s4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v10, s65, 2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s3, s0, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s2, s0, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s1, s0, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	s_clause 0x4
	buffer_store_b32 v89, v0, s[68:71], 0 offen
	buffer_store_b32 v90, v1, s[68:71], 0 offen
	buffer_store_b32 v91, v2, s[68:71], 0 offen
	buffer_store_b32 v92, v3, s[68:71], 0 offen
	buffer_store_b32 v93, v4, s[68:71], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp323:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1676
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1676
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 38528
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1676
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
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
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
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
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
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
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1676
    .sgpr_count:     107
    .sgpr_spill_count: 26
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 475
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
