	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshrrev_b32_e32 v104, 5, v0
	v_and_b32_e32 v73, 31, v0
	s_clause 0x2
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_load_b128 s[40:43], s[0:1], 0x38
	v_and_b32_e32 v119, 15, v0
	v_or_b32_e32 v110, 12, v104
	v_or_b32_e32 v105, 2, v104
	v_or_b32_e32 v111, 14, v104
	v_or_b32_e32 v106, 4, v104
	v_or_b32_e32 v107, 6, v104
	v_or_b32_e32 v109, 10, v104
	v_or_b32_e32 v108, 8, v104
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v115, 0, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[85:86], null, s34, v104, v[73:74]
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
	v_mad_u64_u32 v[86:87], null, s34, 6, v[85:86]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v110
	v_or_b32_e32 v2, s46, v105
	v_or_b32_e32 v8, s46, v111
	v_or_b32_e32 v3, s46, v106
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v112, s34, 1, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v107
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v113, s34, 2, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v108
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[87:88], null, s34, 10, v[85:86]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v114, s34, 3, v85
	v_mad_u64_u32 v[88:89], null, s34, 12, v[85:86]
	v_mad_u64_u32 v[89:90], null, s34, 14, v[85:86]
	.loc	1 121 23                        ; attention_backward.py:121:23
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
	v_cmp_gt_i32_e64 s2, s34, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v104
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v10, 18, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v11, 20, v1
	v_or_b32_e32 v12, 22, v1
	v_or_b32_e32 v13, 24, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v14, 26, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v15, 28, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
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
	s_abs_i32 s56, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s57, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s51, s57
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s51
	s_sub_i32 s53, 0, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s46, 4
	s_or_b32 s8, s46, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v6, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s46, 6
	s_or_b32 s3, s46, 7
	s_or_b32 s10, s46, 8
	s_or_b32 s12, s46, 9
	s_or_b32 s13, s46, 10
	s_or_b32 s14, s46, 11
	s_or_b32 s11, s46, 12
	s_or_b32 s15, s46, 13
	s_or_b32 s16, s46, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s44, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s17, s46, 15
	s_or_b32 s26, s46, 16
	s_or_b32 s27, s46, 17
	s_or_b32 s38, s46, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s44, s44, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s39, s46, 19
	s_or_b32 s45, s46, 20
	s_or_b32 s48, s46, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s49, s46, 22
	s_or_b32 s50, s46, 23
	s_or_b32 s52, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s53, s53, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s53, s44, s53
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s81, s46, 26
	s_or_b32 s82, s46, 27
	s_or_b32 s83, s46, 28
	s_or_b32 s84, s46, 29
	s_or_b32 s85, s46, 30
	s_or_b32 s86, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s53
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v109
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s5, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s6, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s26, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s45, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s48, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s49, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s50, s30
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s52, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s26, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s47, s47, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s38, s47, s34
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v7, s38, v85
	v_add_nc_u32_e32 v1, s38, v112
	v_add_nc_u32_e32 v2, s38, v113
	v_add_nc_u32_e32 v3, s38, v86
	v_add_nc_u32_e32 v4, s38, v114
	v_mad_u64_u32 v[8:9], null, s34, 18, v[7:8]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v5, s38, v87
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v15, s38, v88
	v_mad_u64_u32 v[9:10], null, s34, 20, v[7:8]
	v_mad_u64_u32 v[10:11], null, s34, 22, v[7:8]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[11:12], null, s34, 24, v[7:8]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v12, 0x80000000, v3, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v16, s38, v89
	v_lshl_add_u32 v13, s34, 4, v7
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u8 v5, v6, s[36:39], 0 offen
	buffer_load_u8 v6, v1, s[36:39], 0 offen
	buffer_load_u8 v3, v2, s[36:39], 0 offen
	buffer_load_u8 v4, v12, s[36:39], 0 offen
	buffer_load_u8 v1, v14, s[36:39], 0 offen
	buffer_load_u8 v2, v17, s[36:39], 0 offen
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v13, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s78, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[12:13], null, s34, 26, v[7:8]
	v_mad_u64_u32 v[13:14], null, s34, 28, v[7:8]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v14, 0x80000000, v9, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v18, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v19, 0x80000000, v11, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v20, 0x80000000, v12, vcc_lo
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[11:12], null, s34, 30, v[7:8]
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x3
	buffer_load_u8 v9, v17, s[36:39], 0 offen
	buffer_load_u8 v10, v8, s[36:39], 0 offen
	buffer_load_u8 v7, v14, s[36:39], 0 offen
	buffer_load_u8 v8, v18, s[36:39], 0 offen
	v_cndmask_b32_e32 v12, 0x80000000, v16, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v16, 0x80000000, v13, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v13, v19, s[36:39], 0 offen
	buffer_load_u8 v14, v20, s[36:39], 0 offen
	buffer_load_u8 v11, v15, s[36:39], 0 offen
	buffer_load_u8 v12, v12, s[36:39], 0 offen
	buffer_load_u8 v15, v16, s[36:39], 0 offen
	buffer_load_u8 v16, v17, s[36:39], 0 offen
	v_xor_b32_e32 v20, 0x198, v0
	v_xor_b32_e32 v19, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v118, 0, v20
	v_add_nc_u32_e32 v116, 0, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(11)
	v_mad_u64_u32 v[17:18], null, s47, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v18, 0x110, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v117, 0, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v17
	v_lshl_add_u32 v19, s35, 3, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v21, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 1, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 2, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 1, v21
	v_lshlrev_b32_e32 v18, 1, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 2, v17
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s35, v21
	v_add_nc_u32_e32 v26, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v38, 0x80000000, v20, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_lshlrev_b32 v20, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v25
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v40, 0x80000000, v20 :: v_dual_lshlrev_b32 v29, 1, v25
	v_lshlrev_b32_e32 v20, 2, v25
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_lshlrev_b32 v24, 1, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v42, 0x80000000, v20 :: v_dual_lshlrev_b32 v19, 2, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v39, 0x80000000, v19, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v44, 0x80000000, v31 :: v_dual_lshlrev_b32 v19, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s77, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 2, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v28, 1, v22
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v41, 0x80000000, v19, s4
	v_lshlrev_b32_e32 v19, 2, v26
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s35, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v45, 0x80000000, v20, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s75, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v32, 1, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v43, 0x80000000, v19, s4
	v_lshlrev_b32_e32 v19, 2, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 1, v25
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v30, 1, v26
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v26, s35, v22
	v_add_nc_u32_e32 v22, s35, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v25, 2, v25
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v47, 0x80000000, v31, vcc_lo
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_store_b8 v115, v5
	ds_store_b8 v115, v6 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v115, v9 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v115, v10 offset:576
	ds_store_b8 v116, v3
	ds_store_b8 v116, v4 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v116, v7 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v116, v8 offset:576
	ds_store_b8 v117, v1
	ds_store_b8 v117, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v117, v13 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v117, v14 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v118, v11
	s_waitcnt vmcnt(2)
	ds_store_b8 v118, v12 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v15 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v16 offset:576
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v33, 1, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v49, 0x80000000, v25, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s73, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 1, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v46, 0x80000000, v19, s4
	v_lshlrev_b32_e32 v19, 2, v26
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v26, s35, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v22, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v31, vcc_lo
	v_lshlrev_b32_e32 v25, 1, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v57, 0x80000000, v22, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v26, 2, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 1, v20
	v_cndmask_b32_e32 v53, 0x80000000, v25, vcc_lo
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s71, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v59, 0x80000000, v26, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v48, 0x80000000, v33, s4
	v_lshlrev_b32_e32 v33, 1, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v21, 2, v21
	v_cndmask_b32_e64 v50, 0x80000000, v19, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v19, s35, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s69, s3
	s_and_b32 vcc_lo, s66, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v58, 0x80000000, v21, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v52, 0x80000000, v33, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 1, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 2, v20
	v_lshlrev_b32_e32 v19, 2, v19
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s68, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v21
	v_cndmask_b32_e32 v55, 0x80000000, v22, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v60, 0x80000000, v20, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v61, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v54, 0x80000000, v31, s4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v26, 0x80000000, v25, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v56, 0x80000000, v19 :: v_dual_lshlrev_b32 v19, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v21
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v62, 0x80000000, v19 :: v_dual_lshlrev_b32 v19, 2, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 1, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v31, 0x80000000, v22 :: v_dual_lshlrev_b32 v22, 1, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v63, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v19, 2, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v33, 0x80000000, v25, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v34, 0x80000000, v22, vcc_lo
	v_lshlrev_b32_e32 v22, 1, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v64, 0x80000000, v19 :: v_dual_lshlrev_b32 v19, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v20
	v_dual_cndmask_b32 v65, 0x80000000, v22 :: v_dual_lshlrev_b32 v20, 2, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v66, 0x80000000, v19, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v19, s35, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 1, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v68, 0x80000000, v20 :: v_dual_lshlrev_b32 v21, 2, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v67, 0x80000000, v25, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v70, 0x80000000, v21 :: v_dual_lshlrev_b32 v25, 1, v19
	v_lshlrev_b32_e32 v19, 2, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v69, 0x80000000, v22 :: v_dual_lshlrev_b32 v22, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v71, 0x80000000, v25 :: v_dual_lshlrev_b32 v20, 2, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v72, 0x80000000, v19, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v19, s35, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v21
	v_dual_cndmask_b32 v35, 0x80000000, v22 :: v_dual_cndmask_b32 v74, 0x80000000, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v19
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v36, 0x80000000, v25 :: v_dual_cndmask_b32 v75, 0x80000000, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v21
	v_lshlrev_b32_e32 v22, 1, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 2, v19
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s50, s31, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v37, 0x80000000, v22 :: v_dual_cndmask_b32 v76, 0x80000000, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 2, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v21, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v78, 0x80000000, v19 :: v_dual_lshlrev_b32 v19, 2, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v77, 0x80000000, v25, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v79, 0x80000000, v21, vcc_lo
	v_lshlrev_b32_e32 v21, 1, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v22, 2, v22
	v_cndmask_b32_e32 v90, 0x80000000, v19, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v19, s35, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v80, 0x80000000, v21 :: v_dual_lshlrev_b32 v21, 1, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v91, 0x80000000, v22 :: v_dual_lshlrev_b32 v20, 2, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v22, 1, v19
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v81, 0x80000000, v21 :: v_dual_lshlrev_b32 v82, 2, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v92, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v83, 0x80000000, v22, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v13, v18, s[36:39], 0 offen
	buffer_load_u16 v14, v23, s[36:39], 0 offen
	buffer_load_u16 v15, v27, s[36:39], 0 offen
	buffer_load_u16 v16, v29, s[36:39], 0 offen
	buffer_load_u16 v22, v24, s[36:39], 0 offen
	buffer_load_u16 v23, v28, s[36:39], 0 offen
	buffer_load_u16 v24, v30, s[36:39], 0 offen
	buffer_load_u16 v25, v32, s[36:39], 0 offen
	buffer_load_u16 v30, v26, s[36:39], 0 offen
	buffer_load_u16 v31, v31, s[36:39], 0 offen
	buffer_load_u16 v32, v33, s[36:39], 0 offen
	buffer_load_u16 v33, v34, s[36:39], 0 offen
	buffer_load_u16 v34, v35, s[36:39], 0 offen
	buffer_load_u16 v35, v36, s[36:39], 0 offen
	buffer_load_u16 v36, v37, s[36:39], 0 offen
	buffer_load_u16 v37, v77, s[36:39], 0 offen
	buffer_load_u16 v18, v44, s[36:39], 0 offen
	buffer_load_u16 v19, v47, s[36:39], 0 offen
	buffer_load_u16 v20, v51, s[36:39], 0 offen
	buffer_load_u16 v21, v53, s[36:39], 0 offen
	buffer_load_u16 v26, v48, s[36:39], 0 offen
	buffer_load_u16 v27, v52, s[36:39], 0 offen
	buffer_load_u16 v28, v54, s[36:39], 0 offen
	buffer_load_u16 v29, v55, s[36:39], 0 offen
	buffer_load_u16 v12, v65, s[36:39], 0 offen
	buffer_load_u16 v11, v67, s[36:39], 0 offen
	buffer_load_u16 v10, v69, s[36:39], 0 offen
	buffer_load_u16 v9, v71, s[36:39], 0 offen
	buffer_load_u16 v8, v79, s[36:39], 0 offen
	buffer_load_u16 v7, v80, s[36:39], 0 offen
	buffer_load_u16 v6, v81, s[36:39], 0 offen
	buffer_load_u16 v5, v83, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_cndmask_b32_e32 v1, 0x80000000, v82, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v165, v17, s[36:39], 0 offen
	buffer_load_b32 v164, v38, s[36:39], 0 offen
	buffer_load_b32 v163, v40, s[36:39], 0 offen
	buffer_load_b32 v162, v42, s[36:39], 0 offen
	buffer_load_b32 v157, v39, s[36:39], 0 offen
	buffer_load_b32 v103, v41, s[36:39], 0 offen
	buffer_load_b32 v102, v43, s[36:39], 0 offen
	buffer_load_b32 v101, v46, s[36:39], 0 offen
	buffer_load_b32 v83, v56, s[36:39], 0 offen
	buffer_load_b32 v82, v62, s[36:39], 0 offen
	buffer_load_b32 v81, v63, s[36:39], 0 offen
	buffer_load_b32 v80, v64, s[36:39], 0 offen
	buffer_load_b32 v56, v74, s[36:39], 0 offen
	buffer_load_b32 v55, v75, s[36:39], 0 offen
	buffer_load_b32 v54, v76, s[36:39], 0 offen
	buffer_load_b32 v53, v78, s[36:39], 0 offen
	buffer_load_b32 v161, v45, s[36:39], 0 offen
	buffer_load_b32 v160, v49, s[36:39], 0 offen
	buffer_load_b32 v159, v57, s[36:39], 0 offen
	buffer_load_b32 v158, v59, s[36:39], 0 offen
	buffer_load_b32 v100, v50, s[36:39], 0 offen
	buffer_load_b32 v99, v58, s[36:39], 0 offen
	buffer_load_b32 v98, v60, s[36:39], 0 offen
	buffer_load_b32 v84, v61, s[36:39], 0 offen
	buffer_load_b32 v79, v66, s[36:39], 0 offen
	buffer_load_b32 v78, v68, s[36:39], 0 offen
	buffer_load_b32 v77, v70, s[36:39], 0 offen
	buffer_load_b32 v76, v72, s[36:39], 0 offen
	buffer_load_b32 v52, v90, s[36:39], 0 offen
	buffer_load_b32 v51, v91, s[36:39], 0 offen
	buffer_load_b32 v50, v92, s[36:39], 0 offen
	buffer_load_b32 v49, v1, s[36:39], 0 offen
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v48, 32, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v75, 12, v0
	v_lshlrev_b32_e32 v2, 5, v119
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v72, 1, v48
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v3, 1, v75
	v_lshlrev_b32_e32 v17, 4, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v4, v72, v119
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v17, v2, v17, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v38, s47, v4
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v39, 0, v17
	v_xad_u32 v40, v17, 16, 0
	scratch_store_b32 off, v38, off         ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v4, 0x80000000, v38, s4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v38, v17, 8, 0
	v_xad_u32 v17, v17, 24, 0
	ds_load_b64 v[90:91], v39
	ds_load_b64 v[92:93], v38
	ds_load_b64 v[94:95], v40
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[96:97], v17
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v4, v4, s[24:27], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v17, 16, v22
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(15)
	v_mul_f32_e32 v65, v160, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v67, v158, v21 :: v_dual_mul_f32 v66, v159, v20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v69, v99, v27 :: v_dual_lshlrev_b32 v10, 16, v10
	s_waitcnt vmcnt(9)
	v_mul_f32_e32 v71, v84, v29
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v121, v77, v10 :: v_dual_lshlrev_b32 v22, 16, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 16, v24
	v_lshlrev_b32_e32 v24, 16, v25
	v_lshlrev_b32_e32 v25, 16, v30
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v30, 16, v31
	v_lshlrev_b32_e32 v31, 16, v32
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v69, v99, v27 :: v_dual_lshlrev_b32 v32, 16, v33
.Ltmp8:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v33, 16, v34
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v34, 16, v35
	v_lshlrev_b32_e32 v35, 16, v36
	v_lshlrev_b32_e32 v36, 16, v37
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v121, v77, v10
.Ltmp13:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v61, v55, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 16, v8
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v63, v53, v36
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v66, v159, v20
.Ltmp15:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v41, v83, v25
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v61, v61 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v16, 16, v16
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v63, v63 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v61, v55, v34 :: v_dual_lshlrev_b32 v46, 16, v5
.Ltmp21:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v8, v162, v16
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v63, v53, v36
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v126, v49, v46
	v_mul_f32_e32 v37, v157, v17
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v20, v63, v63 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v41, v83, v25
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v126, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v8, v162, v16 :: v_dual_lshlrev_b32 v9, 16, v9
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v126, v49, v46
.Ltmp31:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v122, v76, v9
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v37, v157, v17 :: v_dual_and_b32 v174, 1, v0
.Ltmp33:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v59, v80, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v63, v20, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v122, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v71, v84, v29
.Ltmp37:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v47, v82, v30
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v20, v20, v63 :: v_dual_lshlrev_b32 v45, 16, v6
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v6, v164, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v59, v59 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s26, v20, 31
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v122, v76, v9
	v_add_f32_dpp v9, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v6, v6 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v47, v82, v30 :: v_dual_mov_b32 v20, s26
.Ltmp44:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v62, v54, v35 :: v_dual_fmac_f32 v59, v80, v32
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v32, v122, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v6, v164, v14
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v67, v158, v21
	v_fmac_f32_e32 v62, v54, v35
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v35, v8, -1, -1 op_sel:[1,0]
.Ltmp49:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v103, v22
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v16, v59, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 16, v7
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v39, v102, v23
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v8, v35
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s8, v8, 31
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v38, v103, v22 :: v_dual_lshlrev_b32 v13, 16, v13
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v102, v23 :: v_dual_mov_b32 v8, s8
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v5, v165, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v59, v16, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v5, v5 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v16, v16, v59
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v5, v165, v13
	v_add_f32_dpp v13, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v16, 31
	v_permlanex16_b32 v41, v14, -1, -1 op_sel:[1,0]
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v37, v10, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v16, s16
.Ltmp66:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v58, v81, v31
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v26, 16, v26
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v10, v10, v37
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v58, v58 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v14, v14, v41
.Ltmp72:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v68, v100, v26
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v10, 31
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v58, v81, v31
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v32, v5, -1, -1 op_sel:[1,0]
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v10, s10 :: v_dual_mul_f32 v123, v52, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v32
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v36, v9, -1, -1 op_sel:[1,0]
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v68, v100, v26
	v_add_f32_dpp v26, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v18, 16, v18
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v9, v9, v36
.Ltmp83:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v125, v50, v45
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v64, v161, v18
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v5, 31
	v_readlane_b32 s9, v9, 31
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v121, v31, -1, -1 op_sel:[1,0]
.Ltmp90:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v15, 16, v15
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v14, 31
	v_permlanex16_b32 v69, v26, -1, -1 op_sel:[1,0]
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v64, v161, v18 :: v_dual_lshlrev_b32 v169, 1, v48
	v_add_f32_dpp v18, v61, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v123, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v26, v26, v69
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v42, 0, v169
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v21, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v125, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v5, s5
	v_mov_b32_e32 v9, s9
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v14, s14 :: v_dual_fmac_f32 v123, v52, v43
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v125, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v61, v18, -1, -1 op_sel:[1,0]
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v25, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v26, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v64, v21, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v18, v18, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v25, v25, v25 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v21, v21, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v18, 31
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v25, v25, v25 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v21, 31
	v_mov_b32_e32 v18, s24
.Ltmp108:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v60, v56, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v25, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v60, v60 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v60, v56, v33
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v33, v6, -1, -1 op_sel:[1,0]
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v17, v60, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v6, v6, v33
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v6, 31
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v6, s6
	v_permlanex16_b32 v60, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v17, v17, v60 :: v_dual_add_f32 v60, v31, v121
.Ltmp117:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v7, v163, v15
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s17, v17, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v7, v7 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v17, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v7, v163, v15
	v_add_f32_dpp v15, v58, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v58, v15, -1, -1 op_sel:[1,0]
.Ltmp121:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v12, 16, v12
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v34, v7, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v15, v15, v58
.Ltmp124:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v74, v79, v12
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v7, v7, v34 :: v_dual_mov_b32 v34, s27
	v_fmac_f32_e32 v65, v160, v19
	v_add_f32_dpp v19, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v40, v101, v24
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s7, v7, 31
	v_readlane_b32 s15, v15, 31
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v74, v79, v12 :: v_dual_mov_b32 v7, s7
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v15, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v40, v101, v24
	v_add_f32_dpp v22, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v60, 31
	v_permlanex16_b32 v62, v19, -1, -1 op_sel:[1,0]
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v40, v13, -1, -1 op_sel:[1,0]
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v22, v22, v22 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v19, v19, v62
.Ltmp137:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v124, v51, v44
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v13, v13, v40
	v_add_f32_dpp v22, v22, v22 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v19, 31
	v_mov_b32_dpp v124, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v11, 16, v11
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v13, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, s25 :: v_dual_fmac_f32 v124, v51, v44
.Ltmp143:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v120, v78, v11
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v24, v24, v24 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v13, s13
	v_permlanex16_b32 v65, v22, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v67, v24, -1, -1 op_sel:[1,0]
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v22, v22, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v120, v78, v11
	v_add_f32_dpp v11, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v39, v12, -1, -1 op_sel:[1,0]
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v24, v24, v67
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v22, 31
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v30, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v12, v12, v39
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v24, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v30, v30, v30 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v12, 31
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v30, v30, v30 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v38, v11, -1, -1 op_sel:[1,0]
.Ltmp156:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v28, 16, v28
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v12, s12
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v23, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v30, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v11, v11, v38 :: v_dual_mul_f32 v70, v98, v28
	v_add_f32_dpp v23, v23, v23 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v11, 31
	v_mov_b32_dpp v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v23, v23, v23 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v11, s11
	ds_store_b128 v42, v[5:8]
	ds_store_b128 v42, v[9:12] offset:16
	ds_store_b128 v42, v[13:16] offset:32
	ds_store_b128 v42, v[17:20] offset:48
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v123, v123 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v124, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v125, v125 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v70, v98, v28
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v6, v5, -1, -1 op_sel:[1,0]
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v126, v126 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v66, v23, -1, -1 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v6
	v_add_f32_dpp v6, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v5, 31
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v25, v25, v68
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v14, v6, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v16, v8, -1, -1 op_sel:[1,0]
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v6, v6, v14
	v_add_f32_e32 v8, v8, v16
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v28, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v1, 6, v174
	v_permlanex16_b32 v17, v9, -1, -1 op_sel:[1,0]
	v_readlane_b32 s9, v6, 31
	v_readlane_b32 s11, v8, 31
	v_mov_b32_e32 v8, s8
	v_readlane_b32 s39, v25, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v59, v30, v120 :: v_dual_mov_b32 v14, s9
	v_add_f32_e32 v28, v28, v71
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v16, s11
	v_mov_b32_e32 v38, s39
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v27, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v59, 31
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v23, v23, v66
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s42, v28, 31
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v9, v9, v17
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp183:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v6, s6
	v_readlane_b32 s37, v23, 31
	v_mov_b32_e32 v41, s42
	v_readlane_b32 s12, v9, 31
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp185:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s56, s44
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v36, s37 :: v_dual_mov_b32 v17, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v27, -1, -1 op_sel:[1,0]
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v27, v27, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v27, 31
	v_mov_b32_e32 v40, s41
.Ltmp189:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v29, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v74, v29, -1, -1 op_sel:[1,0]
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v29, v74 :: v_dual_add_nc_u32 v57, 0, v1
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[30:33], v57
	ds_load_b128 v[26:29], v57 offset:16
	ds_load_b128 v[22:25], v57 offset:32
	ds_load_b128 v[10:13], v57 offset:48
	v_mov_b32_e32 v35, s36
	v_mov_b32_e32 v37, s38
	v_mov_b32_e32 v39, s40
	v_readlane_b32 s5, v58, 31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s38, 0
	v_mov_b32_e32 v5, s5
.Ltmp193:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s50, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 28
	s_add_i32 s50, s50, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 179 14 is_stmt 0              ; attention_backward.py:179:14
	s_and_b32 s39, s50, -16
.Ltmp194:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v58, v30
	v_mov_b32_e32 v156, v27
	v_permlanex16_b32 v15, v7, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v172, v13
	v_mov_b32_e32 v194, v22
	v_mov_b32_e32 v188, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v68, v25 :: v_dual_add_f32 v7, v7, v15
	v_dual_mov_b32 v59, v31 :: v_dual_mov_b32 v60, v32
	v_dual_mov_b32 v61, v33 :: v_dual_mov_b32 v66, v26
	v_readlane_b32 s10, v7, 31
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v187, v28
	v_mov_b32_e32 v189, v29
	v_mov_b32_e32 v67, v24
	v_mov_b32_e32 v15, s10
	ds_store_b128 v42, v[34:37]
	ds_store_b128 v42, v[38:41] offset:16
	ds_store_b128 v42, v[5:8] offset:32
	ds_store_b128 v42, v[14:17] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v57
	ds_load_b128 v[34:37], v57 offset:16
	ds_load_b128 v[18:21], v57 offset:32
	ds_load_b128 v[14:17], v57 offset:48
	v_mov_b32_e32 v168, v10
	v_dual_mov_b32 v170, v11 :: v_dual_mov_b32 v171, v12
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v62, v38 :: v_dual_mov_b32 v63, v39
	v_dual_mov_b32 v64, v40 :: v_dual_mov_b32 v65, v41
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v190, v34 :: v_dual_mov_b32 v191, v35
	v_dual_mov_b32 v192, v36 :: v_dual_mov_b32 v193, v37
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v69, v18 :: v_dual_mov_b32 v70, v19
	v_dual_mov_b32 v71, v20 :: v_dual_mov_b32 v166, v21
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v181, v14
	v_dual_mov_b32 v185, v15 :: v_dual_mov_b32 v186, v16
	v_mov_b32_e32 v167, v17
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp195:
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
	v_cndmask_b32_e64 v5, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s57, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v5
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
	s_sub_i32 s8, s56, s9
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v5, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s51
	s_cmp_ge_u32 s8, s51
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[64:67], s[0:1], 0x48
	s_cselect_b32 s6, s9, s6
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x10
	s_load_b64 s[60:61], s[0:1], 0x28
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v6, s46, v5
	s_load_b32 s80, s[0:1], 0x90
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, 16, v6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, 20, v6
	v_or_b32_e32 v9, 4, v6
	v_or_b32_e32 v42, 24, v6
	v_or_b32_e32 v43, 8, v6
	v_or_b32_e32 v44, 28, v6
	v_or_b32_e32 v45, 12, v6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s14, s19, s29
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s42, s6, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v127, v0, 4, 1
	v_and_b32_e32 v178, 16, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v6
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v129, s23, v6
	v_add_nc_u32_e32 v130, s23, v9
	v_add_nc_u32_e32 v131, s23, v43
	v_add_nc_u32_e32 v132, s23, v45
	v_add_nc_u32_e32 v133, s23, v7
	v_add_nc_u32_e32 v134, s23, v8
	v_add_nc_u32_e32 v135, s23, v42
	v_add_nc_u32_e32 v136, s23, v44
	v_mov_b16_e32 v6.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v6.h, v4.l
	v_or_b32_e32 v138, v2, v3
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s42, s42, s14
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s14, s52, 0x3fb8aa3b
	v_mul_lo_u32 v74, s55, v5
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s53
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s54, s28, s54
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v137, s14, v6 :: v_dual_and_b32 v46, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v128, 2, v127
	v_or_b32_e32 v126, 4, v127
	v_or_b32_e32 v125, 6, v127
	v_or_b32_e32 v124, 8, v127
	v_or_b32_e32 v123, 10, v127
	v_or_b32_e32 v122, 12, v127
	v_or_b32_e32 v121, 14, v127
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, s30, v9
	v_cmp_gt_i32_e64 s8, s30, v43
	v_cmp_gt_i32_e64 s9, s30, v45
	v_cmp_gt_i32_e64 s10, s30, v7
	v_cmp_gt_i32_e64 s11, s30, v8
	v_cmp_gt_i32_e64 s12, s30, v42
	v_cmp_gt_i32_e64 s13, s30, v44
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s54, s54, s19
	v_subrev_nc_u32_e32 v250, s21, v129
	v_subrev_nc_u32_e32 v251, s21, v130
	v_subrev_nc_u32_e32 v252, s21, v131
	v_subrev_nc_u32_e32 v253, s21, v132
	v_subrev_nc_u32_e32 v254, s21, v133
	v_subrev_nc_u32_e32 v255, s21, v134
	v_subrev_nc_u32_e32 v120, s21, v135
	v_subrev_nc_u32_e32 v155, s21, v136
	v_add_nc_u32_e32 v147, s22, v129
	v_add_nc_u32_e32 v148, s22, v130
	v_add_nc_u32_e32 v149, s22, v131
	v_add_nc_u32_e32 v150, s22, v132
	v_add_nc_u32_e32 v151, s22, v133
	v_add_nc_u32_e32 v152, s22, v134
	v_add_nc_u32_e32 v153, s22, v135
	v_add_nc_u32_e32 v154, s22, v136
	v_xor_b32_e32 v182, 8, v138
	v_xor_b32_e32 v183, 16, v138
	v_xor_b32_e32 v184, 24, v138
	v_lshlrev_b32_e32 v2, 1, v0
	v_cmp_eq_u32_e64 s14, 0, v48
	v_and_b32_e32 v173, 14, v0
	v_lshlrev_b32_e32 v175, 3, v119
	v_lshrrev_b32_e32 v180, 2, v178
	v_lshrrev_b32_e32 v179, 4, v48
	v_lshlrev_b32_e32 v195, 2, v0
	v_lshrrev_b32_e32 v177, 1, v178
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s38, s39
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s81, s42, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s58, -1, 0
	s_cmp_ge_i32 s38, s39
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s55, s46
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	v_mad_u64_u32 v[42:43], null, s80, v119, v[74:75]
	v_mov_b32_e32 v176, v2
	v_and_b32_e32 v2, 60, v2
	v_cndmask_b32_e64 v3, 0x104, 0, s14
	v_dual_mov_b32 v215, 0xff800000 :: v_dual_lshlrev_b32 v4, 5, v174
	v_mov_b32_e32 v235, 0xff800000
	v_mad_u64_u32 v[43:44], null, s55, 12, v[42:43]
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v196, v3, v2
	v_lshlrev_b32_e32 v2, 2, v46
	v_lshlrev_b32_e32 v3, 1, v173
	v_and_or_b32 v8, v0, 2, v177
	v_or3_b32 v197, v180, v179, v175
	v_or_b32_e32 v1, v196, v1
	v_lshl_or_b32 v2, v173, 7, v2
	v_mad_u64_u32 v[44:45], null, s55, 20, v[42:43]
	v_mad_u64_u32 v[45:46], null, s55, 24, v[42:43]
	v_mad_u64_u32 v[46:47], null, s55, 28, v[42:43]
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v47, v2, v4, v3
	v_xor_b32_e32 v2, 0x208, v1
	v_xor_b32_e32 v3, 0x410, v1
	v_xor_b32_e32 v4, 0x618, v1
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_and_b32 v1, 52, v195
	v_xor_b32_e32 v5, 4, v47
	v_xor_b32_e32 v6, 8, v47
	v_xor_b32_e32 v7, 12, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v75, 5, v1
	v_xor_b32_e32 v9, 16, v47
	v_xor_b32_e32 v139, 20, v47
	v_xor_b32_e32 v140, 24, v47
	v_xor_b32_e32 v141, 0x90, v197
	v_or3_b32 v198, v8, v1, v104
	v_xor_b32_e32 v8, 28, v47
	v_xor_b32_e32 v142, 0x120, v197
	v_xor_b32_e32 v143, 0x1b0, v197
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v144, 16, v198
	v_xor_b32_e32 v145, 32, v198
	v_xor_b32_e32 v146, 48, v198
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_add_nc_u32 v199, 0, v2
	v_dual_mov_b32 v217, 0xff800000 :: v_dual_add_nc_u32 v200, 0, v3
	v_dual_mov_b32 v220, 0xff800000 :: v_dual_add_nc_u32 v201, 0, v4
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_add_nc_u32 v202, 0, v5
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_add_nc_u32 v203, 0, v6
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v7
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v205, 0, v9
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v206, 0, v139
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v207, 0, v140
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v208, 0, v8
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v209, 0, v141
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v210, 0, v142
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v143
	v_dual_mov_b32 v229, 0 :: v_dual_add_nc_u32 v212, 0, v144
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v145
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v214, 0, v146
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_mov_b32 v223, 0xff800000
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_mov_b32 v225, 0xff800000
	v_mov_b32_e32 v226, 0xff800000
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	s_and_b32 s69, s41, 0xffff
	s_mov_b32 s68, s40
	s_and_b32 s77, s45, 0xffff
	s_mov_b32 s76, s44
	s_add_i32 s51, s54, s43
	s_and_b32 s73, s49, 0xffff
	s_mov_b32 s72, s48
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	s_mov_b32 s78, s74
	s_mov_b32 s79, s75
	s_mov_b32 s53, s38
	scratch_store_b32 off, v180, off offset:4 ; 4-byte Folded Spill
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s15, s53, s80
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v140, s55, 3, v42
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s15, s51, s15
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v247, v4
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v8, s55, 4, v42
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v142, s15, v46, 1
	v_add_lshl_u32 v143, s15, v43, 1
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
	v_add_lshl_u32 v140, s15, v140, 1
	v_add_lshl_u32 v8, s15, v8, 1
	v_add_lshl_u32 v141, s15, v45, 1
	v_cndmask_b32_e64 v142, 0x80000000, v142, s62
	v_cndmask_b32_e64 v143, 0x80000000, v143, s59
	v_cndmask_b32_e64 v7, 0x80000000, v7, s85
	v_add_lshl_u32 v9, s15, v9, 1
	v_cndmask_b32_e64 v140, 0x80000000, v140, s63
	v_cndmask_b32_e64 v8, 0x80000000, v8, s86
	v_add_lshl_u32 v139, s15, v44, 1
	v_cndmask_b32_e64 v141, 0x80000000, v141, s82
	s_clause 0x3
	buffer_load_u16 v142, v142, s[72:75], 0 offen
	buffer_load_u16 v143, v143, s[72:75], 0 offen
	buffer_load_u16 v7, v7, s[72:75], 0 offen
	buffer_load_u16 v8, v8, s[72:75], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v9, s83
	s_clause 0x1
	buffer_load_u16 v140, v140, s[72:75], 0 offen
	buffer_load_u16 v141, v141, s[72:75], 0 offen
	v_cndmask_b32_e64 v139, 0x80000000, v139, s84
	s_clause 0x1
	buffer_load_u16 v9, v9, s[72:75], 0 offen
	buffer_load_u16 v139, v139, s[72:75], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v175, 0, v47
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v6, v6
	v_mul_f32_e32 v5, v137, v5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s53, s53, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v2, v137, v2
	v_mul_f32_e32 v6, v137, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v8, 16, v8
	v_cndmask_b32_e64 v142, 0xff800000, v142, s62
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v141, 16, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s86
	v_lshlrev_b32_e32 v7, 16, v7
	v_cndmask_b32_e64 v143, 0xff800000, v143, s59
	v_lshlrev_b32_e32 v140, 16, v140
	v_cndmask_b32_e64 v141, 0xff800000, v141, s82
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v146, 0x3fb8aa3b, v8 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v7, 0xff800000, v7, s85
	v_cndmask_b32_e64 v140, 0xff800000, v140, s63
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_cndmask_b32_e64 v139, 0xff800000, v139, s84
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v145, 0x3fb8aa3b, v7
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v7
	.loc	1 256 21 is_stmt 0              ; attention_backward.py:256:21
	s_and_b32 s17, s86, vcc_lo
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v139
	.loc	1 254 32 is_stmt 1              ; attention_backward.py:254:32
	v_cndmask_b32_e64 v9, 0xff800000, v9, s83
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v144, v57, v196
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s21, s85, s15
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v141
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s16, s84, s16
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v9
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v144, v145, v146 offset1:32
	v_dual_mul_f32 v145, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v146, 0x3fb8aa3b, v139
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s82, vcc_lo
	s_and_b32 s20, s83, s18
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v140
	v_cmp_neq_f32_e64 s23, 0xff800000, v142
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v199, v145, v146 offset1:32
	v_dual_mul_f32 v145, 0x3fb8aa3b, v140 :: v_dual_mul_f32 v146, 0x3fb8aa3b, v141
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s19, s63, s18
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s22, 0xff800000, v143
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 vcc_lo, s62, s23
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v200, v145, v146 offset1:32
	v_dual_mul_f32 v145, 0x3fb8aa3b, v143 :: v_dual_mul_f32 v146, 0x3fb8aa3b, v142
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s18, s59, s22
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s53, s39
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v201, v145, v146 offset1:32
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v145.h, v248.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v248, v137, v249
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v249, v202
	ds_load_b32 v180, v203
	v_mov_b16_e64 v146.l, 0
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v146.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v145.l, v146.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v249, v248, v145
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v145.h, v245.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v245, v137, v247
	.loc	1 255 21                        ; attention_backward.py:255:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v180, v245, v145
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v145.h, v244.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v244, v137, v246
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_load_b32 v178, v204
	ds_load_b32 v173, v205
	ds_load_b32 v174, v206
	ds_load_b32 v72, v207
	ds_load_b32 v195, v208
	ds_load_b32 v75, v175
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v4, v137, v4
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v178, v244, v145
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v145.h, v243.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v75, v2, v146
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v146.h, v240.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v2, v137, v3
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v3, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v195, v2, v146
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v2, 0, 1, s17
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s16
	v_lshlrev_b16 v2.h, 8, v3.l
	v_add_nc_u32_e32 v3, 0, v197
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v173, v6, v145
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v6.h, v242.l
	v_mov_b16_e64 v6.l, v146.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_store_b16 v3, v2
	v_cndmask_b32_e64 v3, 0, 1, s15
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v174, v5, v6
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v5.h, v241.l
	v_mov_b16_e64 v5.l, v146.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s19
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v72, v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v2.l, 8, v2.l
	v_cndmask_b32_e64 v4, 0, 1, s20
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v2.h, v4.l, v2.h
	v_cndmask_b32_e64 v4, 0, 1, s18
	v_lshlrev_b16 v3.l, 8, v3.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v4.l, v3.l
	ds_store_b16_d16_hi v209, v2
	ds_store_b16 v210, v2
	ds_store_b16 v211, v3
	v_add_nc_u32_e32 v3, 0, v198
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
	v_cndmask_b32_e64 v6, 0xff800000, v75, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v3.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v175, v6
	v_cndmask_b32_e64 v6, 0xff800000, v249, s22
	ds_store_b32 v202, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	v_and_b16 v2.l, 1, v5.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v6, 0xff800000, v180, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v2.l
	v_and_b16 v2.l, 1, v2.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v203, v6
	v_cndmask_b32_e64 v5, 0xff800000, v178, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v204, v5
	v_cndmask_b32_e64 v2, 0xff800000, v173, s22
	ds_store_b32 v205, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v174, s22
	ds_store_b32 v206, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v4.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v72, s22
	ds_store_b32 v207, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v195, s22
	ds_store_b32 v208, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[2:3], v144 offset1:32
	ds_load_2addr_b32 v[139:140], v199 offset1:32
	ds_load_2addr_b32 v[141:142], v200 offset1:32
	ds_load_2addr_b32 v[143:144], v201 offset1:32
.Ltmp196:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v4, v2
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v5, v4
.Ltmp200:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp201:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp202:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp203:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v5 :: v_dual_max_f32 v5, v215, v215
.Ltmp206:
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
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v5 :: v_dual_max_f32 v5, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp213:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v6, v5, v4
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_add_f32 v5, v2, v4 :: v_dual_max_f32 v4, v139, v139
.Ltmp216:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v235, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v5, v238, v2 :: v_dual_mov_b32 v2, v139
	v_dual_mov_b32 v235, v6 :: v_dual_mov_b32 v238, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp225:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v216, v216
	v_max_f32_e32 v216, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v139, v216
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s20
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s20, 0xff800000, v234
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v7 :: v_dual_max_f32 v7, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp232:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v8, v7, v2
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v7, v4, v2 :: v_dual_sub_f32 v2, v234, v8
.Ltmp235:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v4, v141, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp236:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v7, v237, v2
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v141 :: v_dual_mov_b32 v237, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp245:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v217, v217
	v_max_f32_e32 v217, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v141, v217
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v232
.Ltmp246:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v234, v8
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp252:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v9, v232, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v239, v9, v2 :: v_dual_mov_b32 v2, v4
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v9, v4, v2 :: v_dual_max_f32 v4, v143, v143
.Ltmp255:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v232, v239
	v_mov_b32_e32 v232, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v9, v236, v2 :: v_dual_mov_b32 v2, v143
	v_mov_b32_e32 v236, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp257:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp258:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp260:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp264:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v218, v218
	v_max_f32_e32 v218, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v143, v218
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v230
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v72, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v72, v4
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v72
.Ltmp269:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v72, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v72
.Ltmp271:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v72, v230, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v241, v72, v2
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v240, v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp274:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v230, v241
.Ltmp275:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v3, v3
	v_mov_b32_e32 v230, v241
.Ltmp276:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v240, v233, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v3 :: v_dual_mov_b32 v233, v240
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp285:
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
.Ltmp286:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp292:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v228, v228
	v_dual_max_f32 v243, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v242, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp295:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v228, v243
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v140, v140 :: v_dual_mov_b32 v228, v243
.Ltmp297:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s17
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v242, v231, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp298:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v140 :: v_dual_mov_b32 v231, v242
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp299:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp301:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp304:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp305:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v220, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v220, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v140, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp307:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp309:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp310:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v226, v226
.Ltmp313:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v245, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp315:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v244, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp316:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v226, v245
.Ltmp317:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v142, v142 :: v_dual_mov_b32 v226, v245
.Ltmp318:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s16
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v244, v229, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v142 :: v_dual_mov_b32 v229, v244
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp327:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v221, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v142, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp328:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp329:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp330:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp331:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp332:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp333:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp334:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v223, v223
	v_dual_max_f32 v247, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp335:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp336:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v246, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp337:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v2, v223, v247 :: v_dual_max_f32 v3, v144, v144
	v_mov_b32_e32 v223, v247
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v246, v227, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v144 :: v_dual_mov_b32 v227, v246
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp339:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp340:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp341:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp342:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp343:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp344:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp345:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
.Ltmp346:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v222, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v144, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp347:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp348:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp349:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp350:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp351:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp352:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v225, v225
.Ltmp353:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v249, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp354:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp355:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v248, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp356:
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
	v_or_b32_e32 v2, s53, v104
	v_or_b32_e32 v3, s53, v105
	v_or_b32_e32 v4, s53, v106
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s22, s53, s81
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v5, s53, v107
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s53, v109
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v3
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v3, s53, v110
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s23, s22, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v4
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v4, s53, v111
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v2
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s23, v85
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v6, s53, v108
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s20, s31, v3
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v3, s23, v112
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v5
	v_cmp_gt_i32_e64 s21, s31, v4
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v4, s23, v113
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v6
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v5, s23, v86
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v6, s23, v114
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v7, s23, v87
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v8, s23, v88
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v9, s23, v89
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v141, 0, v182
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s21
	v_add_nc_u32_e32 v145, 0, v184
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x7
	buffer_load_u8 v139, v2, s[68:71], 0 offen
	buffer_load_u8 v3, v3, s[68:71], 0 offen
	buffer_load_u8 v4, v4, s[68:71], 0 offen
	buffer_load_u8 v5, v5, s[68:71], 0 offen
	buffer_load_u8 v6, v6, s[68:71], 0 offen
	buffer_load_u8 v7, v7, s[68:71], 0 offen
	buffer_load_u8 v8, v8, s[68:71], 0 offen
	buffer_load_u8 v9, v9, s[68:71], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v2, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v246, s53, v119
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v139
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v3 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v4
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v5 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v6
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v7 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v8
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v9 offset:64
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v140, 0, v138
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v9, 0, v183
	ds_load_b64 v[141:142], v141
	ds_load_b64 v[139:140], v140
	ds_load_b64 v[145:146], v145
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v246
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[143:144], v9
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
	s_and_b32 s85, s6, s15
	s_and_b32 s83, s7, s15
	s_and_b32 s63, s8, s15
	s_and_b32 s59, s9, s15
	s_and_b32 s86, s10, s15
	s_and_b32 s84, s11, s15
	s_and_b32 s82, s12, s15
	s_and_b32 s62, s13, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[139:140], v[90:91], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[141:142], v[92:93], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[143:144], v[94:95], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[145:146], v[96:97], v[2:9] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v246, v129
	v_cmp_le_i32_e64 s15, v246, v130
	v_cmp_le_i32_e64 s16, v246, v131
	v_cmp_le_i32_e64 s17, v246, v132
	v_cmp_le_i32_e64 s18, v246, v133
	v_cmp_le_i32_e64 s19, v246, v134
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s23, vcc_lo, s85
	s_and_b32 s15, s15, s83
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s20, v246, v135
	v_cmp_le_i32_e64 s21, v246, v136
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s16, s16, s63
	s_and_b32 s17, s17, s59
	s_and_not1_b32 s24, s85, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s25, s83, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s86
	s_and_b32 s19, s19, s84
	s_or_b32 s85, s24, s23
	s_or_b32 s83, s25, s15
	s_and_not1_b32 s15, s63, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s23, s59, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s20, s20, s82
	s_and_b32 s21, s21, s62
	s_or_b32 s63, s15, s16
	s_or_b32 s59, s23, s17
	s_and_not1_b32 s15, s86, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s84, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s86, s15, s16
	s_or_b32 s84, s17, s18
	s_and_not1_b32 s15, s82, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s62, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s62, s17, s18
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v139, s53, v127
	v_or_b32_e32 v140, s53, v128
	v_add_lshl_u32 v142, s22, v127, 1
	v_or_b32_e32 v141, s53, v126
	v_or_b32_e32 v143, s53, v125
	v_cmp_gt_i32_e32 vcc_lo, s31, v139
	v_or_b32_e32 v144, s53, v124
	v_add_nc_u32_e32 v239, 4, v142
	v_add_nc_u32_e32 v243, 24, v142
	v_or_b32_e32 v145, s53, v123
	v_cndmask_b32_e32 v139, 0x80000000, v142, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v140
	v_or_b32_e32 v146, s53, v122
	v_add_nc_u32_e32 v242, 20, v142
	v_or_b32_e32 v241, s53, v121
	v_dual_cndmask_b32 v140, 0x80000000, v239 :: v_dual_add_nc_u32 v239, 12, v142
	v_add_nc_u32_e32 v240, 8, v142
	v_cmp_gt_i32_e32 vcc_lo, s31, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v141, 0x80000000, v240 :: v_dual_add_nc_u32 v240, 16, v142
	v_cmp_gt_i32_e32 vcc_lo, s31, v143
	v_dual_cndmask_b32 v143, 0x80000000, v239 :: v_dual_add_nc_u32 v142, 28, v142
	v_cmp_gt_i32_e32 vcc_lo, s31, v144
	v_cndmask_b32_e32 v144, 0x80000000, v240, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v145
	v_cndmask_b32_e32 v145, 0x80000000, v242, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v146
	v_cndmask_b32_e32 v146, 0x80000000, v243, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v241
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	s_clause 0x7
	buffer_load_u16 v239, v139, s[76:79], 0 offen
	buffer_load_u16 v248, v140, s[76:79], 0 offen
	buffer_load_u16 v245, v141, s[76:79], 0 offen
	buffer_load_u16 v244, v143, s[76:79], 0 offen
	buffer_load_u16 v243, v144, s[76:79], 0 offen
	buffer_load_u16 v242, v145, s[76:79], 0 offen
	buffer_load_u16 v241, v146, s[76:79], 0 offen
	buffer_load_u16 v240, v142, s[76:79], 0 offen
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v246, v250
	v_cmp_ge_i32_e64 s15, v246, v251
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s22, v246, v147
	v_cmp_le_i32_e64 s23, v246, v148
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v246, v252
	v_cmp_ge_i32_e64 s17, v246, v253
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s24, v246, v149
	v_cmp_le_i32_e64 s25, v246, v150
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s18, v246, v254
	v_cmp_ge_i32_e64 s19, v246, v255
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s26, v246, v151
	v_cmp_le_i32_e64 s27, v246, v152
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s15, s15, s23
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s20, v246, v120
	v_cmp_ge_i32_e64 s21, v246, v155
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s28, v246, v153
	v_cmp_le_i32_e64 s29, v246, v154
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s22, s22, s85
	s_and_b32 s15, s15, s83
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_b32 s16, s16, s63
	s_and_b32 s17, s17, s59
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_and_not1_b32 s23, s85, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_not1_b32 s24, s83, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s86
	s_and_b32 s19, s19, s84
	s_and_b32 s20, s20, s28
	s_and_b32 s21, s21, s29
	s_or_b32 s85, s23, s22
	s_or_b32 s83, s24, s15
	s_and_not1_b32 s15, s63, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s22, s59, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s20, s20, s82
	s_and_b32 s21, s21, s62
	s_or_b32 s63, s15, s16
	s_or_b32 s59, s22, s17
	s_and_not1_b32 s15, s86, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s84, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s86, s15, s16
	s_or_b32 s84, s17, s18
	s_and_not1_b32 s15, s82, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s62, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s62, s17, s18
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v176, v2 :: v_dual_mov_b32 v249, 0xff800000
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v247, 0xff800000
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v245, 0xff800000
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v8, 0xff800000
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_mov_b32 v6, 0xff800000
	v_mov_b32_e32 v239, 0xff800000
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow255
	scratch_load_b32 v180, off, off offset:4 ; 4-byte Folded Reload
	v_and_b32_e32 v75, 12, v0
	v_and_b32_e32 v174, 1, v0
	v_lshrrev_b32_e32 v72, 1, v48
	v_and_b32_e32 v178, 16, v0
	v_lshlrev_b32_e32 v175, 3, v119
	v_lshlrev_b32_e32 v195, 2, v0
	v_and_b32_e32 v173, 14, v0
	v_and_b32_e32 v46, 48, v0
.LBB0_13:                               ; %Flow256
	s_load_b32 s53, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s46, v73
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v5
	v_cmp_gt_f32_e64 s1, 0x800000, v7
	v_cmp_gt_f32_e64 s15, 0x800000, v9
.Ltmp357:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v57, v30, v58 :: v_dual_add_f32 v58, v31, v59
	v_dual_add_f32 v59, v32, v60 :: v_dual_add_f32 v60, v33, v61
.Ltmp358:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
.Ltmp359:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v61, v38, v62 :: v_dual_add_f32 v62, v39, v63
	v_dual_add_f32 v63, v40, v64 :: v_dual_add_f32 v64, v41, v65
	v_dual_add_f32 v1, v26, v66 :: v_dual_add_f32 v2, v27, v156
	v_dual_add_f32 v65, v22, v194 :: v_dual_add_f32 v66, v23, v188
.Ltmp360:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v23, 0, 32, s0
	v_cndmask_b32_e64 v31, 0, 32, s1
	v_cndmask_b32_e64 v33, 0, 32, s15
	v_cndmask_b32_e64 v22, 0, 0x42000000, s0
.Ltmp361:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v24, v67 :: v_dual_add_f32 v68, v25, v68
.Ltmp362:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v23, v5, v23
	v_ldexp_f32 v24, v7, v31
	v_ldexp_f32 v25, v9, v33
	v_cmp_gt_f32_e64 s0, 0x800000, v240
	v_cndmask_b32_e64 v30, 0, 0x42000000, s1
.Ltmp363:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v18, v69 :: v_dual_add_f32 v70, v19, v70
.Ltmp364:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v18, v23
	v_log_f32_e32 v23, v24
	v_log_f32_e32 v24, v25
	v_cmp_gt_f32_e64 s1, 0x800000, v242
	v_cndmask_b32_e64 v25, 0, 0x42000000, s0
	v_cndmask_b32_e64 v31, 0, 32, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v244
.Ltmp365:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v28, v187 :: v_dual_add_f32 v4, v29, v189
	v_dual_add_f32 v26, v34, v190 :: v_dual_add_f32 v27, v35, v191
	v_dual_add_f32 v28, v36, v192 :: v_dual_add_f32 v29, v37, v193
.Ltmp366:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v32, 0, 0x42000000, s15
	v_cndmask_b32_e64 v33, 0, 0x42000000, s1
	v_cndmask_b32_e64 v34, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v246
	v_cmp_gt_f32_e64 s15, 0x800000, v248
	v_cndmask_b32_e64 v36, 0, 32, s0
	v_ldexp_f32 v31, v240, v31
	v_ldexp_f32 v34, v242, v34
	v_cndmask_b32_e64 v38, 0, 32, s1
	v_cndmask_b32_e64 v40, 0, 32, s15
	v_ldexp_f32 v36, v244, v36
	v_cndmask_b32_e64 v35, 0, 0x42000000, s0
	v_log_f32_e32 v34, v34
	v_ldexp_f32 v38, v246, v38
	v_ldexp_f32 v40, v248, v40
	v_log_f32_e32 v36, v36
	v_log_f32_e32 v31, v31
.Ltmp367:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v71, v20, v71 :: v_dual_sub_f32 v18, v18, v22
.Ltmp368:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v38, v38
	v_log_f32_e32 v40, v40
	v_cndmask_b32_e64 v37, 0, 0x42000000, s1
	v_cndmask_b32_e64 v39, 0, 0x42000000, s15
	v_dual_sub_f32 v19, v23, v30 :: v_dual_sub_f32 v20, v24, v32
	v_dual_sub_f32 v23, v34, v33 :: v_dual_sub_f32 v24, v36, v35
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v6, v6, v18
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v5
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v22, v31, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v25, v38, v37 :: v_dual_sub_f32 v30, v40, v39
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v18, v239, v20
	v_dual_add_f32 v20, v243, v23 :: v_dual_add_f32 v23, v245, v24
	v_dual_add_f32 v8, v8, v19 :: v_dual_add_f32 v19, v241, v22
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v5, 0, v6, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v7
.Ltmp369:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v141, v12, v171
.Ltmp370:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s14, vcc_lo
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v6, 0, v8, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v9
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v9, 5, v0
	s_ashr_i32 s16, s50, 4
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s21, s65, 0xffff
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v9, 0x60, v9
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s20, s64
	s_mov_b32 s22, s50
	s_mov_b32 s23, s51
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v139, v10, v168 :: v_dual_add_f32 v140, v11, v170
.Ltmp372:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v24, v247, v25 :: v_dual_add_f32 v25, v249, v30
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v7, 0, v18, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v240
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v18, v46, 1, 0
.Ltmp373:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v142, v13, v172 :: v_dual_add_f32 v143, v14, v181
	v_mov_b32_e32 v249, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp374:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v8, 0, v19, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v242
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v19, v9, v72, v75
.Ltmp375:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v72, v21, v166
	v_dual_add_f32 v144, v15, v185 :: v_dual_add_f32 v145, v16, v186
.Ltmp376:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v22, 0, v20, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v244
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v20, 28, v0
.Ltmp377:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v146, v17, v167
.Ltmp378:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s15, v162, v162
	v_bfe_u32 v10, v161, 16, 1
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v246
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_add_nc_u32_e32 v9, v9, v20
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s1, v163, v163
	v_bfe_u32 v11, v158, 16, 1
	v_bfe_u32 v12, v157, 16, 1
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v248
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_bfe_u32 v13, v101, 16, 1
	v_add3_u32 v11, v158, v11, 0x7fff
	v_bfe_u32 v14, v100, 16, 1
	v_bfe_u32 v15, v84, 16, 1
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v25, 0, v25, s0
	ds_store_b128 v18, v[5:8]
	ds_store_b128 v18, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v156, v19
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[5:8]
	ds_store_b128 v18, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v9
	v_add_lshl_u32 v6, s47, v73, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v8, 0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v7, v165, 16, 1
	v_bfe_u32 v9, v162, 16, 1
	v_add3_u32 v13, v101, v13, 0x7fff
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v15, v84, v15, 0x7fff
	v_add3_u32 v9, v162, v9, 0x7fff
	v_bfe_u32 v16, v83, 16, 1
	v_bfe_u32 v17, v80, 16, 1
	v_bfe_u32 v18, v79, 16, 1
	v_cmp_o_f32_e64 s0, v164, v164
	v_bfe_u32 v19, v76, 16, 1
	v_bfe_u32 v20, v56, 16, 1
	v_add3_u32 v17, v80, v17, 0x7fff
	v_bfe_u32 v21, v53, 16, 1
	v_bfe_u32 v22, v52, 16, 1
	v_add3_u32 v19, v76, v19, 0x7fff
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v5, v73, 2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[57:60]
	ds_store_b128 v8, v[61:64] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[26:29] offset:48
	ds_store_b128 v8, v[65:68] offset:64
	ds_store_b128 v8, v[69:72] offset:80
	ds_store_b128 v8, v[139:142] offset:96
	ds_store_b128 v8, v[143:146] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v5
	s_and_b32 s21, s67, 0xffff
	s_mov_b32 s20, s66
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v21, v53, v21, 0x7fff
	v_bfe_u32 v23, v49, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v23, v49, v23, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[20:23], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v5, v164, 16, 1
	v_add3_u32 v6, v165, v7, 0x7fff
	v_bfe_u32 v7, v163, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v5, v164, v5, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v163, v7, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s15
	v_add3_u32 v9, v161, v10, 0x7fff
	v_bfe_u32 v10, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v160, 16, 1
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v10, v159, v10, 0x7fff
	v_cmp_o_f32_e64 s15, v158, v158
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_add3_u32 v7, v160, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v103, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s15
	v_add3_u32 v11, v157, v12, 0x7fff
	v_bfe_u32 v12, v102, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_cmp_o_f32_e64 s15, v101, v101
	v_add3_u32 v10, v103, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v102, v102
	v_add3_u32 v12, v102, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s15
	v_add3_u32 v13, v100, v14, 0x7fff
	v_bfe_u32 v14, v98, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v99, 16, 1
	v_cmp_o_f32_e64 s1, v98, v98
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v14, v98, v14, 0x7fff
	v_cmp_o_f32_e64 s15, v84, v84
	v_add3_u32 v12, v99, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v160, v160
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v82, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s15
	v_add3_u32 v15, v83, v16, 0x7fff
	v_bfe_u32 v16, v81, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_cmp_o_f32_e64 s15, v80, v80
	v_add3_u32 v14, v82, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_add3_u32 v16, v81, v16, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s15
	v_add3_u32 v17, v79, v18, 0x7fff
	v_bfe_u32 v18, v77, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v78, 16, 1
	v_cmp_o_f32_e64 s1, v77, v77
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_add3_u32 v18, v77, v18, 0x7fff
	v_cmp_o_f32_e64 s15, v76, v76
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v103, v103
	v_add3_u32 v16, v78, v16, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v55, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s15
	v_add3_u32 v19, v56, v20, 0x7fff
	v_bfe_u32 v20, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_cmp_o_f32_e64 s15, v53, v53
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e64 s0, v99, v99
	v_add3_u32 v18, v55, v18, 0x7fff
	v_add3_u32 v20, v54, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s15
	v_add3_u32 v21, v52, v22, 0x7fff
	v_bfe_u32 v22, v50, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	v_cmp_o_f32_e64 s0, v82, v82
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s1
	v_cmp_o_f32_e64 s1, v50, v50
	v_add3_u32 v22, v50, v22, 0x7fff
	v_add_nc_u32_e32 v157, v115, v0
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e64 s0, v78, v78
	v_bfe_u32 v20, v51, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s1
	v_xor_b32_e32 v22, 0x90, v249
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v55, v55
	v_cmp_o_f32_e64 s15, v49, v49
	v_add_nc_u32_e32 v158, 0, v22
	v_xor_b32_e32 v22, 0x120, v249
	v_add3_u32 v20, v51, v20, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	ds_store_b16 v157, v5
	ds_store_b16 v157, v10 offset:1024
	ds_store_b16 v157, v14 offset:2048
	ds_store_b16 v157, v18 offset:3072
	ds_store_b16_d16_hi v158, v5
	ds_store_b16_d16_hi v158, v10 offset:1024
	ds_store_b16_d16_hi v158, v14 offset:2048
	ds_store_b16_d16_hi v158, v18 offset:3072
	v_lshlrev_b32_e32 v5, 4, v0
	v_cndmask_b16 v20.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s15
	v_xor_b32_e32 v23, 0x1b0, v249
	v_add_nc_u32_e32 v159, 0, v22
	v_and_b32_e32 v5, 0x70, v5
	v_xor_b32_e32 v10, 0x240, v249
	v_xor_b32_e32 v14, 0x2d0, v249
	v_add_nc_u32_e32 v160, 0, v23
	v_xor_b32_e32 v18, 0x360, v249
	v_lshl_or_b32 v161, v119, 7, v5
	ds_store_b16 v159, v6
	ds_store_b16 v159, v11 offset:1024
	ds_store_b16 v159, v15 offset:2048
	ds_store_b16 v159, v19 offset:3072
	ds_store_b16_d16_hi v160, v6
	ds_store_b16_d16_hi v160, v11 offset:1024
	ds_store_b16_d16_hi v160, v15 offset:2048
	ds_store_b16_d16_hi v160, v19 offset:3072
	v_xor_b32_e32 v5, 0x3f0, v249
	v_cmp_o_f32_e64 s0, v51, v51
	v_add_nc_u32_e32 v162, 0, v10
	v_lshl_or_b32 v6, v48, 6, v161
	v_add_nc_u32_e32 v163, 0, v14
	v_add_nc_u32_e32 v164, 0, v18
	v_add_nc_u32_e32 v165, 0, v5
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	v_dual_mov_b32 v14, v8 :: v_dual_add_nc_u32 v5, 0, v6
	ds_store_b16 v162, v7
	ds_store_b16 v162, v12 offset:1024
	ds_store_b16 v162, v16 offset:2048
	ds_store_b16 v162, v20 offset:3072
	ds_store_b16_d16_hi v163, v7
	ds_store_b16_d16_hi v163, v12 offset:1024
	ds_store_b16_d16_hi v163, v16 offset:2048
	ds_store_b16_d16_hi v163, v20 offset:3072
	v_xad_u32 v7, v6, 16, 0
	v_mov_b32_e32 v16, v8
	ds_store_b16 v164, v9
	ds_store_b16 v164, v13 offset:1024
	ds_store_b16 v164, v17 offset:2048
	ds_store_b16 v164, v21 offset:3072
	ds_store_b16_d16_hi v165, v9
	ds_store_b16_d16_hi v165, v13 offset:1024
	ds_store_b16_d16_hi v165, v17 offset:2048
	ds_store_b16_d16_hi v165, v21 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v5
	ds_load_b128 v[21:24], v7
	v_xad_u32 v5, v6, 32, 0
	v_xad_u32 v7, v6, 48, 0
	v_xad_u32 v9, v6, 64, 0
	v_xad_u32 v10, 0x50, v6, 0
	v_xad_u32 v11, 0x60, v6, 0
	v_xad_u32 v6, 0x70, v6, 0
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[49:52], v11
	ds_load_b128 v[53:56], v6
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[57:60]
	ds_store_b128 v8, v[61:64] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[26:29] offset:48
	ds_store_b128 v8, v[65:68] offset:64
	ds_store_b128 v8, v[69:72] offset:80
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v8, v[139:142] offset:96
	ds_store_b128 v8, v[143:146] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_20
; %bb.14:                               ; %.lr.ph81
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_add_i32 s0, s35, s35
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v1, 1, v73
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v166, s0, s35, v0
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_dual_mov_b32 v181, v156 :: v_dual_lshlrev_b32 v2, 2, v119
	v_lshlrev_b32_e32 v8, 5, v75
	v_cmp_eq_u32_e32 vcc_lo, 0, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v14, 0x7632 :: v_dual_add_nc_u32 v167, s35, v166
	v_and_b32_e32 v9, 52, v195
	v_xor_b32_e32 v57, 0x70, v161
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[98:99], null, s80, v119, v[74:75]
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v168, s35, v167
	v_and_b32_e32 v10, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v207, 0, v57
	v_dual_mov_b32 v57, 0 :: v_dual_cndmask_b32 v14, 0x3276, v14
	v_add_nc_u32_e32 v183, 0, v183
	v_mov_b32_e32 v59, v139
	v_or3_b32 v8, v8, v9, v10
	v_mov_b32_e32 v10, 0x5410
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 1, v1
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s53, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v1, 0, v2, v169
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[99:100], null, s55, 12, v[98:99]
	v_mul_u32_u24_e32 v2, 0x48, v173
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v172, v1
	v_cndmask_b32_e64 v1, 0x90, 0, s14
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v2, v174, 2, v2
	v_lshl_or_b32 v10, v10, 8, v10
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[100:101], null, s55, 20, v[98:99]
	v_xor_b32_e32 v1, v1, v175
	v_mad_u64_u32 v[101:102], null, s55, 24, v[98:99]
	v_mad_u64_u32 v[102:103], null, s55, 28, v[98:99]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v174, v1, v180
	v_or3_b32 v103, v2, v177, v179
	v_or3_b32 v175, v180, v179, v175
	v_or3_b32 v176, v8, v177, v104
	v_dual_mov_b32 v61, v139 :: v_dual_and_b32 v10, 0x540054, v10
	v_dual_mov_b32 v63, v139 :: v_dual_and_b32 v14, 0x760076, v14
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s53, v3
	v_xor_b32_e32 v1, 0x120, v174
	v_xor_b32_e32 v2, 0x240, v174
	v_xor_b32_e32 v3, 0x360, v174
	v_xor_b32_e32 v4, 16, v103
	v_xor_b32_e32 v5, 32, v103
	v_xor_b32_e32 v6, 48, v103
	v_xor_b32_e32 v7, 64, v103
	v_xor_b32_e32 v11, 0x50, v103
	v_xor_b32_e32 v12, 0x60, v103
	v_xor_b32_e32 v13, 0x70, v103
	v_xor_b32_e32 v9, 0x90, v175
	v_xor_b32_e32 v8, 0x120, v175
	v_xor_b32_e32 v15, 0x1b0, v175
	v_xor_b32_e32 v16, 16, v176
	v_xor_b32_e32 v25, 32, v176
	v_xor_b32_e32 v26, 48, v176
	v_xor_b32_e32 v27, 16, v161
	v_xor_b32_e32 v28, 32, v161
	v_xor_b32_e32 v29, 48, v161
	v_xor_b32_e32 v30, 64, v161
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v14, v14, 4, v14
	v_xor_b32_e32 v31, 0x50, v161
	v_xor_b32_e32 v32, 0x60, v161
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mov_b32 v180, v137 :: v_dual_add_nc_u32 v169, s35, v168
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v170, s55, 2, v98
	v_lshl_add_u32 v171, s55, 3, v98
	v_lshl_add_u32 v173, s55, 4, v98
	v_dual_mov_b32 v58, v139 :: v_dual_and_b32 v177, 0x5040504, v10
	v_and_b32_e32 v178, 0x7060706, v14
	v_lshl_add_u32 v179, v119, 1, 0
	v_add_nc_u32_e32 v182, 0, v182
	v_add_nc_u32_e32 v184, 0, v184
	v_dual_mov_b32 v60, v139 :: v_dual_add_nc_u32 v185, 0, v1
	v_add_nc_u32_e32 v186, 0, v2
	v_dual_mov_b32 v62, v139 :: v_dual_add_nc_u32 v187, 0, v3
	v_add_nc_u32_e32 v188, 0, v4
	v_dual_mov_b32 v64, v139 :: v_dual_add_nc_u32 v189, 0, v5
	v_add_nc_u32_e32 v190, 0, v6
	v_add_nc_u32_e32 v191, 0, v7
	v_add_nc_u32_e32 v192, 0, v11
	v_add_nc_u32_e32 v193, 0, v12
	v_add_nc_u32_e32 v194, 0, v13
	v_add_nc_u32_e32 v195, 0, v9
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v196, 0, v8
	v_add_nc_u32_e32 v197, 0, v15
	v_dual_mov_b32 v3, v139 :: v_dual_add_nc_u32 v198, 0, v16
	v_dual_mov_b32 v10, v139 :: v_dual_add_nc_u32 v199, 0, v25
	v_dual_mov_b32 v5, v139 :: v_dual_add_nc_u32 v200, 0, v26
	v_dual_mov_b32 v12, v139 :: v_dual_add_nc_u32 v201, 0, v27
	v_dual_mov_b32 v7, v139 :: v_dual_add_nc_u32 v202, 0, v28
	v_dual_mov_b32 v14, v139 :: v_dual_add_nc_u32 v203, 0, v29
	v_add_nc_u32_e32 v204, 0, v30
	v_dual_mov_b32 v16, v139 :: v_dual_add_nc_u32 v205, 0, v31
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v206, 0, v32
	v_mov_b32_e32 v26, v139
	v_mov_b32_e32 v27, v139
	v_mov_b32_e32 v28, v139
	v_mov_b32_e32 v29, v139
	v_mov_b32_e32 v30, v139
	v_mov_b32_e32 v31, v139
	v_dual_mov_b32 v32, v139 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v11, v139
	v_mov_b32_e32 v13, v139
	v_mov_b32_e32 v15, v139
	v_mov_b32_e32 v2, v139
	v_mov_b32_e32 v4, v139
	v_mov_b32_e32 v6, v139
	v_mov_b32_e32 v8, v139
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s29, s16, 3
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s30, s42, s16
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s54, s54, s43
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s64, s42, s29
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s55, 0x76543210
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_branch .LBB0_16
.LBB0_15:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v65, v81, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v208.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v208.h, v67.l
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s14, s38, s80
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s17, s38, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v68.l, v65.l
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v65.h, v208.l
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s14, s54, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s22, s38, 2
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v70, s14, v170, 1
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v65.l, v68.l, 15
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v71, s14, v101, 1
	v_add_lshl_u32 v72, s14, v171, 1
	v_add_lshl_u32 v81, s14, v102, 1
	v_add_lshl_u32 v82, s14, v99, 1
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v65.l, 4, v68.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s65
	v_cndmask_b32_e64 v71, 0x80000000, v71, s63
	v_cndmask_b32_e64 v72, 0x80000000, v72, s62
	v_cndmask_b32_e64 v81, 0x80000000, v81, s59
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v65.l, v65.l, 15
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v82, 0x80000000, v82, s58
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s18, s38, 3
	s_or_b32 s23, s38, 4
	s_or_b32 s20, s38, 5
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v67, -16, v65
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v66, 15, v68
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s24, s38, 6
	s_or_b32 s19, s38, 7
	s_or_b32 s25, s38, 8
	s_or_b32 s21, s38, 9
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v69, -16, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s26, s38, 10
	s_or_b32 s27, s38, 12
	s_or_b32 s28, s38, 14
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v66, v66, v69, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v68.l
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v68, s14, v98, 1
	v_add_lshl_u32 v69, s14, v100, 1
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v77, v137, v77
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v67, v65, v67, vcc_lo
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v65, s14, v173, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s67
	v_cndmask_b32_e64 v69, 0x80000000, v69, s66
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s68
	s_clause 0x7
	buffer_load_u16 v65, v65, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v69, v69, s[48:51], 0 offen
	buffer_load_u16 v70, v70, s[48:51], 0 offen
	buffer_load_u16 v71, v71, s[48:51], 0 offen
	buffer_load_u16 v72, v72, s[48:51], 0 offen
	buffer_load_u16 v81, v81, s[48:51], 0 offen
	buffer_load_u16 v82, v82, s[48:51], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v239, v208, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v65.h, 0xff80, v65.l, s68
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v65.l, 0xff80, v68.l, s67
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v68.h, 0xff80, v69.l, s66
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v68.l, 0xff80, v70.l, s65
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v69.h, 0xff80, v71.l, s63
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v71, 0, v174
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v69.l, 0xff80, v72.l, s62
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v185, v68
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v70.h, 0xff80, v81.l, s59
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v71, v65
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v240, v208, v66
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v65.l
	v_mov_b16_e64 v65.l, v208.l
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v70.l, 0xff80, v82.l, s58
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_b32 v186, v69
	ds_store_b32 v187, v70
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	v_cmp_neq_f32_e64 s14, 0xff800000, v208
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v68.l
	v_mov_b16_e64 v68.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s16, s68, vcc_lo
	s_and_b32 s14, s67, s14
	v_cndmask_b32_e64 v65, 0, 1, s16
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v68
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v208
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v69.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s14, s66, s15
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v69.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.l, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s65, vcc_lo
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v69
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v208
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v65.h, 8, v66.l
	.loc	1 343 31 is_stmt 1              ; attention_backward.py:343:31
	v_add_nc_u32_e32 v66, 0, v103
	.loc	1 342 32                        ; attention_backward.py:342:32
	ds_load_u16 v238, v66
	ds_load_u16 v237, v188
	ds_load_u16 v235, v190
	ds_load_u16 v233, v192
	ds_load_u16 v230, v194
	ds_load_u16 v232, v193
	ds_load_u16 v234, v191
	ds_load_u16 v236, v189
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_add_nc_u32_e32 v66, 0, v175
	s_and_b32 s16, s63, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v208.h, v70.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16 v66, v65
	v_cndmask_b32_e64 v66, 0, 1, s16
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_mov_b16_e64 v70.l, v208.l
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s14, s62, s14
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v208
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.h, v67.l, v65.h
	v_mov_b16_e32 v65.l, v66.l
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s15, 0xff800000, v70
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s16, s38, 13
	s_or_b32 s62, s38, 15
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s14, s59, s15
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s15, s38, 11
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s59, s51
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v69, s35, v169
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v65.l, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s58, vcc_lo
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_mov_b32 s58, s50
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s14, s38, 1
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s14, s29
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v208.h, v211.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s65, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s63, s14, s64
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v66.l, v67.l, v66.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_mul_i32 s63, s63, s35
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16_d16_hi v195, v65
	ds_store_b16 v196, v65
	ds_store_b16 v197, v66
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v65, s63, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s65
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v67, s63, v168
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v66, 0x80000000, v65, vcc_lo
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v65, s35, v65
	v_add_nc_u32_e32 v68, s63, v169
	v_add_nc_u32_e32 v69, s63, v69
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	buffer_load_u8 v72, v66, s[56:59], 0 offen
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s63, v167
	v_add_nc_u32_e32 v70, s35, v65
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x5
	buffer_load_u8 v81, v66, s[56:59], 0 offen
	buffer_load_u8 v82, v67, s[56:59], 0 offen
	buffer_load_u8 v83, v68, s[56:59], 0 offen
	buffer_load_u8 v84, v69, s[56:59], 0 offen
	buffer_load_u8 v140, v65, s[56:59], 0 offen
	buffer_load_u8 v141, v70, s[56:59], 0 offen
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s17, s31
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s31
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s20, s31
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s19, s31
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(6)
	v_and_b16 v65.l, v72.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v66, 15, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s14, 7, v65.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v65, s63, v166
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v67, -16, v66
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s63, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v66, v66, v67, s14
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_u8 v142, v65, s[56:59], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v65.h, v208.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v67, 15, v142
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v142.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v65.l, v81.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v71, v67, v68, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v67, 15, v81
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v82.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v70, v67, v68 :: v_dual_and_b32 v67, 15, v82
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v65.l, v83.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v82.l, 4, v82.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v82.h, v208.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v69, v67, v68, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v67, 15, v83
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v84.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v83.l, 4, v83.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v83.h, v208.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v68, -16, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v68, v67, v68, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v67, 15, v84
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v140.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v84.l, 4, v84.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v84.h, v208.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v143, -16, v67
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v67, v67, v143, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v143, 15, v140
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v65.l, 4, v72.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v144, -16, v143
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v65, 0, v65, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v143, v143, v144, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v72, -16, v65
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v144, v65, v72, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v72, 15, v141
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v65.l, v141.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v141.l, 4, v141.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v141.h, v208.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v145, -16, v72
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v65.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v65, v72, v145, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v140.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v208.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s18
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v140, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v140, v72, v140, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v142.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v208.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v140, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s19
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v142, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v142, v72, v142, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v81.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v72.h, v208.l
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v142, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v81, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v72, v72, v81, s14
	.loc	1 360 32 is_stmt 1              ; attention_backward.py:360:32
	v_cndmask_b32_e64 v81, 0, v141, s20
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v141, -16, v81
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v81
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v81, v81, v141, s14
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v82, 0, v82, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v141, -16, v82
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s15, 7, v82
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v82, v82, v141, s15
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s62, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v83, 0, v83, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s62, s50
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v141, -16, v83
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s16, 7, v83
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v83, v83, v141, s16
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s16, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s38, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v84, 0, v84, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v141, -16, v84
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s21, 7, v84
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v84, v84, v141, s21
	.loc	1 378 27 is_stmt 1              ; attention_backward.py:378:27
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s28, s31
	s_cselect_b32 s22, -1, 0
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s26, s38, 4
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s21, s3, s21
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s26, s26, s30
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s17
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s26, s26, s35
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v141, s26, v0, 1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s38, s38, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v145, 0x80000000, v141, s21
	v_cndmask_b32_e64 v146, 0x80000000, v141, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s65
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v241, 0x80000000, v141, s17
	s_clause 0x1
	buffer_load_u16 v145, v145, s[60:63], 0 offen
	buffer_load_u16 v146, v146, s[60:63], 0 offen
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[60:63], 0 offen
	v_cndmask_b32_e64 v242, 0x80000000, v141, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s59
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v243, 0x80000000, v141, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s20
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v242, v242, s[60:63], 0 offen
	v_cndmask_b32_e64 v244, 0x80000000, v141, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s58
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v243, v243, s[60:63], 0 offen
	v_cndmask_b32_e64 v245, 0x80000000, v141, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s19
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v244, v244, s[60:63], 0 offen
	v_cndmask_b32_e64 v246, 0x80000000, v141, s17
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 s17, s3, s25
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v245, v245, s[60:63], 0 offen
	buffer_load_u16 v246, v246, s[60:63], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v66, v66, v145 :: v_dual_lshlrev_b32 v145, 16, v146
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v146, 0x80000000, v141, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s27, v66, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v144, v144, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v145, 16, v241
	v_cndmask_b32_e32 v241, 0x80000000, v141, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v146, v146, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s19, v144, v144
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v143, v143, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v145, 16, v242
	v_cndmask_b32_e32 v242, 0x80000000, v141, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v241, v241, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v143, v143
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v140, v140, v145 :: v_dual_lshlrev_b32 v145, 16, v243
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e32 v243, 0x80000000, v141, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v242, v242, s[60:63], 0 offen
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v65, v65, v145
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v145, 16, v244
	v_cndmask_b32_e32 v244, 0x80000000, v141, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v243, v243, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v65, v65
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v81, v81, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v145, 16, v245
	v_cndmask_b32_e32 v245, 0x80000000, v141, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v244, v244, s[60:63], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v81, v81
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v71, v71, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v145, 16, v246
	buffer_load_u16 v245, v245, s[60:63], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s38, s39
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v71, v71
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v142, v142, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e64 v145, 0x80000000, v141, s17
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v140, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v145, v145, s[60:63], 0 offen
	buffer_load_u16 v141, v141, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v141, 16, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v70, v70, v145 :: v_dual_lshlrev_b32 v145, 16, v146
	v_mul_f32_e32 v84, v84, v141
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v141, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s28, v70, v70
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v72, v72, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v145, 16, v241
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v66, v66, v141, 0x7fff
	v_bfe_u32 v141, v144, 16, 1
	v_cmp_o_f32_e64 s20, v84, v84
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v69, v69, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v145, 16, v242
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v141, v144, v141, 0x7fff
	v_bfe_u32 v144, v143, 16, 1
	v_cmp_o_f32_e64 s26, v72, v72
	v_cmp_o_f32_e64 s25, v69, v69
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v82, v82, v145 :: v_dual_lshlrev_b32 v145, 16, v243
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v143, v143, v144, 0x7fff
	v_bfe_u32 v144, v140, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s24, v82, v82
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v68, v68, v145 :: v_dual_lshlrev_b32 v145, 16, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v140, v140, v144, 0x7fff
	v_bfe_u32 v144, v65, 16, 1
	v_cmp_o_f32_e64 s23, v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v83, v83, v145
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v145, 16, v245
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v144, v65, v144, 0x7fff
	v_bfe_u32 v65, v81, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s22, v83, v83
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v67, v67, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v145, v81, v65, 0x7fff
	v_bfe_u32 v65, v71, 16, 1
	v_bfe_u32 v81, v68, 16, 1
	v_cmp_o_f32_e64 s21, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v71, v71, v65, 0x7fff
	v_bfe_u32 v65, v142, 16, 1
	v_add3_u32 v68, v68, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v142, v142, v65, 0x7fff
	v_bfe_u32 v65, v70, 16, 1
	v_add3_u32 v146, v83, v81, 0x7fff
	v_bfe_u32 v81, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v70, v65, 0x7fff
	v_bfe_u32 v70, v72, 16, 1
	v_add3_u32 v67, v67, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s27
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_add_nc_u32_e32 v66, 0, v176
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v70, v72, v70, 0x7fff
	v_bfe_u32 v72, v69, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s28
	v_add3_u32 v241, v84, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v72, 0x7fff
	v_bfe_u32 v72, v82, 16, 1
	v_add3_u32 v72, v82, v72, 0x7fff
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_load_u8_d16_hi v84, v66
	ds_load_u8_d16_hi v82, v66 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v84, v198
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v82, v198 offset:64
	ds_load_u8_d16_hi v83, v199
	ds_load_u8_d16_hi v81, v199 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v83, v200
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v81, v200 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v157, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v141.h, s19
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v157, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s26
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v141, v139
	ds_store_b16 v158, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v143.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v158, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v69.h, s25
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v143, v139
	ds_store_b16 v159, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v140.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v159, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s24
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v160, v65
	ds_store_b16_d16_hi v160, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v144.h, s15
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s23
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v140, v139
	v_mov_b32_e32 v144, v139
	ds_store_b16 v162, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v145.h, s16
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v162, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v146.h, s22
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v145, v139
	v_mov_b32_e32 v146, v139
	ds_store_b16 v163, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s14
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v163, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s21
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v164, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.l, 0x7fff, v142.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v164, v65 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v65.h, 0x7fff, v241.h, s20
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v165, v65
	ds_store_b16_d16_hi v165, v65 offset:1024
	v_add_nc_u32_e32 v65, 0, v161
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[241:244], v65
	ds_load_b128 v[245:248], v201
	v_mov_b32_e32 v142, v139
	v_dual_mov_b32 v65, v139 :: v_dual_mov_b32 v66, v140
	v_mov_b32_e32 v67, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v69, v143 :: v_dual_mov_b32 v68, v142
	v_dual_mov_b32 v70, v144 :: v_dual_mov_b32 v71, v145
	v_mov_b32_e32 v72, v146
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v144.h, v208.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[17:24], v[65:72]
	ds_load_b128 v[241:244], v202
	ds_load_b128 v[245:248], v203
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[33:40], v[65:72]
	ds_load_b128 v[241:244], v204
	ds_load_b128 v[245:248], v205
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[41:48], v[65:72]
	ds_load_b128 v[241:244], v206
	ds_load_b128 v[245:248], v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[241:248], v[49:56], v[65:72]
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v242, v75
	v_cvt_f32_i32_e32 v75, v79
	v_cvt_f32_i32_e32 v244, v73
	v_cvt_f32_i32_e32 v243, v74
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v140, v67, v172
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v67, v231, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v74, v80
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v69, v172
	v_sub_f32_e32 v141, v65, v172
	v_sub_f32_e32 v65, v70, v172
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v79.l, v67.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v241, v76
	v_cvt_f32_i32_e32 v76, v78
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v71, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v68, v68, v172 :: v_dual_and_b32 v69, 15, v79
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v79.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v76, v180, v76
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v66, v66, v172
	v_sub_f32_e32 v72, v72, v172
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v70, -16, v69
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v226, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v74, v180, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v78, v69, v70, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v69.l, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v70, 15, v69
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v71, -16, v70
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v225, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v67.h, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v70, v70, v71, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v71.l, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v71.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v142, 15, v71
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v71.h, v229.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v79.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v143, -16, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v142, v142, v143, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v79.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v143, -16, v67
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v142, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v79, v67, v143, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v69.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v69.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v143, -16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v69, v67, v143, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v71.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v71.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v71.l, v208.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v78, v78, v71
	v_mul_f32_e32 v71, v79, v71
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v228.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v143, -16, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.l, v208.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v78, 0, v78, s0
	v_cndmask_b32_e64 v71, 0, v71, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v67, v67, v143, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v70, v70, v79
	v_mul_f32_e32 v69, v69, v79
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v227.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v70, 0, v70, s0
	v_mov_b16_e64 v143.h, v208.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v142, v142, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v69, 0, v69, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v67, v67, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s14, v70, v70
	v_cmp_o_f32_e64 s17, v71, v71
	v_cmp_o_f32_e64 s18, v69, v69
	v_cndmask_b32_e64 v67, 0, v67, s1
	v_add3_u32 v78, v78, v79, 0x7fff
	v_bfe_u32 v79, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v70, v70, v79, 0x7fff
	v_cndmask_b32_e64 v79, 0, v142, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v142, v79, 16, 1
	v_cmp_o_f32_e64 s15, v79, v79
	v_add3_u32 v79, v79, v142, 0x7fff
	v_cndmask_b32_e64 v142, 0, v240, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v79.h, s15
	v_mov_b16_e64 v143.l, v142.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v142, v142
	v_and_b32_e32 v143, 1, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v142, v142, v143, 0x7fff
	v_bfe_u32 v143, v71, 16, 1
	v_add3_u32 v71, v71, v143, 0x7fff
	v_bfe_u32 v143, v69, 16, 1
	v_cndmask_b16 v71.l, 0x7fff, v78.h, vcc_lo
	v_add_nc_u32_e32 v78, v157, v249
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s17
	v_add3_u32 v69, v69, v143, 0x7fff
	v_bfe_u32 v143, v67, 16, 1
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s18
	v_add3_u32 v67, v67, v143, 0x7fff
	v_cndmask_b32_e64 v143, 0, v239, s1
	v_cndmask_b16 v67.l, 0x7fff, v142.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v67.h, s19
	v_mov_b16_e64 v144.l, v143.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s20, v143, v143
	ds_store_2addr_stride64_b32 v78, v69, v70 offset0:2 offset1:3
	v_and_b32_e32 v144, 1, v144
	v_add3_u32 v143, v143, v144, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v143.h, s20
	ds_store_2addr_stride64_b32 v78, v67, v71 offset1:1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v67, v220, 0, 8
	v_mov_b16_e32 v71.l, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v79, 15, v71
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v71.l, 15
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v142, -16, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v219, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v67.h, v208.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v79, v79, v142, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v142.l, v67.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v142.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v143, 15, v142
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v142.h, v224.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v71.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v144, -16, v143
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v143, v143, v144, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v71.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v71, v67, v144, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v142.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v142.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v142.l, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v79, v79, v142
	v_mul_f32_e32 v71, v71, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v142.h, v223.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v79, 0, v79, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0, v71, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v67, v67, v144, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v143, v143, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s15, v71, v71
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v67, v67, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v142, v79, 16, 1
	v_cndmask_b32_e64 v67, 0, v67, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v79, v142, 0x7fff
	v_cndmask_b32_e64 v142, 0, v143, s0
	v_cmp_o_f32_e64 s16, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v143, v142, 16, 1
	v_cmp_o_f32_e64 s14, v142, v142
	v_add3_u32 v142, v142, v143, 0x7fff
	v_bfe_u32 v143, v71, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v142.h, s14
	v_add3_u32 v71, v71, v143, 0x7fff
	v_bfe_u32 v143, v67, 16, 1
	v_cndmask_b16 v71.l, 0x7fff, v79.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s15
	v_add3_u32 v67, v67, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v67.h, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v67, v210, 0, 8
	v_mov_b16_e32 v69.l, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v70, 15, v69
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v67.l, v69.l, 15
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v142, -16, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v67, v209, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v67.h, v208.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v70, v70, v142, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v142.l, v67.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v67.l, v142.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v143, 15, v142
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v142.h, v222.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v67.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v69.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v144, -16, v143
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v143, v143, v144, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v69.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v69, v67, v144, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v67.l, 4, v142.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v142.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v142.l, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v67.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v70, v70, v142
	v_mul_f32_e32 v69, v69, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v67
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v142.h, v221.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v70, 0, v70, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v69, 0, v69, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v67, v67, v144, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v143, v143, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s15, v69, v69
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v67, v67, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v142, v70, 16, 1
	v_cndmask_b32_e64 v67, 0, v67, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v142, 0x7fff
	v_cndmask_b32_e64 v142, 0, v143, s0
	v_cmp_o_f32_e64 s16, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v143, v142, 16, 1
	v_cmp_o_f32_e64 s14, v142, v142
	v_add3_u32 v142, v142, v143, 0x7fff
	v_bfe_u32 v143, v69, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v69, v143, 0x7fff
	v_bfe_u32 v143, v67, 16, 1
	v_cndmask_b16 v69.l, 0x7fff, v70.h, vcc_lo
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v70, v137, v244
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v143, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v142.h, s14
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v142, v137, v75
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s16
	ds_store_2addr_stride64_b32 v78, v71, v79 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v78, v69, v67 offset0:6 offset1:7
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v67, 16, v238
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v69.h, v218.l
	v_mov_b16_e64 v69.l, v208.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v71, v180, v243 :: v_dual_mul_f32 v78, v137, v242
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v67, 0x3fb8aa3b, v67
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v79, v180, v241
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v67, v70, v69
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v69, 16, v237
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v217.l
	v_mov_b16_e64 v70.l, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v67, v67, v156
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v69, v71, v70 :: v_dual_lshlrev_b32 v70, 16, v236
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v71.h, v216.l
	v_mov_b16_e64 v71.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v70, 0x3fb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v70, v78, v71
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v71, 16, v235
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v78.h, v215.l
	v_mov_b16_e64 v78.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v71, 0x3fb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v71, v79, v78
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	v_lshlrev_b32_e32 v78, 16, v234
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v214.l
	v_mov_b16_e64 v79.l, v208.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v78, v77, v79 :: v_dual_lshlrev_b32 v77, 16, v233
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v213.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v77, v76, v79 :: v_dual_lshlrev_b32 v76, 16, v232
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v79.h, v212.l
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v75, 0x3fb8aa3b, v76 :: v_dual_lshlrev_b32 v76, 16, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_dual_fmac_f32 v75, v142, v79 :: v_dual_mul_f32 v76, 0x3fb8aa3b, v76
	v_fmac_f32_e32 v76, v74, v208
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v67
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v67.l, 1, v84.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v67.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v67, 0, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v74, v67, v141
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v67, v69, v181
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v67
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v67.l, 1, v84.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v67.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v67, 0, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v67, v66
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s52, v74
	v_mul_f32_e32 v66, s52, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v69, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_cmp_o_f32_e64 s14, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v67, v69, 0x7fff
	v_bfe_u32 v69, v66, 16, 1
	v_cndmask_b16 v67.l, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v66, v69, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v66.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v67, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v69, v67, v177
	v_perm_b32 v67, v69, v67, v178
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v69, v70, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v69
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v69.l, 1, v83.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v69, 0, v70, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v70, v69, v140 :: v_dual_sub_f32 v69, v71, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v69
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v69.l, 1, v83.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v69, 0, v71, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v68, v69, v68 :: v_dual_mul_f32 v69, s52, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s52, v68
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v68, v68
	v_add3_u32 v69, v69, v70, 0x7fff
	v_bfe_u32 v70, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.l, 0x7fff, v69.h, vcc_lo
	v_add3_u32 v68, v68, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s14
	v_permlanex16_b32 v70, v69, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v68, v70, v69, v177
	v_perm_b32 v69, v70, v69, v178
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v70, v78, v156
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v70
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v70.l, 1, v82.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v71, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v71, v70, v80 :: v_dual_sub_f32 v70, v77, v181
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v70
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v70.l, 1, v82.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v65, v70, v65 :: v_dual_mul_f32 v70, s52, v71
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s52, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v71, v70, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cmp_o_f32_e64 s14, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_bfe_u32 v71, v65, 16, 1
	v_add3_u32 v65, v65, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v65, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v71, v65, v177
	v_perm_b32 v71, v71, v65, v178
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_sub_f32_e32 v65, v75, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v65
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_and_b16 v65.l, 1, v81.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v65.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v65, 0, v74, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v65, v73
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v65, v76, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v76, v179 offset:608
	ds_load_u16_d16 v75, v179 offset:352
	ds_load_u16_d16 v208, v179
	ds_load_u16_d16 v212, v179 offset:1024
	ds_load_u16_d16 v219, v179 offset:832
	ds_load_u16_d16 v220, v179 offset:1088
	ds_load_u16_d16 v213, v179 offset:1280
	ds_load_u16_d16 v221, v179 offset:1344
	ds_load_u16_d16 v214, v179 offset:1536
	ds_load_u16_d16 v222, v179 offset:1600
	ds_load_u16_d16 v215, v179 offset:1792
	ds_load_u16_d16 v209, v179 offset:256
	ds_load_u16_d16 v210, v179 offset:512
	ds_load_u16_d16 v218, v179 offset:576
	ds_load_u16_d16 v211, v179 offset:768
	ds_load_u16_d16 v223, v179 offset:1856
	ds_load_u16_d16 v216, v179 offset:64
	ds_load_u16_d16 v217, v179 offset:320
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v65
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_and_b16 v65.l, 1, v81.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v65.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v65, 0, v74, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v75, v179 offset:480
	ds_load_u16_d16 v74, v179 offset:96
	ds_load_u16_d16 v224, v179 offset:32
	ds_load_u16_d16 v225, v179 offset:288
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v208, v179 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v219, v179 offset:960
	ds_load_u16_d16_hi v212, v179 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v220, v179 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v213, v179 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v221, v179 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v214, v179 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v222, v179 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v215, v179 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v179 offset:384
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v210, v179 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v218, v179 offset:704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v211, v179 offset:896
	ds_load_u16_d16 v77, v179 offset:864
	ds_load_u16_d16 v78, v179 offset:1120
	ds_load_u16_d16 v79, v179 offset:1376
	ds_load_u16_d16 v80, v179 offset:1632
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v223, v179 offset:1984
	ds_load_u16_d16 v81, v179 offset:1888
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v224, v179 offset:160
	ds_load_u16_d16_hi v216, v179 offset:192
	ds_load_u16_d16_hi v74, v179 offset:224
	ds_load_u16_d16 v226, v179 offset:544
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v225, v179 offset:416
	ds_load_u16_d16_hi v217, v179 offset:448
	ds_load_u16_d16 v227, v179 offset:800
	ds_load_u16_d16 v228, v179 offset:1056
	ds_load_u16_d16 v229, v179 offset:1312
	ds_load_u16_d16 v230, v179 offset:1568
	ds_load_u16_d16 v231, v179 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v226, v179 offset:672
	ds_load_u16_d16_hi v76, v179 offset:736
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v65, v65, v72 :: v_dual_mul_f32 v72, s52, v73
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v227, v179 offset:928
	ds_load_u16_d16_hi v77, v179 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v228, v179 offset:1184
	ds_load_u16_d16_hi v78, v179 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v229, v179 offset:1440
	ds_load_u16_d16_hi v79, v179 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v230, v179 offset:1696
	ds_load_u16_d16_hi v80, v179 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v231, v179 offset:1952
	ds_load_u16_d16_hi v81, v179 offset:2016
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v73, v72, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s52, v65
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v73, 0x7fff
	v_bfe_u32 v73, v65, 16, 1
	v_cmp_o_f32_e64 s14, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v65, v73, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v72.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s14
	v_permlanex16_b32 v73, v65, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v72, v73, v65, v177
	v_perm_b32 v73, v73, v65, v178
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[208:215], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[224:231], v[66:73], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[216:223], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[74:81], v[66:73], v[1:8]
	s_cbranch_scc0 .LBB0_20
.LBB0_16:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v65, s38, v104
	v_or_b32_e32 v66, s38, v105
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s69, s38, s81
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v67, s38, v106
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s22, s69, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s19, s31, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s38, v107
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v140, v139 :: v_dual_add_nc_u32 v65, s22, v85
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v69, s38, v108
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s21, s31, v67
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v141, v139 :: v_dual_add_nc_u32 v66, s22, v112
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s38, v109
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v68
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v142, v139 :: v_dual_add_nc_u32 v67, s22, v113
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s38, v110
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v69
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v143, v139 :: v_dual_add_nc_u32 v68, s22, v86
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s38, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v70
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v144, v139 :: v_dual_add_nc_u32 v69, s22, v114
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v71
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v145, v139 :: v_dual_add_nc_u32 v70, s22, v87
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v72
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v146, v139 :: v_dual_add_nc_u32 v71, s22, v88
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v73, v139 :: v_dual_add_nc_u32 v72, s22, v89
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v74, v140 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v75, v141 :: v_dual_mov_b32 v76, v142
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	s_clause 0x7
	buffer_load_u8 v81, v65, s[40:43], 0 offen
	buffer_load_u8 v231, v66, s[40:43], 0 offen
	buffer_load_u8 v226, v67, s[40:43], 0 offen
	buffer_load_u8 v225, v68, s[40:43], 0 offen
	buffer_load_u8 v220, v69, s[40:43], 0 offen
	buffer_load_u8 v219, v70, s[40:43], 0 offen
	buffer_load_u8 v210, v71, s[40:43], 0 offen
	buffer_load_u8 v209, v72, s[40:43], 0 offen
	v_add_nc_u32_e32 v65, 0, v138
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v77, v143 :: v_dual_mov_b32 v78, v144
	v_dual_mov_b32 v79, v145 :: v_dual_mov_b32 v80, v146
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s38, v119
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v81
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v231 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v226
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v225 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v220
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v219 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v118, v210
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v209 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[67:68], v65
	ds_load_b64 v[69:70], v182
	ds_load_b64 v[71:72], v183
	ds_load_b64 v[82:83], v184
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s22, s31, v66
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s67, s6, s22
	s_and_b32 s65, s7, s22
	s_and_b32 s62, s8, s22
	s_and_b32 s58, s9, s22
	s_and_b32 s68, s10, s22
	s_and_b32 s66, s11, s22
	s_and_b32 s63, s12, s22
	s_and_b32 s59, s13, s22
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[90:91], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[92:93], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[94:95], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[82:83], v[96:97], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s22, v66, v130
	v_cmp_le_i32_e64 s23, v66, v131
	v_cmp_le_i32_e64 s24, v66, v132
	v_cmp_le_i32_e64 s25, v66, v133
	v_cmp_le_i32_e64 s26, v66, v134
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s22, s22, s65
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v129
	v_cmp_le_i32_e64 s27, v66, v135
	v_cmp_le_i32_e64 s28, v66, v136
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s23, s23, s62
	s_and_b32 s24, s24, s58
	s_and_not1_b32 s65, s65, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_b32 s25, s25, s68
	s_and_b32 s26, s26, s66
	s_or_b32 s65, s65, s22
	s_and_not1_b32 s22, s62, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s58, s58, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_b32 s70, vcc_lo, s67
	s_and_b32 s27, s27, s63
	s_and_b32 s28, s28, s59
	s_or_b32 s62, s22, s23
	s_or_b32 s58, s58, s24
	s_and_not1_b32 s22, s68, exec_lo
	s_and_b32 s23, s25, exec_lo
	s_and_not1_b32 s24, s66, exec_lo
	s_and_b32 s25, s26, exec_lo
	s_and_not1_b32 s67, s67, exec_lo
	s_and_b32 s70, s70, exec_lo
	s_or_b32 s68, s22, s23
	s_or_b32 s66, s24, s25
	s_and_not1_b32 s22, s63, exec_lo
	s_and_b32 s23, s27, exec_lo
	s_and_not1_b32 s24, s59, exec_lo
	s_and_b32 s25, s28, exec_lo
	s_or_b32 s67, s67, s70
	s_or_b32 s63, s22, s23
	s_or_b32 s59, s24, s25
.LBB0_18:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v65, s38, v127
	v_add_lshl_u32 v67, s69, v104, 1
	v_or_b32_e32 v68, s38, v128
	v_add_lshl_u32 v208, s69, v127, 1
	v_or_b32_e32 v69, s38, v126
	v_cmp_gt_i32_e32 vcc_lo, s31, v65
	v_add_nc_u32_e32 v82, 4, v67
	v_add_nc_u32_e32 v142, 12, v67
	v_add_nc_u32_e32 v143, 16, v67
	v_cndmask_b32_e64 v141, 0x80000000, v67, s19
	v_cndmask_b32_e32 v65, 0x80000000, v208, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v68
	v_add_nc_u32_e32 v83, 8, v67
	v_add_nc_u32_e32 v144, 20, v67
	v_add_nc_u32_e32 v145, 24, v67
	v_add_nc_u32_e32 v67, 28, v67
	v_cndmask_b32_e64 v82, 0x80000000, v82, s20
	v_cndmask_b32_e64 v83, 0x80000000, v83, s21
	v_cndmask_b32_e64 v142, 0x80000000, v142, s14
	v_cndmask_b32_e64 v143, 0x80000000, v143, s15
	v_cndmask_b32_e64 v144, 0x80000000, v144, s16
	v_cndmask_b32_e64 v145, 0x80000000, v145, s17
	v_cndmask_b32_e64 v146, 0x80000000, v67, s18
	s_clause 0x7
	buffer_load_u16 v67, v141, s[44:47], 0 offen
	buffer_load_u16 v229, v82, s[44:47], 0 offen
	buffer_load_u16 v228, v83, s[44:47], 0 offen
	buffer_load_u16 v227, v142, s[44:47], 0 offen
	buffer_load_u16 v224, v143, s[44:47], 0 offen
	buffer_load_u16 v223, v144, s[44:47], 0 offen
	buffer_load_u16 v222, v145, s[44:47], 0 offen
	buffer_load_u16 v221, v146, s[44:47], 0 offen
	v_add_nc_u32_e32 v83, 8, v208
	v_add_nc_u32_e32 v82, 4, v208
	v_or_b32_e32 v70, s38, v125
	v_or_b32_e32 v71, s38, v124
	v_or_b32_e32 v72, s38, v123
	v_or_b32_e32 v84, s38, v122
	v_cndmask_b32_e32 v68, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v69
	v_or_b32_e32 v140, s38, v121
	v_cndmask_b32_e32 v69, 0x80000000, v83, vcc_lo
	v_add_nc_u32_e32 v83, 16, v208
	v_add_nc_u32_e32 v82, 12, v208
	v_cmp_gt_i32_e32 vcc_lo, s31, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v70, 0x80000000, v82, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v71
	v_dual_cndmask_b32 v71, 0x80000000, v83 :: v_dual_add_nc_u32 v82, 20, v208
	v_cmp_gt_i32_e32 vcc_lo, s31, v72
	v_dual_cndmask_b32 v72, 0x80000000, v82 :: v_dual_add_nc_u32 v83, 24, v208
	v_cmp_gt_i32_e32 vcc_lo, s31, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v82, 0x80000000, v83 :: v_dual_add_nc_u32 v141, 28, v208
	v_cmp_gt_i32_e32 vcc_lo, s31, v140
	v_cndmask_b32_e32 v83, 0x80000000, v141, vcc_lo
	s_clause 0x7
	buffer_load_u16 v218, v65, s[44:47], 0 offen
	buffer_load_u16 v217, v68, s[44:47], 0 offen
	buffer_load_u16 v216, v69, s[44:47], 0 offen
	buffer_load_u16 v215, v70, s[44:47], 0 offen
	buffer_load_u16 v214, v71, s[44:47], 0 offen
	buffer_load_u16 v213, v72, s[44:47], 0 offen
	buffer_load_u16 v212, v82, s[44:47], 0 offen
	buffer_load_u16 v211, v83, s[44:47], 0 offen
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_15
; %bb.19:                               ;   in Loop: Header=BB0_16 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v66, v250
	v_cmp_ge_i32_e64 s14, v66, v251
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s21, v66, v147
	v_cmp_le_i32_e64 s22, v66, v148
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v66, v252
	v_cmp_ge_i32_e64 s16, v66, v253
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s23, v66, v149
	v_cmp_le_i32_e64 s24, v66, v150
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v66, v254
	v_cmp_ge_i32_e64 s18, v66, v255
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s25, v66, v151
	v_cmp_le_i32_e64 s26, v66, v152
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s14, s14, s22
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s19, v66, v120
	v_cmp_ge_i32_e64 s20, v66, v155
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v66, v153
	v_cmp_le_i32_e64 s28, v66, v154
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s21, s21, s67
	s_and_b32 s14, s14, s65
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_b32 s18, s18, s26
	s_and_b32 s15, s15, s62
	s_and_b32 s16, s16, s58
	s_and_not1_b32 s22, s67, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s65, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s68
	s_and_b32 s18, s18, s66
	s_and_b32 s19, s19, s27
	s_and_b32 s20, s20, s28
	s_or_b32 s67, s22, s21
	s_or_b32 s65, s23, s14
	s_and_not1_b32 s14, s62, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_not1_b32 s21, s58, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_b32 s19, s19, s63
	s_and_b32 s20, s20, s59
	s_or_b32 s62, s14, s15
	s_or_b32 s58, s21, s16
	s_and_not1_b32 s14, s68, exec_lo
	s_and_b32 s15, s17, exec_lo
	s_and_not1_b32 s16, s66, exec_lo
	s_and_b32 s17, s18, exec_lo
	s_or_b32 s68, s14, s15
	s_or_b32 s66, s16, s17
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s15, s19, exec_lo
	s_and_not1_b32 s16, s59, exec_lo
	s_and_b32 s17, s20, exec_lo
	s_or_b32 s63, s14, s15
	s_or_b32 s59, s16, s17
	s_branch .LBB0_15
.LBB0_20:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v48, off, off          ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v127
	v_cmp_gt_i32_e64 s2, s53, v128
	v_cmp_gt_i32_e64 s3, s53, v126
	v_cmp_gt_i32_e64 s5, s53, v125
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s53, v124
	v_cmp_gt_i32_e64 s7, s53, v123
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v47, 16, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s53, v122
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v46, 18, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s53, v121
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v45, 20, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s53, v47
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v44, 22, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s53, v46
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v43, 24, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s53, v45
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v42, 26, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s53, v44
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v41, 28, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s53, v43
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v40, 30, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s53, v42
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v39, 32, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s53, v41
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v38, 34, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s53, v40
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v37, 36, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s53, v39
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v36, 38, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s53, v38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 40, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s53, v37
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v34, 42, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s53, v36
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v33, 44, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s53, v35
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v24, 46, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s53, v34
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v23, 48, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s53, v33
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 50, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s53, v24
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 52, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s53, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 54, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s53, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 56, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s53, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 60, v127
	v_or_b32_e32 v18, 58, v127
	v_or_b32_e32 v0, 62, v127
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s53, v20
	v_cmp_gt_i32_e64 s30, s53, v19
	v_cmp_gt_i32_e32 vcc_lo, s53, v17
	v_cmp_gt_i32_e64 s0, s53, v18
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, vcc_lo
	s_and_b32 s0, s4, s0
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v48, v48, s53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v49, v48, v127, 2
	v_add_lshl_u32 v50, v48, v128, 2
	v_add_lshl_u32 v51, v48, v126, 2
	v_add_lshl_u32 v52, v48, v122, 2
	v_add_lshl_u32 v47, v48, v47, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v57, v49, s[36:39], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_add_lshl_u32 v49, v48, v125, 2
	s_clause 0x1
	buffer_store_b32 v58, v50, s[36:39], 0 offen
	buffer_store_b32 v59, v51, s[36:39], 0 offen
	v_add_lshl_u32 v50, v48, v124, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v51, v48, v123, 2
	v_add_lshl_u32 v46, v48, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v49, s[36:39], 0 offen
	buffer_store_b32 v61, v50, s[36:39], 0 offen
	v_add_lshl_u32 v49, v48, v121, 2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v45, v48, v45, 2
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v62, v51, s[36:39], 0 offen
	buffer_store_b32 v63, v52, s[36:39], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v41, v48, v41, 2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v64, v49, s[36:39], 0 offen
	buffer_store_b32 v25, v47, s[36:39], 0 offen
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v48, v44, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	s_clause 0x1
	buffer_store_b32 v26, v46, s[36:39], 0 offen
	buffer_store_b32 v27, v45, s[36:39], 0 offen
	v_add_lshl_u32 v26, v48, v43, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v48, v42, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v0
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v48, v40, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_add_lshl_u32 v26, v48, v39, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v30, v27, s[36:39], 0 offen
	buffer_store_b32 v31, v41, s[36:39], 0 offen
	v_add_lshl_u32 v27, v48, v38, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v28, v48, v37, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[36:39], 0 offen
	buffer_store_b32 v9, v26, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v48, v36, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_clause 0x1
	buffer_store_b32 v10, v27, s[36:39], 0 offen
	buffer_store_b32 v11, v28, s[36:39], 0 offen
	v_add_lshl_u32 v10, v48, v35, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v48, v34, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v48, v33, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v48, v24, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_lshl_u32 v10, v48, v23, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v25, s[36:39], 0 offen
	v_add_lshl_u32 v11, v48, v22, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v48, v21, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v48, v20, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v48, v19, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v48, v18, 2
	v_add_lshl_u32 v9, v48, v17, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v48, v0, 2
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
.Ltmp379:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 12
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 12
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27372
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 12
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
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
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
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
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
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
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
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
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
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
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 12
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 2
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
