	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v65, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x110, v0
	v_xor_b32_e32 v21, 0x198, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v171, 2, v125
	v_or_b32_e32 v172, 4, v125
	v_or_b32_e32 v173, 6, v125
	v_or_b32_e32 v174, 8, v125
	v_or_b32_e32 v175, 10, v125
	v_or_b32_e32 v250, 12, v125
	v_or_b32_e32 v251, 14, v125
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v139, 0, v21
	s_load_b128 s[40:43], s[0:1], 0x38
	v_add_nc_u32_e32 v136, 0, v0
	v_add_nc_u32_e32 v138, 0, v20
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v71, 32, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[106:107], null, s34, v125, v[65:66]
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
	v_or_b32_e32 v2, s46, v171
	v_or_b32_e32 v3, s46, v172
	v_or_b32_e32 v4, s46, v173
	v_or_b32_e32 v5, s46, v174
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v133, s34, 1, v106
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v250
	v_or_b32_e32 v8, s46, v251
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v134, s34, 2, v106
	v_lshl_add_u32 v135, s34, 3, v106
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[108:109], null, s34, 10, v[106:107]
	v_mad_u64_u32 v[109:110], null, s34, 12, v[106:107]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[110:111], null, s34, 14, v[106:107]
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v102, 1, v71
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 23                        ; attention_backward.py:121:23
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
	v_cmp_gt_i32_e64 s2, s34, v65
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
	v_or_b32_e32 v6, s46, v175
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
	s_clause 0x3
	buffer_load_u8 v15, v15, s[36:39], 0 offen
	buffer_load_u8 v17, v2, s[36:39], 0 offen
	buffer_load_u8 v18, v3, s[36:39], 0 offen
	buffer_load_u8 v4, v4, s[36:39], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
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
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v137, 0, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	v_add_nc_u32_e32 v22, s35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v3, s35, v22
	v_add_nc_u32_e32 v21, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 2, v2
	v_lshlrev_b32_e32 v1, 2, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v34, 0x80000000, v1, vcc_lo
	v_lshl_add_u32 v1, s35, 6, v1
	v_lshlrev_b32_e32 v20, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v35, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v36, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v37, 0x80000000, v3 :: v_dual_lshlrev_b32 v2, 2, v21
	v_lshlrev_b32_e32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v38, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v3 :: v_dual_lshlrev_b32 v2, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 2, v22
	v_lshlrev_b32_e32 v3, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	v_add_nc_u32_e32 v22, s35, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v42, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 2, v21
	v_lshlrev_b32_e32 v3, 2, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	v_add_nc_u32_e32 v21, s35, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v43, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v45, 0x80000000, v3 :: v_dual_lshlrev_b32 v2, 2, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v3 :: v_dual_lshlrev_b32 v2, 2, v22
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v49, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v50, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s69, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v51, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v52, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s68, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v53, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v54, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v55, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v56, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v57, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v58, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v59, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
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
	v_dual_cndmask_b32 v60, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v20, v20, s35, 2
	v_dual_cndmask_b32 v61, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v21, v21, s35, 2
	v_cndmask_b32_e32 v62, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v63, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v64, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v21, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v14, v34, s[36:39], 0 offen
	buffer_load_b32 v15, v35, s[36:39], 0 offen
	buffer_load_b32 v16, v37, s[36:39], 0 offen
	buffer_load_b32 v17, v39, s[36:39], 0 offen
	buffer_load_b32 v2, v41, s[36:39], 0 offen
	buffer_load_b32 v3, v43, s[36:39], 0 offen
	buffer_load_b32 v4, v45, s[36:39], 0 offen
	buffer_load_b32 v5, v47, s[36:39], 0 offen
	buffer_load_b32 v22, v50, s[36:39], 0 offen
	buffer_load_b32 v23, v52, s[36:39], 0 offen
	buffer_load_b32 v24, v54, s[36:39], 0 offen
	buffer_load_b32 v25, v56, s[36:39], 0 offen
	buffer_load_b32 v6, v58, s[36:39], 0 offen
	buffer_load_b32 v7, v60, s[36:39], 0 offen
	buffer_load_b32 v8, v62, s[36:39], 0 offen
	buffer_load_b32 v9, v63, s[36:39], 0 offen
	buffer_load_b32 v26, v1, s[36:39], 0 offen
	buffer_load_b32 v27, v36, s[36:39], 0 offen
	buffer_load_b32 v28, v38, s[36:39], 0 offen
	buffer_load_b32 v29, v40, s[36:39], 0 offen
	buffer_load_b32 v10, v42, s[36:39], 0 offen
	buffer_load_b32 v11, v44, s[36:39], 0 offen
	buffer_load_b32 v12, v46, s[36:39], 0 offen
	buffer_load_b32 v13, v49, s[36:39], 0 offen
	buffer_load_b32 v30, v51, s[36:39], 0 offen
	buffer_load_b32 v31, v53, s[36:39], 0 offen
	buffer_load_b32 v32, v55, s[36:39], 0 offen
	buffer_load_b32 v33, v57, s[36:39], 0 offen
	buffer_load_b32 v18, v59, s[36:39], 0 offen
	buffer_load_b32 v19, v61, s[36:39], 0 offen
	buffer_load_b32 v20, v64, s[36:39], 0 offen
	buffer_load_b32 v21, v66, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_b32 v70, v34, s[36:39], 0 offen
	buffer_load_b32 v69, v35, s[36:39], 0 offen
	buffer_load_b32 v68, v37, s[36:39], 0 offen
	buffer_load_b32 v48, v39, s[36:39], 0 offen
	buffer_load_b32 v75, v50, s[36:39], 0 offen
	buffer_load_b32 v74, v52, s[36:39], 0 offen
	buffer_load_b32 v73, v54, s[36:39], 0 offen
	buffer_load_b32 v72, v56, s[36:39], 0 offen
	buffer_load_b32 v88, v1, s[36:39], 0 offen
	buffer_load_b32 v86, v36, s[36:39], 0 offen
	buffer_load_b32 v85, v38, s[36:39], 0 offen
	buffer_load_b32 v84, v40, s[36:39], 0 offen
	buffer_load_b32 v80, v51, s[36:39], 0 offen
	buffer_load_b32 v78, v53, s[36:39], 0 offen
	buffer_load_b32 v77, v55, s[36:39], 0 offen
	buffer_load_b32 v76, v57, s[36:39], 0 offen
	buffer_load_b32 v99, v41, s[36:39], 0 offen
	buffer_load_b32 v98, v43, s[36:39], 0 offen
	buffer_load_b32 v97, v45, s[36:39], 0 offen
	buffer_load_b32 v96, v47, s[36:39], 0 offen
	buffer_load_b32 v95, v58, s[36:39], 0 offen
	buffer_load_b32 v94, v60, s[36:39], 0 offen
	buffer_load_b32 v93, v62, s[36:39], 0 offen
	buffer_load_b32 v92, v63, s[36:39], 0 offen
	buffer_load_b32 v91, v42, s[36:39], 0 offen
	buffer_load_b32 v90, v44, s[36:39], 0 offen
	buffer_load_b32 v89, v46, s[36:39], 0 offen
	buffer_load_b32 v87, v49, s[36:39], 0 offen
	buffer_load_b32 v83, v59, s[36:39], 0 offen
	buffer_load_b32 v82, v61, s[36:39], 0 offen
	buffer_load_b32 v81, v64, s[36:39], 0 offen
	buffer_load_b32 v79, v66, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v67, 12, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v39, v23, v74 :: v_dual_mul_f32 v40, v24, v73
	s_waitcnt vmcnt(24)
	v_mul_f32_e32 v41, v25, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v46, v26, v88 :: v_dual_lshlrev_b32 v43, 1, v67
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v47, v27, v86 :: v_dual_mul_f32 v50, v28, v85
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v24, v73
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v46, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v58, v4, v97 :: v_dual_lshlrev_b32 v35, 4, v71
	v_mul_f32_e32 v57, v3, v98
	v_mul_f32_e32 v53, v31, v78
	s_waitcnt vmcnt(10)
	v_mul_f32_e32 v61, v7, v94
	v_mul_f32_e32 v55, v33, v76
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v46, v26, v88
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v58, v58 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v103, v12, v89 :: v_dual_and_b32 v132, 15, v0
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v61, v61 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v53, v31, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v34, v102, v132
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v33, v76
	v_dual_fmac_f32 v61, v7, v94 :: v_dual_lshlrev_b32 v42, 5, v132
.Ltmp14:
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v36, s47, v34
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v34, s46, v34
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v103, v12, v89
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp16:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v35, v42, v35, v43
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v58, v4, v97
	scratch_store_b32 off, v36, off offset:56 ; 4-byte Folded Spill
.Ltmp18:
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v34
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v37, 0, v35
	v_xad_u32 v38, v35, 16, 0
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v51, v29, v84 :: v_dual_mul_f32 v54, v32, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v34, 0x80000000, v36, s4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v36, v35, 8, 0
	v_xad_u32 v35, v35, 24, 0
	ds_load_b64 v[111:112], v37
	ds_load_b64 v[113:114], v36
	ds_load_b64 v[115:116], v38
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[117:118], v35
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v44, v34, s[24:27], 0 offen
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v35, v15, v69 :: v_dual_mul_f32 v34, v14, v70
	v_mul_f32_e32 v36, v16, v68
	v_dual_mul_f32 v37, v17, v48 :: v_dual_mul_f32 v38, v22, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v56, v2, v99 :: v_dual_mul_f32 v59, v5, v96
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v35, v15, v69 :: v_dual_and_b32 v100, 1, v0
	v_add_f32_dpp v15, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v30, v80
	v_mul_f32_e32 v60, v6, v95
	v_dual_mul_f32 v62, v8, v93 :: v_dual_mul_f32 v63, v9, v92
	v_mul_f32_e32 v64, v10, v91
	v_mul_f32_e32 v66, v11, v90
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v104, v13, v87
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v105, v18, v83
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v119, v19, v82 :: v_dual_mul_f32 v120, v20, v81
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v121, v21, v79
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v56, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v59, v59 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v57, v3, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v54, v32, v77 :: v_dual_lshlrev_b32 v1, 6, v100
	v_dual_fmac_f32 v50, v28, v85 :: v_dual_lshlrev_b32 v101, 1, v71
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v60, v60 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v63, v63 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v104, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v119, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v34, v14, v70
	v_fmac_f32_e32 v36, v16, v68
	v_dual_fmac_f32 v37, v17, v48 :: v_dual_fmac_f32 v38, v22, v75
	v_fmac_f32_e32 v39, v23, v74
	v_fmac_f32_e32 v41, v25, v72
	v_dual_fmac_f32 v56, v2, v99 :: v_dual_add_nc_u32 v49, 0, v1
	v_fmac_f32_e32 v47, v27, v86
	v_fmac_f32_e32 v51, v29, v84
	v_dual_fmac_f32 v59, v5, v96 :: v_dual_fmac_f32 v60, v6, v95
	v_dual_fmac_f32 v52, v30, v80 :: v_dual_add_nc_u32 v45, 0, v101
	v_dual_fmac_f32 v62, v8, v93 :: v_dual_fmac_f32 v63, v9, v92
	v_dual_fmac_f32 v64, v10, v91 :: v_dual_fmac_f32 v119, v19, v82
	v_dual_fmac_f32 v66, v11, v90 :: v_dual_fmac_f32 v105, v18, v83
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v15, -1, -1 op_sel:[1,0]
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v104, v13, v87
	v_dual_fmac_f32 v120, v20, v81 :: v_dual_fmac_f32 v121, v21, v79
	v_add_f32_dpp v2, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v46, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v56, v56 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v58, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v59, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v60, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v61, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v63, v63 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v15, v15, v53
	v_add_f32_dpp v29, v104, v104 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v31, v119, v119 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v34, v2, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v35, v3, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v36, v4, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v37, v5, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v38, v6, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v39, v7, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v40, v8, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v41, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v46, v10, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v47, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v50, v12, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v51, v13, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v54, v16, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v56, v18, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v57, v19, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v58, v20, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v59, v21, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v52, v14, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v55, v17, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v60, v22, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v61, v23, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v62, v24, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v63, v25, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v64, v26, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v66, v27, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v103, v28, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v104, v29, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v105, v30, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v119, v31, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v120, v32, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v121, v33, -1, -1 op_sel:[1,0]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v2, v34 :: v_dual_add_f32 v3, v3, v35
	v_dual_add_f32 v4, v4, v36 :: v_dual_add_f32 v5, v5, v37
	v_dual_add_f32 v6, v6, v38 :: v_dual_add_f32 v7, v7, v39
	v_dual_add_f32 v8, v8, v40 :: v_dual_add_f32 v9, v9, v41
	v_dual_add_f32 v10, v10, v46 :: v_dual_add_f32 v11, v11, v47
	v_dual_add_f32 v12, v12, v50 :: v_dual_add_f32 v13, v13, v51
	v_dual_add_f32 v16, v16, v54 :: v_dual_add_f32 v19, v19, v57
	v_dual_add_f32 v18, v18, v56 :: v_dual_add_f32 v21, v21, v59
	v_dual_add_f32 v20, v20, v58 :: v_dual_add_f32 v23, v23, v61
	v_dual_add_f32 v14, v14, v52 :: v_dual_add_f32 v17, v17, v55
	v_dual_add_f32 v22, v22, v60 :: v_dual_add_f32 v25, v25, v63
	v_dual_add_f32 v24, v24, v62 :: v_dual_add_f32 v29, v29, v104
	v_dual_add_f32 v26, v26, v64 :: v_dual_add_f32 v27, v27, v66
	v_dual_add_f32 v28, v28, v103 :: v_dual_add_f32 v33, v33, v121
	v_dual_add_f32 v30, v30, v105 :: v_dual_add_f32 v31, v31, v119
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v2, 31
	v_readlane_b32 s6, v3, 31
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v32, v32, v120
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v4, 31
	v_readlane_b32 s8, v5, 31
	v_readlane_b32 s9, v6, 31
	v_readlane_b32 s10, v7, 31
	v_readlane_b32 s11, v8, 31
	v_readlane_b32 s12, v9, 31
	v_readlane_b32 s13, v10, 31
	v_readlane_b32 s14, v11, 31
	v_readlane_b32 s15, v12, 31
	v_readlane_b32 s16, v13, 31
	v_readlane_b32 s25, v16, 31
	v_readlane_b32 s27, v18, 31
	v_readlane_b32 s36, v19, 31
	v_readlane_b32 s37, v20, 31
	v_readlane_b32 s38, v21, 31
	v_readlane_b32 s17, v14, 31
	v_readlane_b32 s24, v15, 31
	v_readlane_b32 s26, v17, 31
	v_readlane_b32 s39, v22, 31
	v_readlane_b32 s40, v23, 31
	v_readlane_b32 s41, v24, 31
	v_readlane_b32 s42, v25, 31
	v_readlane_b32 s43, v26, 31
	v_readlane_b32 s45, v27, 31
	v_readlane_b32 s48, v28, 31
	v_readlane_b32 s49, v29, 31
	v_readlane_b32 s52, v30, 31
	v_readlane_b32 s53, v31, 31
	v_readlane_b32 s55, v33, 31
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v3, s6
	v_readlane_b32 s54, v32, 31
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v9, s12
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v11, s14
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v13, s16
	v_dual_mov_b32 v12, s15 :: v_dual_mov_b32 v15, s24
	v_dual_mov_b32 v16, s25 :: v_dual_mov_b32 v19, s36
	v_dual_mov_b32 v18, s27 :: v_dual_mov_b32 v21, s38
	v_dual_mov_b32 v20, s37 :: v_dual_mov_b32 v35, s40
	v_dual_mov_b32 v14, s17 :: v_dual_mov_b32 v17, s26
	v_dual_mov_b32 v34, s39 :: v_dual_mov_b32 v37, s42
	v_dual_mov_b32 v36, s41 :: v_dual_mov_b32 v39, s45
	v_dual_mov_b32 v38, s43 :: v_dual_mov_b32 v41, s49
	v_dual_mov_b32 v40, s48 :: v_dual_mov_b32 v51, s53
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v50, s52 :: v_dual_mov_b32 v53, s55
	ds_store_b128 v45, v[2:5]
	ds_store_b128 v45, v[6:9] offset:16
	ds_store_b128 v45, v[10:13] offset:32
	ds_store_b128 v45, v[14:17] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v49
	ds_load_b128 v[26:29], v49 offset:16
	ds_load_b128 v[22:25], v49 offset:32
	ds_load_b128 v[10:13], v49 offset:48
	v_mov_b32_e32 v52, s54
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v45, v[18:21]
	ds_store_b128 v45, v[34:37] offset:16
	ds_store_b128 v45, v[38:41] offset:32
	ds_store_b128 v45, v[50:53] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v49
	ds_load_b128 v[34:37], v49 offset:16
	ds_load_b128 v[18:21], v49 offset:32
	ds_load_b128 v[14:17], v49 offset:48
.Ltmp39:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s5, s31, 15
	s_mov_b32 s38, 0
	.loc	1 179 15 is_stmt 0              ; attention_backward.py:179:15
	s_ashr_i32 s6, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s6, s6, 28
	s_add_i32 s5, s5, s6
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s50, s44
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v50, v30 :: v_dual_mov_b32 v57, v33
	v_dual_mov_b32 v51, v31 :: v_dual_mov_b32 v52, v32
	v_dual_mov_b32 v61, v26 :: v_dual_mov_b32 v190, v27
	v_dual_mov_b32 v191, v28 :: v_dual_mov_b32 v192, v29
	v_dual_mov_b32 v198, v22 :: v_dual_mov_b32 v63, v24
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v53, v38 :: v_dual_mov_b32 v54, v39
	v_dual_mov_b32 v55, v40 :: v_dual_mov_b32 v56, v41
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v193, v34 :: v_dual_mov_b32 v194, v35
	v_dual_mov_b32 v197, v37 :: v_dual_mov_b32 v196, v36
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v183, v18 :: v_dual_mov_b32 v62, v23
	v_dual_mov_b32 v121, v10 :: v_dual_mov_b32 v64, v25
	v_dual_mov_b32 v177, v19 :: v_dual_mov_b32 v182, v20
	v_dual_mov_b32 v123, v11 :: v_dual_mov_b32 v120, v21
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v179, v14 :: v_dual_mov_b32 v124, v12
	v_mov_b32_e32 v119, v17
	v_dual_mov_b32 v126, v13 :: v_dual_mov_b32 v181, v16
	v_mov_b32_e32 v180, v15
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s39, s5, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
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
	v_cndmask_b32_e64 v2, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s56, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v2
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
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s51
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v3, s46, v2
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
	v_or_b32_e32 v4, 16, v3
	v_or_b32_e32 v5, 20, v3
	v_or_b32_e32 v6, 4, v3
	v_or_b32_e32 v7, 24, v3
	v_or_b32_e32 v8, 8, v3
	v_or_b32_e32 v9, 28, v3
	v_or_b32_e32 v45, 12, v3
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v3
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v150, s23, v3
	v_mov_b16_e32 v3.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v44.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s77, s14, s15
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s14, s52, 0x3fb8aa3b
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v189, 48, v0
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v151, s23, v6
	v_add_nc_u32_e32 v152, s23, v8
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v158, s14, v3
	v_subrev_nc_u32_e32 v3, s21, v150
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v153, s23, v45
	v_add_nc_u32_e32 v154, s23, v4
	v_add_nc_u32_e32 v155, s23, v5
	v_add_nc_u32_e32 v156, s23, v7
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v151
	v_add_nc_u32_e32 v157, s23, v9
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s76, s[0:1], 0x90
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v148, v0, 4, 1
	v_and_b32_e32 v103, 16, v0
	scratch_store_b32 off, v3, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v152
	v_or_b32_e32 v159, v42, v43
	v_mul_lo_u32 v66, s55, v2
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s53
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s42, s28, s54
	scratch_store_b32 off, v3, off offset:8 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v153
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v149, 2, v148
	v_or_b32_e32 v147, 4, v148
	v_or_b32_e32 v146, 6, v148
	v_or_b32_e32 v145, 8, v148
	scratch_store_b32 off, v3, off offset:12 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v154
	v_or_b32_e32 v144, 10, v148
	v_or_b32_e32 v143, 12, v148
	v_or_b32_e32 v142, 14, v148
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, s30, v6
	scratch_store_b32 off, v3, off offset:16 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v155
	v_cmp_gt_i32_e64 s8, s30, v8
	v_cmp_gt_i32_e64 s9, s30, v45
	v_cmp_gt_i32_e64 s10, s30, v4
	v_cmp_gt_i32_e64 s11, s30, v5
	scratch_store_b32 off, v3, off offset:20 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v156
	v_cmp_gt_i32_e64 s12, s30, v7
	v_cmp_gt_i32_e64 s13, s30, v9
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s42, s42, s19
	v_add_nc_u32_e32 v178, s22, v156
	scratch_store_b32 off, v3, off offset:24 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v157
	v_add_nc_u32_e32 v176, s22, v157
	v_xor_b32_e32 v104, 8, v159
	v_xor_b32_e32 v105, 16, v159
	v_xor_b32_e32 v195, 24, v159
	scratch_store_b32 off, v3, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v150
	v_lshlrev_b32_e32 v252, 1, v0
	v_cmp_eq_u32_e64 s14, 0, v71
	v_and_b32_e32 v122, 14, v0
	v_lshlrev_b32_e32 v184, 3, v132
	scratch_store_b32 off, v3, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v151
	v_lshrrev_b32_e32 v187, 2, v103
	v_lshrrev_b32_e32 v186, 4, v71
	v_lshlrev_b32_e32 v188, 2, v0
	v_lshrrev_b32_e32 v185, 1, v103
	scratch_store_b32 off, v3, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v152
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s38, s39
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s77, s77, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s54, -1, 0
	s_cmp_ge_i32 s38, s39
	scratch_store_b32 off, v3, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v153
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s55, s46
	scratch_store_b32 off, v3, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v154
	scratch_store_b32 off, v3, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v155
	scratch_store_b32 off, v3, off offset:52 ; 4-byte Folded Spill
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[42:43], null, s76, v132, v[66:67]
	v_and_b32_e32 v2, 60, v252
	v_cndmask_b32_e64 v3, 0x104, 0, s14
	v_dual_mov_b32 v215, 0xff800000 :: v_dual_lshlrev_b32 v4, 5, v100
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_mov_b32 v216, 0xff800000
	v_mad_u64_u32 v[43:44], null, s55, 12, v[42:43]
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v58, v3, v2
	v_lshlrev_b32_e32 v2, 2, v189
	v_lshlrev_b32_e32 v3, 1, v122
	v_and_or_b32 v8, v0, 2, v185
	v_or3_b32 v59, v187, v186, v184
	v_or_b32_e32 v1, v58, v1
	v_lshl_or_b32 v2, v122, 7, v2
	v_mad_u64_u32 v[44:45], null, s55, 20, v[42:43]
	v_mad_u64_u32 v[45:46], null, s55, 24, v[42:43]
	v_mad_u64_u32 v[46:47], null, s55, 28, v[42:43]
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v47, v2, v4, v3
	v_xor_b32_e32 v2, 0x208, v1
	v_xor_b32_e32 v3, 0x410, v1
	v_xor_b32_e32 v4, 0x618, v1
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_and_b32 v1, 52, v188
	v_xor_b32_e32 v5, 4, v47
	v_xor_b32_e32 v6, 8, v47
	v_xor_b32_e32 v7, 12, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v67, 5, v1
	v_xor_b32_e32 v9, 16, v47
	v_xor_b32_e32 v127, 20, v47
	v_xor_b32_e32 v128, 24, v47
	v_xor_b32_e32 v129, 0x90, v59
	v_or3_b32 v60, v8, v1, v125
	v_xor_b32_e32 v8, 28, v47
	v_xor_b32_e32 v130, 0x120, v59
	v_xor_b32_e32 v131, 0x1b0, v59
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v140, 16, v60
	v_xor_b32_e32 v141, 32, v60
	v_xor_b32_e32 v160, 48, v60
	v_dual_mov_b32 v220, 0xff800000 :: v_dual_add_nc_u32 v199, 0, v2
	v_dual_mov_b32 v217, 0xff800000 :: v_dual_add_nc_u32 v200, 0, v3
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_add_nc_u32 v201, 0, v4
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_add_nc_u32 v202, 0, v5
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v203, 0, v6
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v7
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v205, 0, v9
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v206, 0, v127
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v207, 0, v128
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v208, 0, v8
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v209, 0, v129
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v210, 0, v130
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v131
	v_dual_mov_b32 v229, 0 :: v_dual_add_nc_u32 v212, 0, v140
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v141
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v214, 0, v160
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_mov_b32 v223, 0xff800000
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_mov_b32 v225, 0xff800000
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
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s15, s51, s76
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v128, s55, 3, v42
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s15, s50, s15
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v247, v4
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v8, s55, 4, v42
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v130, s15, v46, 1
	v_add_lshl_u32 v131, s15, v43, 1
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v249, v3
	v_cvt_f32_i32_e32 v246, v5
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v3, v9
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v7, s15, v42, 1
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v9, s55, 2, v42
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v128, s15, v128, 1
	v_add_lshl_u32 v8, s15, v8, 1
	v_add_lshl_u32 v129, s15, v45, 1
	v_cndmask_b32_e64 v130, 0x80000000, v130, s58
	v_cndmask_b32_e64 v131, 0x80000000, v131, s53
	v_cndmask_b32_e64 v7, 0x80000000, v7, s81
	v_add_lshl_u32 v9, s15, v9, 1
	v_cndmask_b32_e64 v128, 0x80000000, v128, s59
	v_cndmask_b32_e64 v8, 0x80000000, v8, s82
	v_add_lshl_u32 v127, s15, v44, 1
	v_cndmask_b32_e64 v129, 0x80000000, v129, s78
	s_clause 0x3
	buffer_load_u16 v130, v130, s[68:71], 0 offen
	buffer_load_u16 v131, v131, s[68:71], 0 offen
	buffer_load_u16 v7, v7, s[68:71], 0 offen
	buffer_load_u16 v8, v8, s[68:71], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v9, s79
	s_clause 0x1
	buffer_load_u16 v128, v128, s[68:71], 0 offen
	buffer_load_u16 v129, v129, s[68:71], 0 offen
	v_cndmask_b32_e64 v127, 0x80000000, v127, s80
	s_clause 0x1
	buffer_load_u16 v9, v9, s[68:71], 0 offen
	buffer_load_u16 v127, v127, s[68:71], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v4, v158, v4
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v6, v6
	v_mul_f32_e32 v5, v158, v5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s51, s51, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v161, v158, v249 :: v_dual_add_nc_u32 v164, 0, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v6, v158, v6
	v_mul_f32_e32 v2, v158, v2
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v8, 16, v8
	v_cndmask_b32_e64 v130, 0xff800000, v130, s58
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v129, 16, v129
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s82
	v_lshlrev_b32_e32 v7, 16, v7
	v_cndmask_b32_e64 v131, 0xff800000, v131, s53
	v_lshlrev_b32_e32 v128, 16, v128
	v_cndmask_b32_e64 v129, 0xff800000, v129, s78
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v160, 0x3fb8aa3b, v8 :: v_dual_lshlrev_b32 v127, 16, v127
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v7, 0xff800000, v7, s81
	v_cndmask_b32_e64 v128, 0xff800000, v128, s59
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v127, 0xff800000, v127, s80
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v141, 0x3fb8aa3b, v7
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v7
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s17, s82, vcc_lo
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v127
	.loc	1 254 32 is_stmt 1              ; attention_backward.py:254:32
	v_cndmask_b32_e64 v9, 0xff800000, v9, s79
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v140, v49, v58
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s21, s81, s15
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v129
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s16, s80, s16
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v9
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v140, v141, v160 offset1:32
	v_dual_mul_f32 v141, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v127
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s78, vcc_lo
	s_and_b32 s20, s79, s18
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v128
	v_cmp_neq_f32_e64 s23, 0xff800000, v130
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v199, v141, v160 offset1:32
	v_dual_mul_f32 v141, 0x3fb8aa3b, v128 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v129
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s19, s59, s18
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s22, 0xff800000, v131
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 vcc_lo, s58, s23
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v200, v141, v160 offset1:32
	v_dual_mul_f32 v141, 0x3fb8aa3b, v131 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v130
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s18, s53, s22
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s51, s39
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v201, v141, v160 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v162, v202
	ds_load_b32 v163, v203
	v_mov_b16_e64 v160.l, 0
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v141.h, v248.l
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_load_b32 v165, v204
	ds_load_b32 v166, v205
	ds_load_b32 v167, v206
	ds_load_b32 v168, v207
	ds_load_b32 v169, v208
	ds_load_b32 v170, v164
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v160.h, v239.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v141.l, v160.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v162, v161, v141
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v141.h, v245.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v161, v158, v247
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v170, v2, v160
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v160.h, v240.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v2, v158, v3 :: v_dual_fmac_f32 v163, v161, v141
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v141.h, v244.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v161, v158, v246
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v3, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v169, v2, v160
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v2, 0, 1, s17
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v165, v161, v141
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v141.h, v243.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v2.l, 8, v2.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v166, v6, v141
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v6.h, v242.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s16
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v6.l, v160.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v2.h, 8, v3.l
	v_add_nc_u32_e32 v3, 0, v59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v167, v5, v6
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v5.h, v241.l
	v_mov_b16_e64 v5.l, v160.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_store_b16 v3, v2
	v_cndmask_b32_e64 v3, 0, 1, s15
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v168, v4, v5
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v4, 0, 1, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s19
	v_or_b16 v2.h, v4.l, v2.h
	v_cndmask_b32_e64 v4, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v2.l, 8, v2.l
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v3.l, 8, v3.l
	v_or_b16 v3.l, v4.l, v3.l
	ds_store_b16_d16_hi v209, v2
	ds_store_b16 v210, v2
	ds_store_b16 v211, v3
	v_add_nc_u32_e32 v3, 0, v60
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v2, v3
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v3 offset:64
	ds_load_u8_d16 v3, v212
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v214 offset:64
	ds_load_u8_d16 v4, v213 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v212 offset:64
	v_and_b16 v2.l, 1, v2.l
	v_and_b16 v3.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	ds_load_u8_d16 v2, v213
	ds_load_u8_d16 v5, v214
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v6, 0xff800000, v170, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v3.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v164, v6
	v_cndmask_b32_e64 v6, 0xff800000, v162, s22
	ds_store_b32 v202, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	v_and_b16 v2.l, 1, v5.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v6, 0xff800000, v163, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v2.l
	v_and_b16 v2.l, 1, v2.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v203, v6
	v_cndmask_b32_e64 v5, 0xff800000, v165, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v204, v5
	v_cndmask_b32_e64 v2, 0xff800000, v166, s22
	ds_store_b32 v205, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v167, s22
	ds_store_b32 v206, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v4.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v168, s22
	ds_store_b32 v207, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v169, s22
	ds_store_b32 v208, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[2:3], v140 offset1:32
	ds_load_2addr_b32 v[160:161], v199 offset1:32
	ds_load_2addr_b32 v[162:163], v200 offset1:32
	ds_load_2addr_b32 v[164:165], v201 offset1:32
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v4, v2
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v5, v4
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v5 :: v_dual_max_f32 v5, v215, v215
.Ltmp52:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v215, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v215
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s21
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s21, 0xff800000, v235
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v5 :: v_dual_max_f32 v5, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v6, v5, v4
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v5, v2, v4 :: v_dual_sub_f32 v2, v235, v6
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v4, v160, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp63:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v5, v238, v2 :: v_dual_mov_b32 v2, v160
	v_dual_mov_b32 v235, v6 :: v_dual_mov_b32 v238, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp72:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v216, v216
	v_max_f32_e32 v216, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v160, v216
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s20
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s20, 0xff800000, v234
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v7 :: v_dual_max_f32 v7, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v8, v7, v2
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v7, v4, v2 :: v_dual_sub_f32 v2, v234, v8
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v4, v162, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp83:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v7, v237, v2 :: v_dual_mov_b32 v2, v162
	v_mov_b32_e32 v237, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp92:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v217, v217
	v_max_f32_e32 v217, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v162, v217
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v232
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v234, v8
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp99:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v9, v232, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v239, v9, v2 :: v_dual_mov_b32 v2, v4
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v9, v4, v2
.Ltmp102:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v232, v239
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v4, v164, v164
	v_mov_b32_e32 v232, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp104:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v9, v236, v2
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v164
	v_mov_b32_e32 v236, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp113:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v218, v218
	v_max_f32_e32 v218, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v164, v218
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v230
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v4
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v127
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v127 :: v_dual_max_f32 v127, v230, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v241, v127, v2 :: v_dual_mov_b32 v2, v4
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v240, v4, v2
.Ltmp123:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v230, v241
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v3, v3
	v_mov_b32_e32 v230, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp125:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v240, v233, v2
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v3
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp134:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v219, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v219, v4, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v3, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp141:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v228, v228
	v_dual_max_f32 v243, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v242, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp144:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v2, v228, v243 :: v_dual_max_f32 v3, v161, v161
	v_mov_b32_e32 v228, v243
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s17
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v242, v231, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v161 :: v_dual_mov_b32 v231, v242
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v220, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v220, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v161, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v226, v226
.Ltmp160:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v245, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v244, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp163:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v2, v226, v245 :: v_dual_max_f32 v3, v163, v163
	v_mov_b32_e32 v226, v245
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s16
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v244, v229, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v163 :: v_dual_mov_b32 v229, v244
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v221, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v163, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp179:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v223, v223
	v_dual_max_f32 v247, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v246, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp182:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v2, v223, v247 :: v_dual_max_f32 v3, v165, v165
	v_mov_b32_e32 v223, v247
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v246, v227, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v165 :: v_dual_mov_b32 v227, v246
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
.Ltmp191:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v222, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v165, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v233, v240 :: v_dual_mov_b32 v4, v3
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v225, v225
.Ltmp198:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v249, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v248, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp201:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v225, v249
	v_mov_b32_e32 v225, v249
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v248, v224, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v224, v248
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s51, v125
	v_or_b32_e32 v3, s51, v171
	v_or_b32_e32 v4, s51, v172
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s22, s51, s77
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v5, s51, v173
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s51, v175
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v3
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v3, s51, v250
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s23, s22, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v4
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v4, s51, v251
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v2
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s23, v106
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v6, s51, v174
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s20, s31, v3
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v3, s23, v133
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v5
	v_cmp_gt_i32_e64 s21, s31, v4
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v4, s23, v134
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v6
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v5, s23, v107
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v6, s23, v135
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v7, s23, v108
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v8, s23, v109
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v9, s23, v110
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s20
	v_add_nc_u32_e32 v129, 0, v104
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v246, s51, v132
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x7
	buffer_load_u8 v127, v2, s[64:67], 0 offen
	buffer_load_u8 v3, v3, s[64:67], 0 offen
	buffer_load_u8 v4, v4, s[64:67], 0 offen
	buffer_load_u8 v5, v5, s[64:67], 0 offen
	buffer_load_u8 v6, v6, s[64:67], 0 offen
	buffer_load_u8 v7, v7, s[64:67], 0 offen
	buffer_load_u8 v8, v8, s[64:67], 0 offen
	buffer_load_u8 v9, v9, s[64:67], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v2, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v246
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v136, v127
	s_waitcnt vmcnt(6)
	ds_store_b8 v136, v3 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v137, v4
	s_waitcnt vmcnt(4)
	ds_store_b8 v137, v5 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v138, v6
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v7 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v139, v8
	s_waitcnt vmcnt(0)
	ds_store_b8 v139, v9 offset:64
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v128, 0, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v9, 0, v105
	ds_load_b64 v[162:163], v129
	ds_load_b64 v[160:161], v128
	v_add_nc_u32_e32 v127, 0, v195
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s81, s6, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[164:165], v9
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s79, s7, s15
	s_and_b32 s59, s8, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[166:167], v127
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v7, v6
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v4, v3
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v2, v1
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s53, s9, s15
	s_and_b32 s82, s10, s15
	s_and_b32 s80, s11, s15
	s_and_b32 s78, s12, s15
	s_and_b32 s58, s13, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[160:161], v[111:112], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[162:163], v[113:114], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[164:165], v[115:116], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[166:167], v[117:118], v[2:9] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v246, v150
	v_cmp_le_i32_e64 s15, v246, v151
	v_cmp_le_i32_e64 s16, v246, v152
	v_cmp_le_i32_e64 s17, v246, v153
	v_cmp_le_i32_e64 s18, v246, v154
	v_cmp_le_i32_e64 s19, v246, v155
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s23, vcc_lo, s81
	s_and_b32 s15, s15, s79
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s20, v246, v156
	v_cmp_le_i32_e64 s21, v246, v157
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
	v_or_b32_e32 v127, s51, v148
	v_or_b32_e32 v128, s51, v149
	v_add_lshl_u32 v130, s22, v148, 1
	v_or_b32_e32 v129, s51, v147
	v_or_b32_e32 v131, s51, v146
	v_cmp_gt_i32_e32 vcc_lo, s31, v127
	v_or_b32_e32 v140, s51, v145
	v_add_nc_u32_e32 v165, 24, v130
	v_add_nc_u32_e32 v161, 4, v130
	v_or_b32_e32 v141, s51, v144
	v_cndmask_b32_e32 v127, 0x80000000, v130, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v128
	v_add_nc_u32_e32 v164, 20, v130
	v_or_b32_e32 v160, s51, v143
	v_or_b32_e32 v163, s51, v142
	v_dual_cndmask_b32 v128, 0x80000000, v161 :: v_dual_add_nc_u32 v161, 12, v130
	v_add_nc_u32_e32 v162, 8, v130
	v_cmp_gt_i32_e32 vcc_lo, s31, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v129, 0x80000000, v162, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v131
	v_add_nc_u32_e32 v162, 16, v130
	v_dual_cndmask_b32 v131, 0x80000000, v161 :: v_dual_add_nc_u32 v130, 28, v130
	v_cmp_gt_i32_e32 vcc_lo, s31, v140
	v_cndmask_b32_e32 v140, 0x80000000, v162, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v141
	v_cndmask_b32_e32 v141, 0x80000000, v164, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v160
	v_cndmask_b32_e32 v160, 0x80000000, v165, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v163
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	s_clause 0x7
	buffer_load_u16 v239, v127, s[72:75], 0 offen
	buffer_load_u16 v248, v128, s[72:75], 0 offen
	buffer_load_u16 v245, v129, s[72:75], 0 offen
	buffer_load_u16 v244, v131, s[72:75], 0 offen
	buffer_load_u16 v243, v140, s[72:75], 0 offen
	buffer_load_u16 v242, v141, s[72:75], 0 offen
	buffer_load_u16 v241, v160, s[72:75], 0 offen
	buffer_load_u16 v240, v130, s[72:75], 0 offen
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v127, off, off         ; 4-byte Folded Reload
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s28, v246, v178
	v_cmp_le_i32_e64 s29, v246, v176
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v246, v127
	scratch_load_b32 v127, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v246, v127
	scratch_load_b32 v127, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v246, v127
	scratch_load_b32 v127, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v246, v127
	scratch_load_b32 v127, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v246, v127
	scratch_load_b32 v127, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v246, v127
	scratch_load_b32 v127, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v246, v127
	scratch_load_b32 v127, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s20, s20, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s78
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v246, v127
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v127, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s21, s21, s29
	s_and_b32 s21, s21, s58
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v246, v127
	scratch_load_b32 v127, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s22, vcc_lo, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s81
	s_and_b32 s22, s22, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v246, v127
	scratch_load_b32 v127, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s23, s81, exec_lo
	s_and_b32 s15, s15, s79
	s_or_b32 s81, s23, s22
	s_and_b32 s15, s15, exec_lo
	s_and_not1_b32 s22, s53, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v246, v127
	scratch_load_b32 v127, off, off offset:44 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s25, v246, v127
	scratch_load_b32 v127, off, off offset:48 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s26, v246, v127
	scratch_load_b32 v127, off, off offset:52 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s27, v246, v127
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
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v247, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v8, 0xff800000
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v6, 0xff800000
	v_mov_b32_e32 v241, 0xff800000
	v_mov_b32_e32 v239, 0xff800000
.LBB0_12:                               ; %Flow290
	s_load_b32 s53, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s46, v65
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v5
	v_cmp_gt_f32_e64 s1, 0x800000, v7
	v_cmp_gt_f32_e64 s15, 0x800000, v9
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v27, v190
.Ltmp203:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v1, v26, v61
	v_dual_add_f32 v3, v28, v191 :: v_dual_add_f32 v4, v29, v192
	v_dual_add_f32 v61, v22, v198 :: v_dual_add_f32 v64, v25, v64
	v_dual_add_f32 v62, v23, v62 :: v_dual_add_f32 v63, v24, v63
.Ltmp205:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v22, 0, 0x42000000, s0
	v_cndmask_b32_e64 v23, 0, 32, s0
	v_cndmask_b32_e64 v27, 0, 32, s1
	v_cndmask_b32_e64 v29, 0, 32, s15
	v_cmp_gt_f32_e64 s0, 0x800000, v240
	v_cndmask_b32_e64 v26, 0, 0x42000000, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v242
	v_ldexp_f32 v24, v7, v27
	v_ldexp_f32 v25, v9, v29
	v_cndmask_b32_e64 v27, 0, 0x42000000, s0
	v_cndmask_b32_e64 v29, 0, 32, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v244
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v30, v50 :: v_dual_add_f32 v50, v31, v51
	v_dual_add_f32 v51, v32, v52 :: v_dual_add_f32 v52, v33, v57
.Ltmp207:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v28, 0, 0x42000000, s15
	v_ldexp_f32 v23, v5, v23
	v_cndmask_b32_e64 v30, 0, 0x42000000, s1
	v_cndmask_b32_e64 v31, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v246
	v_cmp_gt_f32_e64 s15, 0x800000, v248
	v_cndmask_b32_e64 v33, 0, 32, s0
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v57, v38, v53 :: v_dual_add_f32 v58, v39, v54
	v_dual_add_f32 v59, v40, v55 :: v_dual_add_f32 v60, v41, v56
	v_dual_add_f32 v53, v34, v193 :: v_dual_add_f32 v54, v35, v194
	v_dual_add_f32 v55, v36, v196 :: v_dual_add_f32 v56, v37, v197
.Ltmp209:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v23, v23
	v_cndmask_b32_e64 v35, 0, 32, s1
	v_cndmask_b32_e64 v37, 0, 32, s15
	v_ldexp_f32 v29, v240, v29
	v_ldexp_f32 v33, v244, v33
	v_log_f32_e32 v24, v24
	v_log_f32_e32 v25, v25
	v_ldexp_f32 v31, v242, v31
	v_ldexp_f32 v35, v246, v35
	v_ldexp_f32 v37, v248, v37
	v_log_f32_e32 v29, v29
	v_log_f32_e32 v33, v33
	v_cndmask_b32_e64 v32, 0, 0x42000000, s0
	v_log_f32_e32 v31, v31
	v_log_f32_e32 v35, v35
	v_log_f32_e32 v37, v37
	v_sub_f32_e32 v22, v23, v22
	v_cndmask_b32_e64 v34, 0, 0x42000000, s1
	v_cndmask_b32_e64 v36, 0, 0x42000000, s15
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v20, v20, v182
.Ltmp211:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v23, v24, v26 :: v_dual_sub_f32 v24, v25, v28
	v_sub_f32_e32 v25, v29, v27
	v_dual_sub_f32 v27, v33, v32 :: v_dual_add_f32 v6, v6, v22
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v5
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v26, v31, v30 :: v_dual_sub_f32 v29, v37, v36
	v_sub_f32_e32 v28, v35, v34
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v8, v8, v23 :: v_dual_add_f32 v23, v241, v25
	v_add_f32_e32 v25, v245, v27
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v5, 0, v6, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v7
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v27, v249, v29
.Ltmp212:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v160, v10, v121 :: v_dual_add_f32 v163, v13, v126
	v_add_f32_e32 v161, v11, v123
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp213:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v6, 0, v8, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v9
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v22, v239, v24
.Ltmp214:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v18, v18, v183 :: v_dual_add_f32 v19, v19, v177
.Ltmp215:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 0x60, v9
	v_cndmask_b32_e64 v7, 0, v22, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v240
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v24, v243, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v26, v247, v28 :: v_dual_add_nc_u32 v9, 0, v9
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v28, 28, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v8, 0, v23, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v242
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_barrier
.Ltmp216:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v164, v14, v179
.Ltmp217:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s14, vcc_lo
	s_mov_b32 s51, 0x31027000
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v22, 0, v24, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v244
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s17, s61, 0xffff
	s_mov_b32 s16, s60
	s_mov_b32 s18, s50
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v23, 0, v25, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v246
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_mov_b32 s19, s51
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v162, v12, v124 :: v_dual_add_f32 v167, v17, v119
	v_dual_add_f32 v21, v21, v120 :: v_dual_add_f32 v166, v16, v181
.Ltmp219:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v24, 0, v26, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v248
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v26, v189, 1, 0
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s15, v48, v48
	v_bfe_u32 v10, v99, 16, 1
	v_cmp_o_f32_e64 s1, v68, v68
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v25, 0, v27, s0
	v_add3_u32 v27, v9, v102, v67
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v9, v9, v28
	.loc	1 264 17                        ; attention_backward.py:264:17
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v177, v27
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v9
	v_add_lshl_u32 v6, s47, v65, 2
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v165, v15, v180 :: v_dual_lshlrev_b32 v102, 2, v65
.Ltmp221:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v8, 0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v7, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v9, v48, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_bfe_u32 v11, v96, 16, 1
	v_bfe_u32 v12, v75, 16, 1
	v_bfe_u32 v13, v72, 16, 1
	v_add3_u32 v9, v48, v9, 0x7fff
	v_bfe_u32 v14, v95, 16, 1
	v_add3_u32 v11, v96, v11, 0x7fff
	v_bfe_u32 v15, v92, 16, 1
	v_add3_u32 v13, v72, v13, 0x7fff
	v_bfe_u32 v16, v88, 16, 1
	v_bfe_u32 v17, v84, 16, 1
	v_cmp_o_f32_e64 s0, v69, v69
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v5, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[49:52]
	ds_store_b128 v8, v[57:60] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[53:56] offset:48
	ds_store_b128 v8, v[61:64] offset:64
	ds_store_b128 v8, v[18:21] offset:80
	ds_store_b128 v8, v[160:163] offset:96
	ds_store_b128 v8, v[164:167] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v5
	s_and_b32 s17, s63, 0xffff
	s_mov_b32 s16, s62
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v15, v92, v15, 0x7fff
	v_add3_u32 v17, v84, v17, 0x7fff
	v_bfe_u32 v22, v91, 16, 1
	v_bfe_u32 v23, v87, 16, 1
	v_bfe_u32 v24, v80, 16, 1
	v_bfe_u32 v25, v76, 16, 1
	v_bfe_u32 v26, v83, 16, 1
	v_add_nc_u32_e32 v28, v136, v0
	v_add3_u32 v23, v87, v23, 0x7fff
	v_bfe_u32 v27, v79, 16, 1
	v_add3_u32 v25, v76, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v27, v79, v27, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[16:19], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v5, v69, 16, 1
	v_add3_u32 v6, v70, v7, 0x7fff
	v_bfe_u32 v7, v68, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v5, v69, v5, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v68, v7, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s15
	v_add3_u32 v9, v99, v10, 0x7fff
	v_bfe_u32 v10, v97, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v98, 16, 1
	v_cmp_o_f32_e64 s1, v97, v97
	v_add3_u32 v10, v97, v10, 0x7fff
	v_cmp_o_f32_e64 s15, v96, v96
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_add3_u32 v7, v98, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v74, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s15
	v_add3_u32 v11, v75, v12, 0x7fff
	v_bfe_u32 v12, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_cmp_o_f32_e64 s15, v72, v72
	v_add3_u32 v10, v74, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v12, v73, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s15
	v_add3_u32 v13, v95, v14, 0x7fff
	v_bfe_u32 v14, v93, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v94, 16, 1
	v_cmp_o_f32_e64 s1, v93, v93
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v14, v93, v14, 0x7fff
	v_cmp_o_f32_e64 s15, v92, v92
	v_add3_u32 v12, v94, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v86, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s15
	v_add3_u32 v15, v88, v16, 0x7fff
	v_bfe_u32 v16, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_cmp_o_f32_e64 s15, v84, v84
	v_add3_u32 v14, v86, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	v_add3_u32 v16, v85, v16, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s15
	v_add3_u32 v17, v91, v22, 0x7fff
	v_bfe_u32 v22, v89, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v74, v74
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v90, 16, 1
	v_add3_u32 v22, v89, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_cmp_o_f32_e64 s15, v87, v87
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e64 s0, v94, v94
	v_add3_u32 v16, v90, v16, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v78, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s15
	v_add3_u32 v23, v80, v24, 0x7fff
	v_bfe_u32 v24, v77, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cmp_o_f32_e64 s15, v76, v76
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	v_cmp_o_f32_e64 s0, v86, v86
	v_add3_u32 v22, v78, v22, 0x7fff
	v_add3_u32 v24, v77, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v77, v77
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s15
	v_add3_u32 v25, v83, v26, 0x7fff
	v_bfe_u32 v26, v81, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e64 s0, v90, v90
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s1
	v_cmp_o_f32_e64 s1, v81, v81
	v_add3_u32 v26, v81, v26, 0x7fff
	v_bfe_u32 v24, v82, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v78, v78
	v_lshlrev_b32_e32 v68, 7, v132
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_xad_u32 v26, 0x90, v252, 0
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	ds_store_b16 v28, v5
	ds_store_b16 v28, v10 offset:1024
	ds_store_b16 v28, v14 offset:2048
	ds_store_b16 v28, v22 offset:3072
	ds_store_b16_d16_hi v26, v5
	ds_store_b16_d16_hi v26, v10 offset:1024
	ds_store_b16_d16_hi v26, v14 offset:2048
	ds_store_b16_d16_hi v26, v22 offset:3072
	v_lshlrev_b32_e32 v5, 4, v0
	v_lshlrev_b32_e32 v26, 6, v71
	v_xad_u32 v10, 0x120, v252, 0
	v_add3_u32 v24, v82, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v82, v82
	v_and_b32_e32 v5, 0x70, v5
	v_xad_u32 v22, 0x240, v252, 0
	v_cndmask_b16 v24.l, 0x7fff, v25.h, vcc_lo
	v_xad_u32 v14, 0x1b0, v252, 0
	v_cmp_o_f32_e64 s15, v79, v79
	v_or3_b32 v5, v5, v26, v68
	ds_store_b16 v10, v6
	ds_store_b16 v10, v11 offset:1024
	ds_store_b16 v10, v15 offset:2048
	ds_store_b16 v10, v23 offset:3072
	ds_store_b16_d16_hi v14, v6
	ds_store_b16_d16_hi v14, v11 offset:1024
	ds_store_b16_d16_hi v14, v15 offset:2048
	ds_store_b16_d16_hi v14, v23 offset:3072
	v_xad_u32 v6, 0x2d0, v252, 0
	v_xad_u32 v10, 0x360, v252, 0
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	ds_store_b16 v22, v7
	ds_store_b16 v22, v12 offset:1024
	ds_store_b16 v22, v16 offset:2048
	ds_store_b16 v22, v24 offset:3072
	ds_store_b16_d16_hi v6, v7
	ds_store_b16_d16_hi v6, v12 offset:1024
	ds_store_b16_d16_hi v6, v16 offset:2048
	ds_store_b16_d16_hi v6, v24 offset:3072
	v_add_nc_u32_e32 v7, 0, v5
	v_xad_u32 v14, v5, 16, 0
	v_xad_u32 v6, 0x3f0, v252, 0
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s15
	ds_store_b16 v10, v9
	ds_store_b16 v10, v13 offset:1024
	ds_store_b16 v10, v17 offset:2048
	ds_store_b16 v10, v25 offset:3072
	ds_store_b16_d16_hi v6, v9
	ds_store_b16_d16_hi v6, v13 offset:1024
	ds_store_b16_d16_hi v6, v17 offset:2048
	ds_store_b16_d16_hi v6, v25 offset:3072
	v_xad_u32 v6, v5, 32, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v7
	ds_load_b128 v[13:16], v14
	v_xad_u32 v7, v5, 48, 0
	v_xad_u32 v17, v5, 64, 0
	v_xad_u32 v22, 0x50, v5, 0
	v_xad_u32 v23, 0x60, v5, 0
	v_xad_u32 v5, 0x70, v5, 0
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[33:36], v17
	ds_load_b128 v[37:40], v22
	ds_load_b128 v[41:44], v23
	ds_load_b128 v[45:48], v5
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[49:52]
	ds_store_b128 v8, v[57:60] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[53:56] offset:48
	ds_store_b128 v8, v[61:64] offset:64
	ds_store_b128 v8, v[18:21] offset:80
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s54
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v8, v[160:163] offset:96
	ds_store_b128 v8, v[164:167] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v64, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v65
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_mad_u64_u32 v[119:120], null, s76, v132, v[66:67]
	v_dual_mov_b32 v65, 0x7632 :: v_dual_lshlrev_b32 v2, 2, v132
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 1, v1
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s53, v1
	v_cndmask_b32_e64 v1, 0x90, 0, s14
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[120:121], null, s55, 12, v[119:120]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v4, 0, v2, v101
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s53, v3
	v_xor_b32_e32 v1, v1, v184
	v_mul_u32_u24_e32 v3, 0x48, v122
	v_dual_cndmask_b32 v64, 0x1054, v64 :: v_dual_lshlrev_b32 v5, 5, v67
	v_dual_cndmask_b32 v65, 0x3276, v65 :: v_dual_and_b32 v6, 52, v188
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_mov_b32 v192, v177 :: v_dual_and_b32 v7, 2, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v179, v4
	v_or_b32_e32 v183, v1, v187
	v_lshl_or_b32 v1, v100, 2, v3
	v_or3_b32 v5, v5, v6, v7
	v_lshl_or_b32 v64, v64, 8, v64
	v_lshl_or_b32 v65, v65, 8, v65
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[121:122], null, s55, 20, v[119:120]
	v_mad_u64_u32 v[122:123], null, s55, 24, v[119:120]
	v_mad_u64_u32 v[123:124], null, s55, 28, v[119:120]
	v_or3_b32 v124, v1, v185, v186
	v_or3_b32 v184, v187, v186, v184
	v_or3_b32 v185, v5, v185, v125
	v_or_b32_e32 v186, v186, v102
	v_or_b32_e32 v187, v68, v2
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mov_b32 v191, v158 :: v_dual_and_b32 v64, 0x540054, v64
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v65, 0x760076, v65
	v_xor_b32_e32 v3, 0x120, v183
	v_xor_b32_e32 v4, 0x240, v183
	v_xor_b32_e32 v1, 0x360, v183
	v_xor_b32_e32 v8, 16, v124
	v_xor_b32_e32 v17, 32, v124
	v_xor_b32_e32 v18, 48, v124
	v_xor_b32_e32 v19, 64, v124
	v_xor_b32_e32 v6, 0x50, v124
	v_xor_b32_e32 v7, 0x60, v124
	v_xor_b32_e32 v20, 0x70, v124
	v_xor_b32_e32 v5, 0x90, v184
	v_xor_b32_e32 v21, 0x120, v184
	v_xor_b32_e32 v22, 0x1b0, v184
	v_xor_b32_e32 v23, 16, v185
	v_xor_b32_e32 v24, 32, v185
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
	v_xor_b32_e32 v2, 0x7bc, v186
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
	v_lshl_add_u32 v190, v132, 1, 0
	v_add_nc_u32_e32 v193, 0, v104
	v_add_nc_u32_e32 v194, 0, v105
	v_add_nc_u32_e32 v195, 0, v195
	v_add_nc_u32_e32 v196, 0, v3
	v_dual_mov_b32 v64, v160 :: v_dual_add_nc_u32 v197, 0, v4
	v_add_nc_u32_e32 v198, 0, v1
	v_add_nc_u32_e32 v199, 0, v8
	v_add_nc_u32_e32 v200, 0, v17
	v_add_nc_u32_e32 v201, 0, v18
	v_add_nc_u32_e32 v202, 0, v19
	v_add_nc_u32_e32 v203, 0, v6
	v_add_nc_u32_e32 v204, 0, v7
	v_add_nc_u32_e32 v205, 0, v20
	v_add_nc_u32_e32 v206, 0, v5
	v_dual_mov_b32 v18, v160 :: v_dual_add_nc_u32 v207, 0, v21
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v208, 0, v22
	v_dual_mov_b32 v20, v160 :: v_dual_add_nc_u32 v209, 0, v23
	v_dual_mov_b32 v19, v160 :: v_dual_add_nc_u32 v210, 0, v24
	v_dual_mov_b32 v22, v160 :: v_dual_add_nc_u32 v211, 0, v49
	v_dual_mov_b32 v21, v160 :: v_dual_add_nc_u32 v212, 0, v50
	v_dual_mov_b32 v24, v160 :: v_dual_add_nc_u32 v213, 0, v51
	v_dual_mov_b32 v23, v160 :: v_dual_add_nc_u32 v214, 0, v52
	v_add_nc_u32_e32 v215, 0, v53
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v216, 0, v54
	v_dual_mov_b32 v4, v160 :: v_dual_add_nc_u32 v217, 0, v55
	v_dual_mov_b32 v3, v160 :: v_dual_add_nc_u32 v218, 0, v56
	v_dual_mov_b32 v6, v160 :: v_dual_add_nc_u32 v219, 0, v57
	v_dual_mov_b32 v5, v160 :: v_dual_add_nc_u32 v220, 0, v58
	v_dual_mov_b32 v8, v160 :: v_dual_add_nc_u32 v221, 0, v59
	v_dual_mov_b32 v7, v160 :: v_dual_add_nc_u32 v222, 0, v60
	v_add_nc_u32_e32 v223, 0, v61
	v_add_nc_u32_e32 v224, 0, v62
	v_add_nc_u32_e32 v225, 0, v63
	v_add_nc_u32_e32 v226, 0, v2
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
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, v160
	v_mov_b32_e32 v59, v160
	v_mov_b32_e32 v60, v160
	v_mov_b32_e32 v61, v160
	v_mov_b32_e32 v62, v160
	v_mov_b32_e32 v63, v160
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, v160
	v_mov_b32_e32 v51, v160
	v_mov_b32_e32 v52, v160
	v_mov_b32_e32 v53, v160
	v_mov_b32_e32 v54, v160
	v_mov_b32_e32 v55, v160
	v_mov_b32_e32 v56, v160
	v_mov_b32_e32 v2, v160
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s29, s42, s43
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s30, 0x76543210
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
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
	v_mov_b16_e64 v140.h, v90.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v79.l, v65.l
	v_bfe_i32 v65, v78, 0, 8
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v141.h, v90.l
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
	v_mul_f32_e32 v87, v158, v65
	v_cvt_f32_i32_e32 v65, v68
	v_mul_f32_e32 v85, v191, v66
	v_cvt_f32_i32_e32 v68, v71
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v130.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v78.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v88, v158, v65
	v_cvt_f32_i32_e32 v65, v70
	v_mul_f32_e32 v71, v191, v68
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v70.h, v92.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v92, 15, v81
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v89, v158, v65 :: v_dual_and_b32 v94, 15, v79
	v_cvt_f32_i32_e32 v65, v72
	v_cvt_f32_i32_e32 v72, v73
	v_mul_f32_e32 v86, v191, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v67.h, v95.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v95, 15, v78
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v73, v158, v65
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
	v_and_b16 v140.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v101.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s16, 7, v75.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v161, -16, v95
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
	v_and_b16 v141.l, v77.l, 15
	v_lshrrev_b16 v77.l, 4, v102.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v92, v95, v161, s16
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
	v_or_b32_e32 v162, -16, v96
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v78, v99, v78, vcc_lo
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v75, -16, v93
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v65, v65, v91
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v164, -16, v98
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v104
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v163, -16, v97
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v75, v93, v75, s14
	v_cndmask_b32_e64 v93, v96, v162, s17
	v_cndmask_b32_e64 v95, v98, v164, s19
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s14, 0, v80.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v94, v97, v163, s18
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s15, 0, v79.l
	v_cmp_gt_i16_e64 s17, 0, v100.l
	v_cmp_gt_i16_e64 s18, 0, v101.l
	v_cmp_gt_i16_e64 s19, 0, v102.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v79, -16, v129
	v_or_b32_e32 v80, -16, v130
	v_or_b32_e32 v96, -16, v140
	v_or_b32_e32 v97, -16, v141
	v_or_b32_e32 v98, -16, v77
	v_or_b32_e32 v81, -16, v131
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v79, v129, v79, s14
	v_cndmask_b32_e64 v80, v130, v80, s15
	v_cndmask_b32_e64 v96, v140, v96, s17
	v_cndmask_b32_e64 v97, v141, v97, s18
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
	v_mov_b32_e32 v163, v160
	v_mov_b32_e32 v165, v160
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v65, v75, v65, 0x7fff
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v167, v160
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
	v_mov_b32_e32 v162, v160
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v78.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v164, v160
	v_mov_b32_e32 v166, v160
	v_mov_b32_e32 v161, v160
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v90, 0x3fb8aa3b, v90
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v65.l, 1, v91.h
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v90, v85, v82 :: v_dual_lshlrev_b32 v85, 16, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s19, 1, v65.l
	v_and_b16 v65.l, 1, v92.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_sub_f32 v82, v90, v192 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s20, 1, v65.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v65, 16, v94
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v85, v86, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 31 is_stmt 0              ; attention_backward.py:343:31
	v_dual_mul_f32 v65, 0x3fb8aa3b, v65 :: v_dual_sub_f32 v66, v85, v192
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v85, 16, v97
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v65, v87, v83
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v83, 16, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v66, v66
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v85, 0x3fb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v65, v65, v177
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v83, 0x3fb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v85, v71, v67
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v71, 16, v100
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v67, v85, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v71, 0x3fb8aa3b, v71
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v71, v73, v70
	v_dual_fmac_f32 v83, v88, v84 :: v_dual_lshlrev_b32 v84, 16, v98
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v65, v65
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_sub_f32_e32 v70, v71, v177
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_mul_f32_e32 v84, 0x3fb8aa3b, v84
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v86, 0, v67, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	.loc	1 343 21 is_stmt 1              ; attention_backward.py:343:21
	v_fmac_f32_e32 v84, v89, v69
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v73, 0, v65, vcc_lo
	v_cndmask_b32_e64 v82, 0, v71, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_dual_sub_f32 v69, v84, v177 :: v_dual_lshlrev_b32 v84, 16, v99
	.loc	1 387 27 is_stmt 1              ; attention_backward.py:387:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s64, s31
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v87, 0, v70, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v69
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_dual_mul_f32 v84, 0x3fb8aa3b, v84 :: v_dual_sub_f32 v83, v83, v177
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v84, v72, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v72, v83
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v85, 0, v69, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v68, v84, v192
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v84, 0, v66, s16
	.loc	1 386 21 is_stmt 1              ; attention_backward.py:386:21
	v_mad_u64_u32 v[65:66], null, s54, s35, v[0:1]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v83, 0, v72, s15
	.loc	1 387 27 is_stmt 1              ; attention_backward.py:387:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s63, s31
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s62, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v67, s35, v65
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s61, s31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v88, 0, v68, s20
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s59, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v68, s35, v67
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s58, s31
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v97, 0, v186
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s55, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v69, s35, v68
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s28, s31
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s27, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v70, s35, v69
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s26, s31
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v71, s35, v70
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v72, s35, v71
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v89, s35, v72
	.loc	1 387 27                        ; attention_backward.py:387:27
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
	ds_load_2addr_b32 v[168:169], v234 offset1:16
	ds_load_2addr_b32 v[93:94], v235 offset1:16
	ds_load_2addr_b32 v[170:171], v236 offset1:16
	ds_load_2addr_b32 v[172:173], v237 offset1:16
	ds_load_2addr_b32 v[174:175], v238 offset1:16
	ds_load_2addr_b32 v[95:96], v239 offset1:16
	ds_load_2addr_b32 v[140:141], v240 offset1:16
	ds_load_2addr_b32 v[104:105], v241 offset1:16
	v_dual_mov_b32 v65, v160 :: v_dual_mov_b32 v66, v161
	v_dual_mov_b32 v67, v162 :: v_dual_mov_b32 v68, v163
	v_dual_mov_b32 v69, v164 :: v_dual_mov_b32 v70, v165
	v_dual_mov_b32 v71, v166 :: v_dual_mov_b32 v72, v167
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
	v_mov_b16_e64 v246.l, v168.l
	v_mov_b16_e64 v246.h, v93.l
	v_mov_b16_e64 v247.l, v170.l
	v_mov_b16_e64 v247.h, v172.l
	v_mov_b16_e64 v248.l, v174.l
	v_mov_b16_e64 v248.h, v95.l
	v_mov_b16_e64 v249.l, v140.l
	v_mov_b16_e64 v249.h, v104.l
	v_mov_b16_e32 v89.l, v126.h
	v_mov_b16_e64 v130.l, v128.h
	v_mov_b16_e64 v91.l, v250.h
	v_mov_b16_e64 v254.l, v252.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[242:249], v[9:16], v[65:72]
	v_mov_b16_e64 v242.l, v127.l
	v_mov_b16_e64 v242.h, v90.l
	v_mov_b16_e64 v243.l, v129.l
	v_mov_b16_e64 v243.h, v131.l
	v_mov_b16_e64 v244.l, v251.l
	v_mov_b16_e64 v244.h, v92.l
	v_mov_b16_e64 v245.l, v253.l
	v_mov_b16_e64 v245.h, v255.l
	v_mov_b16_e64 v246.l, v169.l
	v_mov_b16_e64 v246.h, v94.l
	v_mov_b16_e64 v247.l, v171.l
	v_mov_b16_e64 v247.h, v173.l
	v_mov_b16_e64 v248.l, v175.l
	v_mov_b16_e64 v248.h, v96.l
	v_mov_b16_e64 v249.l, v141.l
	v_mov_b16_e64 v249.h, v105.l
	v_mov_b16_e64 v93.l, v168.h
	v_mov_b16_e64 v172.l, v170.h
	v_mov_b16_e64 v95.l, v174.h
	v_mov_b16_e64 v104.l, v140.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[242:249], v[25:32], v[65:72]
	v_dual_mov_b32 v97, v89 :: v_dual_mov_b32 v98, v130
	v_dual_mov_b32 v99, v91 :: v_dual_mov_b32 v100, v254
	v_dual_mov_b32 v101, v93 :: v_dual_mov_b32 v102, v172
	v_mov_b32_e32 v103, v95
	v_mov_b16_e64 v131.l, v129.h
	v_mov_b16_e64 v255.l, v253.h
	v_mov_b16_e64 v173.l, v171.h
	v_mov_b16_e64 v105.l, v141.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[33:40], v[65:72]
	v_mov_b16_e32 v90.l, v127.h
	v_mov_b16_e64 v92.l, v251.h
	v_mov_b16_e64 v94.l, v169.h
	v_mov_b16_e64 v96.l, v175.h
	v_mov_b32_e32 v91, v131
	v_mov_b32_e32 v93, v255
	v_mov_b32_e32 v95, v173
	v_mov_b32_e32 v97, v105
	v_or_b32_e32 v171, 2, v125
	v_or_b32_e32 v172, 4, v125
	v_or_b32_e32 v173, 6, v125
	v_or_b32_e32 v174, 8, v125
	v_wmma_f32_16x16x16_bf16 v[65:72], v[90:97], v[41:48], v[65:72]
	v_or_b32_e32 v175, 10, v125
	v_or_b32_e32 v250, 12, v125
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
	v_wmma_f32_16x16x16_bf16 v[17:24], v[82:89], v[66:73], v[17:24]
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v81, v190 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[74:81], v[66:73], v[1:8]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v65, s38, v125
	v_or_b32_e32 v66, s38, v171
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s54, s38, s77
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v67, s38, v172
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s22, s54, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s19, s31, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s38, v173
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v162, v160 :: v_dual_add_nc_u32 v65, s22, v106
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v69, s38, v174
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s21, s31, v67
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v161, v160 :: v_dual_add_nc_u32 v66, s22, v133
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s38, v175
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v68
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v164, v160 :: v_dual_add_nc_u32 v67, s22, v134
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s38, v250
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v69
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v163, v160 :: v_dual_add_nc_u32 v68, s22, v107
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s38, v251
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v70
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v166, v160 :: v_dual_add_nc_u32 v69, s22, v135
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v71
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v165, v160 :: v_dual_add_nc_u32 v70, s22, v108
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v72
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v167, v160 :: v_dual_add_nc_u32 v72, s22, v110
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v71, s22, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, s38, v132
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
	v_dual_mov_b32 v66, v160 :: v_dual_add_nc_u32 v65, 0, v159
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v161 :: v_dual_mov_b32 v70, v164
	v_dual_mov_b32 v68, v162 :: v_dual_mov_b32 v69, v163
	v_dual_mov_b32 v72, v166 :: v_dual_mov_b32 v71, v165
	v_mov_b32_e32 v73, v167
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
	v_cmp_le_i32_e32 vcc_lo, v82, v150
	v_cmp_le_i32_e64 s22, v82, v151
	v_cmp_le_i32_e64 s23, v82, v152
	v_cmp_le_i32_e64 s24, v82, v153
	v_cmp_le_i32_e64 s25, v82, v154
	v_cmp_le_i32_e64 s26, v82, v155
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s55, vcc_lo, s70
	s_and_b32 s22, s22, s68
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s27, v82, v156
	v_cmp_le_i32_e64 s28, v82, v157
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
	v_or_b32_e32 v65, s38, v148
	v_add_lshl_u32 v83, s54, v125, 1
	v_or_b32_e32 v90, s38, v149
	v_add_lshl_u32 v101, s54, v148, 1
	v_or_b32_e32 v92, s38, v147
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
	v_or_b32_e32 v93, s38, v146
	v_add_nc_u32_e32 v99, 8, v101
	v_or_b32_e32 v94, s38, v145
	v_or_b32_e32 v95, s38, v144
	v_cndmask_b32_e32 v90, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v92
	v_add_nc_u32_e32 v98, 12, v101
	v_or_b32_e32 v96, s38, v143
	v_or_b32_e32 v97, s38, v142
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
	v_cmp_le_i32_e64 s27, v82, v178
	v_cmp_le_i32_e64 s28, v82, v176
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
	scratch_load_b32 v40, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v148
	v_cmp_gt_i32_e64 s2, s53, v149
	v_cmp_gt_i32_e64 s3, s53, v147
	v_cmp_gt_i32_e64 s5, s53, v146
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s53, v145
	v_cmp_gt_i32_e64 s7, s53, v144
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v39, 16, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s53, v143
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v38, 18, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s53, v142
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v37, 20, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s53, v39
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v36, 22, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s53, v38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 24, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s53, v37
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v34, 26, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s53, v36
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v33, 28, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s53, v35
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v32, 30, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s53, v34
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v31, 32, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s53, v33
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v30, 34, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s53, v32
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v29, 36, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s53, v31
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v28, 38, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s53, v30
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v27, 40, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s53, v29
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v26, 42, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s53, v28
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v25, 44, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s53, v27
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 46, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s53, v26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 48, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s53, v25
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 50, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s53, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 52, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s53, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 54, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s53, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 56, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s53, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 60, v148
	v_or_b32_e32 v10, 58, v148
	v_or_b32_e32 v0, 62, v148
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s53, v12
	v_cmp_gt_i32_e64 s30, s53, v11
	v_cmp_gt_i32_e32 vcc_lo, s53, v9
	v_cmp_gt_i32_e64 s0, s53, v10
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, vcc_lo
	s_and_b32 s0, s4, s0
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v40, v40, s53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v41, v40, v148, 2
	v_add_lshl_u32 v42, v40, v149, 2
	v_add_lshl_u32 v43, v40, v147, 2
	v_add_lshl_u32 v44, v40, v143, 2
	v_add_lshl_u32 v39, v40, v39, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v57, v41, s[36:39], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	v_add_lshl_u32 v41, v40, v146, 2
	s_clause 0x1
	buffer_store_b32 v58, v42, s[36:39], 0 offen
	buffer_store_b32 v59, v43, s[36:39], 0 offen
	v_add_lshl_u32 v42, v40, v145, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v43, v40, v144, 2
	v_add_lshl_u32 v38, v40, v38, 2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v41, s[36:39], 0 offen
	buffer_store_b32 v61, v42, s[36:39], 0 offen
	v_add_lshl_u32 v41, v40, v142, 2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v37, v40, v37, 2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v36, v40, v36, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v35, v40, v35, 2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v34, v40, v34, 2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v33, v40, v33, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v32, v40, v32, 2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v31, v40, v31, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v30, v40, v30, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v29, v40, v29, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v62, v43, s[36:39], 0 offen
	buffer_store_b32 v63, v44, s[36:39], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v64, v41, s[36:39], 0 offen
	buffer_store_b32 v49, v39, s[36:39], 0 offen
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v50, v38, s[36:39], 0 offen
	buffer_store_b32 v51, v37, s[36:39], 0 offen
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v52, v36, s[36:39], 0 offen
	buffer_store_b32 v53, v35, s[36:39], 0 offen
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_clause 0x3
	buffer_store_b32 v54, v34, s[36:39], 0 offen
	buffer_store_b32 v55, v33, s[36:39], 0 offen
	buffer_store_b32 v56, v32, s[36:39], 0 offen
	buffer_store_b32 v17, v31, s[36:39], 0 offen
	v_add_lshl_u32 v17, v40, v28, 2
	s_clause 0x1
	buffer_store_b32 v18, v30, s[36:39], 0 offen
	buffer_store_b32 v19, v29, s[36:39], 0 offen
	v_add_lshl_u32 v18, v40, v27, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v40, v26, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v40, v25, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v40, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v40, v15, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v40, v14, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v40, v13, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_clause 0x1
	buffer_store_b32 v24, v16, s[36:39], 0 offen
	buffer_store_b32 v1, v15, s[36:39], 0 offen
	v_add_lshl_u32 v1, v40, v12, 2
	s_clause 0x1
	buffer_store_b32 v2, v14, s[36:39], 0 offen
	buffer_store_b32 v3, v13, s[36:39], 0 offen
	v_add_lshl_u32 v2, v40, v11, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v0
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v40, v10, 2
	v_add_lshl_u32 v9, v40, v9, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v40, v0, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	buffer_store_b32 v8, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp222:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25988
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 64
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bf16_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
