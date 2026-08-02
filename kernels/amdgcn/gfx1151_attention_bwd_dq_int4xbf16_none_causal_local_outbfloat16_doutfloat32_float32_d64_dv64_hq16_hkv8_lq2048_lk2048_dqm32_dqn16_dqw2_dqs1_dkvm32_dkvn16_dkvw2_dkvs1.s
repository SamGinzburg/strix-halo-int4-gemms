	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x78
	s_load_b32 s5, s[0:1], 0xa0
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v71, 1, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v41, 4, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s20, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s21, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s20, s21
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s20, v71
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v2, 16, v41
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v6, s33, v71
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v42, 7, v0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s20, v4
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b256 s[36:43], s[0:1], 0x38
	s_mov_b32 s51, 0x31027000
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v10, 3, v42
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v84, v0, 4, 1
	s_load_b64 s[6:7], s[0:1], 0x98
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s34, v2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s34, v6, v[2:3]
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v7, s35, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s23, s35, v10
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v69, 15, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s4, s35, s33
	s_clause 0x1
	s_load_b32 s46, s[0:1], 0x80
	s_load_b64 s[44:45], s[0:1], 0x58
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v14, s35, 3, v7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v87, 2, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s49, s25, 0xffff
	s_mov_b32 s48, s24
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s23
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v85, v7, v10
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v94, 2, v84
	v_or_b32_e32 v93, 4, v84
	v_or_b32_e32 v88, 6, v84
	v_or_b32_e32 v91, 8, v84
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v11, s4, v85
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v92, 10, v84
	v_or_b32_e32 v89, 12, v84
	v_or_b32_e32 v90, 14, v84
	s_mov_b64 s[52:53], s[42:43]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v13, 1, v11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v70, 32, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v11, 2, v11
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s9, s46, 0x3fb8aa3b
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v70
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v12, s4, v10
	v_add_nc_u32_e32 v86, v14, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v83, v1, v69
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s20, v83
	.loc	1 143 17 is_stmt 1              ; attention_backward.py:143:17
	v_or_b32_e32 v3, s33, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v8, 1, v3
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[3:6], v2, s[48:51], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s49, s31, 0xffff
	s_mov_b32 s48, s30
	v_cndmask_b32_e64 v2, 0x80000000, v8, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[8:9], null, s35, 24, v[7:8]
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v59, v2, s[48:51], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s49, s37, 0xffff
	s_mov_b32 s48, s36
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v2, s35, 4, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[43:46], v13, s[48:51], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v10, v12, v8
	s_load_b64 s[36:37], s[0:1], 0x20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v16, 1, v10
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	buffer_load_b128 v[51:54], v16, s[48:51], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v61.h, v44.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v9, v12, v2
	v_or_b32_e32 v12, 4, v12
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.h, v43.l
	v_mov_b16_e32 v60.h, v45.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v15, 1, v9
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v7, v12, v7, 2
	v_add_lshl_u32 v2, v12, v2, 2
	v_add_lshl_u32 v8, v12, v8, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v13, 0x80000000, v15, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[47:50], v13, s[48:51], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v78.h, v53.l
	v_mov_b16_e32 v79.h, v52.l
	v_and_b32_e32 v52, 0xffff0000, v52
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v9, 2, v9
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v77.h, v54.l
	v_mov_b16_e32 v80.h, v51.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v75.h, v48.l
	v_and_b32_e32 v48, 0xffff0000, v48
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v15, s4, v86
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v68.h, v49.l
	v_mov_b16_e32 v67.h, v50.l
	v_mov_b16_e32 v76.h, v47.l
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v13, 1, v15
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s4, s3, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s8, s4, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s4, s4, 10
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s8
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s4, s4, 0xffffc000
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[55:58], v13, s[48:51], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s49, s39, 0xffff
	s_mov_b32 s48, s38
	s_clause 0x3
	buffer_load_b128 v[37:40], v11, s[48:51], 0 offen
	buffer_load_b128 v[33:36], v7, s[48:51], 0 offen
	buffer_load_b128 v[21:24], v9, s[48:51], 0 offen
	buffer_load_b128 v[17:20], v2, s[48:51], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v54, 0xffff0000, v54
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s8, s3, 0x10007
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s8
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s5, s20
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s8, 32
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s3, s3, 10
	s_and_b32 s47, s3, 0xfffff800
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s3, s20, s6
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s47, s47, s4
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s3, s3, s5
	v_or_b32_e32 v95, s47, v87
	.loc	1 181 25 is_stmt 0              ; attention_backward.py:181:25
	s_max_i32 s3, s3, 0
	v_or_b32_e32 v96, s47, v84
	.loc	1 186 33 is_stmt 1              ; attention_backward.py:186:33
	s_and_b32 s60, s3, 0x7ffffff0
	v_or_b32_e32 v97, s47, v94
	v_or_b32_e32 v98, s47, v93
	v_or_b32_e32 v99, s47, v88
	v_or_b32_e32 v100, s47, v91
	v_or_b32_e32 v101, s47, v92
	v_or_b32_e32 v102, s47, v89
	v_or_b32_e32 v103, s47, v90
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v65.h, v56.l
	v_mov_b16_e32 v66.h, v55.l
	v_and_b32_e32 v56, 0xffff0000, v56
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v7, 2, v10
	v_add_lshl_u32 v10, v12, v14, 2
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v48, v24, v48 :: v_dual_lshlrev_b32 v9, 2, v15
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v63.h, v58.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v64.h, v57.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[13:16], v7, s[48:51], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v9 :: v_dual_cndmask_b32 v7, 0x80000000, v10
	s_clause 0x2
	buffer_load_b128 v[9:12], v8, s[48:51], 0 offen
	buffer_load_b128 v[29:32], v2, s[48:51], 0 offen
	buffer_load_b128 v[25:28], v7, s[48:51], 0 offen
	v_mov_b16_e32 v7.l, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v7.h, v46.l
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v76.l, v7.l
	v_and_b32_e32 v50, 0xffff0000, v50
	v_mov_b16_e32 v67.l, v7.l
	v_mov_b16_e32 v75.l, v7.l
	v_and_b32_e32 v45, 0xffff0000, v45
	v_mov_b16_e32 v60.l, v7.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v50, v20, v50
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v74, v2, 30, v84
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v48, v23, v75 :: v_dual_and_b32 v49, 0xffff0000, v49
.Ltmp2:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v51, 0xffff0000, v51
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v45, v34, v45 :: v_dual_and_b32 v46, 0xffff0000, v46
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v50, v19, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v49, v18, v49 :: v_dual_and_b32 v72, 3, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v80.l, v7.l
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v45, v33, v60 :: v_dual_mul_f32 v46, v36, v46
.Ltmp6:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v81, 2, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v74, 3, v72
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v63.l, v7.l
	v_mov_b16_e32 v65.l, v7.l
	v_mov_b16_e32 v61.l, v7.l
	v_mov_b16_e32 v62.l, v7.l
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v46, v35, v7
.Ltmp8:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v64.l, v7.l
	v_mov_b16_e32 v66.l, v7.l
	v_mov_b16_e32 v68.l, v7.l
	v_mov_b16_e32 v77.l, v7.l
	v_mov_b16_e32 v78.l, v7.l
	v_mov_b16_e32 v79.l, v7.l
	v_and_b32_e32 v53, 0xffff0000, v53
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v82, 4, v81
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v49, v17, v68
.Ltmp10:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v110, v81, v6
	ds_bpermute_b32 v108, v81, v4
	ds_bpermute_b32 v109, v81, v5
	ds_bpermute_b32 v6, v82, v6
	ds_bpermute_b32 v4, v82, v4
	ds_bpermute_b32 v5, v82, v5
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v51, v14, v51 :: v_dual_and_b32 v58, 0xffff0000, v58
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s34, v74
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v54, v12, v54
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v56, v32, v56
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v51, v13, v80
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v58, v28, v58 :: v_dual_lshlrev_b32 v73, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v56, v31, v65 :: v_dual_and_b32 v43, 0xffff0000, v43
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v57, 0xffff0000, v57
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v54, v11, v77 :: v_dual_lshlrev_b32 v59, 16, v59
	v_fmac_f32_e32 v58, v27, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v57, v26, v57 :: v_dual_and_b32 v44, 0xffff0000, v44
	v_mul_f32_e32 v43, v38, v43
	v_dual_mul_f32 v53, v10, v53 :: v_dual_mul_f32 v44, v40, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v43, v37, v62
	v_dual_fmac_f32 v53, v9, v78 :: v_dual_mul_f32 v52, v16, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v39, v61
	v_fmac_f32_e32 v52, v15, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v7, v43, v44
	v_add_f32_e32 v43, v45, v46
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v47, 0xffff0000, v47
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v49, v50 :: v_dual_add_f32 v46, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v7, v7, v43 :: v_dual_and_b32 v8, 16, v0
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v55, 0xffff0000, v55
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v47, v22, v47 :: v_dual_add_nc_u32 v104, s5, v1
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s8, s7
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s8, s8, 0x800
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v55, v30, v55 :: v_dual_add_nc_u32 v106, s7, v104
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v21, v76
.Ltmp22:
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s5, 0x800
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s8, 15
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v1, v81, v3
	ds_bpermute_b32 v3, v82, v3
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v47, v48 :: v_dual_add_f32 v47, v53, v54
.Ltmp24:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s8, s3, 31
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s10, s5, 31
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s8, s8, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s10, s10, 28
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v57, v25, v64
	v_dual_add_f32 v43, v44, v45 :: v_dual_add_f32 v44, v46, v47
.Ltmp26:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s8
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s5, s5, s10
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v44
.Ltmp28:
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s61, s5, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v8
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v8, v7 :: v_dual_fmac_f32 v55, v29, v66
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v57, v58
.Ltmp31:
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v105, s6, v104
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v80, v6, v110, s5
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v82, v110, v6, s5
	v_and_b32_e32 v110, 24, v71
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v55, v56
.Ltmp36:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v75, v3, v1, s5
	v_cndmask_b32_e64 v77, v1, v3, s5
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v1, v7, v8
	v_add_f32_e32 v7, v44, v47
	v_add_f32_e32 v45, v48, v49
.Ltmp38:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v76, v4, v108, s5
	v_cndmask_b32_e64 v78, v108, v4, s5
	v_cndmask_b32_e64 v79, v5, v109, s5
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v7
	v_mov_b32_e32 v48, v45
.Ltmp40:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v81, v109, v5, s5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s60, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v107, s9, v59
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s22, -1, 0
	s_cmp_ge_i32 s60, s61
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v7, v44
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v46, v43
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v48, v44
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v43, v46 :: v_dual_mov_b32 v46, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v43, v3
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v8, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v4, v1 :: v_dual_add_f32 v43, v3, v43
	v_mov_b32_e32 v50, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v54, v107 :: v_dual_and_b32 v1, 24, v2
	v_xor_b32_e32 v3, v73, v110
	v_dual_mov_b32 v53, v107 :: v_dual_mov_b32 v2, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v52, v69, 5, v1
	v_dual_mov_b32 v55, v107 :: v_dual_add_nc_u32 v56, 0, v3
	v_mov_b32_e32 v51, 0
	s_and_b32 s49, s27, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v4, 8, v52
	v_xor_b32_e32 v5, 16, v52
	v_xor_b32_e32 v6, 24, v52
	v_mov_b32_e32 v1, 0
	s_mov_b32 s48, s26
	v_add_nc_u32_e32 v57, 0, v4
	v_add_nc_u32_e32 v58, 0, v5
	v_add_nc_u32_e32 v59, 0, v6
	s_and_b32 s57, s37, 0xffff
	s_mov_b32 s56, s36
	s_mov_b32 s24, 0x76543210
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	s_mov_b32 s25, s60
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v118, v2 :: v_dual_add_nc_u32 v3, s25, v95
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v8, v99, s25, 1
	v_add_lshl_u32 v7, v98, s25, 1
	v_add_lshl_u32 v6, v97, s25, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[3:4], null, v3, s34, v[74:75]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v5, v96, s25, 1
	v_add_lshl_u32 v63, v103, s25, 1
	v_add_lshl_u32 v60, v100, s25, 1
	v_add_lshl_u32 v61, v101, s25, 1
	v_add_lshl_u32 v62, v102, s25, 1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v108, s25, v84
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v109, s25, v94
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v125, 0, v52
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v126, v104, v106
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[3:4], v3, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s6, v109, v105
	v_cmp_ge_i32_e64 s7, v108, v105
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s10, v126, v109
	v_cmp_ge_i32_e64 s11, v126, v108
	.loc	1 195 27 is_stmt 1              ; attention_backward.py:195:27
	v_or_b32_e32 v119, s25, v93
	v_or_b32_e32 v120, s25, v88
	v_or_b32_e32 v124, s25, v90
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s6, s10, s6
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v121, s25, v91
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s3, v119, v105
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s9, v126, v119
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v120, v105
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s8, v126, v120
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v124, v105
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s16, v126, v124
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s3, s9, s3
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v122, s25, v92
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s30, s8, vcc_lo
	s_and_b32 vcc_lo, s2, s3
	s_and_b32 s3, s2, s6
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v123, s25, v89
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s7, s11, s7
	s_and_b32 s8, s16, s12
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v123, v105
	v_cmp_ge_i32_e64 s14, v122, v105
	v_cmp_ge_i32_e64 s15, v121, v105
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s17, v126, v123
	v_cmp_ge_i32_e64 s18, v126, v122
	v_cmp_ge_i32_e64 s19, v126, v121
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s25, s25, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s9, s17, s13
	s_and_b32 s10, s18, s14
	s_and_b32 s11, s19, s15
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s30
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s25, s61
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v68, v8, s[56:59], 0 offen
	buffer_load_u16 v111, v7, s[56:59], 0 offen
	buffer_load_u16 v112, v6, s[56:59], 0 offen
	buffer_load_u16 v113, v5, s[56:59], 0 offen
	buffer_load_u16 v114, v63, s[56:59], 0 offen
	buffer_load_u16 v115, v62, s[56:59], 0 offen
	buffer_load_u16 v116, v61, s[56:59], 0 offen
	buffer_load_u16 v117, v60, s[56:59], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v67, v8
	v_dual_mov_b32 v63, v4 :: v_dual_mov_b32 v62, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v65, v6 :: v_dual_mov_b32 v64, v5
	v_dual_mov_b32 v66, v7 :: v_dual_mov_b32 v61, v2
	v_mov_b32_e32 v60, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[2:3], v125
	ds_load_b64 v[4:5], v57
	ds_load_b64 v[6:7], v58
	ds_load_b64 v[108:109], v59
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[2:3], v[75:76], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[4:5], v[79:80], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[6:7], v[77:78], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[108:109], v[81:82], v[60:67] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v3, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v5, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v66
	v_cvt_f32_i32_e32 v60, v67
	v_mul_f32_e32 v3, v53, v3
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v6, v64
	v_cvt_f32_i32_e32 v7, v65
	v_mul_f32_e32 v2, v107, v2
	v_mul_f32_e32 v60, v55, v60
	v_dual_mul_f32 v8, v54, v8 :: v_dual_mul_f32 v5, v55, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v4, v54, v4 :: v_dual_mul_f32 v7, v53, v7
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v6, v107, v6 :: v_dual_lshlrev_b32 v61, 16, v68
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v62, 16, v111
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v63, 16, v112
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v113
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v5, v5, v61
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v4, v4, v62 :: v_dual_lshlrev_b32 v67, 16, v116
	v_mul_f32_e32 v3, v3, v63
	v_dual_mul_f32 v2, v2, v64 :: v_dual_lshlrev_b32 v65, 16, v114
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v7, v7, v67 :: v_dual_lshlrev_b32 v68, 16, v117
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v3, 0xff800000, v3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v60, v60, v65
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v61, 0xff800000, v2, s6
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v6, v6, v68
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v5, 0xff800000, v5, s11
	v_cndmask_b32_e32 v4, 0xff800000, v4, vcc_lo
	v_cndmask_b32_e64 v60, 0xff800000, v60, s7
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_lshlrev_b32_e32 v66, 16, v115
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v7, 0xff800000, v7, s9
	v_cndmask_b32_e64 v6, 0xff800000, v6, s10
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v2, v61, v3, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v8, v8, v66
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v62, v5, v6, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v8, 0xff800000, v8, s8
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v63, v8, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v62, v63
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v62, v2, s24, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v2, v118, v2, v62
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v61, v61, v2
	v_sub_f32_e32 v3, v3, v2
	v_sub_f32_e32 v7, v7, v2
	v_sub_f32_e32 v5, v5, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v5, v5
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v61, 0, v61, s6
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v3, 0, v3, s3
	v_cndmask_b32_e64 v7, 0, v7, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0, v5, s11
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v61, v3 :: v_dual_sub_f32 v6, v6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp62:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v6, 0, v6, s10
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v60, v60, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v5 :: v_dual_add_f32 v5, v6, v7
.Ltmp64:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v7, v118, v2
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_sub_f32 v8, v8, v2
.Ltmp66:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s7
	v_cndmask_b32_e64 v8, 0, v8, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v6, v8, v60
	v_add_f32_e32 v4, v5, v6
.Ltmp68:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v5, v7
	v_mov_b32_e32 v6, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v4, v3, s24, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v51, v3, v4
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp73:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v51, v6, v5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v2, 0xff800000 :: v_dual_mov_b32 v51, 0
.LBB0_4:                                ; %Flow141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v51
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v66, v46, v50 :: v_dual_and_b32 v1, 56, v0
	s_load_b32 s48, s[0:1], 0x74
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v5, 31, v0
.Ltmp75:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v4, 0, 32, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42000000, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v6, v69, 2, 0
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v7, 1, v1
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v51
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_ldexp_f32 v4, v51, v4
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v113, 24, v0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v4, v4
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v43, v47 :: v_dual_lshlrev_b32 v112, 4, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v43, 1, v113
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v45, v49 :: v_dual_add_f32 v68, v44, v48
.Ltmp79:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v111, 0, v7
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s41, s41, 0xffff
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v43, 0, v112, v43
	s_mov_b32 s43, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v3, v4, v3
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s20, v5
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s1, v37, v37
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v2, v3
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v2, v70, 1, v6
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, 0x800, v4
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v6.h, 0
	v_mov_b16_e32 v6.l, v38.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v109, 0, v1, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v5, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v5, s21, v5
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_mov_b16_e32 v3.l, v37.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_add_lshl_u32 v4, v5, s20, 2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v2.l, v39.h
	v_mov_b16_e32 v3.h, v6.h
	v_mov_b16_e32 v2.h, v6.h
	v_cmp_o_f32_e64 s0, v38, v38
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v42.l, v33.h
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v2, 1, v2
	v_mov_b16_e32 v5.l, v35.h
	v_mov_b16_e32 v42.h, v6.h
	v_mov_b16_e32 v5.h, v6.h
	v_add3_u32 v3, v37, v3, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s54, s42
	s_mov_b32 s55, s43
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v42, 1, v42
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_cmp_o_f32_e64 s3, v40, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v4, s[40:43], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v111, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v43, v43
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v6
	v_mov_b16_e32 v6.l, v40.h
	v_lshrrev_b32_e32 v108, 4, v0
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v61, v8
	v_add3_u32 v1, v38, v1, 0x7fff
	v_and_b32_e32 v38, 1, v6
	v_mov_b16_e32 v6.l, v34.h
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s1
	v_cmp_o_f32_e64 s1, v35, v35
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	v_add3_u32 v37, v40, v38, 0x7fff
	v_add3_u32 v38, v39, v2, 0x7fff
	v_and_b32_e32 v39, 1, v6
	v_mov_b16_e32 v6.l, v36.h
	v_mov_b32_e32 v40, v8
	v_cmp_o_f32_e64 s0, v36, v36
	v_cndmask_b16 v2.l, 0x7fff, v38.h, s6
	v_add3_u32 v3, v34, v39, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v43, v4, s[52:55], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v4, 1, v5
	v_and_b32_e32 v5, 1, v6
	v_mov_b16_e32 v6.l, v30.h
	v_add3_u32 v34, v33, v42, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v35, v4, 0x7fff
	v_add3_u32 v4, v36, v5, 0x7fff
	v_mov_b16_e32 v5.l, v29.h
	v_mov_b16_e32 v5.h, v6.h
	v_and_b32_e32 v35, 1, v6
	v_cndmask_b16 v3.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v4.l, 0x7fff, v33.h, s1
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_dual_mov_b32 v38, v8 :: v_dual_and_b32 v5, 1, v5
	v_add3_u32 v33, v30, v35, 0x7fff
	v_mov_b16_e32 v6.l, v32.h
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v6.h
	v_add3_u32 v5, v29, v5, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v6
	v_mov_b16_e32 v34.l, v25.h
	v_mov_b16_e32 v34.h, v6.h
	v_mov_b16_e32 v6.l, v26.h
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_cndmask_b16 v33.l, 0x7fff, v5.h, vcc_lo
	v_and_b32_e32 v5, 1, v34
	v_and_b32_e32 v32, 1, v6
	v_mov_b16_e32 v6.l, v28.h
	v_add3_u32 v30, v31, v30, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v5, v25, v5, 0x7fff
	v_add3_u32 v29, v26, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s1, v25, v25
	v_mov_b16_e32 v25.l, v27.h
	v_mov_b16_e32 v25.h, v6.h
	v_and_b32_e32 v26, 1, v6
	v_cndmask_b16 v34.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v5.h, s1
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_dual_mov_b32 v64, v8 :: v_dual_and_b32 v5, 1, v25
	v_add3_u32 v25, v28, v26, 0x7fff
	v_mov_b16_e32 v6.l, v22.h
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v6.h
	v_add3_u32 v5, v27, v5, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_dual_mov_b32 v62, v8 :: v_dual_and_b32 v25, 1, v6
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v6.h
	v_mov_b16_e32 v6.l, v24.h
	v_cndmask_b16 v35.h, 0x7fff, v29.h, s0
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v25, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v36.l, 0x7fff, v5.h, vcc_lo
	v_dual_mov_b32 v60, v8 :: v_dual_and_b32 v5, 1, v27
	v_dual_mov_b32 v58, v8 :: v_dual_and_b32 v27, 1, v6
	v_mov_b16_e32 v6.l, v18.h
	v_add3_u32 v26, v21, v26, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v5, v23, v5, 0x7fff
	v_add3_u32 v21, v24, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_cmp_o_f32_e64 s1, v23, v23
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v6.h
	v_and_b32_e32 v25, 1, v6
	v_cndmask_b16 v22.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v21.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v5.h, s1
	v_and_b32_e32 v5, 1, v24
	v_add3_u32 v21, v18, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v6.l, v20.h
	v_mov_b16_e32 v21.l, v13.h
	v_add3_u32 v5, v17, v5, 0x7fff
	v_mov_b16_e32 v18.l, v19.h
	v_cndmask_b16 v24.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v17, 1, v6
	v_mov_b16_e32 v21.h, v6.h
	v_mov_b16_e32 v6.l, v14.h
	v_mov_b16_e32 v18.h, v6.h
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v5.h, vcc_lo
	v_and_b32_e32 v5, 1, v21
	v_dual_mov_b32 v39, v8 :: v_dual_and_b32 v20, 1, v6
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v25.h, 0x7fff, v17.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v13, v5, 0x7fff
	v_add3_u32 v17, v14, v20, 0x7fff
	v_mov_b16_e32 v6.l, v16.h
	v_cmp_o_f32_e64 s0, v14, v14
	v_cmp_o_f32_e64 s1, v13, v13
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v6.h
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v19, 1, v6
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v5.h, s1
	v_and_b32_e32 v5, 1, v14
	v_mov_b16_e32 v17.l, v9.h
	v_mov_b16_e32 v17.h, v6.h
	v_mov_b16_e32 v6.l, v10.h
	v_cndmask_b16 v25.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v14, v16, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v5, v15, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_and_b32_e32 v15, 1, v17
	v_and_b32_e32 v16, 1, v6
	v_mov_b16_e32 v6.l, v12.h
	v_cndmask_b16 v2.h, 0x7fff, v37.h, s3
	v_cndmask_b16 v14.l, 0x7fff, v5.h, s0
	v_add3_u32 v5, v9, v15, 0x7fff
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v6.h
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v9, v9
	v_and_b32_e32 v9, 1, v15
	v_add3_u32 v6, v12, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_mov_b32_e32 v37, v8
	v_add3_u32 v16, v10, v16, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v5.h, s0
	v_add3_u32 v5, v11, v9, 0x7fff
	v_lshlrev_b32_e32 v9, 6, v70
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s1
	v_lshlrev_b32_e32 v6, 7, v69
	s_barrier
	v_mov_b32_e32 v12, v8
	v_cndmask_b16 v16.l, 0x7fff, v5.h, vcc_lo
	v_mov_b32_e32 v11, v8
	v_or3_b32 v5, v6, v9, v112
	v_mov_b32_e32 v6, v8
	v_xad_u32 v7, v41, v7, 0
	ds_store_b128 v7, v[1:4]
	ds_store_b128 v7, v[33:36] offset:1024
	ds_store_b128 v7, v[22:25] offset:2048
	ds_store_b128 v7, v[13:16] offset:3072
	v_add_nc_u32_e32 v1, 0, v5
	v_xad_u32 v2, v5, 16, 0
	v_xad_u32 v3, v5, 32, 0
	v_xad_u32 v4, v5, 48, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[21:24], v2
	v_xad_u32 v1, v5, 64, 0
	v_xad_u32 v2, 0x50, v5, 0
	ds_load_b128 v[25:28], v3
	ds_load_b128 v[29:32], v4
	v_xad_u32 v3, 0x60, v5, 0
	v_xad_u32 v4, 0x70, v5, 0
	ds_load_b128 v[41:44], v1
	ds_load_b128 v[45:48], v2
	ds_load_b128 v[49:52], v3
	ds_load_b128 v[53:56], v4
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v57, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v111, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph45
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v2, 12, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v1, 4, v71
	v_lshrrev_b32_e32 v3, 2, v70
	v_xor_b32_e32 v6, v73, v110
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v10, 9, v72
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v4, 1, v2
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v5, 4, v72
	v_lshlrev_b32_e32 v9, 1, v113
	v_lshl_or_b32 v11, v113, 6, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v110, v69, 5, v4
	v_dual_mov_b32 v4, 0x7632 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v58, v65
	v_mov_b32_e32 v59, v65
	v_mov_b32_e32 v60, v65
	v_cndmask_b32_e64 v4, 0x3276, v4, s5
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v1, v1, v3, v112
	v_dual_mov_b32 v3, 0x5410 :: v_dual_lshlrev_b32 v2, 5, v2
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s48, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v4, 8, v4
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v111, v1
	v_cndmask_b32_e64 v3, 0x1054, v3, s5
	v_or3_b32 v112, v2, v10, v5
	v_xor_b32_e32 v1, 8, v110
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v4, 0x760076, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 8, v3
	v_mov_b32_e32 v64, v65
	v_xor_b32_e32 v7, 16, v110
	v_xor_b32_e32 v8, 24, v110
	v_lshl_add_u32 v5, v70, 2, 0
	v_and_b32_e32 v3, 0x540054, v3
	v_lshl_or_b32 v4, v4, 4, v4
	v_xor_b32_e32 v10, 32, v112
	v_mov_b32_e32 v62, v65
	v_xor_b32_e32 v2, v11, v9
	v_lshl_or_b32 v3, v3, 4, v3
	v_xor_b32_e32 v9, 16, v112
	v_xor_b32_e32 v11, 48, v112
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v114, 0x7060706, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v65 :: v_dual_and_b32 v113, 0x5040504, v3
	v_dual_mov_b32 v36, v65 :: v_dual_lshlrev_b32 v3, 5, v0
	v_lshl_add_u32 v0, v69, 1, 0
	v_dual_mov_b32 v38, v65 :: v_dual_add_nc_u32 v115, 0, v6
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v116, 0, v1
	v_dual_mov_b32 v40, v65 :: v_dual_add_nc_u32 v117, 0, v7
	v_dual_mov_b32 v35, v65 :: v_dual_add_nc_u32 v118, 0, v8
	v_add_nc_u32_e32 v119, v5, v2
	v_dual_mov_b32 v37, v65 :: v_dual_add_nc_u32 v120, 0, v9
	v_add_nc_u32_e32 v121, 0, v10
	v_mov_b32_e32 v10, v65
	v_dual_mov_b32 v39, v65 :: v_dual_add_nc_u32 v122, 0, v11
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v123, 0, v3
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s40, s26
	s_mov_b32 s41, s27
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s49, 0x76543210
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s0, s60, s47
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v73, v95, s60, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v124, s0, v87
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s0, s0, s35
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v126, v96, s60, 1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v132, s0, v85, 1
	v_add_lshl_u32 v133, s0, v86, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[124:125], null, v124, s34, v[74:75]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v127, v97, s60, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v125, 0x80000000, v132, s23
	v_cndmask_b32_e64 v132, 0x80000000, v133, s23
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v131, v100, s60, 1
	v_add_lshl_u32 v129, v98, s60, 1
	v_add_lshl_u32 v130, v99, s60, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v124, 0x80000000, v124, s4
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v134, v101, s60, 1
	v_add_lshl_u32 v145, v102, s60, 1
	v_add_lshl_u32 v146, v103, s60, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v128, 0, v110
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[153:154], v124, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v161, 0, v112
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v124, s60, v84
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v124, v105
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v115, v[153:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[137:140], v125, s[28:31], 0 offen
	buffer_load_b128 v[141:144], v132, s[28:31], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v73, v73, s[36:39], 0 offen
	buffer_load_u16 v136, v126, s[36:39], 0 offen
	buffer_load_u16 v135, v127, s[36:39], 0 offen
	buffer_load_u16 v133, v129, s[36:39], 0 offen
	buffer_load_u16 v132, v130, s[36:39], 0 offen
	buffer_load_u16 v131, v131, s[36:39], 0 offen
	buffer_load_u16 v127, v134, s[36:39], 0 offen
	buffer_load_u16 v126, v145, s[36:39], 0 offen
	buffer_load_u16 v125, v146, s[36:39], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[128:129], v128
	ds_load_b64 v[155:156], v116
	ds_load_b64 v[157:158], v117
	ds_load_b64 v[159:160], v118
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v152, v72 :: v_dual_mov_b32 v151, v71
	v_dual_mov_b32 v150, v70 :: v_dual_mov_b32 v149, v69
	v_dual_mov_b32 v148, v68 :: v_dual_mov_b32 v147, v67
	v_dual_mov_b32 v146, v66 :: v_dual_mov_b32 v145, v65
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_min_i32_e32 v130, v104, v106
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v134, s60, v94
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v162, v154, 24, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v119, v[137:140]
	s_waitcnt vmcnt(9)
	ds_store_b128 v119, v[141:144] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[141:144], v120
	ds_load_b128 v[137:140], v161
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s19, v130, v124
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v124, s60, v89
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v134, v105
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s16, v130, v134
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v134, s60, v90
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s1, v124, v105
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s6, v130, v124
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v124.l, v153.l, 15
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s7, v130, v134
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s8, v134, v105
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v124.h, v154.h, 15
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s6, s1
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v124.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v134, 15, v153
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s21, 7, v124.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v124, 24, v154
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v124.h, 4, v154.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[17:24], v[145:152]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[141:144], v122
	ds_load_b128 v[137:140], v121
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v133
	v_lshlrev_b32_e32 v135, 16, v135
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[25:32], v[145:152]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v137, s60, v93
	v_or_b32_e32 v138, s60, v88
	v_or_b32_e32 v139, s60, v91
	v_or_b32_e32 v140, s60, v92
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s60, s60, 16
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v137, v105
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s14, v130, v137
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v138, v105
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s12, v130, v138
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v139, v105
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s10, v130, v139
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s0, v140, v105
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v130, v140
	.loc	1 393 17 is_stmt 1              ; attention_backward.py:393:17
	ds_load_b128 v[137:140], v161 offset:64
	ds_load_b128 v[141:144], v120 offset:64
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v130, v153, 0, 8
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v161, v154, 20, 4
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s5, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s24, 0, v130.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v134
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[41:48], v[145:152]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[137:140], v121 offset:64
	ds_load_b128 v[141:144], v122 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[49:56], v[145:152]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[128:129], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v72.l, v153.h, 15
	v_and_b16 v72.h, v154.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v129, v145, v111
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[79:80], v[137:144] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v128, v146, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v146, 8, v153
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v148, v111
	v_sub_f32_e32 v69, v149, v111
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[157:158], v[77:78], v[137:144] neg_lo:[1,1,0]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v145, v154, 16, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s17, 7, v72.l
	v_cmp_lt_u16_e64 s20, 7, v72.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v148, v154, v153, 24
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[159:160], v[81:82], v[137:144] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v66, v150, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v149, v154, 0, 8
	v_lshrrev_b32_e32 v72, 8, v154
	v_mov_b16_e64 v150.l, v154.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v155, v137
	v_cvt_f32_i32_e32 v156, v138
	v_cvt_f32_i32_e32 v157, v139
	v_cvt_f32_i32_e32 v159, v141
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v139, v153, 16, 4
	v_and_b32_e32 v141, 15, v154
	v_bfe_u32 v160, v154, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[137:138], 24, v[153:154]
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v154, v134, v130, s3
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v130.l, v146.l, 15
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v147, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v147.l, v153.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v158, v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v67, v151, v111
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v130.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v139
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v152, v111
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v153.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v151, v153, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v152, v153, 20, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v163, v139, v130, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v147, 0, 8
	v_bfe_i32 v153, v137, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v140.l, 4, v137.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v137.l, v137.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v141
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v134.l, v72.l, 15
	v_and_b16 v137.h, v124.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s25, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v150, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v130, v141, v130, s20
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s17, 7, v134.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v134, -16, v145
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s20, 7, v137.h
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v138.l, v149.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s22, 7, v137.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v137, -16, v151
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s26, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v146, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v134, v145, v134, s21
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s21, 0, v138.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v145, v151, v137, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v138, -16, v162
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v72, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v137, -16, v160
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v147, -16, v161
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v138, v162, v138, s20
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s20, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v124, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v137, v160, v137, s17
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v147, v161, v147, s26
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s17, 0, v139.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v139, 15, v148
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v148, v107, v155
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v134, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v141, -16, v139
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v136, v148, v136, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v148, v107, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v139, v139, v141, s22
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v141.l, v153.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v148, v148, v135, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v135, v107, v157
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s22, 0, v141.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v141, -16, v152
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v149, v135, v133, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v133, v107, v158
	v_mul_f32_e32 v135, v107, v144
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v147
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v141, v152, v141, s25
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v132, v133, v132, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v133, v107, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v150, v133, v131, -v109
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v131, v107, v142
	v_mul_f32_e32 v133, v107, v143
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v154
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v131, v131, v127, -v109
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v72.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v127.h, 0
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v142, v133, v126, -v109
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v146.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v126, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v140.h, v127.h
	v_mov_b16_e64 v146.h, v127.h
	v_mov_b16_e64 v147.h, v127.h
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v126, v127, v126, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v126
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v126, 16, v73
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v125
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v143, v143, v126
	v_mul_f32_e32 v125, v133, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, v135, v73, -v109
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v135.h, v127.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v141, v141, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v143, 0, v143 :: v_dual_mul_f32 v130, v130, v126
	v_dual_cndmask_b32 v125, 0, v125 :: v_dual_mul_f32 v144, v144, v126
	v_dual_cndmask_b32 v141, 0, v141 :: v_dual_mul_f32 v134, v134, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v135.l, v143.h
	v_mov_b16_e32 v127.l, v125.h
	v_cmp_o_f32_e64 s24, v143, v143
	v_cndmask_b32_e32 v144, 0, v144, vcc_lo
	v_cmp_o_f32_e64 s25, v125, v125
	v_and_b32_e32 v135, 1, v135
	v_and_b32_e32 v133, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v72.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s26, v141, v141
	v_cmp_o_f32_e64 s27, v144, v144
	v_add3_u32 v135, v143, v135, 0x7fff
	v_mov_b16_e64 v143.h, v127.h
	v_mov_b16_e64 v143.l, v141.h
	v_add3_u32 v125, v125, v133, 0x7fff
	v_mov_b16_e64 v133.h, v127.h
	v_mov_b16_e64 v133.l, v144.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v73
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v143, 1, v143
	v_mov_b16_e32 v72.h, v127.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v141, v141, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v143, v144, v133, 0x7fff
	v_cndmask_b16 v133.l, 0x7fff, v135.h, s24
	v_cndmask_b16 v135.h, 0x7fff, v141.h, s26
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v141, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v133.h, 0x7fff, v125.h, s25
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v141, v127, v141, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s19, s18
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v136, 0, v136, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s16, s15
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v129, v136, v129
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v148
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v148.h, v127.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v136, 0, v136, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s3, s2, s3
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v128, v136, v128
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v128, s46, v128
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v136, 0, v136, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s12, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s2, s3
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v132, 0, v132, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s3, s2, s3
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v132, v132, v70
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v126
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v150
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v150, 0, v134, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v132, s46, v132 :: v_dual_cndmask_b32 v125, 0, v125
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s11, v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e32 v127.l, v125.h
	v_cmp_o_f32_e64 s24, v125, v125
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v70, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s7, s8
	s_and_b32 s7, s2, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v144, 1, v127
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s9, s2, s3
	s_and_b32 s8, s2, s1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s9
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s9, v128, v128
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v125, v144, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v163
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v150, v150
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v68, v73, v68 :: v_dual_mul_f32 v71, v136, v71
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v136, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v144, v144, v126
	v_cvt_f32_i32_e32 v137, v138
	v_cvt_f32_i32_e32 v138, v139
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v139, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v142, 0, v130, vcc_lo
	v_cndmask_b32_e32 v144, 0, v144, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v130, 0, v131, s7
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v138, v138, v126
	v_cvt_f32_i32_e32 v73, v141
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v134.l, 0x7fff, v125.h, s24
	v_mov_b16_e64 v127.l, v144.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v130, v66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v138, 0, v138, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v131, 0, v139, s8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v144, v144
	v_and_b32_e32 v145, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v140.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v66, s46, v66 :: v_dual_mul_f32 v67, v131, v67
	v_mul_f32_e32 v129, s46, v129
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v144, v145, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v127
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v136, v136, v126
	v_dual_mul_f32 v73, v73, v126 :: v_dual_mul_f32 v68, s46, v68
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s46, v71
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v135.l, 0x7fff, v125.h, s10
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v125, v127, v131, s22
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v138.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v70, v69
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v131, v129, 16, 1
	v_bfe_u32 v139, v128, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v149, 0, v136, vcc_lo
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s8, v129, v129
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_dual_mul_f32 v69, s46, v69 :: v_dual_and_b32 v136, 1, v127
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v129, v129, v131, 0x7fff
	v_bfe_u32 v131, v71, 16, 1
	v_add3_u32 v128, v128, v139, 0x7fff
	v_bfe_u32 v139, v132, 16, 1
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v70.l, 4, v72.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s46, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v72.l, v73.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s10, v71, v71
	v_add3_u32 v71, v71, v131, 0x7fff
	v_bfe_u32 v131, v69, 16, 1
	v_add3_u32 v132, v132, v139, 0x7fff
	v_bfe_u32 v139, v66, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v137, v137, v126 :: v_dual_and_b32 v72, 1, v72
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v124.h, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s12, v69, v69
	v_add3_u32 v69, v69, v131, 0x7fff
	v_bfe_u32 v131, v67, 16, 1
	v_cmp_o_f32_e64 s13, v66, v66
	v_add3_u32 v66, v66, v139, 0x7fff
	v_bfe_u32 v139, v68, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v73, v73
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s14, v67, v67
	v_add3_u32 v67, v67, v131, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v72, v73, v72, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v127
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s15, v68, v68
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v68, v68, v139, 0x7fff
	v_cndmask_b16 v128.l, 0x7fff, v129.h, s8
	v_cndmask_b16 v128.h, 0x7fff, v128.h, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s6, v138, v138
	v_add3_u32 v73, v138, v136, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v71.h, 0x7fff, v132.h, s11
	v_cndmask_b16 v129.l, 0x7fff, v69.h, s12
	v_cndmask_b16 v129.h, 0x7fff, v66.h, s13
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v134.h, 0x7fff, v72.h, s7
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v72, v127, v131, s21
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v142.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v126
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v132.l, 0x7fff, v67.h, s14
	v_cndmask_b16 v132.h, 0x7fff, v68.h, s15
	v_permlanex16_b32 v67, v128, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v136.l, 0x7fff, v73.h, s6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v69, v71, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v73, v129, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v131, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v70.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v125, 0, v125, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v66, v67, v128, v113
	v_perm_b32 v67, v67, v128, v114
	v_permlanex16_b32 v128, v132, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v69, v71, v113
	v_perm_b32 v69, v69, v71, v114
	v_perm_b32 v70, v73, v129, v113
	v_perm_b32 v71, v73, v129, v114
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v129, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v140.l, v125.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v72, v128, v132, v113
	v_perm_b32 v73, v128, v132, v114
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v128, v138, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s5, v142, v142
	v_add3_u32 v131, v142, v131, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v129, v127, v129, s20
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v149.h
	v_dual_cndmask_b32 v137, 0, v137 :: v_dual_and_b32 v132, 1, v140
	v_cndmask_b32_e32 v138, 0, v128, vcc_lo
	v_cndmask_b16 v128.l, 0x7fff, v131.h, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v131, 1, v127
	v_mov_b16_e64 v127.l, v150.h
	v_cmp_o_f32_e64 s6, v125, v125
	v_add3_u32 v125, v125, v132, 0x7fff
	v_mov_b16_e64 v146.l, v138.h
	v_cmp_o_f32_e64 s3, v149, v149
	v_and_b32_e32 v132, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v127.l, 4, v124.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v136.h, 0x7fff, v125.h, s6
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v129
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v129, 1, v146
	v_add3_u32 v124, v149, v131, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v132, v150, v132, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v129, v138, v129, 0x7fff
	v_cndmask_b16 v129.l, 0x7fff, v124.h, s3
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v124, v127, v131, s17
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v137.h
	v_cndmask_b32_e32 v125, 0, v125, vcc_lo
	v_cmp_o_f32_e64 s5, v138, v138
	v_cndmask_b16 v130.l, 0x7fff, v132.h, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v127, 1, v127
	v_mov_b16_e64 v147.l, v125.h
	v_cmp_o_f32_e64 s1, v125, v125
	v_cmp_o_f32_e64 s0, v137, v137
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v124, v124, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v128.h, 0x7fff, v129.h, s5
	v_and_b32_e32 v131, 1, v147
	v_add3_u32 v126, v137, v127, 0x7fff
	v_cndmask_b16 v130.h, 0x7fff, v143.h, s27
	v_cndmask_b32_e32 v124, 0, v124, vcc_lo
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s60, s61
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v125, v131, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v126.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v148.l, v124.h
	v_cmp_o_f32_e64 s0, v124, v124
	v_cndmask_b16 v129.h, 0x7fff, v125.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v125, 1, v148
	v_add3_u32 v124, v124, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v131.h, 0x7fff, v124.h, s0
	ds_store_b128 v123, v[133:136]
	ds_store_b128 v123, v[128:131] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v124, v0
	ds_load_u16_d16 v127, v0 offset:768
	ds_load_u16_d16 v128, v0 offset:1024
	ds_load_u16_d16 v129, v0 offset:1280
	ds_load_u16_d16 v130, v0 offset:1536
	ds_load_u16_d16 v131, v0 offset:1792
	ds_load_u16_d16 v126, v0 offset:512
	ds_load_u16_d16 v125, v0 offset:256
	ds_load_u16_d16 v133, v0 offset:608
	ds_load_u16_d16 v132, v0 offset:352
	ds_load_u16_d16 v141, v0 offset:576
	ds_load_u16_d16 v142, v0 offset:832
	ds_load_u16_d16 v143, v0 offset:1088
	ds_load_u16_d16 v144, v0 offset:1344
	ds_load_u16_d16 v145, v0 offset:1600
	ds_load_u16_d16 v146, v0 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v124, v0 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v127, v0 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v128, v0 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v129, v0 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v130, v0 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v131, v0 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v126, v0 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v125, v0 offset:384
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[124:131], v[66:73], v[57:64]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v148, v0 offset:288
	ds_load_u16_d16 v147, v0 offset:32
	ds_load_u16_d16 v139, v0 offset:64
	ds_load_u16_d16 v140, v0 offset:320
	ds_load_u16_d16 v131, v0 offset:96
	ds_load_u16_d16 v149, v0 offset:544
	ds_load_u16_d16 v134, v0 offset:864
	ds_load_u16_d16 v135, v0 offset:1120
	ds_load_u16_d16 v136, v0 offset:1376
	ds_load_u16_d16 v137, v0 offset:1632
	ds_load_u16_d16 v150, v0 offset:800
	ds_load_u16_d16 v138, v0 offset:1888
	ds_load_u16_d16 v151, v0 offset:1056
	ds_load_u16_d16 v152, v0 offset:1312
	ds_load_u16_d16 v153, v0 offset:1568
	ds_load_u16_d16 v154, v0 offset:1824
	ds_load_u16_d16_hi v132, v0 offset:480
	ds_load_u16_d16_hi v141, v0 offset:704
	ds_load_u16_d16_hi v142, v0 offset:960
	ds_load_u16_d16_hi v143, v0 offset:1216
	ds_load_u16_d16_hi v144, v0 offset:1472
	ds_load_u16_d16_hi v145, v0 offset:1728
	ds_load_u16_d16_hi v146, v0 offset:1984
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v147, v0 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v139, v0 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v131, v0 offset:224
	ds_load_u16_d16_hi v148, v0 offset:416
	ds_load_u16_d16_hi v140, v0 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v149, v0 offset:672
	ds_load_u16_d16_hi v133, v0 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v150, v0 offset:928
	ds_load_u16_d16_hi v134, v0 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v151, v0 offset:1184
	ds_load_u16_d16_hi v135, v0 offset:1248
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v152, v0 offset:1440
	ds_load_u16_d16_hi v136, v0 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v153, v0 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v154, v0 offset:1952
	ds_load_u16_d16_hi v137, v0 offset:1760
	ds_load_u16_d16_hi v138, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[139:146], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[147:154], v[66:73], v[33:40]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[131:138], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge46
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s48, v83
	s_mul_i32 s4, s48, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s48, v84
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v84
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v84
	v_or_b32_e32 v18, 48, v84
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s48, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 62, v108
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v84, 2
	v_add_lshl_u32 v23, v21, v94, 2
	v_add_lshl_u32 v24, v21, v93, 2
	v_add_lshl_u32 v25, v21, v89, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_add_lshl_u32 v26, v21, v90, 2
	s_clause 0x2
	buffer_store_b32 v57, v22, s[44:47], 0 offen
	buffer_store_b32 v58, v23, s[44:47], 0 offen
	buffer_store_b32 v59, v24, s[44:47], 0 offen
	v_add_lshl_u32 v22, v21, v88, 2
	v_add_lshl_u32 v23, v21, v91, 2
	v_add_lshl_u32 v24, v21, v92, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s48, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_add_lshl_u32 v19, v21, v19, 2
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v20, v21, v20, 2
	s_clause 0x4
	buffer_store_b32 v60, v22, s[44:47], 0 offen
	buffer_store_b32 v61, v23, s[44:47], 0 offen
	buffer_store_b32 v62, v24, s[44:47], 0 offen
	buffer_store_b32 v63, v25, s[44:47], 0 offen
	buffer_store_b32 v64, v26, s[44:47], 0 offen
	v_add_nc_u32_e32 v22, 0x48, v0
	v_add_nc_u32_e32 v23, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v24, 0x58, v0
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v25, 0x60, v0
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	s_clause 0x2
	buffer_store_b32 v33, v20, s[44:47], 0 offen
	buffer_store_b32 v34, v22, s[44:47], 0 offen
	buffer_store_b32 v35, v23, s[44:47], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v36, v24, s[44:47], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v37, v20, s[44:47], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s48, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v38, v20, s[44:47], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v39, v22, s[44:47], 0 offen
	buffer_store_b32 v40, v23, s[44:47], 0 offen
	buffer_store_b32 v9, v19, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v0
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x98, v0
	v_add_nc_u32_e32 v22, 0xa0, v0
	v_add_nc_u32_e32 v23, 0xa8, v0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v19, s[44:47], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	buffer_store_b32 v11, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v12, v10, s[44:47], 0 offen
	buffer_store_b32 v13, v19, s[44:47], 0 offen
	buffer_store_b32 v14, v20, s[44:47], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v0
	v_add_lshl_u32 v11, v21, v18, 2
	v_add_nc_u32_e32 v12, 0xc8, v0
	v_add_nc_u32_e32 v13, 0xd0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[44:47], 0 offen
	buffer_store_b32 v16, v10, s[44:47], 0 offen
	buffer_store_b32 v1, v11, s[44:47], 0 offen
	buffer_store_b32 v2, v12, s[44:47], 0 offen
	buffer_store_b32 v3, v13, s[44:47], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v0
	v_add_nc_u32_e32 v2, 0xe0, v0
	v_add_nc_u32_e32 v3, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	v_add_lshl_u32 v9, v21, v17, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v0, s[44:47], 0 offen
	buffer_store_b32 v8, v9, s[44:47], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp80:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 164
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 164
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10568
; TotalNumSgprs: 64
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 164
; Occupancy: 9
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
