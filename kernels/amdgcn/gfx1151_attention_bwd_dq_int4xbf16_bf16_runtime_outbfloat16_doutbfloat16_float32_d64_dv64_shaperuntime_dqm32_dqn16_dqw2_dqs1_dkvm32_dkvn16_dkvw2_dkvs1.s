	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b64 s[34:35], s[0:1], 0x78
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v125, 5, v0
	v_and_b32_e32 v74, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x110, v0
	v_xor_b32_e32 v21, 0x198, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v172, 2, v125
	v_or_b32_e32 v173, 4, v125
	v_or_b32_e32 v174, 6, v125
	v_or_b32_e32 v175, 8, v125
	v_or_b32_e32 v176, 10, v125
	v_or_b32_e32 v177, 12, v125
	v_or_b32_e32 v251, 14, v125
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v139, 0, v21
	s_load_b128 s[40:43], s[0:1], 0x38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v140, 15, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v76, 1, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v82, 12, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[106:107], null, s34, v125, v[74:75]
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s46, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[107:108], null, s34, 6, v[106:107]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v172
	v_or_b32_e32 v3, s46, v173
	v_or_b32_e32 v4, s46, v174
	v_or_b32_e32 v5, s46, v175
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v133, s34, 1, v106
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v177
	v_or_b32_e32 v8, s46, v251
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v134, s34, 2, v106
	v_mad_u64_u32 v[108:109], null, s34, 10, v[106:107]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v135, s34, 3, v106
	v_mad_u64_u32 v[109:110], null, s34, 12, v[106:107]
	v_mad_u64_u32 v[110:111], null, s34, 14, v[106:107]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v71, 0x120, v76, 0
	v_xad_u32 v72, 0x1b0, v76, 0
	v_xad_u32 v73, 0x240, v76, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_cvt_u32_f32 s5, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v77, 0x2d0, v76, 0
	v_xad_u32 v78, 0x360, v76, 0
	v_xad_u32 v79, 0x3f0, v76, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_i32 s6, s6, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v80, 0x90, v76, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v136, 0, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
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
	s_cselect_b32 s7, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s29
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s7, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s9, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s19, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s19, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s28, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v125
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	v_or_b32_e32 v10, 18, v1
	v_or_b32_e32 v11, 20, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v12, 22, v1
	v_or_b32_e32 v13, 24, v1
	v_or_b32_e32 v14, 26, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v15, 28, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s5, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s5, s6
	s_sub_i32 s3, s4, s8
	s_add_i32 s4, s5, 1
	s_sub_i32 s7, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s4, s4, s5
	s_cselect_b32 s3, s7, s3
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s3, s5, s4
	.loc	1 123 19 is_stmt 0              ; attention_backward.py:123:19
	s_abs_i32 s50, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s56, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s51, s56
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s46, 4
	s_or_b32 s8, s46, 5
	s_or_b32 s9, s46, 6
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v6, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s3, s46, 7
	s_or_b32 s10, s46, 8
	s_or_b32 s12, s46, 9
	s_or_b32 s13, s46, 10
	s_or_b32 s14, s46, 11
	s_or_b32 s11, s46, 12
	s_or_b32 s15, s46, 13
	s_or_b32 s16, s46, 14
	s_or_b32 s17, s46, 15
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s26, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s38, s46, 16
	s_or_b32 s39, s46, 17
	s_or_b32 s57, s46, 18
	s_or_b32 s58, s46, 19
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s26, s26, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s60, s46, 20
	s_or_b32 s62, s46, 21
	s_or_b32 s64, s46, 22
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s26
	s_sub_i32 s26, 0, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s66, s46, 23
	s_or_b32 s68, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s26, s26, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s26, s44, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s81, s46, 26
	s_or_b32 s82, s46, 27
	s_or_b32 s83, s46, 28
	s_or_b32 s84, s46, 29
	s_or_b32 s85, s46, 30
	s_or_b32 s86, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v176
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s5, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s6, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s57, s30
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s58, s30
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s60, s30
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s62, s30
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s64, s30
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s66, s30
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s58, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s47, s47, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s38, s47, s34
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v1, s38, v106
	v_add_nc_u32_e32 v10, s38, v133
	v_add_nc_u32_e32 v11, s38, v134
	v_add_nc_u32_e32 v12, s38, v107
	v_add_nc_u32_e32 v13, s38, v135
	v_mad_u64_u32 v[2:3], null, s34, 18, v[1:2]
	v_lshl_add_u32 v17, s34, 4, v1
	v_add_nc_u32_e32 v14, s38, v108
	v_add_nc_u32_e32 v15, s38, v109
	v_add_nc_u32_e32 v16, s38, v110
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[3:4], null, s34, 20, v[1:2]
	v_mad_u64_u32 v[4:5], null, s34, 22, v[1:2]
	v_mad_u64_u32 v[5:6], null, s34, 24, v[1:2]
	v_mad_u64_u32 v[6:7], null, s34, 26, v[1:2]
	v_mad_u64_u32 v[7:8], null, s34, 28, v[1:2]
	v_mad_u64_u32 v[8:9], null, s34, 30, v[1:2]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x5
	buffer_load_u8 v14, v1, s[36:39], 0 offen
	buffer_load_u8 v9, v9, s[36:39], 0 offen
	buffer_load_u8 v10, v10, s[36:39], 0 offen
	buffer_load_u8 v11, v11, s[36:39], 0 offen
	buffer_load_u8 v12, v12, s[36:39], 0 offen
	buffer_load_u8 v13, v13, s[36:39], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v15, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v17, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x3
	buffer_load_u8 v15, v15, s[36:39], 0 offen
	buffer_load_u8 v17, v2, s[36:39], 0 offen
	buffer_load_u8 v18, v3, s[36:39], 0 offen
	buffer_load_u8 v4, v4, s[36:39], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	s_clause 0x5
	buffer_load_u8 v7, v2, s[36:39], 0 offen
	buffer_load_u8 v8, v3, s[36:39], 0 offen
	buffer_load_u8 v19, v1, s[36:39], 0 offen
	buffer_load_u8 v16, v16, s[36:39], 0 offen
	buffer_load_u8 v5, v5, s[36:39], 0 offen
	buffer_load_u8 v6, v6, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s47, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v2, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v138, 0, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 1, v22
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v137, 0, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	v_add_nc_u32_e32 v3, s35, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v23, s35, v3
	v_add_nc_u32_e32 v22, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v1, vcc_lo
	v_lshl_add_u32 v1, s35, 5, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v30, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v33, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v37, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v23
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v2, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v3 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v48, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(15)
	ds_store_b8 v136, v14
	s_waitcnt vmcnt(14)
	ds_store_b8 v136, v9 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v136, v15 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v136, v17 offset:576
	ds_store_b8 v137, v10
	ds_store_b8 v137, v11 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v137, v18 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v4 offset:576
	ds_store_b8 v138, v12
	ds_store_b8 v138, v13 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v7 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v8 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v19
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v16 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v139, v5 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v139, v6 offset:576
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v50, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	v_lshlrev_b32_e32 v1, 1, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v54, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v58, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v20
	v_lshlrev_b32_e32 v1, 1, v3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v60, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v62, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v64, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v42, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s69, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v65, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s68, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v68, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v45, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v49, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v52, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v53, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v57, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v61, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v3, v3, s35, 1
	v_cndmask_b32_e32 v63, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v66, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v20, v20, s35, 1
	v_cndmask_b32_e32 v67, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v69, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v20, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v13, v21, s[36:39], 0 offen
	buffer_load_u16 v14, v30, s[36:39], 0 offen
	buffer_load_u16 v15, v37, s[36:39], 0 offen
	buffer_load_u16 v16, v41, s[36:39], 0 offen
	buffer_load_u16 v6, v47, s[36:39], 0 offen
	buffer_load_u16 v7, v50, s[36:39], 0 offen
	buffer_load_u16 v8, v58, s[36:39], 0 offen
	buffer_load_u16 v9, v62, s[36:39], 0 offen
	buffer_load_u16 v17, v42, s[36:39], 0 offen
	buffer_load_u16 v18, v44, s[36:39], 0 offen
	buffer_load_u16 v19, v45, s[36:39], 0 offen
	buffer_load_u16 v20, v51, s[36:39], 0 offen
	buffer_load_u16 v26, v33, s[36:39], 0 offen
	buffer_load_u16 v27, v40, s[36:39], 0 offen
	buffer_load_u16 v28, v36, s[36:39], 0 offen
	buffer_load_u16 v29, v46, s[36:39], 0 offen
	buffer_load_u16 v31, v65, s[36:39], 0 offen
	buffer_load_u16 v32, v68, s[36:39], 0 offen
	buffer_load_u16 v38, v49, s[36:39], 0 offen
	buffer_load_u16 v39, v52, s[36:39], 0 offen
	buffer_load_u16 v22, v53, s[36:39], 0 offen
	buffer_load_u16 v23, v61, s[36:39], 0 offen
	buffer_load_u16 v24, v66, s[36:39], 0 offen
	buffer_load_u16 v25, v67, s[36:39], 0 offen
	buffer_load_u16 v12, v48, s[36:39], 0 offen
	buffer_load_u16 v11, v54, s[36:39], 0 offen
	buffer_load_u16 v10, v60, s[36:39], 0 offen
	buffer_load_u16 v5, v64, s[36:39], 0 offen
	buffer_load_u16 v2, v57, s[36:39], 0 offen
	buffer_load_u16 v1, v63, s[36:39], 0 offen
	buffer_load_u16 v35, v69, s[36:39], 0 offen
	buffer_load_u16 v34, v70, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_u16 v4, v21, s[36:39], 0 offen
	buffer_load_u16 v3, v30, s[36:39], 0 offen
	buffer_load_u16 v30, v37, s[36:39], 0 offen
	buffer_load_u16 v21, v41, s[36:39], 0 offen
	buffer_load_u16 v43, v42, s[36:39], 0 offen
	buffer_load_u16 v42, v44, s[36:39], 0 offen
	buffer_load_u16 v45, v45, s[36:39], 0 offen
	buffer_load_u16 v44, v51, s[36:39], 0 offen
	buffer_load_u16 v56, v36, s[36:39], 0 offen
	buffer_load_u16 v51, v49, s[36:39], 0 offen
	buffer_load_u16 v59, v46, s[36:39], 0 offen
	buffer_load_u16 v55, v52, s[36:39], 0 offen
	buffer_load_u16 v52, v47, s[36:39], 0 offen
	buffer_load_u16 v49, v53, s[36:39], 0 offen
	buffer_load_u16 v47, v48, s[36:39], 0 offen
	buffer_load_u16 v46, v57, s[36:39], 0 offen
	buffer_load_u16 v57, v50, s[36:39], 0 offen
	buffer_load_u16 v53, v61, s[36:39], 0 offen
	buffer_load_u16 v50, v54, s[36:39], 0 offen
	buffer_load_u16 v48, v63, s[36:39], 0 offen
	buffer_load_u16 v61, v58, s[36:39], 0 offen
	buffer_load_u16 v58, v66, s[36:39], 0 offen
	buffer_load_u16 v54, v60, s[36:39], 0 offen
	buffer_load_u16 v37, v69, s[36:39], 0 offen
	buffer_load_u16 v63, v62, s[36:39], 0 offen
	buffer_load_u16 v62, v67, s[36:39], 0 offen
	buffer_load_u16 v60, v64, s[36:39], 0 offen
	buffer_load_u16 v36, v70, s[36:39], 0 offen
	buffer_load_u16 v66, v33, s[36:39], 0 offen
	buffer_load_u16 v67, v40, s[36:39], 0 offen
	buffer_load_u16 v64, v68, s[36:39], 0 offen
	buffer_load_u16 v65, v65, s[36:39], 0 offen
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v143, 16, v4
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v144, 16, v3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v75, 1, v82
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v145, 16, v30
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v41, 5, v140
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v98, 16, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v147, 16, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v120, 16, v6
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v150, 16, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v102, 16, v27
	v_lshlrev_b32_e32 v100, 16, v20
	v_lshlrev_b32_e32 v121, 16, v7
	v_lshlrev_b32_e32 v122, 16, v8
	v_lshlrev_b32_e32 v123, 16, v9
	v_lshlrev_b32_e32 v38, 16, v38
	v_lshlrev_b32_e32 v39, 16, v39
	v_lshlrev_b32_e32 v124, 16, v22
	v_lshlrev_b32_e32 v126, 16, v23
	v_lshlrev_b32_e32 v127, 16, v24
	v_lshlrev_b32_e32 v128, 16, v25
	v_lshlrev_b32_e32 v129, 16, v12
	v_lshlrev_b32_e32 v130, 16, v11
	v_lshlrev_b32_e32 v131, 16, v10
	v_lshlrev_b32_e32 v141, 16, v2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v33, 32, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v142, 16, v1
	v_lshlrev_b32_e32 v34, 16, v34
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v148, 16, v42
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v86, 1, v33
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v70, 4, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v146, 16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v76, v86, v140
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v70, v41, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v92, s47, v76
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v76, s46, v76
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v81, 0, v70
	v_xad_u32 v88, v70, 8, 0
	v_xad_u32 v89, v70, 16, 0
	scratch_store_b32 off, v92, off offset:56 ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v92, 1, v92
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v76
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v70, v70, 24, 0
	ds_load_b64 v[111:112], v81
	ds_load_b64 v[113:114], v88
	ds_load_b64 v[115:116], v89
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[117:118], v70
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v89, 16, v16
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v76, 0x80000000, v92, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v151, v136, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v70, 16, v13
	v_lshlrev_b32_e32 v88, 16, v15
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v76, v76, s[24:27], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v71, v30
	ds_store_b16 v71, v45 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v71, v56 offset:2048
	s_waitcnt vmcnt(23)
	ds_store_b16 v71, v51 offset:3072
	ds_store_b16 v72, v21
	ds_store_b16 v72, v44 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v72, v59 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b16 v72, v55 offset:3072
	s_waitcnt vmcnt(20)
	ds_store_b16 v73, v52
	s_waitcnt vmcnt(19)
	ds_store_b16 v73, v49 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v73, v47 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v73, v46 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v77, v57
	s_waitcnt vmcnt(15)
	ds_store_b16 v77, v53 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v77, v50 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v77, v48 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v78, v61
	s_waitcnt vmcnt(11)
	ds_store_b16 v78, v58 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v78, v54 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v78, v37 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v79, v63
	s_waitcnt vmcnt(7)
	ds_store_b16 v79, v62 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v79, v60 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v79, v36 offset:3072
	ds_store_b16 v151, v4
	ds_store_b16 v151, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v151, v66 offset:2048
	ds_store_b16 v80, v3
	ds_store_b16 v80, v42 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v80, v67 offset:2048
	s_waitcnt vmcnt(2)
	ds_store_b16 v80, v64 offset:3072
	s_waitcnt vmcnt(1)
	ds_store_b16 v151, v65 offset:3072
	v_lshlrev_b32_e32 v58, 16, v58
	v_lshlrev_b32_e32 v62, 16, v62
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v42, 16, v66
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v127, v58
	v_mul_f32_e32 v155, v128, v62
	v_mul_f32_e32 v152, v124, v49
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v66, 16, v50
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v88, v145
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v105, 16, v31
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v40, 4, v0
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v154, v127, v58 :: v_dual_lshlrev_b32 v103, 16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v155, v128, v62 :: v_dual_and_b32 v68, 0x70, v40
	v_fmac_f32_e32 v152, v124, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_dpp v62, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v52, 16, v52
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v44, 16, v56
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v62, v62, v62 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v56, 16, v65
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v50, v88, v145
.Ltmp13:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v156, v129, v47 :: v_dual_lshlrev_b32 v97, 16, v17
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v62, v62, v62 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v43, 16, v67
	v_lshlrev_b32_e32 v67, 16, v54
	v_lshlrev_b32_e32 v77, 16, v46
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v70, v143
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v99, 16, v19
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v72, v102, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v132, 16, v5
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v160, v141, v77
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v69, 6, v33
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v46, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v81, 16, v14
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v83, 7, v140
	s_waitcnt lgkmcnt(0)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v46, v70, v143
	v_fmac_f32_e32 v72, v102, v43
.Ltmp19:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
	v_or3_b32 v69, v68, v69, v83
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v101, 16, v26
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v91, v69, 16, 0
	v_xad_u32 v93, v69, 32, 0
	v_xad_u32 v94, v69, 48, 0
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v95, v69, 64, 0
	v_xad_u32 v92, 0x50, v69, 0
	v_xad_u32 v96, 0x60, v69, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v119, 16, v32
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v73, 16, v60
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v103, v44
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v51, 16, v51
	v_lshlrev_b32_e32 v55, 16, v55
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v88, v49, -1, -1 op_sel:[1,0]
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v90, 0, v69
	v_xad_u32 v69, 0x70, v69, 0
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v53, 16, v53
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v88
.Ltmp32:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v48
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v48, v81, v144
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v103, v44
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v153, v126, v53
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v49, 31
.Ltmp36:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v104, 16, v29
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[1:4], v90
	ds_load_b128 v[5:8], v91
	ds_load_b128 v[9:12], v93
	ds_load_b128 v[13:16], v94
	ds_load_b128 v[17:20], v95
	ds_load_b128 v[21:24], v92
	ds_load_b128 v[25:28], v96
	ds_load_b128 v[29:32], v69
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v90, v105, v56
	v_mul_f32_e32 v96, v122, v61
	v_mul_f32_e32 v94, v120, v52
	v_dual_mul_f32 v69, v100, v150 :: v_dual_mul_f32 v92, v38, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v90, v90 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v96, v96 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v94, v94 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v92, v92 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v90, v105, v56
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v60, v97, v147
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v96, v122, v61 :: v_dual_mul_f32 v71, v101, v42
	v_fmac_f32_e32 v94, v120, v52
	v_fmac_f32_e32 v69, v100, v150
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v60, v60 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_lshlrev_b32_e32 v85, 1, v33
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v96, v96 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v92, v38, v51
	v_fmac_f32_e32 v60, v97, v147
.Ltmp45:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v54, v89, v146
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v71, v101, v42
	v_add_f32_dpp v42, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v60, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v90, v90 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v58, -1, -1 op_sel:[1,0]
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v54, v89, v146
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v62, -1, -1 op_sel:[1,0]
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v149, 16, v45
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v58, v97 :: v_dual_lshlrev_b32 v45, 16, v59
.Ltmp55:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v93, v39, v55
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v65, v99, v149
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v58, 31
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v62, v62, v101
	v_add_f32_dpp v43, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v92, v92 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v93, v93 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v65, v99, v149
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v60, -1, -1 op_sel:[1,0]
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v93, v39, v55
	v_fmac_f32_e32 v153, v126, v53
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v60, v60, v99
	v_add_f32_dpp v55, v93, v93 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v80, v104, v45
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v93, v54, -1, -1 op_sel:[1,0]
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v56, v94, v94 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s39, v60, 31
	v_mov_b32_e32 v60, s37
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v156, v129, v47
	v_add_f32_dpp v47, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v69, v42, -1, -1 op_sel:[1,0]
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v54, v54, v93
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v42, v69
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v54, 31
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v80, v104, v45
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v42, 31
.Ltmp76:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v59, 16, v64
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v94, v55, -1, -1 op_sel:[1,0]
	v_and_b32_e32 v84, 1, v0
	v_permlanex16_b32 v89, v50, -1, -1 op_sel:[1,0]
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v91, v119, v59
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v55, v55, v94
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v50, v50, v89
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v91, v91 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v48, v81, v144
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v50, 31
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v91, v119, v59
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v90, v51, -1, -1 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v91, v91 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v91, v52, -1, -1 op_sel:[1,0]
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v51, v51, v90
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v52, v52, v91
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v47, -1, -1 op_sel:[1,0]
	v_readlane_b32 s16, v51, 31
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s17, v52, 31
	v_dual_mov_b32 v52, s15 :: v_dual_lshlrev_b32 v63, 16, v63
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v92, v53, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v54, s17 :: v_dual_mul_f32 v151, v123, v63
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v53, v53, v92
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v70, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v47, v47, v80 :: v_dual_add_nc_u32 v68, 0, v85
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v53, 31
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v151, v123, v63
	v_add_f32_dpp v63, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v53, s16
	v_permlanex16_b32 v100, v61, -1, -1 op_sel:[1,0]
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v46, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v63, v63, v63 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v43, v43, v70
	v_add_f32_e32 v61, v61, v100
.Ltmp103:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v64, v98, v148
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v63, v63, v63 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v43, 31
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v102, v63, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v40, 6, v84
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v64, v98, v148
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v47, 31
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v63, v63, v102
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v87, 0, v40
	v_permlanex16_b32 v79, v46, -1, -1 op_sel:[1,0]
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v38, -1, -1 op_sel:[1,0]
	v_readlane_b32 s26, v55, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v49, s12 :: v_dual_add_f32 v46, v46, v79
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v38, v38, v64
	v_add_f32_dpp v39, v48, v48 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v44, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v38, 31
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v44, v44, v71
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v45, -1, -1 op_sel:[1,0]
	v_readlane_b32 s11, v46, 31
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v44, 31
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v45, v72 :: v_dual_mov_b32 v42, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v65, v39, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v81, v48, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v44, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_readlane_b32 s10, v45, 31
	v_mov_b32_e32 v45, s8
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v39, v65
	v_add_f32_e32 v48, v48, v81
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v46, s9 :: v_dual_mov_b32 v47, s10
	v_mov_b32_e32 v51, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s6, v39, 31
	v_readlane_b32 s13, v48, 31
	v_dual_mov_b32 v48, s11 :: v_dual_lshlrev_b32 v57, 16, v57
	v_mov_b32_e32 v55, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v43, s6 :: v_dual_mov_b32 v50, s13
.Ltmp126:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v95, v121, v57
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s41, v62, 31
	v_readlane_b32 s42, v63, 31
	v_mov_b32_dpp v95, v95 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s40, v61, 31
	v_mov_b32_dpp v38, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v71, s41 :: v_dual_mov_b32 v72, s42
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v95, v121, v57 :: v_dual_mov_b32 v70, s40
.Ltmp129:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v158, v131, v67
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v95, v95 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v95, v56, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v56, v56, v95
	v_fmac_f32_e32 v158, v131, v67
	v_fmac_f32_e32 v38, v141, v77
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v56, 31
	v_mov_b32_e32 v56, s25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v98, v59, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v96, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v58, s27 :: v_dual_add_f32 v59, v59, v98
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v57, v57, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v59, 31
	v_readlane_b32 s36, v57, 31
	v_mov_b32_e32 v57, s26
	ds_store_b128 v68, v[42:45]
	ds_store_b128 v68, v[46:49] offset:16
	ds_store_b128 v68, v[50:53] offset:32
	ds_store_b128 v68, v[54:57] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v87
	ds_load_b128 v[54:57], v87 offset:16
	ds_load_b128 v[46:49], v87 offset:32
	ds_load_b128 v[42:45], v87 offset:48
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v36, 16, v36
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v59, s36
	v_mov_b32_e32 v61, s38
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	s_mov_b32 s38, 0
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v50, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v179, v64
.Ltmp148:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v157, v130, v66
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v187, v55
	v_permlanex16_b32 v77, v52, -1, -1 op_sel:[1,0]
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v50, v50, v67 :: v_dual_mov_b32 v189, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v99, v42 :: v_dual_add_f32 v52, v52, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_readlane_b32 s5, v50, 31
	v_mov_b32_e32 v101, v44
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v157, v130, v66
.Ltmp153:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v66, v34, v36 :: v_dual_mul_f32 v53, v35, v37
	v_mul_f32_e32 v159, v132, v73
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v52, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v186, v54
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v66, v34, v36 :: v_dual_fmac_f32 v53, v35, v37
	v_add_f32_dpp v35, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v159, v132, v73
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v38, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v73, v51, -1, -1 op_sel:[1,0]
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v51, v51, v73
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v50, v35, -1, -1 op_sel:[1,0]
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v51, 31
	v_permlanex16_b32 v53, v38, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v52, v37, -1, -1 op_sel:[1,0]
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v35, v50
.Ltmp164:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v161, v142, v78 :: v_dual_mov_b32 v188, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v53 :: v_dual_add_f32 v37, v37, v52
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v35, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v39, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v35, s6
	v_readlane_b32 s12, v38, 31
	v_readlane_b32 s11, v37, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v50, s9 :: v_dual_fmac_f32 v39, v142, v78
	v_dual_mov_b32 v190, v57 :: v_dual_mov_b32 v53, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v52, s11
	v_mov_b32_e32 v196, v46
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v122, v48
	v_mov_b32_e32 v182, v49
	v_mov_b32_e32 v100, v43
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v34, v34, v39
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v102, v45
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v34, 31
	v_mov_b32_e32 v34, s5
.Ltmp173:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s5, s31, 15
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v51, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v37, s8
.Ltmp175:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s6, s5, 31
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s6, s6, 28
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v51
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v122, v122 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_readlane_b32 s10, v36, 31
	v_mov_b32_e32 v36, s7
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v51, s10
	ds_store_b128 v68, v[58:61]
	ds_store_b128 v68, v[69:72] offset:16
	ds_store_b128 v68, v[34:37] offset:32
	ds_store_b128 v68, v[50:53] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v87
	ds_load_b128 v[66:69], v87 offset:16
	ds_load_b128 v[58:61], v87 offset:32
	ds_load_b128 v[50:53], v87 offset:48
	v_mov_b32_e32 v124, v62
	v_mov_b32_e32 v178, v63
	v_mov_b32_e32 v180, v65
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp180:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s5, s5, s6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s50, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s39, s5, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v181, v70
	v_dual_mov_b32 v183, v71 :: v_dual_mov_b32 v184, v72
	v_mov_b32_e32 v185, v73
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v191, v66 :: v_dual_mov_b32 v192, v67
	v_mov_b32_e32 v193, v68
	v_mov_b32_e32 v195, v69
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v123, v58 :: v_dual_mov_b32 v120, v59
	v_mov_b32_e32 v121, v60
	v_mov_b32_e32 v97, v61
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v103, v50
	v_mov_b32_e32 v105, v51
	v_dual_mov_b32 v119, v52 :: v_dual_mov_b32 v98, v53
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v97, v97 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v103, v103 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v105, v105 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v98, v98 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s46, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s8, s46, s21
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, s23
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s8, s8, s23
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s31, s5
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s7, s5, 31
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s7, s8, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s38, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s39, s39, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x3
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b64 s[48:49], s[0:1], 0x30
	s_load_b128 s[52:55], s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v34, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s56, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v34
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s9, s46, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 32
	s_min_i32 s9, s31, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 28
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s9, s9, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s39, s39, s9
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s9, s6, s51
	s_xor_b32 s7, s7, s8
	s_sub_i32 s8, s50, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s51
	s_cmp_ge_u32 s8, s51
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s51
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v35, s46, v34
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s15, s19, s29
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	s_clause 0x1
	s_load_b128 s[60:63], s[0:1], 0x48
	s_load_b64 s[56:57], s[0:1], 0x10
	s_sub_i32 s14, s6, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v36, 16, v35
	v_or_b32_e32 v37, 20, v35
	v_or_b32_e32 v38, 4, v35
	v_or_b32_e32 v39, 24, v35
	v_or_b32_e32 v77, 8, v35
	v_or_b32_e32 v78, 28, v35
	v_or_b32_e32 v79, 12, v35
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v35
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v152, s23, v35
	v_mov_b16_e32 v35.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v76.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s77, s14, s15
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s14, s52, 0x3fb8aa3b
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v153, s23, v38
	v_add_nc_u32_e32 v154, s23, v77
	v_add_nc_u32_e32 v155, s23, v79
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v160, s14, v35
	v_subrev_nc_u32_e32 v35, s21, v152
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v156, s23, v36
	v_add_nc_u32_e32 v157, s23, v37
	v_add_nc_u32_e32 v158, s23, v39
	v_add_nc_u32_e32 v159, s23, v78
	scratch_store_b32 off, v35, off         ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v153
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s76, s[0:1], 0x90
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v150, v0, 4, 1
	v_and_b32_e32 v88, 16, v0
	v_or_b32_e32 v161, v41, v75
	scratch_store_b32 off, v35, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v154
	v_mul_lo_u32 v75, s55, v34
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s53
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s42, s28, s54
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v194, 48, v0
	scratch_store_b32 off, v35, off offset:8 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v155
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v151, 2, v150
	v_or_b32_e32 v149, 4, v150
	v_or_b32_e32 v148, 6, v150
	v_or_b32_e32 v147, 8, v150
	scratch_store_b32 off, v35, off offset:12 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v156
	v_or_b32_e32 v146, 10, v150
	v_or_b32_e32 v145, 12, v150
	v_or_b32_e32 v144, 14, v150
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, s30, v38
	scratch_store_b32 off, v35, off offset:16 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v157
	v_cmp_gt_i32_e64 s8, s30, v77
	v_cmp_gt_i32_e64 s9, s30, v79
	v_cmp_gt_i32_e64 s10, s30, v36
	v_cmp_gt_i32_e64 s11, s30, v37
	scratch_store_b32 off, v35, off offset:20 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v158
	v_cmp_gt_i32_e64 s12, s30, v39
	v_cmp_gt_i32_e64 s13, s30, v78
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s42, s42, s19
	v_add_nc_u32_e32 v132, s22, v158
	scratch_store_b32 off, v35, off offset:24 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v35, s21, v159
	v_add_nc_u32_e32 v141, s22, v159
	v_xor_b32_e32 v89, 8, v161
	v_xor_b32_e32 v90, 16, v161
	v_xor_b32_e32 v91, 24, v161
	scratch_store_b32 off, v35, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v35, s22, v152
	v_cmp_eq_u32_e64 s14, 0, v33
	v_and_b32_e32 v104, 14, v0
	v_lshlrev_b32_e32 v93, 3, v140
	v_lshrrev_b32_e32 v95, 2, v88
	scratch_store_b32 off, v35, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v35, s22, v153
	v_lshrrev_b32_e32 v92, 4, v33
	v_lshlrev_b32_e32 v96, 2, v0
	v_lshrrev_b32_e32 v94, 1, v88
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s38, s39
	scratch_store_b32 off, v35, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v35, s22, v154
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s77, s77, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s54, -1, 0
	s_cmp_ge_i32 s38, s39
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s55, s46
	scratch_store_b32 off, v35, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v35, s22, v155
	scratch_store_b32 off, v35, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v35, s22, v156
	scratch_store_b32 off, v35, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v35, s22, v157
	scratch_store_b32 off, v35, off offset:52 ; 4-byte Folded Spill
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_lshlrev_b32 v33, 1, v0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[76:77], null, s76, v140, v[75:76]
	v_cndmask_b32_e64 v34, 0x104, 0, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_and_b32 v33, 60, v33
	v_dual_mov_b32 v220, 0xff800000 :: v_dual_lshlrev_b32 v35, 1, v104
	v_lshlrev_b32_e32 v36, 5, v84
	v_mad_u64_u32 v[77:78], null, s55, 12, v[76:77]
	v_xor_b32_e32 v197, v34, v33
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_lshlrev_b32 v33, 2, v194
	v_or3_b32 v198, v95, v92, v93
	v_mov_b32_e32 v237, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v34, v197, v40
	v_lshl_or_b32 v33, v104, 7, v33
	v_mad_u64_u32 v[78:79], null, s55, 20, v[76:77]
	v_mad_u64_u32 v[79:80], null, s55, 24, v[76:77]
	v_mad_u64_u32 v[80:81], null, s55, 28, v[76:77]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v81, v33, v36, v35
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_and_b32 v33, 52, v96
	v_and_or_b32 v40, v0, 2, v94
	v_xor_b32_e32 v35, 0x208, v34
	v_xor_b32_e32 v36, 0x410, v34
	v_lshl_or_b32 v33, v82, 5, v33
	v_xor_b32_e32 v34, 0x618, v34
	v_xor_b32_e32 v37, 4, v81
	v_xor_b32_e32 v38, 8, v81
	v_xor_b32_e32 v39, 12, v81
	v_or3_b32 v199, v40, v33, v125
	v_xor_b32_e32 v41, 16, v81
	v_xor_b32_e32 v126, 20, v81
	v_xor_b32_e32 v127, 24, v81
	v_xor_b32_e32 v40, 28, v81
	v_xor_b32_e32 v128, 0x90, v198
	v_xor_b32_e32 v129, 0x120, v198
	v_xor_b32_e32 v130, 0x1b0, v198
	v_xor_b32_e32 v131, 16, v199
	v_xor_b32_e32 v142, 32, v199
	v_xor_b32_e32 v143, 48, v199
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v200, 0, v35
	v_mov_b32_e32 v217, 0xff800000
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v201, 0, v36
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_add_nc_u32 v202, 0, v34
	v_dual_mov_b32 v234, 0 :: v_dual_add_nc_u32 v203, 0, v37
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v38
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v205, 0, v39
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_add_nc_u32 v206, 0, v41
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v207, 0, v126
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v208, 0, v127
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v209, 0, v40
	v_add_nc_u32_e32 v210, 0, v128
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v129
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v212, 0, v130
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v131
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v214, 0, v142
	v_add_nc_u32_e32 v215, 0, v143
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	v_mov_b32_e32 v229, 0xff800000
	v_mov_b32_e32 v227, 0xff800000
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_and_b32 s65, s41, 0xffff
	s_mov_b32 s64, s40
	s_and_b32 s73, s45, 0xffff
	s_mov_b32 s72, s44
	s_add_i32 s50, s42, s43
	s_and_b32 s69, s49, 0xffff
	s_mov_b32 s68, s48
	s_mov_b32 s66, s70
	s_mov_b32 s67, s71
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	s_mov_b32 s51, s38
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s15, s51, s76
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v127, s55, 3, v76
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s15, s50, s15
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v250, v35
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v129, s15, v80, 1
	v_add_lshl_u32 v130, s15, v77, 1
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v35, v41
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v41, s55, 2, v76
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v127, s15, v127, 1
	v_add_lshl_u32 v128, s15, v79, 1
	v_cndmask_b32_e64 v129, 0x80000000, v129, s58
	v_cndmask_b32_e64 v130, 0x80000000, v130, s53
	v_add_lshl_u32 v41, s15, v41, 1
	v_cndmask_b32_e64 v127, 0x80000000, v127, s59
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v248, v36
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v40, s55, 4, v76
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v126, s15, v78, 1
	v_cndmask_b32_e64 v128, 0x80000000, v128, s78
	s_clause 0x1
	buffer_load_u16 v129, v129, s[68:71], 0 offen
	buffer_load_u16 v130, v130, s[68:71], 0 offen
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v247, v37
	v_cvt_f32_i32_e32 v37, v39
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v39, s15, v76, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s79
	s_clause 0x1
	buffer_load_u16 v127, v127, s[68:71], 0 offen
	buffer_load_u16 v128, v128, s[68:71], 0 offen
	v_add_lshl_u32 v40, s15, v40, 1
	v_cndmask_b32_e64 v126, 0x80000000, v126, s80
	v_cndmask_b32_e64 v39, 0x80000000, v39, s81
	s_clause 0x1
	buffer_load_u16 v41, v41, s[68:71], 0 offen
	buffer_load_u16 v126, v126, s[68:71], 0 offen
	v_cndmask_b32_e64 v40, 0x80000000, v40, s82
	s_clause 0x1
	buffer_load_u16 v39, v39, s[68:71], 0 offen
	buffer_load_u16 v40, v40, s[68:71], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v36, v160, v36
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s51, s51, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v34, v160, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v37, v160, v37
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v162, v160, v250 :: v_dual_lshlrev_b32 v129, 16, v129
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v130, 16, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v129, 0xff800000, v129, s58
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v128, 16, v128
	v_cndmask_b32_e64 v130, 0xff800000, v130, s53
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s23, 0xff800000, v129
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v41, 16, v41
	v_cndmask_b32_e64 v128, 0xff800000, v128, s78
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v126, 16, v126
	v_cndmask_b32_e64 v127, 0xff800000, v127, s59
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s22, 0xff800000, v130
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v41, 0xff800000, v41, s79
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	v_cndmask_b32_e64 v126, 0xff800000, v126, s80
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v41
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v39, 0xff800000, v39, s81
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v131, v87, v197
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v40, 0xff800000, v40, s82
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v126
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s20, s79, s18
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	v_mul_f32_e32 v142, 0x3fb8aa3b, v39
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v39
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v143, 0x3fb8aa3b, v40
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v40
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s16, s80, s16
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v127
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s21, s81, s15
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v131, v142, v143 offset1:32
	v_dual_mul_f32 v142, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v143, 0x3fb8aa3b, v126
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s17, s82, vcc_lo
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v128
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s19, s59, s18
	s_and_b32 s18, s53, s22
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v200, v142, v143 offset1:32
	v_dual_mul_f32 v142, 0x3fb8aa3b, v127 :: v_dual_mul_f32 v143, 0x3fb8aa3b, v128
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s78, vcc_lo
	s_and_b32 vcc_lo, s58, s23
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s51, s39
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v201, v142, v143 offset1:32
	v_dual_mul_f32 v142, 0x3fb8aa3b, v130 :: v_dual_mul_f32 v143, 0x3fb8aa3b, v129
	ds_store_2addr_b32 v202, v142, v143 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v163, v203
	ds_load_b32 v164, v204
	v_mov_b16_e64 v143.l, 0
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v142.h, v249.l
	v_mov_b16_e64 v143.h, v240.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v142.l, v143.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v163, v162, v142
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v142.h, v246.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v162, v160, v248 :: v_dual_add_nc_u32 v165, 0, v81
	.loc	1 255 21                        ; attention_backward.py:255:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v164, v162, v142
	.loc	1 255 31 is_stmt 0              ; attention_backward.py:255:31
	ds_load_b32 v166, v205
	ds_load_b32 v167, v206
	ds_load_b32 v168, v207
	ds_load_b32 v169, v208
	ds_load_b32 v170, v209
	ds_load_b32 v171, v165
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e64 v142.h, v245.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v162, v160, v247
	v_mul_f32_e32 v38, v160, v38
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v166, v162, v142
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v142.h, v244.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v171, v34, v143
	v_dual_fmac_f32 v167, v38, v142 :: v_dual_mul_f32 v34, v160, v35
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v143.h, v241.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v35, 0, 1, s21
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v38.h, v243.l
	v_mov_b16_e64 v38.l, v143.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v170, v34, v143
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v34, 0, 1, s17
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v168, v37, v38
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v37.h, v242.l
	v_mov_b16_e64 v37.l, v143.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v34.l, 8, v34.l
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v34.h, 8, v35.l
	v_add_nc_u32_e32 v35, 0, v198
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v169, v36, v37
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v36, 0, 1, s20
	ds_store_b16 v35, v34
	v_cndmask_b32_e64 v35, 0, 1, s15
	v_or_b16 v34.h, v36.l, v34.h
	v_cndmask_b32_e64 v36, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s19
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, vcc_lo
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v35.l, v36.l, v35.l
	ds_store_b16_d16_hi v210, v34
	ds_store_b16 v211, v34
	ds_store_b16 v212, v35
	v_add_nc_u32_e32 v35, 0, v199
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v35 offset:64
	ds_load_u8_d16 v35, v213
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v215 offset:64
	ds_load_u8_d16 v36, v214 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v213 offset:64
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	ds_load_u8_d16 v34, v214
	ds_load_u8_d16 v37, v215
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v38, 0xff800000, v171, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v165, v38
	v_cndmask_b32_e64 v38, 0xff800000, v163, s22
	ds_store_b32 v203, v38
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v38, 0xff800000, v164, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v204, v38
	v_cndmask_b32_e64 v37, 0xff800000, v166, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v205, v37
	v_cndmask_b32_e64 v34, 0xff800000, v167, s22
	ds_store_b32 v206, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v168, s22
	ds_store_b32 v207, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v169, s22
	ds_store_b32 v208, v34
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v34.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v170, s22
	ds_store_b32 v209, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v131 offset1:32
	ds_load_2addr_b32 v[162:163], v200 offset1:32
	ds_load_2addr_b32 v[164:165], v201 offset1:32
	ds_load_2addr_b32 v[166:167], v202 offset1:32
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v36, v34
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v34, v34
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v38, v162, v162
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v40, v164, v164
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v126, v166, v166
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
.Ltmp193:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v37, v216, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v216, v37, v36
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v34, 0, v34, s21
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s21, 0xff800000, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_max_f32 v37, v236, v236
.Ltmp200:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v36, v37, v36 :: v_dual_mov_b32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_sub_f32 v37, v236, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp203:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v37
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v37, 0, v37, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v34, v239, v37 :: v_dual_mov_b32 v37, v162
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	v_dual_max_f32 v37, v38, v37 :: v_dual_mov_b32 v236, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
.Ltmp212:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v38, v217, v217 :: v_dual_mov_b32 v239, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v217, v38, v37
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v162, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s20
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s20, 0xff800000, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v38, v39
.Ltmp219:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v38, v235, v235
	v_dual_max_f32 v38, v38, v37 :: v_dual_mov_b32 v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v235, v38
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v39, 0, v39, s20
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v238, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v39, v164 :: v_dual_mov_b32 v238, v37
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v39, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v235, v38 :: v_dual_mov_b32 v40, v39
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v218, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v218, v40, v39
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v164, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v40, v41
.Ltmp238:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v40, v233, v233
	v_dual_max_f32 v40, v40, v39 :: v_dual_mov_b32 v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v41, v233, v40
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v41, 0, v41, s19
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v237, v41
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v41, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v237, v39
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v41, v41, v41
	v_mov_b32_e32 v233, v40
	v_max_f32_e32 v41, v126, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v126, v41
	v_mov_b32_dpp v126, v126 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	v_max_f32_e32 v41, v41, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v126, v41
	v_mov_b32_dpp v126, v126 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	v_max_f32_e32 v41, v41, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v126, v41
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	v_dual_max_f32 v41, v41, v126 :: v_dual_max_f32 v126, v219, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v219, v126, v41
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v126, v166, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v126, v126
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v126, 0, v126, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v126
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v126, v126, v127
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v126, v126, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v126
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v126, v126, v127
.Ltmp257:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v127, v231, v231
	v_dual_max_f32 v240, v127, v41 :: v_dual_mov_b32 v41, v126
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v41, v126, v41 :: v_dual_sub_f32 v126, v231, v240
	v_mov_b32_e32 v231, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp261:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v126, v126
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v126, 0, v126, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v41, v234, v126 :: v_dual_mov_b32 v126, v35
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v126, v126 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	v_max_f32_e32 v126, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	v_max_f32_e32 v126, v126, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	v_max_f32_e32 v126, v126, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	v_dual_max_f32 v126, v126, v127 :: v_dual_max_f32 v127, v220, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v220, v127, v126
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v35
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v127
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v35
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v127
.Ltmp277:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v127, v229, v229
	v_max_f32_e32 v241, v127, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v126, v35
.Ltmp279:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v163, v163
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v126 :: v_dual_sub_f32 v126, v229, v241
.Ltmp282:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v126, 0, v126, s17
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v35, v232, v126 :: v_dual_mov_b32 v126, v163
	v_mov_b32_e32 v234, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v126, v126 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v127, v126
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v126, v126, v127 :: v_dual_mov_b32 v229, v241
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v126, v126, v127 :: v_dual_max_f32 v127, v221, v221
	v_mov_b32_e32 v232, v35
.Ltmp291:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v221, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v127, v163, v221
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v127, 0, v127, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v227
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
.Ltmp298:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v128, v227, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v243, v128, v126 :: v_dual_mov_b32 v126, v127
.Ltmp299:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp300:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v242, v127, v126
.Ltmp301:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v126, v227, v243 :: v_dual_max_f32 v127, v165, v165
	v_mov_b32_e32 v227, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v126, v126
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v126, 0, v126, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v242, v230, v126
.Ltmp302:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v126, v165
	v_mov_b32_e32 v230, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v126, v126 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp303:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v127, v126
.Ltmp304:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp305:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp306:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp307:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp308:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp309:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp310:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v127, v222, v222
	v_max_f32_e32 v222, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v127, v165, v222
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v127, 0, v127, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v224
.Ltmp311:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp313:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
.Ltmp315:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp316:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
.Ltmp317:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v128, v224, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v245, v128, v126 :: v_dual_mov_b32 v126, v127
.Ltmp318:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp319:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v244, v127, v126
.Ltmp320:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v126, v224, v245 :: v_dual_max_f32 v127, v167, v167
	v_mov_b32_e32 v224, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v126, v126
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v126, 0, v126, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v244, v228, v126
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v126, v167
	v_mov_b32_e32 v228, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v126, v126 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v126, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v127, v126
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v126, v127
.Ltmp329:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v127, v223, v223
	v_max_f32_e32 v223, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v127, v167, v223
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v127, 0, v127, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v226
.Ltmp330:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp331:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp332:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp333:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
.Ltmp334:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp335:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v127, v127, v128 :: v_dual_max_f32 v128, v226, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp336:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v247, v128, v126 :: v_dual_mov_b32 v126, v127
.Ltmp337:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp338:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v246, v127, v126
.Ltmp339:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v126, v226, v247
	v_mov_b32_e32 v226, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v126, v126
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v126, 0, v126, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v246, v225, v126
	v_mov_b32_e32 v225, v246
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s51, v125
	v_or_b32_e32 v35, s51, v172
	v_or_b32_e32 v36, s51, v173
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s22, s51, s77
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v37, s51, v174
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s51, v176
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v35
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v35, s51, v177
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s23, s22, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v36
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v36, s51, v251
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v34
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v34, s23, v106
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v38, s51, v175
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s20, s31, v35
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v35, s23, v133
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v37
	v_cmp_gt_i32_e64 s21, s31, v36
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v36, s23, v134
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v38
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v37, s23, v107
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v38, s23, v135
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v39, s23, v108
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v40, s23, v109
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v41, s23, v110
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_add_nc_u32 v127, 0, v161
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v247, s51, v140
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x7
	buffer_load_u8 v126, v34, s[64:67], 0 offen
	buffer_load_u8 v35, v35, s[64:67], 0 offen
	buffer_load_u8 v36, v36, s[64:67], 0 offen
	buffer_load_u8 v37, v37, s[64:67], 0 offen
	buffer_load_u8 v38, v38, s[64:67], 0 offen
	buffer_load_u8 v39, v39, s[64:67], 0 offen
	buffer_load_u8 v40, v40, s[64:67], 0 offen
	buffer_load_u8 v41, v41, s[64:67], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v34, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v247
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v136, v126
	s_waitcnt vmcnt(6)
	ds_store_b8 v136, v35 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v137, v36
	s_waitcnt vmcnt(4)
	ds_store_b8 v137, v37 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v138, v38
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v39 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v139, v40
	s_waitcnt vmcnt(0)
	ds_store_b8 v139, v41 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[162:163], v127
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	v_add_nc_u32_e32 v128, 0, v89
	v_add_nc_u32_e32 v41, 0, v90
	v_add_nc_u32_e32 v126, 0, v91
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s81, s6, s15
	s_and_b32 s79, s7, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[164:165], v128
	ds_load_b64 v[166:167], v41
	ds_load_b64 v[168:169], v126
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s59, s8, s15
	s_and_b32 s53, s9, s15
	s_and_b32 s82, s10, s15
	s_and_b32 s80, s11, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[162:163], v[111:112], v[34:41] neg_lo:[1,1,0]
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s78, s12, s15
	s_and_b32 s58, s13, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[164:165], v[113:114], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[166:167], v[115:116], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[168:169], v[117:118], v[34:41] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v247, v152
	v_cmp_le_i32_e64 s15, v247, v153
	v_cmp_le_i32_e64 s16, v247, v154
	v_cmp_le_i32_e64 s17, v247, v155
	v_cmp_le_i32_e64 s18, v247, v156
	v_cmp_le_i32_e64 s19, v247, v157
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s23, vcc_lo, s81
	s_and_b32 s15, s15, s79
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s20, v247, v158
	v_cmp_le_i32_e64 s21, v247, v159
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s16, s16, s59
	s_and_b32 s17, s17, s53
	s_and_not1_b32 s24, s81, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s25, s79, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s82
	s_and_b32 s19, s19, s80
	s_or_b32 s81, s24, s23
	s_or_b32 s79, s25, s15
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s23, s53, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s20, s20, s78
	s_and_b32 s21, s21, s58
	s_or_b32 s59, s15, s16
	s_or_b32 s53, s23, s17
	s_and_not1_b32 s15, s82, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s80, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s80, s17, s18
	s_and_not1_b32 s15, s78, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s58, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s78, s15, s16
	s_or_b32 s58, s17, s18
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v126, s51, v150
	v_or_b32_e32 v127, s51, v151
	v_add_lshl_u32 v129, s22, v150, 1
	v_or_b32_e32 v128, s51, v149
	v_or_b32_e32 v130, s51, v148
	v_cmp_gt_i32_e32 vcc_lo, s31, v126
	v_or_b32_e32 v131, s51, v147
	v_add_nc_u32_e32 v162, 4, v129
	v_add_nc_u32_e32 v166, 24, v129
	v_or_b32_e32 v142, s51, v146
	v_cndmask_b32_e32 v126, 0x80000000, v129, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v127
	v_or_b32_e32 v143, s51, v145
	v_add_nc_u32_e32 v165, 20, v129
	v_or_b32_e32 v164, s51, v144
	v_dual_cndmask_b32 v127, 0x80000000, v162 :: v_dual_add_nc_u32 v162, 12, v129
	v_add_nc_u32_e32 v163, 8, v129
	v_cmp_gt_i32_e32 vcc_lo, s31, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v128, 0x80000000, v163 :: v_dual_add_nc_u32 v163, 16, v129
	v_cmp_gt_i32_e32 vcc_lo, s31, v130
	v_dual_cndmask_b32 v130, 0x80000000, v162 :: v_dual_add_nc_u32 v129, 28, v129
	v_cmp_gt_i32_e32 vcc_lo, s31, v131
	v_cndmask_b32_e32 v131, 0x80000000, v163, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v142
	v_cndmask_b32_e32 v142, 0x80000000, v165, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v143
	v_cndmask_b32_e32 v143, 0x80000000, v166, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v164
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	s_clause 0x7
	buffer_load_u16 v240, v126, s[72:75], 0 offen
	buffer_load_u16 v249, v127, s[72:75], 0 offen
	buffer_load_u16 v246, v128, s[72:75], 0 offen
	buffer_load_u16 v245, v130, s[72:75], 0 offen
	buffer_load_u16 v244, v131, s[72:75], 0 offen
	buffer_load_u16 v243, v142, s[72:75], 0 offen
	buffer_load_u16 v242, v143, s[72:75], 0 offen
	buffer_load_u16 v241, v129, s[72:75], 0 offen
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v126, off, off         ; 4-byte Folded Reload
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s28, v247, v132
	v_cmp_le_i32_e64 s29, v247, v141
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v247, v126
	scratch_load_b32 v126, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v247, v126
	scratch_load_b32 v126, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v247, v126
	scratch_load_b32 v126, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v247, v126
	scratch_load_b32 v126, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v247, v126
	scratch_load_b32 v126, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v247, v126
	scratch_load_b32 v126, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v247, v126
	scratch_load_b32 v126, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s20, s20, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s78
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v247, v126
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v126, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s21, s21, s29
	s_and_b32 s21, s21, s58
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v247, v126
	scratch_load_b32 v126, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s22, vcc_lo, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s81
	s_and_b32 s22, s22, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v247, v126
	scratch_load_b32 v126, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s23, s81, exec_lo
	s_and_b32 s15, s15, s79
	s_or_b32 s81, s23, s22
	s_and_b32 s15, s15, exec_lo
	s_and_not1_b32 s22, s53, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v247, v126
	scratch_load_b32 v126, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s16, s16, s24
	s_and_not1_b32 s24, s79, exec_lo
	s_and_b32 s16, s16, s59
	s_or_b32 s79, s24, s15
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s15, s16
	s_and_not1_b32 s15, s82, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v247, v126
	scratch_load_b32 v126, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s53
	s_and_b32 s17, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s53, s22, s17
	s_and_not1_b32 s17, s80, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v247, v126
	scratch_load_b32 v126, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s82
	s_and_b32 s16, s18, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s82, s15, s16
	s_and_not1_b32 s15, s78, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_or_b32 s78, s15, s16
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v247, v126
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s19, s19, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s80
	s_and_b32 s18, s19, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s80, s17, s18
	s_and_not1_b32 s17, s58, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s58, s17, s18
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v240, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v40, 0xff800000
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v38, 0xff800000
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_mov_b32 v36, 0xff800000
.LBB0_12:                               ; %Flow290
	s_load_b32 s53, s[0:1], 0x74
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v34
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s46, v74
.Ltmp340:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v76, v62, v124 :: v_dual_add_f32 v77, v63, v178
.Ltmp341:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v62, 0, 32, s0
.Ltmp342:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v64, v179 :: v_dual_add_f32 v79, v65, v180
.Ltmp343:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v33
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v33, 0, 0x42000000, s0
	v_cmp_gt_f32_e64 s15, 0x800000, v39
	v_cndmask_b32_e64 v64, 0, 32, s1
	v_ldexp_f32 v62, v34, v62
	v_cmp_gt_f32_e64 s0, 0x800000, v41
	v_cndmask_b32_e64 v63, 0, 0x42000000, s1
	v_cndmask_b32_e64 v65, 0, 0x42000000, s15
	v_cndmask_b32_e64 v80, 0, 32, s15
	v_ldexp_f32 v64, v37, v64
	v_log_f32_e32 v62, v62
	v_cmp_gt_f32_e64 s1, 0x800000, v35
	v_cndmask_b32_e64 v81, 0, 0x42000000, s0
	v_cndmask_b32_e64 v87, 0, 32, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v242
	v_cmp_gt_f32_e64 s15, 0x800000, v246
.Ltmp344:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v48, v48, v122 :: v_dual_add_f32 v59, v59, v120
	v_dual_add_f32 v49, v49, v182 :: v_dual_add_f32 v58, v58, v123
.Ltmp345:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v80, v39, v80
	v_log_f32_e32 v64, v64
	v_cndmask_b32_e64 v122, 0, 0x42000000, s1
	v_cndmask_b32_e64 v123, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v244
	v_cndmask_b32_e64 v126, 0, 32, s0
	v_cndmask_b32_e64 v130, 0, 32, s15
	v_log_f32_e32 v80, v80
	v_ldexp_f32 v87, v41, v87
	v_cndmask_b32_e64 v128, 0, 32, s1
	v_ldexp_f32 v126, v242, v126
	v_ldexp_f32 v130, v246, v130
	v_dual_sub_f32 v33, v62, v33 :: v_dual_sub_f32 v62, v64, v63
	v_cndmask_b32_e64 v124, 0, 0x42000000, s0
	v_ldexp_f32 v123, v35, v123
	v_ldexp_f32 v128, v244, v128
	v_log_f32_e32 v87, v87
	v_log_f32_e32 v126, v126
	v_log_f32_e32 v130, v130
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v33, v36, v33 :: v_dual_add_f32 v38, v38, v62
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v34
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v129, 0, 0x42000000, s15
	v_log_f32_e32 v123, v123
	v_log_f32_e32 v128, v128
	v_sub_f32_e32 v63, v80, v65
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v36, 0, v33, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v37
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v127, 0, 0x42000000, s1
	v_sub_f32_e32 v64, v87, v81
	v_sub_f32_e32 v80, v126, v124
	v_dual_sub_f32 v87, v130, v129 :: v_dual_add_f32 v40, v40, v63
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v38, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v39
.Ltmp346:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v60, v60, v121 :: v_dual_sub_f32 v65, v123, v122
.Ltmp347:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v81, v128, v127
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v62, v240, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v38, 0, v40, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v63, v241, v65 :: v_dual_add_f32 v64, v243, v80
	v_dual_add_f32 v65, v245, v81 :: v_dual_add_f32 v80, v247, v87
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v33, 5, v0
	v_cndmask_b32_e64 v39, 0, v62, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v35
.Ltmp348:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v61, v61, v97 :: v_dual_and_b32 v40, 28, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v100, v43, v100 :: v_dual_and_b32 v33, 0x60, v33
.Ltmp349:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v62, 0, v63, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v242
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v34, v194, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp350:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v102, v45, v102 :: v_dual_add_nc_u32 v33, 0, v33
.Ltmp351:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v63, 0, v64, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v35, v33, v86, v82
.Ltmp352:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v120, v50, v103 :: v_dual_add_nc_u32 v33, v33, v40
.Ltmp353:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_barrier
	v_cndmask_b32_e64 v64, 0, v65, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v246
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s14, vcc_lo
.Ltmp354:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v101, v44, v101 :: v_dual_mov_b32 v40, 0
	s_mov_b32 s51, 0x31027000
.Ltmp355:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v65, 0, v80, s0
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[62:65] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v178, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[62:65] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	v_add_lshl_u32 v34, s47, v74, 2
.Ltmp356:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v99, v42, v99
	v_dual_mov_b32 v36, v40 :: v_dual_lshlrev_b32 v65, 2, v74
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp357:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_and_b32 s17, s61, 0xffff
	s_mov_b32 s16, s60
	s_mov_b32 s18, s50
	s_mov_b32 s19, s51
.Ltmp358:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v54, v54, v186 :: v_dual_add_f32 v55, v55, v187
	v_dual_add_f32 v56, v56, v188 :: v_dual_add_f32 v57, v57, v190
	v_dual_add_f32 v70, v70, v181 :: v_dual_add_f32 v71, v71, v183
	v_dual_add_f32 v72, v72, v184 :: v_dual_add_f32 v73, v73, v185
	v_dual_add_f32 v66, v66, v191 :: v_dual_add_f32 v67, v67, v192
.Ltmp359:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v33, 0, v65
.Ltmp360:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v68, v193 :: v_dual_add_f32 v69, v69, v195
	v_dual_add_f32 v121, v51, v105 :: v_dual_add_f32 v122, v52, v119
	v_dual_add_f32 v123, v53, v98 :: v_dual_mov_b32 v38, v40
	v_dual_add_f32 v46, v46, v196 :: v_dual_add_f32 v47, v47, v189
.Ltmp361:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[76:79]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[54:57] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[58:61] offset:80
	ds_store_b128 v40, v[99:102] offset:96
	ds_store_b128 v40, v[120:123] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	s_and_b32 s17, s63, 0xffff
	s_mov_b32 s16, s62
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s54
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[76:79]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[54:57] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[58:61] offset:80
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	ds_store_b128 v40, v[99:102] offset:96
	ds_store_b128 v40, v[120:123] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v64, 0x5410 :: v_dual_lshlrev_b32 v33, 1, v74
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_mad_u64_u32 v[119:120], null, s76, v140, v[75:76]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshlrev_b32_e32 v34, 2, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 1, v33
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s53, v33
	v_cndmask_b32_e64 v33, 0x90, 0, s14
	v_or_b32_e32 v186, v92, v65
	v_cmp_eq_u32_e32 vcc_lo, 0, v88
	v_mov_b32_e32 v65, 0x7632
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[120:121], null, s55, 12, v[119:120]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v36, 0, v34, v85
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s53, v35
	v_xor_b32_e32 v33, v33, v93
	v_mul_u32_u24_e32 v35, 0x48, v104
	v_dual_cndmask_b32 v64, 0x1054, v64 :: v_dual_lshlrev_b32 v37, 5, v82
	v_dual_cndmask_b32 v65, 0x3276, v65 :: v_dual_and_b32 v38, 52, v96
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_mov_b32 v192, v178 :: v_dual_and_b32 v39, 2, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v179, v36
	v_or_b32_e32 v183, v33, v95
	v_lshl_or_b32 v33, v84, 2, v35
	v_or3_b32 v37, v37, v38, v39
	v_lshl_or_b32 v64, v64, 8, v64
	v_lshl_or_b32 v65, v65, 8, v65
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[121:122], null, s55, 20, v[119:120]
	v_mad_u64_u32 v[122:123], null, s55, 24, v[119:120]
	v_mad_u64_u32 v[123:124], null, s55, 28, v[119:120]
	v_or3_b32 v124, v33, v94, v92
	v_or3_b32 v184, v95, v92, v93
	v_or3_b32 v185, v37, v94, v125
	v_or_b32_e32 v187, v83, v34
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mov_b32 v191, v160 :: v_dual_and_b32 v64, 0x540054, v64
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v65, 0x760076, v65
	v_xor_b32_e32 v35, 0x120, v183
	v_xor_b32_e32 v36, 0x240, v183
	v_xor_b32_e32 v33, 0x360, v183
	v_xor_b32_e32 v40, 16, v124
	v_xor_b32_e32 v41, 32, v124
	v_xor_b32_e32 v42, 48, v124
	v_xor_b32_e32 v43, 64, v124
	v_xor_b32_e32 v38, 0x50, v124
	v_xor_b32_e32 v39, 0x60, v124
	v_xor_b32_e32 v44, 0x70, v124
	v_xor_b32_e32 v37, 0x90, v184
	v_xor_b32_e32 v45, 0x120, v184
	v_xor_b32_e32 v46, 0x1b0, v184
	v_xor_b32_e32 v47, 16, v185
	v_xor_b32_e32 v48, 32, v185
	v_xor_b32_e32 v49, 48, v185
	v_xor_b32_e32 v50, 0x84, v186
	v_xor_b32_e32 v51, 0x108, v186
	v_xor_b32_e32 v52, 0x18c, v186
	v_xor_b32_e32 v53, 0x210, v186
	v_xor_b32_e32 v54, 0x294, v186
	v_xor_b32_e32 v55, 0x318, v186
	v_xor_b32_e32 v56, 0x39c, v186
	v_xor_b32_e32 v57, 0x420, v186
	v_xor_b32_e32 v58, 0x4a4, v186
	v_xor_b32_e32 v59, 0x528, v186
	v_xor_b32_e32 v60, 0x5ac, v186
	v_xor_b32_e32 v61, 0x630, v186
	v_xor_b32_e32 v62, 0x6b4, v186
	v_xor_b32_e32 v63, 0x738, v186
	v_xor_b32_e32 v34, 0x7bc, v186
	v_xor_b32_e32 v66, 4, v187
	v_xor_b32_e32 v67, 8, v187
	v_xor_b32_e32 v68, 12, v187
	v_xor_b32_e32 v69, 16, v187
	v_xor_b32_e32 v70, 20, v187
	v_xor_b32_e32 v71, 24, v187
	v_xor_b32_e32 v72, 28, v187
	v_xor_b32_e32 v73, 32, v187
	v_xor_b32_e32 v74, 36, v187
	v_xor_b32_e32 v75, 40, v187
	v_xor_b32_e32 v76, 44, v187
	v_xor_b32_e32 v77, 48, v187
	v_lshl_or_b32 v64, v64, 4, v64
	v_lshl_or_b32 v65, v65, 4, v65
	v_xor_b32_e32 v78, 52, v187
	v_xor_b32_e32 v79, 56, v187
	v_xor_b32_e32 v80, 60, v187
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v180, s55, 2, v119
	v_lshl_add_u32 v181, s55, 3, v119
	v_lshl_add_u32 v182, s55, 4, v119
	v_and_b32_e32 v188, 0x5040504, v64
	v_and_b32_e32 v189, 0x7060706, v65
	v_lshl_add_u32 v190, v140, 1, 0
	v_add_nc_u32_e32 v193, 0, v89
	v_add_nc_u32_e32 v194, 0, v90
	v_add_nc_u32_e32 v195, 0, v91
	v_add_nc_u32_e32 v196, 0, v35
	v_dual_mov_b32 v64, v162 :: v_dual_add_nc_u32 v197, 0, v36
	v_add_nc_u32_e32 v198, 0, v33
	v_add_nc_u32_e32 v199, 0, v40
	v_add_nc_u32_e32 v200, 0, v41
	v_add_nc_u32_e32 v201, 0, v42
	v_add_nc_u32_e32 v202, 0, v43
	v_add_nc_u32_e32 v203, 0, v38
	v_add_nc_u32_e32 v204, 0, v39
	v_add_nc_u32_e32 v205, 0, v44
	v_add_nc_u32_e32 v206, 0, v37
	v_dual_mov_b32 v42, v162 :: v_dual_add_nc_u32 v207, 0, v45
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v208, 0, v46
	v_dual_mov_b32 v44, v162 :: v_dual_add_nc_u32 v209, 0, v47
	v_dual_mov_b32 v43, v162 :: v_dual_add_nc_u32 v210, 0, v48
	v_dual_mov_b32 v46, v162 :: v_dual_add_nc_u32 v211, 0, v49
	v_dual_mov_b32 v45, v162 :: v_dual_add_nc_u32 v212, 0, v50
	v_dual_mov_b32 v48, v162 :: v_dual_add_nc_u32 v213, 0, v51
	v_dual_mov_b32 v47, v162 :: v_dual_add_nc_u32 v214, 0, v52
	v_add_nc_u32_e32 v215, 0, v53
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v216, 0, v54
	v_dual_mov_b32 v36, v162 :: v_dual_add_nc_u32 v217, 0, v55
	v_dual_mov_b32 v35, v162 :: v_dual_add_nc_u32 v218, 0, v56
	v_dual_mov_b32 v38, v162 :: v_dual_add_nc_u32 v219, 0, v57
	v_dual_mov_b32 v37, v162 :: v_dual_add_nc_u32 v220, 0, v58
	v_dual_mov_b32 v40, v162 :: v_dual_add_nc_u32 v221, 0, v59
	v_dual_mov_b32 v39, v162 :: v_dual_add_nc_u32 v222, 0, v60
	v_add_nc_u32_e32 v223, 0, v61
	v_add_nc_u32_e32 v224, 0, v62
	v_add_nc_u32_e32 v225, 0, v63
	v_add_nc_u32_e32 v226, 0, v34
	v_add_nc_u32_e32 v227, 0, v66
	v_add_nc_u32_e32 v228, 0, v67
	v_add_nc_u32_e32 v229, 0, v68
	v_add_nc_u32_e32 v230, 0, v69
	v_add_nc_u32_e32 v231, 0, v70
	v_add_nc_u32_e32 v232, 0, v71
	v_add_nc_u32_e32 v233, 0, v72
	v_add_nc_u32_e32 v234, 0, v73
	v_add_nc_u32_e32 v235, 0, v74
	v_add_nc_u32_e32 v236, 0, v75
	v_add_nc_u32_e32 v237, 0, v76
	v_add_nc_u32_e32 v238, 0, v77
	v_add_nc_u32_e32 v239, 0, v78
	v_add_nc_u32_e32 v240, 0, v79
	v_add_nc_u32_e32 v241, 0, v80
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, v162
	v_mov_b32_e32 v59, v162
	v_mov_b32_e32 v60, v162
	v_mov_b32_e32 v61, v162
	v_mov_b32_e32 v62, v162
	v_mov_b32_e32 v63, v162
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, v162
	v_mov_b32_e32 v51, v162
	v_mov_b32_e32 v52, v162
	v_mov_b32_e32 v53, v162
	v_mov_b32_e32 v54, v162
	v_mov_b32_e32 v55, v162
	v_mov_b32_e32 v56, v162
	v_mov_b32_e32 v34, v162
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s29, s42, s43
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s30, 0x76543210
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v65, v74, 0, 8
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v104.h, v87.l
	v_mov_b16_e32 v103.h, v88.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v126.h, v85.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v82.h, v99.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v74.l, v65.l
	v_bfe_i32 v65, v81, 0, 8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v91.h, v89.l
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v90.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v90.h, v91.l
	v_mov_b16_e32 v105.h, v86.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v81.l, v65.l
	v_bfe_i32 v65, v80, 0, 8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v91.l, v90.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v84.h, v96.l
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v99.h, v90.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v104.l, v90.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v80.l, v65.l
	v_bfe_i32 v65, v79, 0, 8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v83.h, v98.l
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v129.h, v90.l
	v_mov_b16_e64 v130.h, v90.l
	v_mov_b16_e64 v142.h, v90.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v79.l, v65.l
	v_bfe_i32 v65, v78, 0, 8
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v143.h, v90.l
	v_mov_b16_e64 v131.h, v90.l
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v103.l, v90.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v74.h, v79.l, 15
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v78.l, v65.l
	v_bfe_i32 v65, v77, 0, 8
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v81.l
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e32 v77.h, v90.l
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s15, 7, v74.h
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v105.l, v90.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v100.l, v65.l
	v_bfe_i32 v65, v76, 0, 8
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v99.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v80.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v126.l, v90.l
	v_mov_b16_e32 v127.l, v90.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v101.l, v65.l
	v_bfe_i32 v65, v75, 0, 8
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v129.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v79.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v75.l, v78.l, 15
	v_and_b16 v76.l, v101.l, 15
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v102.l, v65.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v67, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v69.h, v94.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.h, v102.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v87, v160, v65
	v_cvt_f32_i32_e32 v65, v68
	v_mul_f32_e32 v85, v191, v66
	v_cvt_f32_i32_e32 v68, v71
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v130.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v78.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v88, v160, v65
	v_cvt_f32_i32_e32 v65, v70
	v_mul_f32_e32 v71, v191, v68
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v70.h, v92.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v92, 15, v81
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v89, v160, v65 :: v_dual_and_b32 v94, 15, v79
	v_cvt_f32_i32_e32 v65, v72
	v_cvt_f32_i32_e32 v72, v73
	v_mul_f32_e32 v86, v191, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v67.h, v95.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v95, 15, v78
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v73, v160, v65
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v65.l, v81.l, 15
	v_and_b16 v65.h, v80.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v131.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v100.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s18, 7, v76.l
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	v_cmp_lt_u16_e64 s14, 7, v65.h
	v_cmp_lt_u16_e64 s19, 7, v76.h
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v65, -16, v92
	v_or_b32_e32 v76, -16, v94
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v96, 15, v100
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v142.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v101.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s16, 7, v75.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v163, -16, v95
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v65, v92, v65, vcc_lo
	v_cndmask_b32_e64 v76, v94, v76, s15
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v66.h, v97.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v68.h, v93.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v75.h, v100.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v143.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v102.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v92, v95, v163, s16
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v81.l
	v_cmp_gt_i16_e64 s16, 0, v78.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v78, -16, v99
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v93, 15, v80
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v98, 15, v102
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v97, 15, v101
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v77.l, v77.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s17, 7, v75.h
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v164, -16, v96
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v78, v99, v78, vcc_lo
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v75, -16, v93
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v65, v65, v91
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v166, -16, v98
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v104
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v165, -16, v97
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v75, v93, v75, s14
	v_cndmask_b32_e64 v93, v96, v164, s17
	v_cndmask_b32_e64 v95, v98, v166, s19
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s14, 0, v80.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v94, v97, v165, s18
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s15, 0, v79.l
	v_cmp_gt_i16_e64 s17, 0, v100.l
	v_cmp_gt_i16_e64 s18, 0, v101.l
	v_cmp_gt_i16_e64 s19, 0, v102.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v79, -16, v129
	v_or_b32_e32 v80, -16, v130
	v_or_b32_e32 v96, -16, v142
	v_or_b32_e32 v97, -16, v143
	v_or_b32_e32 v98, -16, v77
	v_or_b32_e32 v81, -16, v131
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v79, v129, v79, s14
	v_cndmask_b32_e64 v80, v130, v80, s15
	v_cndmask_b32_e64 v96, v142, v96, s17
	v_cndmask_b32_e64 v97, v143, v97, s18
	v_cndmask_b32_e64 v77, v77, v98, s19
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v127.h, v84.l
	v_mov_b16_e64 v128.l, v90.l
	v_mov_b16_e64 v128.h, v83.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v81, v131, v81, s16
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v94, v94
	v_mul_f32_e32 v78, v78, v91
	v_dual_mul_f32 v75, v75, v103 :: v_dual_mul_f32 v80, v80, v104
	v_mul_f32_e32 v79, v79, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v91, v92, v105 :: v_dual_mul_f32 v94, v94, v127
	v_mul_f32_e32 v92, v93, v126
	v_dual_mul_f32 v93, v96, v126 :: v_dual_mul_f32 v96, v97, v127
	v_mul_f32_e32 v77, v77, v128
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v97, 0, v65, s0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v65.l, 4, v74.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v81, v81, v105
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v98, 0, v80, s1
	v_cndmask_b32_e64 v100, 0, v77, s1
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v77.h, v90.l
	.loc	1 305 30 is_stmt 0              ; attention_backward.py:305:30
	v_and_b16 v77.l, v65.l, 15
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v65.l, v74.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v80, 15, v74
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v74.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v78, 0, v78, s1
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s14, 7, v65.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v65, -16, v77
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v74, -16, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v99, 0, v81, s1
	v_cndmask_b32_e64 v75, 0, v75, s0
	v_cndmask_b32_e64 v79, 0, v79, s1
	v_cndmask_b32_e64 v76, 0, v76, s0
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v74, v80, v74, s14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v80.h, v90.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v65, v77, v65, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v91, 0, v91, s0
	v_cndmask_b32_e64 v92, 0, v92, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v74, v74
	v_mul_f32_e32 v95, v95, v128
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v93, 0, v93, s1
	v_cndmask_b32_e64 v94, 0, v94, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v74, v90, v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v96, 0, v96, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v65, v90, v65
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v95, 0, v95, s0
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s14, s38, s76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v74, 0, v74, s0
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s14, s29, s14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v65, 0, v65, s1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v82.l, v90.l
	v_mov_b16_e32 v83.l, v90.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v77.l, v74.h
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v66.l, v90.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v80.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v84.l, v90.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v77, 1, v77
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v67.l, v90.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v80, 1, v80
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v69.l, v90.l
	v_mov_b16_e32 v68.l, v90.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v77, v74, v77, 0x7fff
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v70.l, v90.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v80, v65, v80, 0x7fff
	v_bfe_u32 v65, v97, 16, 1
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v72, v191, v72
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s64, s38, 1
	s_or_b32 s63, s38, 2
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v80.h, 0x7fff, v80.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v65, v97, v65, 0x7fff
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s62, s38, 3
	s_or_b32 s61, s38, 4
	s_or_b32 s59, s38, 5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v80.l, 0x7fff, v77.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v97, s14, v123, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s58, s38, 6
	s_or_b32 s55, s38, 7
	s_or_b32 s28, s38, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v81.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v78, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v97, 0x80000000, v97, s65
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s27, s38, 9
	s_or_b32 s26, s38, 10
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v78, v65, 0x7fff
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s25, s38, 11
	s_or_b32 s24, s38, 12
	s_or_b32 s23, s38, 13
	s_or_b32 s22, s38, 14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v81.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v75, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s21, s38, 15
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v165, v162
	v_mov_b32_e32 v167, v162
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v75, v65, 0x7fff
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v169, v162
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v78.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v79, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v79, v65, 0x7fff
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 342 32                        ; attention_backward.py:342:32
	buffer_load_u16 v97, v97, s[48:51], 0 offen
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v164, v162
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v78.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v166, v162
	v_mov_b32_e32 v168, v162
	v_mov_b32_e32 v163, v162
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v76, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v98, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_add3_u32 v65, v98, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v91, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v65, v91, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v91, s14, v180, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v76.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v91, 0x80000000, v91, s68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v99, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	buffer_load_u16 v91, v91, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v76.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_add3_u32 v65, v92, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v92, s14, v181, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v77.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v92, 0x80000000, v92, s66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v93, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v93, s14, v120, 1
	buffer_load_u16 v92, v92, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v77.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v94, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v93, 0x80000000, v93, s60
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v94, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v94, s14, v182, 1
	buffer_load_u16 v93, v93, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v74.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v96, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v94, 0x80000000, v94, s71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v96, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v96, s14, v122, 1
	buffer_load_u16 v94, v94, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v74.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v95, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v96, 0x80000000, v96, s67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v95, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v95, s14, v121, 1
	buffer_load_u16 v96, v96, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v75.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v95, 0x80000000, v95, s69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v100, v65, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	buffer_load_u16 v95, v95, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v75.h, 0x7fff, v65.h, vcc_lo
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v65, s14, v119, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s70
	buffer_load_u16 v65, v65, s[48:51], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v65.h, 0xff80, v94.l, s71
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v94, 0, v183
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b16 v65.l, 0xff80, v65.l, s70
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v94, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v90.h, v65.l
	v_mov_b16_e32 v65.l, v90.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v90
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b16 v65.h, 0xff80, v95.l, s69
	v_cndmask_b16 v65.l, 0xff80, v91.l, s68
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s15, s70, s14
	s_and_b32 s16, s71, vcc_lo
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v196, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v90.h, v65.l
	v_mov_b16_e32 v65.l, v90.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v90
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b16 v65.h, 0xff80, v96.l, s67
	v_cndmask_b16 v65.l, 0xff80, v92.l, s66
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s17, s68, s14
	s_and_b32 s18, s69, vcc_lo
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v197, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v90.h, v65.l
	v_mov_b16_e32 v65.l, v90.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v90
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b16 v65.h, 0xff80, v97.l, s65
	v_cndmask_b16 v65.l, 0xff80, v93.l, s60
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s19, s66, s14
	s_and_b32 s20, s67, vcc_lo
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v198, v65
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e32 v90.h, v65.l
	v_mov_b16_e32 v65.l, v90.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v90
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v65, 0, v124
	.loc	1 342 32                        ; attention_backward.py:342:32
	ds_load_u16 v93, v199
	ds_load_u16 v94, v65
	ds_load_u16 v95, v201
	ds_load_u16 v96, v200
	ds_load_u16 v97, v203
	ds_load_u16 v98, v202
	ds_load_u16 v99, v205
	ds_load_u16 v100, v204
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v65, 0, 1, s16
	v_cndmask_b32_e64 v90, 0, 1, s15
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s14, s60, s14
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s60, s65, vcc_lo
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s38, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.l, v90.l, v65.l
	v_add_nc_u32_e32 v90, 0, v184
	ds_store_b16 v90, v65
	v_cndmask_b32_e64 v65, 0, 1, s18
	v_cndmask_b32_e64 v90, 0, 1, s17
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v65.l, v90.l, v65.l
	v_cndmask_b32_e64 v90, 0, 1, s19
	ds_store_b16 v206, v65
	v_cndmask_b32_e64 v65, 0, 1, s20
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v65.l, v90.l, v65.l
	v_cndmask_b32_e64 v90, 0, 1, s14
	ds_store_b16 v207, v65
	v_cndmask_b32_e64 v65, 0, 1, s60
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v65.l, v90.l, v65.l
	v_add_nc_u32_e32 v90, 0, v185
	ds_store_b16 v208, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v65, v90
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v90 offset:64
	ds_load_u8_d16 v90, v209
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v90, v209 offset:64
	ds_load_u8_d16 v91, v210
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v91, v210 offset:64
	ds_load_u8_d16 v92, v211
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v92, v211 offset:64
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v65.l
	v_and_b16 v65.l, 1, v90.l
	v_cmp_eq_u16_e64 s14, 1, v65.l
	v_and_b16 v65.l, 1, v91.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s15, 1, v65.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v65.l, 1, v92.l
	v_cmp_eq_u16_e64 s16, 1, v65.l
	v_and_b16 v65.l, 1, v65.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v65.l
	v_and_b16 v65.l, 1, v90.h
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v90, 16, v93
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s18, 1, v65.l
	v_and_b16 v65.l, 1, v91.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v90, 0x3fb8aa3b, v90
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s19, 1, v65.l
	v_and_b16 v65.l, 1, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v90, v85, v82 :: v_dual_lshlrev_b32 v85, 16, v95
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s20, 1, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_sub_f32 v82, v90, v192 :: v_dual_lshlrev_b32 v65, 16, v94
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v85, 0x3fb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v85, v86, v66
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v65, 0x3fb8aa3b, v65 :: v_dual_sub_f32 v66, v85, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v65, v87, v83
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v83, 16, v96
	v_lshlrev_b32_e32 v85, 16, v97
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_sub_f32_e32 v65, v65, v178
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_mul_f32_e32 v83, 0x3fb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, 0x3fb8aa3b, v85
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v83, v88, v84 :: v_dual_lshlrev_b32 v84, 16, v98
	v_fmac_f32_e32 v85, v71, v67
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v71, 16, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v84, 0x3fb8aa3b, v84
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v67, v85, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v71, 0x3fb8aa3b, v71 :: v_dual_fmac_f32 v84, v89, v69
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v71, v73, v70
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v73, 0, v65, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_dual_sub_f32 v69, v84, v178 :: v_dual_lshlrev_b32 v84, 16, v99
	v_sub_f32_e32 v70, v71, v178
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v69, v69
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_mul_f32_e32 v84, 0x3fb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v86, 0, v67, s18
	.loc	1 343 21 is_stmt 1              ; attention_backward.py:343:21
	v_dual_fmac_f32 v84, v72, v68 :: v_dual_sub_f32 v83, v83, v178
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v82, 0, v71, s14
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s64, s31
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v68, v84, v192
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v72, v83
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v84, 0, v66, s16
	v_cndmask_b32_e64 v85, 0, v69, s17
	v_cndmask_b32_e64 v87, 0, v70, s19
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v68, v68
	.loc	1 386 21 is_stmt 1              ; attention_backward.py:386:21
	v_mad_u64_u32 v[65:66], null, s54, s35, v[0:1]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v83, 0, v72, s15
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s63, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v67, s35, v65
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s62, s31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v88, 0, v68, s20
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s61, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v68, s35, v67
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s59, s31
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v97, 0, v186
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s58, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v69, s35, v68
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s55, s31
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s28, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v70, s35, v69
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v71, s35, v70
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v72, s35, v71
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s23, s31
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v89, s35, v72
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s21, s31
	s_cselect_b32 s65, -1, 0
	.loc	1 387 26 is_stmt 0              ; attention_backward.py:387:26
	s_and_b32 s28, s3, s14
	s_and_b32 vcc_lo, s3, s65
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v65, 1, v65
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s23, s3, s19
	s_and_b32 s22, s3, s20
	s_and_b32 s20, s3, s58
	s_and_b32 s19, s3, s59
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s28
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v90, s35, v89
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s27, s3, s15
	.loc	1 385 30                        ; attention_backward.py:385:30
	buffer_load_u16 v66, v65, s[56:59], 0 offen
	v_lshlrev_b32_e32 v65, 1, v67
	v_lshlrev_b32_e32 v67, 1, v68
	v_lshlrev_b32_e32 v68, 1, v69
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v91, s35, v90
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v69, 1, v70
	v_lshlrev_b32_e32 v70, 1, v71
	v_lshlrev_b32_e32 v71, 1, v72
	v_lshlrev_b32_e32 v72, 1, v89
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v92, s35, v91
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v89, 1, v90
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s26, s3, s16
	s_and_b32 s25, s3, s17
	s_and_b32 s24, s3, s18
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v93, s35, v92
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s21, s3, s55
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s27
	v_cndmask_b32_e64 v67, 0x80000000, v67, s26
	v_cndmask_b32_e64 v68, 0x80000000, v68, s25
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v94, s35, v93
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s24
	v_cndmask_b32_e64 v70, 0x80000000, v70, s23
	v_cndmask_b32_e64 v71, 0x80000000, v71, s22
	v_cndmask_b32_e64 v72, 0x80000000, v72, s21
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v95, s35, v94
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v89, 0x80000000, v89, s20
	s_clause 0x7
	buffer_load_u16 v65, v65, s[56:59], 0 offen
	buffer_load_u16 v67, v67, s[56:59], 0 offen
	buffer_load_u16 v68, v68, s[56:59], 0 offen
	buffer_load_u16 v69, v69, s[56:59], 0 offen
	buffer_load_u16 v70, v70, s[56:59], 0 offen
	buffer_load_u16 v71, v71, s[56:59], 0 offen
	buffer_load_u16 v72, v72, s[56:59], 0 offen
	buffer_load_u16 v89, v89, s[56:59], 0 offen
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v96, s35, v95
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v90, 1, v91
	v_lshlrev_b32_e32 v91, 1, v92
	v_lshlrev_b32_e32 v92, 1, v93
	v_lshlrev_b32_e32 v93, 1, v94
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s18, s3, s60
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v94, 1, v95
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s17, s3, s61
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v90, 0x80000000, v90, s19
	v_lshlrev_b32_e32 v95, 1, v96
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s16, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v91, 0x80000000, v91, s18
	v_add_lshl_u32 v96, v96, s35, 1
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s15, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v92, 0x80000000, v92, s17
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s14, s3, s64
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v93, 0x80000000, v93, s16
	v_cndmask_b32_e64 v94, 0x80000000, v94, s15
	s_clause 0x4
	buffer_load_u16 v90, v90, s[56:59], 0 offen
	buffer_load_u16 v91, v91, s[56:59], 0 offen
	buffer_load_u16 v92, v92, s[56:59], 0 offen
	buffer_load_u16 v93, v93, s[56:59], 0 offen
	buffer_load_u16 v94, v94, s[56:59], 0 offen
	v_cndmask_b32_e64 v95, 0x80000000, v95, s14
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s38, s38, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s38, s39
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_u16 v95, v95, s[56:59], 0 offen
	buffer_load_u16 v96, v96, s[56:59], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v97, v66
	s_waitcnt vmcnt(14)
	ds_store_b16 v212, v65
	s_waitcnt vmcnt(13)
	ds_store_b16 v213, v67
	s_waitcnt vmcnt(12)
	ds_store_b16 v214, v68
	s_waitcnt vmcnt(11)
	ds_store_b16 v215, v69
	s_waitcnt vmcnt(10)
	ds_store_b16 v216, v70
	s_waitcnt vmcnt(9)
	ds_store_b16 v217, v71
	s_waitcnt vmcnt(8)
	ds_store_b16 v218, v72
	s_waitcnt vmcnt(7)
	ds_store_b16 v219, v89
	s_waitcnt vmcnt(6)
	ds_store_b16 v220, v90
	s_waitcnt vmcnt(5)
	ds_store_b16 v221, v91
	s_waitcnt vmcnt(4)
	ds_store_b16 v222, v92
	s_waitcnt vmcnt(3)
	ds_store_b16 v223, v93
	s_waitcnt vmcnt(2)
	ds_store_b16 v224, v94
	s_waitcnt vmcnt(1)
	ds_store_b16 v225, v95
	s_waitcnt vmcnt(0)
	ds_store_b16 v226, v96
	v_add_nc_u32_e32 v65, 0, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[89:90], v227 offset1:16
	ds_load_2addr_b32 v[126:127], v65 offset1:16
	ds_load_2addr_b32 v[128:129], v228 offset1:16
	ds_load_2addr_b32 v[130:131], v229 offset1:16
	ds_load_2addr_b32 v[250:251], v230 offset1:16
	ds_load_2addr_b32 v[91:92], v231 offset1:16
	ds_load_2addr_b32 v[252:253], v232 offset1:16
	ds_load_2addr_b32 v[254:255], v233 offset1:16
	ds_load_2addr_b32 v[142:143], v234 offset1:16
	ds_load_2addr_b32 v[93:94], v235 offset1:16
	ds_load_2addr_b32 v[170:171], v236 offset1:16
	ds_load_2addr_b32 v[172:173], v237 offset1:16
	ds_load_2addr_b32 v[174:175], v238 offset1:16
	ds_load_2addr_b32 v[95:96], v239 offset1:16
	ds_load_2addr_b32 v[176:177], v240 offset1:16
	ds_load_2addr_b32 v[104:105], v241 offset1:16
	v_dual_mov_b32 v65, v162 :: v_dual_mov_b32 v66, v163
	v_dual_mov_b32 v67, v164 :: v_dual_mov_b32 v68, v165
	v_dual_mov_b32 v69, v166 :: v_dual_mov_b32 v70, v167
	v_dual_mov_b32 v71, v168 :: v_dual_mov_b32 v72, v169
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b16_e64 v242.h, v89.l
	v_mov_b16_e64 v242.l, v126.l
	v_mov_b16_e64 v243.l, v128.l
	v_mov_b16_e64 v243.h, v130.l
	v_mov_b16_e64 v244.l, v250.l
	v_mov_b16_e64 v244.h, v91.l
	v_mov_b16_e64 v245.l, v252.l
	v_mov_b16_e64 v245.h, v254.l
	v_mov_b16_e64 v246.l, v142.l
	v_mov_b16_e64 v246.h, v93.l
	v_mov_b16_e64 v247.l, v170.l
	v_mov_b16_e64 v247.h, v172.l
	v_mov_b16_e64 v248.l, v174.l
	v_mov_b16_e64 v248.h, v95.l
	v_mov_b16_e64 v249.l, v176.l
	v_mov_b16_e64 v249.h, v104.l
	v_mov_b16_e32 v89.l, v126.h
	v_mov_b16_e64 v130.l, v128.h
	v_mov_b16_e64 v91.l, v250.h
	v_mov_b16_e64 v254.l, v252.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[242:249], v[1:8], v[65:72]
	v_mov_b16_e64 v242.l, v127.l
	v_mov_b16_e64 v242.h, v90.l
	v_mov_b16_e64 v243.l, v129.l
	v_mov_b16_e64 v243.h, v131.l
	v_mov_b16_e64 v244.l, v251.l
	v_mov_b16_e64 v244.h, v92.l
	v_mov_b16_e64 v245.l, v253.l
	v_mov_b16_e64 v245.h, v255.l
	v_mov_b16_e64 v246.l, v143.l
	v_mov_b16_e64 v246.h, v94.l
	v_mov_b16_e64 v247.l, v171.l
	v_mov_b16_e64 v247.h, v173.l
	v_mov_b16_e64 v248.l, v175.l
	v_mov_b16_e64 v248.h, v96.l
	v_mov_b16_e64 v249.l, v177.l
	v_mov_b16_e64 v249.h, v105.l
	v_mov_b16_e64 v93.l, v142.h
	v_mov_b16_e64 v172.l, v170.h
	v_mov_b16_e64 v95.l, v174.h
	v_mov_b16_e64 v104.l, v176.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[242:249], v[9:16], v[65:72]
	v_dual_mov_b32 v97, v89 :: v_dual_mov_b32 v98, v130
	v_dual_mov_b32 v99, v91 :: v_dual_mov_b32 v100, v254
	v_dual_mov_b32 v101, v93 :: v_dual_mov_b32 v102, v172
	v_mov_b32_e32 v103, v95
	v_mov_b16_e64 v131.l, v129.h
	v_mov_b16_e64 v255.l, v253.h
	v_mov_b16_e64 v173.l, v171.h
	v_mov_b16_e64 v105.l, v177.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[17:24], v[65:72]
	v_mov_b16_e32 v90.l, v127.h
	v_mov_b16_e64 v92.l, v251.h
	v_mov_b16_e64 v94.l, v143.h
	v_mov_b16_e64 v96.l, v175.h
	v_mov_b32_e32 v91, v131
	v_mov_b32_e32 v93, v255
	v_mov_b32_e32 v95, v173
	v_mov_b32_e32 v97, v105
	v_or_b32_e32 v172, 2, v125
	v_or_b32_e32 v173, 4, v125
	v_or_b32_e32 v174, 6, v125
	v_or_b32_e32 v175, 8, v125
	v_wmma_f32_16x16x16_bf16 v[65:72], v[90:97], v[25:32], v[65:72]
	v_or_b32_e32 v176, 10, v125
	v_or_b32_e32 v177, 12, v125
	v_or_b32_e32 v251, 14, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v65, v65, v179
	v_sub_f32_e32 v66, v66, v179
	v_sub_f32_e32 v67, v67, v179
	v_sub_f32_e32 v68, v68, v179
	v_sub_f32_e32 v69, v69, v179
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v65, v73, v65 :: v_dual_mul_f32 v66, v82, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v67, v83, v67 :: v_dual_mul_f32 v68, v84, v68
	v_mul_f32_e32 v69, v85, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v65, s52, v65 :: v_dual_mul_f32 v66, s52, v66
	v_dual_mul_f32 v67, s52, v67 :: v_dual_mul_f32 v68, s52, v68
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v70, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v73, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s52, v69
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v71, v71, v179 :: v_dual_mul_f32 v70, v86, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v73, v65, v73, 0x7fff
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v72, v72, v179
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v71, v87, v71 :: v_dual_mul_f32 v70, s52, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 397 33 is_stmt 1              ; attention_backward.py:397:33
	v_cndmask_b16 v65.l, 0x7fff, v73.h, vcc_lo
	v_bfe_u32 v73, v66, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_dual_mul_f32 v71, s52, v71 :: v_dual_mul_f32 v72, v88, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v73, v66, v73, 0x7fff
	v_bfe_u32 v66, v67, 16, 1
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v72, s52, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v65.h, 0x7fff, v73.h, vcc_lo
	v_add3_u32 v66, v67, v66, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v67, v65, s30, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v73.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v68, v66, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v69, v66, 0x7fff
	v_permlanex16_b32 v69, v73, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v82.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v70, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_perm_b32 v68, v69, v73, v188
	v_perm_b32 v69, v69, v73, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v70, v66, 0x7fff
	v_cndmask_b16 v82.h, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v71, v66, 0x7fff
	v_permlanex16_b32 v71, v82, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v83.l, 0x7fff, v66.h, vcc_lo
	v_bfe_u32 v66, v72, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_perm_b32 v70, v71, v82, v188
	v_perm_b32 v71, v71, v82, v189
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add_nc_u32_e32 v82, v136, v0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v66, v72, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v83.h, 0x7fff, v66.h, vcc_lo
	v_perm_b32 v66, v67, v65, v188
	v_perm_b32 v67, v67, v65, v189
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v84, v83, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add_nc_u32_e32 v82, v82, v65
	ds_store_2addr_stride64_b32 v82, v80, v81 offset1:1
	ds_store_2addr_stride64_b32 v82, v78, v79 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v82, v76, v77 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v82, v74, v75 offset0:6 offset1:7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v98, v190
	ds_load_u16_d16 v90, v190 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v98, v190 offset:128
	ds_load_u16_d16 v99, v190 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v99, v190 offset:384
	ds_load_u16_d16 v100, v190 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v100, v190 offset:640
	ds_load_u16_d16 v101, v190 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v101, v190 offset:896
	ds_load_u16_d16 v102, v190 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v102, v190 offset:1152
	ds_load_u16_d16 v103, v190 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v103, v190 offset:1408
	ds_load_u16_d16 v104, v190 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v104, v190 offset:1664
	ds_load_u16_d16 v105, v190 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v105, v190 offset:1920
	ds_load_u16_d16_hi v90, v190 offset:160
	ds_load_u16_d16 v91, v190 offset:288
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v91, v190 offset:416
	ds_load_u16_d16 v92, v190 offset:544
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v92, v190 offset:672
	ds_load_u16_d16 v93, v190 offset:800
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v93, v190 offset:928
	ds_load_u16_d16 v94, v190 offset:1056
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v94, v190 offset:1184
	ds_load_u16_d16 v95, v190 offset:1312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v95, v190 offset:1440
	ds_load_u16_d16 v96, v190 offset:1568
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v96, v190 offset:1696
	ds_load_u16_d16 v97, v190 offset:1824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v97, v190 offset:1952
	ds_load_u16_d16 v82, v190 offset:64
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v72, v84, v83, v188
	v_perm_b32 v73, v84, v83, v189
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v82, v190 offset:192
	ds_load_u16_d16 v83, v190 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v83, v190 offset:448
	ds_load_u16_d16 v84, v190 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v84, v190 offset:704
	ds_load_u16_d16 v85, v190 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v85, v190 offset:960
	ds_load_u16_d16 v86, v190 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v86, v190 offset:1216
	ds_load_u16_d16 v87, v190 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v87, v190 offset:1472
	ds_load_u16_d16 v88, v190 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v88, v190 offset:1728
	ds_load_u16_d16 v89, v190 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v89, v190 offset:1984
	ds_load_u16_d16 v74, v190 offset:96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v74, v190 offset:224
	ds_load_u16_d16 v75, v190 offset:352
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v75, v190 offset:480
	ds_load_u16_d16 v76, v190 offset:608
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v76, v190 offset:736
	ds_load_u16_d16 v77, v190 offset:864
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v77, v190 offset:992
	ds_load_u16_d16 v78, v190 offset:1120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v78, v190 offset:1248
	ds_load_u16_d16 v79, v190 offset:1376
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v79, v190 offset:1504
	ds_load_u16_d16 v80, v190 offset:1632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v80, v190 offset:1760
	ds_load_u16_d16 v81, v190 offset:1888
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[98:105], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[82:89], v[66:73], v[41:48]
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v81, v190 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[74:81], v[66:73], v[33:40]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v65, s38, v125
	v_or_b32_e32 v66, s38, v172
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s54, s38, s77
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v67, s38, v173
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s22, s54, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s19, s31, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s38, v174
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v164, v162 :: v_dual_add_nc_u32 v65, s22, v106
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v69, s38, v175
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s21, s31, v67
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v163, v162 :: v_dual_add_nc_u32 v66, s22, v133
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s38, v176
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v68
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v166, v162 :: v_dual_add_nc_u32 v67, s22, v134
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s38, v177
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v69
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v165, v162 :: v_dual_add_nc_u32 v68, s22, v107
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s38, v251
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v70
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v168, v162 :: v_dual_add_nc_u32 v69, s22, v135
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v71
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v167, v162 :: v_dual_add_nc_u32 v70, s22, v108
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v72
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v169, v162 :: v_dual_add_nc_u32 v72, s22, v110
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v71, s22, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, s38, v140
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s22, s31, v82
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	s_clause 0x7
	buffer_load_u8 v74, v65, s[40:43], 0 offen
	buffer_load_u8 v81, v66, s[40:43], 0 offen
	buffer_load_u8 v80, v67, s[40:43], 0 offen
	buffer_load_u8 v79, v68, s[40:43], 0 offen
	buffer_load_u8 v78, v69, s[40:43], 0 offen
	buffer_load_u8 v77, v70, s[40:43], 0 offen
	buffer_load_u8 v76, v71, s[40:43], 0 offen
	buffer_load_u8 v75, v72, s[40:43], 0 offen
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v162 :: v_dual_add_nc_u32 v65, 0, v161
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v163 :: v_dual_mov_b32 v70, v166
	v_dual_mov_b32 v68, v164 :: v_dual_mov_b32 v69, v165
	v_dual_mov_b32 v72, v168 :: v_dual_mov_b32 v71, v167
	v_mov_b32_e32 v73, v169
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s70, s6, s22
	s_and_b32 s68, s7, s22
	s_and_b32 s66, s8, s22
	s_and_b32 s60, s9, s22
	s_and_b32 s71, s10, s22
	s_and_b32 s69, s11, s22
	s_and_b32 s67, s12, s22
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s65, s13, s22
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v136, v74
	s_waitcnt vmcnt(6)
	ds_store_b8 v136, v81 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v137, v80
	s_waitcnt vmcnt(4)
	ds_store_b8 v137, v79 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v138, v78
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v77 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v139, v76
	s_waitcnt vmcnt(0)
	ds_store_b8 v139, v75 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[83:84], v65
	ds_load_b64 v[85:86], v193
	ds_load_b64 v[87:88], v194
	ds_load_b64 v[89:90], v195
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[83:84], v[111:112], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[85:86], v[113:114], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[87:88], v[115:116], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[89:90], v[117:118], v[66:73] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v82, v152
	v_cmp_le_i32_e64 s22, v82, v153
	v_cmp_le_i32_e64 s23, v82, v154
	v_cmp_le_i32_e64 s24, v82, v155
	v_cmp_le_i32_e64 s25, v82, v156
	v_cmp_le_i32_e64 s26, v82, v157
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s55, vcc_lo, s70
	s_and_b32 s22, s22, s68
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s27, v82, v158
	v_cmp_le_i32_e64 s28, v82, v159
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s23, s23, s66
	s_and_b32 s24, s24, s60
	s_and_not1_b32 s58, s70, exec_lo
	s_and_b32 s55, s55, exec_lo
	s_and_not1_b32 s59, s68, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_b32 s25, s25, s71
	s_and_b32 s26, s26, s69
	s_or_b32 s70, s58, s55
	s_or_b32 s68, s59, s22
	s_and_not1_b32 s22, s66, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s55, s60, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_b32 s27, s27, s67
	s_and_b32 s28, s28, s65
	s_or_b32 s66, s22, s23
	s_or_b32 s60, s55, s24
	s_and_not1_b32 s22, s71, exec_lo
	s_and_b32 s23, s25, exec_lo
	s_and_not1_b32 s24, s69, exec_lo
	s_and_b32 s25, s26, exec_lo
	s_or_b32 s71, s22, s23
	s_or_b32 s69, s24, s25
	s_and_not1_b32 s22, s67, exec_lo
	s_and_b32 s23, s27, exec_lo
	s_and_not1_b32 s24, s65, exec_lo
	s_and_b32 s25, s28, exec_lo
	s_or_b32 s67, s22, s23
	s_or_b32 s65, s24, s25
.LBB0_17:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v65, s38, v150
	v_add_lshl_u32 v83, s54, v125, 1
	v_or_b32_e32 v90, s38, v151
	v_add_lshl_u32 v101, s54, v150, 1
	v_or_b32_e32 v92, s38, v149
	v_cmp_gt_i32_e32 vcc_lo, s31, v65
	v_add_nc_u32_e32 v84, 4, v83
	v_add_nc_u32_e32 v87, 12, v83
	v_cndmask_b32_e64 v86, 0x80000000, v83, s19
	v_dual_cndmask_b32 v65, 0x80000000, v101 :: v_dual_add_nc_u32 v88, 16, v83
	v_cmp_gt_i32_e32 vcc_lo, s31, v90
	v_add_nc_u32_e32 v85, 8, v83
	v_add_nc_u32_e32 v89, 20, v83
	v_add_nc_u32_e32 v91, 24, v83
	v_add_nc_u32_e32 v83, 28, v83
	v_cndmask_b32_e64 v84, 0x80000000, v84, s20
	v_cndmask_b32_e64 v85, 0x80000000, v85, s21
	v_cndmask_b32_e64 v87, 0x80000000, v87, s14
	v_cndmask_b32_e64 v98, 0x80000000, v88, s15
	v_cndmask_b32_e64 v83, 0x80000000, v83, s18
	v_cndmask_b32_e64 v99, 0x80000000, v89, s16
	v_cndmask_b32_e64 v100, 0x80000000, v91, s17
	s_clause 0x7
	buffer_load_u16 v91, v86, s[44:47], 0 offen
	buffer_load_u16 v89, v84, s[44:47], 0 offen
	buffer_load_u16 v88, v85, s[44:47], 0 offen
	buffer_load_u16 v87, v87, s[44:47], 0 offen
	buffer_load_u16 v86, v98, s[44:47], 0 offen
	buffer_load_u16 v85, v99, s[44:47], 0 offen
	buffer_load_u16 v84, v100, s[44:47], 0 offen
	buffer_load_u16 v83, v83, s[44:47], 0 offen
	v_add_nc_u32_e32 v98, 4, v101
	v_or_b32_e32 v93, s38, v148
	v_add_nc_u32_e32 v99, 8, v101
	v_or_b32_e32 v94, s38, v147
	v_or_b32_e32 v95, s38, v146
	v_cndmask_b32_e32 v90, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v92
	v_add_nc_u32_e32 v98, 12, v101
	v_or_b32_e32 v96, s38, v145
	v_or_b32_e32 v97, s38, v144
	v_dual_cndmask_b32 v92, 0x80000000, v99 :: v_dual_add_nc_u32 v99, 16, v101
	v_cmp_gt_i32_e32 vcc_lo, s31, v93
	v_cndmask_b32_e32 v93, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v94
	v_add_nc_u32_e32 v98, 20, v101
	v_dual_cndmask_b32 v94, 0x80000000, v99 :: v_dual_add_nc_u32 v99, 24, v101
	v_cmp_gt_i32_e32 vcc_lo, s31, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v95, 0x80000000, v98 :: v_dual_add_nc_u32 v100, 28, v101
	v_cmp_gt_i32_e32 vcc_lo, s31, v96
	v_cndmask_b32_e32 v101, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	s_clause 0x7
	buffer_load_u16 v98, v65, s[44:47], 0 offen
	buffer_load_u16 v99, v90, s[44:47], 0 offen
	buffer_load_u16 v96, v92, s[44:47], 0 offen
	buffer_load_u16 v97, v93, s[44:47], 0 offen
	buffer_load_u16 v94, v94, s[44:47], 0 offen
	buffer_load_u16 v95, v95, s[44:47], 0 offen
	buffer_load_u16 v92, v101, s[44:47], 0 offen
	buffer_load_u16 v93, v100, s[44:47], 0 offen
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v65, off, off          ; 4-byte Folded Reload
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v82, v132
	v_cmp_le_i32_e64 s28, v82, v141
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v82, v65
	scratch_load_b32 v65, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v82, v65
	scratch_load_b32 v65, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v82, v65
	scratch_load_b32 v65, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v82, v65
	scratch_load_b32 v65, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v82, v65
	scratch_load_b32 v65, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v82, v65
	scratch_load_b32 v65, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v82, v65
	scratch_load_b32 v65, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s19, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s67
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v82, v65
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v65, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, s20, s28
	s_and_b32 s20, s20, s65
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v82, v65
	scratch_load_b32 v65, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s21, vcc_lo, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s70
	s_and_b32 s21, s21, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v82, v65
	scratch_load_b32 v65, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s22, s70, exec_lo
	s_and_b32 s14, s14, s68
	s_or_b32 s70, s22, s21
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s21, s60, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v82, v65
	scratch_load_b32 v65, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s23, s68, exec_lo
	s_and_b32 s15, s15, s66
	s_or_b32 s68, s23, s14
	s_and_not1_b32 s14, s66, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s66, s14, s15
	s_and_not1_b32 s14, s71, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v82, v65
	scratch_load_b32 v65, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s60
	s_and_b32 s16, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s60, s21, s16
	s_and_not1_b32 s16, s69, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v82, v65
	scratch_load_b32 v65, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s71
	s_and_b32 s15, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s71, s14, s15
	s_and_not1_b32 s14, s67, exec_lo
	s_and_b32 s15, s19, exec_lo
	s_or_b32 s67, s14, s15
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v82, v65
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s18, s18, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s69
	s_and_b32 s17, s18, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s69, s16, s17
	s_and_not1_b32 s16, s65, exec_lo
	s_and_b32 s17, s20, exec_lo
	s_or_b32 s65, s16, s17
	s_branch .LBB0_14
.LBB0_19:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v24, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v150
	v_cmp_gt_i32_e64 s2, s53, v151
	v_cmp_gt_i32_e64 s3, s53, v149
	v_cmp_gt_i32_e64 s5, s53, v148
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s53, v147
	v_cmp_gt_i32_e64 s7, s53, v146
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s53, v145
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s53, v144
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s53, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s53, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s53, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s53, v20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s53, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s53, v18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s53, v17
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s53, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s53, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s53, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s53, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s53, v12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s53, v11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s53, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s53, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s53, v8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s53, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s53, v6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v150
	v_or_b32_e32 v1, 60, v150
	v_or_b32_e32 v2, 58, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s53, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v150
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s53, v4
	v_cmp_gt_i32_e64 s30, s53, v3
	v_cmp_gt_i32_e64 s0, s53, v2
	v_cmp_gt_i32_e32 vcc_lo, s53, v1
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v24, v24, s53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v150, 2
	v_add_lshl_u32 v26, v24, v151, 2
	v_add_lshl_u32 v27, v24, v149, 2
	v_add_lshl_u32 v28, v24, v145, 2
	v_add_lshl_u32 v23, v24, v23, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v57, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v24, v148, 2
	s_clause 0x1
	buffer_store_b32 v58, v26, s[36:39], 0 offen
	buffer_store_b32 v59, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v147, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v146, 2
	v_add_lshl_u32 v22, v24, v22, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v25, s[36:39], 0 offen
	buffer_store_b32 v61, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v144, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v21, v24, v21, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v20, v24, v20, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v24, v19, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v18, v24, v18, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v24, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v24, v16, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v24, v15, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v24, v14, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v24, v13, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v24, v12, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v24, v11, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v10, v24, v10, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v24, v9, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v8, v24, v8, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v7, v24, v7, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v24, v6, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v5, v24, v5, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v4, v24, v4, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v24, v3, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v0
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v2, v24, v2, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v24, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v24, v0, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v62, v27, s[36:39], 0 offen
	buffer_store_b32 v63, v28, s[36:39], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b32 v64, v25, s[36:39], 0 offen
	buffer_store_b32 v49, v23, s[36:39], 0 offen
	buffer_store_b32 v50, v22, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	buffer_store_b32 v52, v20, s[36:39], 0 offen
	buffer_store_b32 v53, v19, s[36:39], 0 offen
	buffer_store_b32 v54, v18, s[36:39], 0 offen
	buffer_store_b32 v55, v17, s[36:39], 0 offen
	buffer_store_b32 v56, v16, s[36:39], 0 offen
	buffer_store_b32 v41, v15, s[36:39], 0 offen
	buffer_store_b32 v42, v14, s[36:39], 0 offen
	buffer_store_b32 v43, v13, s[36:39], 0 offen
	buffer_store_b32 v44, v12, s[36:39], 0 offen
	buffer_store_b32 v45, v11, s[36:39], 0 offen
	buffer_store_b32 v46, v10, s[36:39], 0 offen
	buffer_store_b32 v47, v9, s[36:39], 0 offen
	buffer_store_b32 v48, v8, s[36:39], 0 offen
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
.Ltmp362:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 64
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
		.amdhsa_next_free_sgpr 87
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25140
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 89
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
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
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
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
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 64
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 15
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
