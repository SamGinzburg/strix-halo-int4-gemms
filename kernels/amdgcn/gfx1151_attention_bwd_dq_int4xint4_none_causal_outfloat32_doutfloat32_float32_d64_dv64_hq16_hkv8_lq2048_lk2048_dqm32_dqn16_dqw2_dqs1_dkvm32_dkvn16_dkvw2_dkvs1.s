	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x78
	s_load_b128 s[16:19], s[0:1], 0x18
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v74, 32, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s26, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s27, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v73, 15, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s26, s27
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v75, 1, v74
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s33, v2
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s26, v2
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v158, 4, v0
	v_or_b32_e32 v157, v75, v73
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v41, 2, v73
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s22, v3, v[1:2]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s22, v1
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v3, s33, v157
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s26, v157
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s26, v158
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s12, s23, 2
	s_lshl_b32 s13, s23, 3
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[42:45], v2, s[4:7], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v3, s23, v158
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s4, s16
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v8, v2, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s23, s33
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s23, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s16, s23, 12
	v_add3_u32 v2, s5, v41, v3
	s_lshl_b32 s17, s23, 4
	s_mul_i32 s20, s23, 20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s4, s8
	v_lshlrev_b32_e32 v3, 2, v2
	v_add_lshl_u32 v4, v2, s12, 2
	v_add_lshl_u32 v5, v2, s13, 2
	v_add_lshl_u32 v6, v2, s16, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s12, s23, 24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_add_lshl_u32 v7, v2, s17, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s8, s23, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v9, v2, s20, 2
	s_and_b32 s5, s9, 0xffff
	v_add_lshl_u32 v10, v2, s12, 2
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v2, v2, s8, 2
	s_clause 0x1
	buffer_load_b128 v[46:49], v3, s[4:7], 0 offen
	buffer_load_b128 v[50:53], v4, s[4:7], 0 offen
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_and_b32 v76, 3, v0
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x5
	buffer_load_b128 v[54:57], v5, s[4:7], 0 offen
	buffer_load_b128 v[62:65], v6, s[4:7], 0 offen
	buffer_load_b128 v[66:69], v7, s[4:7], 0 offen
	buffer_load_b128 v[77:80], v9, s[4:7], 0 offen
	buffer_load_b128 v[81:84], v10, s[4:7], 0 offen
	buffer_load_b128 v[85:88], v2, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_clause 0x7
	buffer_load_b128 v[37:40], v3, s[4:7], 0 offen
	buffer_load_b128 v[33:36], v4, s[4:7], 0 offen
	buffer_load_b128 v[29:32], v5, s[4:7], 0 offen
	buffer_load_b128 v[25:28], v6, s[4:7], 0 offen
	buffer_load_b128 v[21:24], v7, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v10, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v2, s[4:7], 0 offen
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v159, v0, 4, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v4, 16, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v137, 3, v76
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v5, v2, 30, v159
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x80
	s_load_b32 s6, s[0:1], 0xa0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s7, s4, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s8, s4, 4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s4, 0, v4
	v_lshlrev_b32_e32 v4, 2, v5
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s7, s3, 0x10007
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v162, 2, v159
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v6, 4, v4
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v163, 4, v159
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v161, 6, v159
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s3, s3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v160, 8, v159
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s3, s3, 1
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v165, 10, v159
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s12, s8, s3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v166, 12, v159
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s26, s6
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s8, s12, 11
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s9, s7, 32
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v164, 14, v159
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s7, s9, 0x800
	s_mov_b32 s5, 0
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s7, s7, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 34 is_stmt 0              ; attention_backward.py:190:34
	s_ashr_i32 s10, s7, 31
	s_lshr_b32 s3, s10, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s3
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_gt_i32 s9, 0
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s9, s34, 0x3fb8aa3b
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s13, -1, 0
	s_and_b32 vcc_lo, exec_lo, s13
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(17)
	ds_bpermute_b32 v58, v4, v43
	ds_bpermute_b32 v61, v6, v42
	ds_bpermute_b32 v60, v6, v43
	ds_bpermute_b32 v7, v6, v44
	ds_bpermute_b32 v6, v6, v45
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v43, v49, v40
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v59, v4, v42
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v42, v47, v38
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v5, v4, v44
	ds_bpermute_b32 v4, v4, v45
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v43, v48, v39 :: v_dual_mul_f32 v44, v51, v34
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v45, v53, v36 :: v_dual_fmac_f32 v42, v46, v37
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v47, v55, v30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v57, v32 :: v_dual_mul_f32 v70, v86, v10
	v_dual_mul_f32 v53, v65, v28 :: v_dual_add_f32 v42, v42, v43
	v_dual_mul_f32 v51, v63, v26 :: v_dual_fmac_f32 v44, v50, v33
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v54, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v56, v31
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v57, v69, v24
	v_dual_mul_f32 v69, v84, v16 :: v_dual_mov_b32 v50, v42
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v45, v52, v35
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v55, v67, v22 :: v_dual_fmac_f32 v70, v85, v9
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v69, v83, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v44, v45
.Ltmp10:
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s3, s22, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v42, v50
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, v42
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v47, v49 :: v_dual_mul_f32 v67, v82, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v52, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v57, v68, v23 :: v_dual_add_f32 v42, v42, v50
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v51, v62, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, v42
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v44, v52 :: v_dual_fmac_f32 v67, v81, v13
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v65, v80, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v52, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v67, v69
	v_add_f32_e32 v42, v42, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v50, v42
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v55, v66, v21
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v52, v44
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v48, v48, v56 :: v_dual_mul_f32 v63, v78, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v46, v55, v57 :: v_dual_mul_f32 v71, v88, v12
	v_dual_fmac_f32 v65, v79, v19 :: v_dual_mov_b32 v56, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v63, v77, v17 :: v_dual_mov_b32 v54, v46
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v71, v87, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v54, v54 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v48, v48, v56 :: v_dual_add_f32 v49, v70, v71
	v_dual_add_f32 v46, v46, v54 :: v_dual_fmac_f32 v53, v64, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v52, v44
	v_mov_b32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v54, v46 :: v_dual_add_f32 v45, v51, v53
	v_mov_b32_e32 v51, v43
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v57, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v45
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v48, v56
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v46, v46, v54 :: v_dual_add_f32 v47, v63, v65
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v53, v53 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v49, v49, v57 :: v_dual_mov_b32 v56, v48
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v54, v46 :: v_dual_add_f32 v45, v45, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v51, v43
	v_mov_b32_e32 v57, v49
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v55, v47
	v_mov_b32_e32 v53, v45
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v46, v54
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v49, v49, v57 :: v_dual_mov_b32 v54, v46
	v_add_f32_e32 v47, v47, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v45, v45, v53
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v57, v49
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v55, v47
	v_mov_b32_e32 v53, v45
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
	v_add_f32_e32 v49, v49, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v47, v47, v55
	v_add_f32_e32 v45, v45, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	v_mov_b32_e32 v57, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v55, v47
	v_mov_b32_e32 v53, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v47, v55
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_lshlrev_b32_e32 v78, 3, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr78
.LBB0_3:                                ; %Flow143
	s_clause 0x3
	s_load_b64 s[20:21], s[0:1], 0x58
	s_load_b128 s[40:43], s[0:1], 0x48
	s_load_b64 s[24:25], s[0:1], 0x10
	s_load_b64 s[28:29], s[0:1], 0x28
	v_and_b32_e32 v77, 48, v0
	v_dual_mul_f32 v168, s9, v8 :: v_dual_add_nc_u32 v167, s6, v1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v138, v61, v59, s4
	v_cndmask_b32_e64 v140, v59, v61, s4
	v_cndmask_b32_e64 v139, v60, v58, s4
	v_cndmask_b32_e64 v141, v58, v60, s4
	v_cndmask_b32_e64 v142, v7, v5, s4
	v_cndmask_b32_e64 v144, v5, v7, s4
	v_cndmask_b32_e64 v143, v6, v4, s4
	v_cndmask_b32_e64 v145, v4, v6, s4
	v_or_b32_e32 v169, s8, v3
	v_or_b32_e32 v170, s8, v159
	v_or_b32_e32 v171, s8, v162
	v_or_b32_e32 v172, s8, v163
	v_or_b32_e32 v173, s8, v161
	v_or_b32_e32 v174, s8, v160
	v_or_b32_e32 v175, s8, v165
	v_or_b32_e32 v176, s8, v166
	v_or_b32_e32 v177, s8, v164
	v_lshrrev_b32_e32 v79, 1, v77
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_and_b32 s35, s7, -16
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mov_b32 v60, v168 :: v_dual_and_b32 v1, 24, v2
	v_dual_mov_b32 v59, v168 :: v_dual_lshlrev_b32 v78, 3, v0
	v_dual_mov_b32 v61, v168 :: v_dual_mov_b32 v58, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v2, v73, 5, v1
	v_xor_b32_e32 v1, v78, v79
	v_mov_b32_e32 v81, 0xff800000
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v5, 24, v2
	v_add_nc_u32_e32 v62, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v64, 0, v3
	v_add_nc_u32_e32 v63, 0, v2
	v_add_nc_u32_e32 v65, 0, v4
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v66, 0, v5
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_and_b32 s45, s19, 0xffff
	s_mov_b32 s44, s18
	s_mov_b32 s16, 0
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s17, 0x76543210
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	v_dual_mov_b32 v98, v81 :: v_dual_add_nc_u32 v67, s16, v169
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v72, v173, s16, 1
	v_add_lshl_u32 v71, v172, s16, 1
	v_add_lshl_u32 v70, v171, s16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[67:68], null, v67, s22, v[137:138]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v69, v170, s16, 1
	v_add_lshl_u32 v84, v177, s16, 1
	v_add_lshl_u32 v80, v174, s16, 1
	v_add_lshl_u32 v82, v175, s16, 1
	v_add_lshl_u32 v83, v176, s16, 1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v81, s16, v164
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s8, v81, v167
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[67:68], v67, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s8, s2, s8
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v62, v[67:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v90, v72, s[44:47], 0 offen
	buffer_load_u16 v91, v71, s[44:47], 0 offen
	buffer_load_u16 v92, v70, s[44:47], 0 offen
	buffer_load_u16 v93, v69, s[44:47], 0 offen
	buffer_load_u16 v94, v84, s[44:47], 0 offen
	buffer_load_u16 v95, v83, s[44:47], 0 offen
	buffer_load_u16 v96, v82, s[44:47], 0 offen
	buffer_load_u16 v97, v80, s[44:47], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v67, s16, v159
	v_or_b32_e32 v68, s16, v162
	v_or_b32_e32 v69, s16, v163
	v_or_b32_e32 v70, s16, v161
	v_or_b32_e32 v71, s16, v160
	v_or_b32_e32 v72, s16, v165
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s6, v68, v167
	v_cmp_le_i32_e64 s5, v69, v167
	v_cmp_le_i32_e32 vcc_lo, v70, v167
	v_cmp_le_i32_e64 s7, v67, v167
	v_cmp_le_i32_e64 s10, v72, v167
	v_cmp_le_i32_e64 s11, v71, v167
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[67:68], v63
	ds_load_b64 v[69:70], v64
	ds_load_b64 v[71:72], v65
	ds_load_b64 v[88:89], v66
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v80, s16, v166
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s10, s2, s10
	.loc	1 239 26 is_stmt 0              ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s9, v80, v167
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s11, s2, s11
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s16, s16, 16
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s9, s2, s9
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s16, s35
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[80:87], v[67:68], v[138:139], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[80:87], v[69:70], v[142:143], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[80:87], v[71:72], v[140:141], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[80:87], v[88:89], v[144:145], v[80:87] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v67, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v81
	v_cvt_f32_i32_e32 v71, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v85
	v_cvt_f32_i32_e32 v80, v86
	v_cvt_f32_i32_e32 v81, v87
	v_cvt_f32_i32_e32 v69, v82
	v_cvt_f32_i32_e32 v70, v83
	v_dual_mul_f32 v72, v59, v72 :: v_dual_mul_f32 v71, v168, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v81, v61, v81 :: v_dual_mul_f32 v80, v60, v80
	v_dual_mul_f32 v70, v61, v70 :: v_dual_mul_f32 v69, v60, v69
	v_dual_mul_f32 v68, v59, v68 :: v_dual_mul_f32 v67, v168, v67
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v84, 16, v92
	v_lshlrev_b32_e32 v83, 16, v91
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v93
	v_lshlrev_b32_e32 v82, 16, v90
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v89, 16, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v67, v67, v85 :: v_dual_lshlrev_b32 v86, 16, v94
	v_dual_mul_f32 v68, v68, v84 :: v_dual_mul_f32 v69, v69, v83
	v_dual_mul_f32 v71, v71, v89 :: v_dual_lshlrev_b32 v88, 16, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v81, v86
	v_dual_mul_f32 v70, v70, v82 :: v_dual_lshlrev_b32 v87, 16, v95
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v69, 0xff800000, v69, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v72, v72, v88
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v68, 0xff800000, v68, s6
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v80, v80, v87
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v67, 0xff800000, v67, s7
	v_cndmask_b32_e32 v70, 0xff800000, v70, vcc_lo
	v_cndmask_b32_e64 v82, 0xff800000, v81, s8
	v_cndmask_b32_e64 v72, 0xff800000, v72, s10
	v_cndmask_b32_e64 v71, 0xff800000, v71, s11
	v_cndmask_b32_e64 v80, 0xff800000, v80, s9
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v81, v67, v68, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v83, v70, v71, v72
	v_max_f32_e32 v84, v80, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v81, v81, v83, v84
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v83, v81, s17, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v81, v98, v81, v83
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v71, v71, v81
	v_sub_f32_e32 v72, v72, v81
	v_sub_f32_e32 v67, v67, v81
	v_sub_f32_e32 v69, v69, v81
	v_sub_f32_e32 v82, v82, v81
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v82, v82
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v71, 0, v71, s11
	v_cndmask_b32_e64 v72, 0, v72, s10
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v68, v68, v81
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s7
	v_cndmask_b32_e64 v69, 0, v69, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v82, 0, v82, s8
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v68, 0, v68, s6
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v70, v70, v81 :: v_dual_add_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v70, v70
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v68, v69, v70 :: v_dual_add_f32 v69, v71, v72
.Ltmp53:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v71, v98, v81
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_sub_f32 v80, v80, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp55:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v80, v80
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v80, 0, v80, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v80, v82
	v_add_f32_e32 v68, v69, v70
.Ltmp57:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v70, v58 :: v_dual_add_f32 v67, v67, v68
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v68, v67, s17, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_dual_cndmask_b32 v69, 0, v69 :: v_dual_add_f32 v58, v67, v68
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v58, v70, v69
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v81, 0xff800000 :: v_dual_mov_b32 v58, 0
.LBB0_7:                                ; %Flow144
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v58
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v66, v43, v51 :: v_dual_and_b32 v3, 31, v0
	s_load_b32 s44, s[0:1], 0x74
.Ltmp61:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.h, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 32, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v58
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v4, s26, v3
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.l, v38.h
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v2, v58, v2
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v4
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v42, v50 :: v_dual_and_b32 v80, 7, v0
.Ltmp63:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v2, v2
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v44, v52 :: v_dual_add_f32 v68, v45, v53
.Ltmp65:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v83, v77, 1, 0
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v46, v54 :: v_dual_add_f32 v70, v47, v55
	v_dual_add_f32 v71, v48, v56 :: v_dual_add_f32 v72, v49, v57
.Ltmp67:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s37, s41, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1)
	v_dual_mov_b32 v8, 0 :: v_dual_sub_f32 v1, v2, v1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s36, s40
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v4.l, v37.h
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v81, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v81, v76, 5, 0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v5.l, v39.h
	v_mov_b16_e32 v4.h, v7.h
	v_mov_b16_e32 v5.h, v7.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e32 v178, 0, v1, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v3, 2, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v74
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v3, s27, v3
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s5, v37, v37
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s0
	v_add_lshl_u32 v3, v3, s26, 2
	v_add_nc_u32_e32 v2, 0, v41
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s0, v39, v39
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e32 v41.h, v7.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_lshl_add_u32 v2, v74, 1, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_add3_u32 v5, v39, v5, 0x7fff
	v_lshlrev_b32_e32 v82, 4, v80
	s_mov_b32 s45, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v178
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_dual_mov_b32 v55, v8 :: v_dual_and_b32 v2, 28, v0
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v51, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v49, v8 :: v_dual_add_nc_u32 v2, v81, v2
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v58, v8
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[36:39], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v83, v[65:68]
	ds_store_b128 v83, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v6, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v7
	v_mov_b16_e32 v7.l, v40.h
	v_and_b32_e32 v2, 1, v4
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v1, v38, v1, 0x7fff
	v_and_b32_e32 v4, 1, v7
	v_mov_b16_e32 v7.l, v34.h
	v_add3_u32 v2, v37, v2, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_add3_u32 v4, v40, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v36, v36
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s5
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s5, v11, v11
	v_cndmask_b16 v2.h, 0x7fff, v4.h, vcc_lo
	v_and_b32_e32 v4, 1, v41
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v3, 1, v7
	v_mov_b16_e32 v6.l, v35.h
	v_mov_b16_e32 v6.h, v7.h
	v_mov_b16_e32 v7.l, v36.h
	v_add3_u32 v4, v33, v4, 0x7fff
	v_add3_u32 v3, v34, v3, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 1, v6
	v_and_b32_e32 v6, 1, v7
	v_mov_b16_e32 v7.l, v30.h
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v5, v35, v5, 0x7fff
	v_add3_u32 v6, v36, v6, 0x7fff
	v_mov_b16_e32 v33.l, v29.h
	v_mov_b16_e32 v33.h, v7.h
	v_and_b32_e32 v34, 1, v7
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s1
	v_and_b32_e32 v5, 1, v33
	v_add3_u32 v6, v30, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v7.l, v32.h
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v7.h
	v_add3_u32 v33, v29, v5, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_mov_b16_e32 v7.l, v26.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v30
	v_mov_b16_e32 v30.l, v25.h
	v_add3_u32 v6, v32, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v32, 1, v7
	v_mov_b16_e32 v7.l, v28.h
	v_cndmask_b16 v5.l, 0x7fff, v33.h, vcc_lo
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s0
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v31, v26, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v26.l, v27.h
	v_mov_b16_e32 v26.h, v7.h
	v_and_b32_e32 v32, 1, v7
	v_add3_u32 v30, v25, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v25, v25
	v_cndmask_b16 v6.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v29, v28, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_mov_b16_e32 v7.l, v22.h
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_mov_b16_e32 v28.l, v21.h
	v_mov_b16_e32 v28.h, v7.h
	v_add3_u32 v30, v27, v26, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v27, 1, v7
	v_mov_b16_e32 v29.l, v23.h
	v_mov_b16_e32 v29.h, v7.h
	v_mov_b16_e32 v7.l, v24.h
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s0
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v27, v22, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v26.l, 0x7fff, v30.h, vcc_lo
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v30, 1, v7
	v_mov_b16_e32 v7.l, v18.h
	v_add3_u32 v28, v21, v28, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v23, v29, 0x7fff
	v_add3_u32 v27, v24, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_cmp_o_f32_e64 s1, v23, v23
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v7.h
	v_and_b32_e32 v29, 1, v7
	v_cndmask_b16 v22.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v23.l, 0x7fff, v21.h, s1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_and_b32_e32 v21, 1, v24
	v_add3_u32 v24, v18, v29, 0x7fff
	v_mov_b16_e32 v7.l, v20.h
	v_mov_b16_e32 v18.l, v19.h
	v_mov_b16_e32 v18.h, v7.h
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s0
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v24, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v17, 1, v18
	v_mov_b16_e32 v18.l, v13.h
	v_mov_b16_e32 v7.l, v14.h
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_cndmask_b16 v27.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v17, v19, v17, 0x7fff
	v_and_b32_e32 v20, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_mov_b16_e32 v19.l, v15.h
	v_mov_b16_e32 v19.h, v7.h
	v_mov_b16_e32 v7.l, v16.h
	v_cndmask_b16 v28.h, 0x7fff, v24.h, s0
	v_add3_u32 v18, v13, v18, 0x7fff
	v_add3_u32 v20, v14, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_cmp_o_f32_e64 s1, v13, v13
	v_and_b32_e32 v14, 1, v19
	v_cndmask_b16 v28.l, 0x7fff, v17.h, vcc_lo
	v_and_b32_e32 v17, 1, v7
	v_mov_b16_e32 v7.l, v10.h
	v_cndmask_b16 v13.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v18.h, s1
	v_add3_u32 v18, v15, v14, 0x7fff
	v_mov_b16_e32 v14.l, v9.h
	v_mov_b16_e32 v14.h, v7.h
	v_add3_u32 v17, v16, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s0, v15, v15
	v_and_b32_e32 v15, 1, v7
	v_mov_b16_e32 v19.l, v11.h
	v_mov_b16_e32 v7.l, v12.h
	v_and_b32_e32 v16, 1, v14
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v15, v10, v15, 0x7fff
	v_and_b32_e32 v17, 1, v19
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s1, v12, v12
	v_cndmask_b16 v14.l, 0x7fff, v18.h, s0
	v_add3_u32 v17, v11, v17, 0x7fff
	v_add3_u32 v7, v12, v7, 0x7fff
	v_xor_b32_e32 v11, v78, v77
	v_add3_u32 v16, v9, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v9.h, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_add_nc_u32_e32 v7, 0, v11
	v_lshlrev_b32_e32 v12, 7, v73
	v_lshlrev_b32_e32 v15, 6, v74
	s_barrier
	v_xad_u32 v11, 0x240, v11, 0
	ds_store_2addr_stride64_b64 v7, v[1:2], v[5:6] offset1:2
	v_cndmask_b16 v9.l, 0x7fff, v16.h, s0
	v_or3_b32 v1, v12, v15, v82
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s5
	ds_store_2addr_stride64_b64 v7, v[22:23], v[13:14] offset0:4 offset1:6
	ds_store_2addr_stride64_b64 v11, v[3:4], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v11, v[27:28], v[9:10] offset0:4 offset1:6
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 16, 0
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v5, v1, 48, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v2
	ds_load_b128 v[21:24], v3
	v_xad_u32 v2, v1, 64, 0
	v_xad_u32 v3, 0x50, v1, 0
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[29:32], v5
	v_xad_u32 v4, 0x60, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	ds_load_b128 v[33:36], v2
	ds_load_b128 v[37:40], v3
	ds_load_b128 v[41:44], v4
	ds_load_b128 v[45:48], v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s13
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v83, v[65:68]
	ds_store_b128 v83, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.8:                                ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v8, 0x5410 :: v_dual_and_b32 v1, 12, v0
	v_dual_mov_b32 v9, 0x7632 :: v_dual_lshlrev_b32 v2, 4, v76
	.loc	1 125 21 is_stmt 1              ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v4, 3, v0
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v146, 3, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v8, 0x1054, v8, s4
	v_lshlrev_b32_e32 v3, 1, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v5, v81, v75, v1
	v_dual_mov_b32 v60, v65 :: v_dual_lshlrev_b32 v11, 9, v76
	v_cndmask_b32_e64 v9, 0x3276, v9, s4
	v_dual_mov_b32 v62, v65 :: v_dual_lshlrev_b32 v1, 5, v1
	v_bfe_i32 v12, v0, 3, 1
	v_lshl_or_b32 v8, v8, 8, v8
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s44, v2
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v180, v5
	v_lshl_or_b32 v181, s12, 10, v4
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v4, 24, v0
	v_lshl_or_b32 v9, v9, 8, v9
	v_or3_b32 v182, v1, v11, v2
	v_dual_mov_b32 v64, v65 :: v_dual_and_b32 v1, 0x420, v12
	v_lshl_or_b32 v2, v77, 3, v82
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v8, 0x540054, v8
	v_dual_mov_b32 v59, v65 :: v_dual_lshlrev_b32 v10, 1, v4
	v_lshl_or_b32 v4, v4, 6, v82
	v_dual_mov_b32 v50, v65 :: v_dual_and_b32 v9, 0x760076, v9
	v_xor_b32_e32 v183, v2, v1
	v_lshl_or_b32 v1, v8, 4, v8
	v_mov_b32_e32 v58, v65
	v_lshl_or_b32 v179, v73, 5, v3
	v_xor_b32_e32 v3, v78, v79
	v_xor_b32_e32 v4, v4, v10
	v_lshl_add_u32 v10, v74, 2, 0
	v_xor_b32_e32 v11, 16, v182
	v_xor_b32_e32 v5, 8, v179
	v_xor_b32_e32 v6, 16, v179
	v_xor_b32_e32 v7, 24, v179
	v_lshl_or_b32 v2, v9, 4, v9
	v_xor_b32_e32 v8, 32, v182
	v_xor_b32_e32 v9, 48, v182
	v_xor_b32_e32 v12, 0x210, v183
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v184, 0x5040504, v1
	v_dual_mov_b32 v54, v65 :: v_dual_lshlrev_b32 v1, 5, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s0, s23, v146
	v_dual_mov_b32 v52, v65 :: v_dual_and_b32 v185, 0x7060706, v2
	v_lshl_add_u32 v0, v73, 1, 0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v186, 0, v3
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v187, 0, v5
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v188, 0, v6
	v_add_nc_u32_e32 v189, 0, v7
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v190, v10, v4
	v_add_nc_u32_e32 v191, 0, v11
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v192, 0, v8
	v_dual_mov_b32 v14, v65 :: v_dual_add_nc_u32 v193, 0, v9
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v194, 0, v12
	v_dual_mov_b32 v16, v65 :: v_dual_add_nc_u32 v195, 0, v1
	v_mov_b32_e32 v10, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v12, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	v_mov_b16_e64 v204.h, 0
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s46, s12, 7
	s_and_b32 s37, s15, 0xffff
	s_and_b32 s41, s19, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s14
	s_mov_b32 s40, s18
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	s_mov_b32 s19, 0x76543210
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
.LBB0_9:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v68, s45, v169
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s4, s45, 1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v70, v170, s45, 1
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v78, s4, v181
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v71, v171, s45, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[66:67], null, v68, s22, v[137:138]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v79, 1, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[67:68], null, v78, s23, v[146:147]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v72, v172, s45, 1
	v_add_lshl_u32 v73, v173, s45, 1
	v_add_lshl_u32 v74, v174, s45, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v75, v175, s45, 1
	v_add_lshl_u32 v76, v176, s45, 1
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v77, v177, s45, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[147:148], v66, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s1, s45, 4
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_add_nc_u32_e32 v228, 0, v183
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s1, s1, s46
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s1, s1, s23
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v80, s1, v146, 1
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v68, 0x80000000, v80, s0
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v186, v[147:148]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v105, v79, s[40:43], 0 offen
	buffer_load_u16 v203, v70, s[40:43], 0 offen
	buffer_load_u16 v202, v71, s[40:43], 0 offen
	buffer_load_u16 v201, v72, s[40:43], 0 offen
	buffer_load_u16 v200, v73, s[40:43], 0 offen
	buffer_load_u16 v199, v74, s[40:43], 0 offen
	buffer_load_u16 v198, v75, s[40:43], 0 offen
	buffer_load_u16 v196, v76, s[40:43], 0 offen
	buffer_load_u16 v197, v77, s[40:43], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[66:67], v67, s[24:27], 0 offen
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v110, v148, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v113, 8, v147
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v114, v147, 8, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v111, -16, v110
	v_or_b32_e32 v115, -16, v114
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v205, 16, v105
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v69, 0, v179
	ds_load_b64 v[149:150], v69
	ds_load_b64 v[151:152], v187
	ds_load_b64 v[153:154], v188
	ds_load_b64 v[155:156], v189
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[68:71], v68, s[28:31], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v106, 8, v66
	v_lshrrev_b64 v[80:81], 24, v[66:67]
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v227, 0, v182
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v108, 15, v148
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v118, v66, 20, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v229, 8, v67
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[68:71]
	ds_store_b128 v190, v[68:71] offset:256
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v66.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v71, v66, 16, 4
	v_and_b32_e32 v69, 15, v66
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v66.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v72, -16, v71
	v_or_b32_e32 v70, -16, v69
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v109, -16, v108
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v119, -16, v118
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v68.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v106.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v69, v69, v70, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, v71, v72, s4
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v72, v66, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v68.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v68, v67, v66, 24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v72
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v70, 15, v68
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v80.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v72, v72, v73, s4
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v69, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v73, v70, v73, s1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v71
	v_cvt_f32_i32_e32 v71, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[72:75], v227
	ds_load_b128 v[93:96], v227 offset:64
	ds_load_b128 v[76:79], v191
	ds_load_b128 v[89:92], v191 offset:64
	ds_load_b128 v[101:104], v192
	ds_load_b128 v[85:88], v192 offset:64
	ds_load_b128 v[97:100], v193
	ds_load_b128 v[81:84], v193 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v228, v[68:71]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.l, v147.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[69:70], 24, v[147:148]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v71, v147, 16, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.l, v148.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v112, v69, 0, 8
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.h, v69.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v107, -16, v71
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v230, 16, v78
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v68.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.l, v148.h, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v78, 0xffff0000, v78
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v107, v71, v107, s1
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v71, v148, 8, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v108, v108, v109, s4
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v68.l
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v68.l, 4, v69.l
	v_lshrrev_b16 v69.l, 4, v147.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v109, 8, v148
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v231, 16, v79
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v110, v110, v111, s5
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v111, 24, v148
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v69.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v69, v147, 0, 8
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v79, 0xffff0000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v70, -16, v204
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s6, 0, v69.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v69.l, v113.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v69.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v69.l, v109.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v114, v114, v115, s7
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v115, -16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v69.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v69.l, v111.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v115, v71, v115, s1
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v71, v148, 24, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v69.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v69, v148, v147, 24
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v116, -16, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v69, 15, v69
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v116, v71, v116, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v71, -16, v69
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v68.h, 4, v80.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v117, v69, v71, s1
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v69.l, 4, v106.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v71, v80, 0, 8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v80.h, v204.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v80.l, v69.l, 15
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v69, v106, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v106, -16, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v69.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_mov_b16_e32 v69.l, v66.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v80, v80, v106, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v69, v69, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v106, v107
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v69.l
	v_mov_b16_e32 v69.l, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v106, v106, v205
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v118, v118, v119, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v69.l
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v69, v204, v70, s6
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v119.l, v68.h, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v68.h, 4, v113.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v221, 0, v106, vcc_lo
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v119.h, v204.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v71, -16, v119
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v69, v69, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v71, v119, v71, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v225, 0, v69, vcc_lo
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v69, v113, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v225.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v69.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v80
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v80, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v226, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v80, v80, v205
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v105, -16, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v222, 0, v80, vcc_lo
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v220, v204, v105, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v105, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v222.h
	v_and_b32_e32 v223, 1, v204
	v_mov_b16_e64 v204.l, v221.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v224, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v68.l, v112.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v68.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v117
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v214, v204, v80, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v216, 0, v68, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v68.l, 4, v148.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v216.h
	v_and_b32_e32 v217, 1, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v68, v148, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v68.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v108
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v212, v204, v80, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v218, 0, v68, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v68.l, 4, v109.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v105, v105, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v218.h
	v_cndmask_b32_e32 v210, 0, v105, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v105, v67, 24, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v219, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v68, v109, 0, 8
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v68.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v209, v204, v80, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v213, 0, v68, vcc_lo
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v68, v111, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v213.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v68.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v116
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v215, 1, v204
	v_mov_b16_e64 v204.l, v210.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v68, v68, v205 :: v_dual_and_b32 v211, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v204.l, 4, v111.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v207, 0, v68, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v68.l, 4, v66.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v66, v66, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v206, v204, v80, s1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v207.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v80, 24, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v208, 1, v204
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v204.l, v68.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v68, -16, v204
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v66, v204, v68, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v66
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v67.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v194, v[68:71]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v66.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v70, 15, v67
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v67.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v68, v67, 16, 4
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v71, -16, v70
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v66.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v66.l, v80.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v69, -16, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v70, v70, v71, s4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v66.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v71, v67, 8, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v229.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v105, v105, v106, s5
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v66.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v66, v71, v106, s4
	v_cndmask_b32_e64 v106, v68, v69, s1
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v70
	v_cvt_f32_i32_e32 v71, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v66
	v_cvt_f32_i32_e32 v70, v106
	ds_load_b128 v[121:124], v227
	ds_load_b128 v[117:120], v227 offset:64
	ds_load_b128 v[125:128], v191
	ds_load_b128 v[113:116], v191 offset:64
	ds_load_b128 v[133:136], v192
	ds_load_b128 v[109:112], v192 offset:64
	ds_load_b128 v[129:132], v193
	ds_load_b128 v[105:108], v193 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v66.l, 4, v67.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v228, v[68:71]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v68, v67, 0, 8
	v_mov_b16_e32 v69.l, v67.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v70.h, v204.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v70.l, v66.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v67, v67, 20, 4
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v66.l, v68.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v228, 16, v75
	v_and_b32_e32 v236, 0xffff0000, v99
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v68, -16, v70
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v235, 16, v99
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v66, v69, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v69, -16, v67
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v75, 0xffff0000, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v68, v70, v68, s1
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v66, v80, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v67, v67, v69, s1
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v69.h, v204.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_lshrrev_b16 v69.l, 4, v80.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v66.l, 4, v229.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v80, 16, v74
	v_and_b32_e32 v74, 0xffff0000, v74
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v70, -16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v69, v69, v70, s1
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v70.l, v66.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v70.h, v204.h
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v66, v229, 0, 8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v71, -16, v70
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v68
	v_cvt_f32_i32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v70, v70, v71, s1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v70
	ds_store_b128 v194, v[66:69]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v66, 16, v72
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v121, v66
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v66, 0xffff0000, v72
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v71, v122, v66 :: v_dual_lshlrev_b32 v66, 16, v73
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v72, v123, v66
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v66, 0xffff0000, v73
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v72, v72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v73, v124, v66
	ds_load_b128 v[66:69], v227
	ds_load_b128 v[121:124], v227 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v238, 0xffff0000, v100
	v_lshlrev_b32_e32 v237, 16, v100
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v73, v73
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v80, v66, v80
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v66, 16, v76
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v227, v68, v228 :: v_dual_mul_f32 v74, v67, v74
	v_mul_f32_e32 v75, v69, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v228, v125, v66
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v66, 0xffff0000, v76
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v227, v227
	v_cmp_o_f32_e64 s8, v74, v74
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s11, v228, v228
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v76, v126, v66
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v66, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v76, v76
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v229, v127, v66 :: v_dual_and_b32 v66, 0xffff0000, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v229, v229
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v128, v66
	ds_load_b128 v[66:69], v191
	ds_load_b128 v[125:128], v191 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v80, v80
	v_cmp_o_f32_e64 s14, v77, v77
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v67, v67, v78
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v78, v70, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v69, v69, v79 :: v_dual_mul_f32 v66, v66, v230
	v_mul_f32_e32 v68, v68, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v67, v67
	v_add3_u32 v70, v70, v78, 0x7fff
	v_bfe_u32 v78, v71, 16, 1
	v_cmp_o_f32_e64 s15, v66, v66
	v_cmp_o_f32_e64 s17, v68, v68
	v_cmp_o_f32_e64 s18, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v78, 0x7fff
	v_bfe_u32 v78, v72, 16, 1
	v_add3_u32 v72, v72, v78, 0x7fff
	v_bfe_u32 v78, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v73, v78, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v79, v80, v73, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v80, v74, v73, 0x7fff
	v_bfe_u32 v73, v227, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v72.h, s5
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_mov_b32_e32 v72, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v74.h, 0x7fff, v78.h, s6
	v_add3_u32 v227, v227, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v230, v75, v73, 0x7fff
	v_bfe_u32 v73, v228, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v79.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v80.h, s8
	v_add3_u32 v228, v228, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v231, v76, v73, 0x7fff
	v_bfe_u32 v73, v229, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v227.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v230.h, s10
	v_add3_u32 v229, v229, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v229.h, s13
	v_add3_u32 v232, v77, v73, 0x7fff
	v_bfe_u32 v73, v66, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v228.h, s11
	v_cndmask_b16 v77.h, 0x7fff, v231.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s14
	v_add3_u32 v66, v66, v73, 0x7fff
	v_bfe_u32 v73, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v66.h, s15
	v_add3_u32 v67, v67, v73, 0x7fff
	v_bfe_u32 v73, v68, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v79.h, 0x7fff, v67.h, s16
	v_add3_u32 v68, v68, v73, 0x7fff
	v_bfe_u32 v73, v69, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v67, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.l, 0x7fff, v68.h, s17
	v_add3_u32 v69, v69, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v70.h, s1
	v_cndmask_b16 v73.h, 0x7fff, v71.h, s4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v70, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.h, 0x7fff, v69.h, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v71, v65
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v234, v72
	v_mov_b32_e32 v232, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v230, v68 :: v_dual_mov_b32 v231, v69
	v_mov_b32_e32 v233, v71
	v_dual_mov_b32 v229, v67 :: v_dual_mov_b32 v228, v66
	v_mov_b32_e32 v227, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[17:24], v[227:234]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v101
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v133, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v101
	v_lshlrev_b32_e32 v133, 16, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v77, v77
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v78, v134, v73 :: v_dual_lshlrev_b32 v73, 16, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v79, v135, v73 :: v_dual_and_b32 v134, 0xffff0000, v103
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v102
	v_lshlrev_b32_e32 v135, 16, v104
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v79, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v80, v136, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v136, 0xffff0000, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[73:76], v192
	ds_load_b128 v[101:104], v192 offset:64
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v133, v73, v133
	v_dual_mul_f32 v136, v76, v136 :: v_dual_lshlrev_b32 v73, 16, v97
	v_mul_f32_e32 v135, v75, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v133, v133
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v129, v129, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v135, v135
	v_cmp_o_f32_e64 s10, v136, v136
	v_cmp_o_f32_e64 s11, v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v130, v130, v73 :: v_dual_lshlrev_b32 v73, 16, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v78, v78
	v_cmp_o_f32_e64 s12, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v131, v131, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v98
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v134, v74, v134
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v80, v80
	v_cmp_o_f32_e64 s13, v131, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v132, v132, v73
	ds_load_b128 v[73:76], v193
	ds_load_b128 v[97:100], v193 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v134, v134
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v132, v132
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v74, v74, v236 :: v_dual_mul_f32 v73, v73, v235
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v235, v77, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v76, v76, v238 :: v_dual_mul_f32 v75, v75, v237
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v74, v74
	v_cmp_o_f32_e64 s15, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v77, v77, v235, 0x7fff
	v_bfe_u32 v235, v78, 16, 1
	v_cmp_o_f32_e64 s17, v75, v75
	v_cmp_o_f32_e64 s18, v76, v76
	v_add3_u32 v78, v78, v235, 0x7fff
	v_bfe_u32 v235, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v79, v79, v235, 0x7fff
	v_bfe_u32 v235, v80, 16, 1
	v_add3_u32 v80, v80, v235, 0x7fff
	v_bfe_u32 v235, v133, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v133, v133, v235, 0x7fff
	v_bfe_u32 v235, v134, 16, 1
	v_add3_u32 v134, v134, v235, 0x7fff
	v_bfe_u32 v235, v135, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v135, v135, v235, 0x7fff
	v_bfe_u32 v235, v136, 16, 1
	v_add3_u32 v136, v136, v235, 0x7fff
	v_bfe_u32 v235, v129, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v129, v129, v235, 0x7fff
	v_bfe_u32 v235, v130, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v129.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v130, v130, v235, 0x7fff
	v_bfe_u32 v235, v131, 16, 1
	v_add3_u32 v131, v131, v235, 0x7fff
	v_bfe_u32 v235, v132, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v131.h, s13
	v_add3_u32 v132, v132, v235, 0x7fff
	v_bfe_u32 v235, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v235, v73, v235, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v235.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v236, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v79.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v80.h, s6
	v_cndmask_b16 v79.h, 0x7fff, v236.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v237, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v133.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v134.h, s8
	v_cndmask_b16 v80.l, 0x7fff, v237.h, s17
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v238, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v77.h, s1
	v_cndmask_b16 v73.h, 0x7fff, v78.h, s4
	v_cndmask_b16 v76.l, 0x7fff, v135.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v136.h, s10
	v_cndmask_b16 v77.h, 0x7fff, v130.h, s12
	v_cndmask_b16 v78.h, 0x7fff, v132.h, s14
	v_cndmask_b16 v80.h, 0x7fff, v238.h, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[25:32], v[227:234]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v93
	v_lshlrev_b32_e32 v75, 16, v94
	v_lshlrev_b32_e32 v79, 16, v96
	v_and_b32_e32 v74, 0xffff0000, v93
	v_lshlrev_b32_e32 v93, 16, v89
	v_and_b32_e32 v76, 0xffff0000, v94
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v73, v117, v73 :: v_dual_lshlrev_b32 v94, 16, v90
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v89, 0xffff0000, v89
	v_and_b32_e32 v78, 0xffff0000, v95
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v75, v119, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v94, v115, v94 :: v_dual_mul_f32 v93, v113, v93
	v_dual_mul_f32 v76, v120, v76 :: v_dual_mul_f32 v89, v114, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v78, v122, v78 :: v_dual_mul_f32 v79, v123, v79
	v_dual_mul_f32 v74, v118, v74 :: v_dual_lshlrev_b32 v77, 16, v95
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v113, v73, 16, 1
	v_cmp_o_f32_e64 s1, v73, v73
	v_cmp_o_f32_e64 s5, v75, v75
	v_cmp_o_f32_e64 s4, v74, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v121, v77
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v73, v73, v113, 0x7fff
	v_bfe_u32 v113, v74, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v90, 0xffff0000, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v76, v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v95, 16, v91
	v_and_b32_e32 v80, 0xffff0000, v96
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v74, v74, v113, 0x7fff
	v_bfe_u32 v113, v75, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v90, v116, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v77, v77
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v95, v125, v95 :: v_dual_mul_f32 v80, v124, v80
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v91, 0xffff0000, v91
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v75, v75, v113, 0x7fff
	v_bfe_u32 v113, v76, 16, 1
	v_cmp_o_f32_e64 s8, v78, v78
	v_cmp_o_f32_e64 s9, v79, v79
	v_cmp_o_f32_e64 s10, v80, v80
	v_cmp_o_f32_e64 s11, v93, v93
	v_add3_u32 v76, v76, v113, 0x7fff
	v_bfe_u32 v113, v77, 16, 1
	v_cmp_o_f32_e64 s12, v89, v89
	v_cmp_o_f32_e64 s13, v94, v94
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v91, v126, v91 :: v_dual_lshlrev_b32 v96, 16, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v77, v77, v113, 0x7fff
	v_bfe_u32 v113, v78, 16, 1
	v_cmp_o_f32_e64 s14, v90, v90
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v92, 0xffff0000, v92
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v96, v127, v96
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v95, v95
	v_add3_u32 v78, v78, v113, 0x7fff
	v_bfe_u32 v113, v79, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v92, v128, v92
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v91, v91
	v_cmp_o_f32_e64 s17, v96, v96
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s1
	v_add3_u32 v79, v79, v113, 0x7fff
	v_bfe_u32 v113, v80, 16, 1
	v_cmp_o_f32_e64 s18, v92, v92
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s4
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s6
	v_add3_u32 v80, v80, v113, 0x7fff
	v_bfe_u32 v113, v93, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s8
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v80.h, s10
	v_add3_u32 v93, v93, v113, 0x7fff
	v_bfe_u32 v113, v89, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.l, 0x7fff, v93.h, s11
	v_add3_u32 v89, v89, v113, 0x7fff
	v_bfe_u32 v113, v94, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.h, 0x7fff, v89.h, s12
	v_add3_u32 v94, v94, v113, 0x7fff
	v_bfe_u32 v113, v90, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v94.h, s13
	v_add3_u32 v90, v90, v113, 0x7fff
	v_bfe_u32 v113, v95, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v90.h, s14
	v_add3_u32 v95, v95, v113, 0x7fff
	v_bfe_u32 v113, v91, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v90.h, v204.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v79.l, 0x7fff, v95.h, s15
	v_add3_u32 v91, v91, v113, 0x7fff
	v_bfe_u32 v113, v96, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v91.h, s16
	v_add3_u32 v96, v96, v113, 0x7fff
	v_bfe_u32 v113, v92, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v91, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.l, 0x7fff, v96.h, s17
	v_add3_u32 v92, v92, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v91, v91, v205
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.h, 0x7fff, v92.h, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[33:40], v[227:234]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v85
	v_lshlrev_b32_e32 v75, 16, v86
	v_lshlrev_b32_e32 v79, 16, v88
	v_and_b32_e32 v74, 0xffff0000, v85
	v_lshlrev_b32_e32 v85, 16, v81
	v_and_b32_e32 v76, 0xffff0000, v86
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v73, v109, v73 :: v_dual_lshlrev_b32 v86, 16, v82
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v81, 0xffff0000, v81
	v_and_b32_e32 v78, 0xffff0000, v87
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v75, v111, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v86, v107, v86 :: v_dual_mul_f32 v85, v105, v85
	v_dual_mul_f32 v76, v112, v76 :: v_dual_mul_f32 v81, v106, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v78, v102, v78 :: v_dual_mul_f32 v79, v103, v79
	v_dual_mul_f32 v74, v110, v74 :: v_dual_lshlrev_b32 v77, 16, v87
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v89, v73, 16, 1
	v_cmp_o_f32_e64 s1, v73, v73
	v_cmp_o_f32_e64 s5, v75, v75
	v_cmp_o_f32_e64 s4, v74, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v101, v77
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v73, v73, v89, 0x7fff
	v_bfe_u32 v89, v74, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v82, 0xffff0000, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v76, v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v87, 16, v83
	v_and_b32_e32 v80, 0xffff0000, v88
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v74, v74, v89, 0x7fff
	v_bfe_u32 v89, v75, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v82, v108, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v77, v77
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v87, v97, v87 :: v_dual_mul_f32 v80, v104, v80
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v83, 0xffff0000, v83
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v75, v75, v89, 0x7fff
	v_bfe_u32 v89, v76, 16, 1
	v_cmp_o_f32_e64 s8, v78, v78
	v_cmp_o_f32_e64 s9, v79, v79
	v_cmp_o_f32_e64 s10, v80, v80
	v_cmp_o_f32_e64 s11, v85, v85
	v_add3_u32 v76, v76, v89, 0x7fff
	v_bfe_u32 v89, v77, 16, 1
	v_cmp_o_f32_e64 s12, v81, v81
	v_cmp_o_f32_e64 s13, v86, v86
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v83, v98, v83 :: v_dual_lshlrev_b32 v88, 16, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v77, v77, v89, 0x7fff
	v_bfe_u32 v89, v78, 16, 1
	v_cmp_o_f32_e64 s14, v82, v82
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v84, 0xffff0000, v84
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v88, v99, v88
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v87, v87
	v_add3_u32 v78, v78, v89, 0x7fff
	v_bfe_u32 v89, v79, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v84, v100, v84
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v83, v83
	v_cmp_o_f32_e64 s17, v88, v88
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s1
	v_add3_u32 v79, v79, v89, 0x7fff
	v_bfe_u32 v89, v80, 16, 1
	v_cmp_o_f32_e64 s18, v84, v84
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s4
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s6
	v_add3_u32 v80, v80, v89, 0x7fff
	v_bfe_u32 v89, v85, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s8
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v80.h, s10
	v_add3_u32 v85, v85, v89, 0x7fff
	v_bfe_u32 v89, v81, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v225, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v77.l, 0x7fff, v85.h, s11
	v_add3_u32 v81, v81, v89, 0x7fff
	v_bfe_u32 v89, v86, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.h, 0x7fff, v81.h, s12
	v_add3_u32 v86, v86, v89, 0x7fff
	v_bfe_u32 v89, v82, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v86.h, s13
	v_add3_u32 v82, v82, v89, 0x7fff
	v_bfe_u32 v89, v87, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v82.h, s14
	v_add3_u32 v87, v87, v89, 0x7fff
	v_bfe_u32 v89, v83, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v87.h, s15
	v_add3_u32 v83, v83, v89, 0x7fff
	v_bfe_u32 v89, v88, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v83.h, s16
	v_add3_u32 v88, v88, v89, 0x7fff
	v_bfe_u32 v89, v84, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v88.h, s17
	v_add3_u32 v84, v84, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v84.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[41:48], v[227:234]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[149:150], v[138:139], v[65:72] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v67.l, v147.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v68, 15, v147
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v66.l, v147.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[151:152], v[142:143], v[73:80] neg_lo:[1,1,0]
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v70, v147, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v69.l, v148.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v72, -16, v68
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v66.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[153:154], v[140:141], v[73:80] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v66, v67, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v67, -16, v70
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v71, v148, 20, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v68, v68, v72, s1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[155:156], v[144:145], v[73:80] neg_lo:[1,1,0]
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v66, v69, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v71
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v85, v77
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v77, v230, v180
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v67, v70, v67, s1
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v66.l
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v81, v234, v180 :: v_dual_mul_f32 v68, v68, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v70.h, v204.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v66, v71, v69, s1
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v82, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
	v_mov_b16_e64 v69.h, v204.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v67, v67, v205
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v72, v214
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v69.l, v68.h
	v_cmp_o_f32_e64 s1, v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v67, 0, v67 :: v_dual_mul_f32 v66, v66, v205
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v88, v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v69, 1, v69
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v72, v72, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v70.l, v67.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v79, v232, v180 :: v_dual_cndmask_b32 v66, 0, v66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s5, v67, v67
	v_add3_u32 v68, v68, v69, 0x7fff
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v225, v226, 0x7fff
	v_cmp_o_f32_e64 s6, v66, v66
	v_mov_b16_e64 v71.h, v204.h
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	v_add3_u32 v67, v67, v70, 0x7fff
	v_mov_b16_e64 v70.h, v204.h
	v_mov_b16_e32 v70.l, v66.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v89, v73
	v_cvt_f32_i32_e32 v86, v76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v73.h, v204.h
	v_mov_b16_e32 v73.l, v72.h
	v_and_b32_e32 v70, 1, v70
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v84, v78
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v231, v180
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v83, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v70, v66, v70, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s4
	v_cmp_o_f32_e64 s4, v221, v221
	v_add3_u32 v69, v221, v224, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s1
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s5
	v_cmp_o_f32_e64 s1, v222, v222
	v_add3_u32 v67, v222, v223, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v220
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v216, v216
	v_add3_u32 v73, v72, v73, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v67.h, s1
	v_cmp_o_f32_e64 s5, v210, v210
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v69, v69, v205 :: v_dual_sub_f32 v74, v227, v180
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v87, v75
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v75, v228, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	v_mov_b16_e32 v71.l, v69.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v76, v229, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v69, v69
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v71, 0x7fff
	v_add3_u32 v71, v216, v217, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s4
	v_cmp_o_f32_e64 s4, v72, v72
	v_cndmask_b16 v72.h, 0x7fff, v70.h, s6
	v_cmp_o_f32_e64 s1, v218, v218
	v_add3_u32 v71, v218, v219, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s1
	v_cmp_o_f32_e64 s1, v213, v213
	v_add3_u32 v71, v213, v215, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v73, v73, v205
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v233, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s1
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v90.l, v73.h
	v_cmp_o_f32_e64 s4, v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v73, v73, v90, 0x7fff
	v_add3_u32 v90, v210, v211, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v73.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v209
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v72.l, 0x7fff, v90.h, s5
	v_mov_b16_e64 v90.h, v204.h
	v_cmp_o_f32_e64 s4, v207, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v73, v73, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v90.l, v73.h
	v_cmp_o_f32_e64 s1, v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v73, v73, v90, 0x7fff
	v_add3_u32 v90, v207, v208, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v71.h, 0x7fff, v73.h, s1
	v_cndmask_b16 v73.l, 0x7fff, v90.h, s4
	v_cndmask_b32_e32 v90, 0, v91, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v204.l, v90.h
	v_cmp_o_f32_e64 s1, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v204
	v_add3_u32 v90, v90, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v73.h, 0x7fff, v90.h, s1
	ds_store_b128 v195, v[66:69]
	ds_store_b128 v195, v[70:73] offset:16
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v159
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v67, 16, v203
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v73, v168, v83 :: v_dual_lshlrev_b32 v68, 16, v202
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v71, 16, v199
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s10, v66, v167
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v162
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v69, 16, v201
	v_lshlrev_b32_e32 v70, 16, v200
	v_lshlrev_b32_e32 v83, 16, v197
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s10, s2, s10
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v66, v167
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v163
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, v73, v83, -v178
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_barrier
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s1, s2, s1
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s4, v66, v167
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v161
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v73
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s4, s2, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s5, v66, v167
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v160
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s5, s2, s5
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s6, v66, v167
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v165
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s6, s2, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s7, v66, v167
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v166
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s7, s2, s7
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s8, v66, v167
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v66, s45, v164
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s45, s45, 16
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s8, s2, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s9, v66, v167
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v66, v168, v89
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s9, s2, s9
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v66, v66, v67, -v178
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v67, v168, v88
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s9
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s45, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v66, v66
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v67, v67, v68, -v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v68, v168, v87 :: v_dual_mul_f32 v73, v73, v81
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v68, v68, v69, -v178
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v69, v168, v86
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s34, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v66, 0, v66, s10
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v69, v69, v70, -v178
	.loc	1 397 33 is_stmt 1              ; attention_backward.py:397:33
	v_bfe_u32 v81, v73, 16, 1
	v_cmp_o_f32_e64 s10, v73, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v67, 0, v67, s1
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v70, v168, v85
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v69
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v73, v73, v81, 0x7fff
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v67, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v70, v70, v71, -v178
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v71, v168, v84
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v68, 0, v68, s4
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v66, v66, v74 :: v_dual_mul_f32 v67, s34, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v69, 0, v69, s5
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v72, 16, v198
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v66, s34, v66
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v75, v67, 16, 1
	v_cmp_o_f32_e64 s4, v67, v67
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v69, v77
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v71, v71, v72, -v178
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v68, v76
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v74, v66, 16, 1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v70, s6
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s34, v69
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v71
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s34, v68
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s1, v66, v66
	v_add3_u32 v66, v66, v74, 0x7fff
	v_bfe_u32 v77, v69, 16, 1
	v_cmp_o_f32_e64 s6, v69, v69
	v_bfe_u32 v76, v68, 16, 1
	v_cmp_o_f32_e64 s5, v68, v68
	v_add3_u32 v67, v67, v75, 0x7fff
	v_add3_u32 v69, v69, v77, 0x7fff
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v71, 0, v71, s7
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v72, v168, v82
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v82, 16, v196
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v68, v68, v76, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v76, v0 offset:608
	ds_load_u16_d16 v75, v0 offset:352
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v71, v71, v79 :: v_dual_mul_f32 v70, v70, v78
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v72, v72, v82, -v178
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s1
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_dual_mul_f32 v71, s34, v71 :: v_dual_mul_f32 v70, s34, v70
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v72, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s5
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_bfe_u32 v79, v71, 16, 1
	v_bfe_u32 v78, v70, 16, 1
	v_cmp_o_f32_e64 s7, v70, v70
	v_permlanex16_b32 v68, v67, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s10
	v_add3_u32 v70, v70, v78, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v72, 0, v72, s8
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s8, v71, v71
	v_add3_u32 v71, v71, v79, 0x7fff
	v_perm_b32 v66, v68, v67, v184
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s7
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v72, v72, v80
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v70, v69, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s8
	v_perm_b32 v67, v68, v67, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v72, s34, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v70, v69, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v74, v71, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v69, v185
	v_bfe_u32 v80, v72, 16, 1
	v_cmp_o_f32_e64 s9, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v70, v74, v71, v184
	v_perm_b32 v71, v74, v71, v185
	v_add3_u32 v72, v72, v80, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v73.l, 0x7fff, v72.h, s9
	v_permlanex16_b32 v74, v73, s19, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v72, v74, v73, v184
	v_perm_b32 v73, v74, v73, v185
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	ds_load_u16_d16 v93, v0 offset:768
	ds_load_u16_d16 v90, v0
	ds_load_u16_d16 v84, v0 offset:576
	ds_load_u16_d16 v85, v0 offset:832
	ds_load_u16_d16 v94, v0 offset:1024
	ds_load_u16_d16 v86, v0 offset:1088
	ds_load_u16_d16 v95, v0 offset:1280
	ds_load_u16_d16 v87, v0 offset:1344
	ds_load_u16_d16 v96, v0 offset:1536
	ds_load_u16_d16 v88, v0 offset:1600
	ds_load_u16_d16 v97, v0 offset:1792
	ds_load_u16_d16 v92, v0 offset:512
	ds_load_u16_d16 v91, v0 offset:256
	ds_load_u16_d16 v89, v0 offset:1856
	ds_load_u16_d16 v99, v0 offset:288
	ds_load_u16_d16 v98, v0 offset:32
	ds_load_u16_d16 v82, v0 offset:64
	ds_load_u16_d16 v83, v0 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v75, v0 offset:480
	ds_load_u16_d16 v74, v0 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v90, v0 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v84, v0 offset:704
	ds_load_u16_d16_hi v93, v0 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v85, v0 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v94, v0 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v86, v0 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v95, v0 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v87, v0 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v96, v0 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v0 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v97, v0 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v92, v0 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v91, v0 offset:384
	ds_load_u16_d16 v100, v0 offset:544
	ds_load_u16_d16 v77, v0 offset:864
	ds_load_u16_d16 v78, v0 offset:1120
	ds_load_u16_d16 v79, v0 offset:1376
	ds_load_u16_d16 v80, v0 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v89, v0 offset:1984
	ds_load_u16_d16 v81, v0 offset:1888
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v98, v0 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v82, v0 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v74, v0 offset:224
	ds_load_u16_d16_hi v99, v0 offset:416
	ds_load_u16_d16_hi v83, v0 offset:448
	ds_load_u16_d16 v101, v0 offset:800
	ds_load_u16_d16 v102, v0 offset:1056
	ds_load_u16_d16 v103, v0 offset:1312
	ds_load_u16_d16 v104, v0 offset:1568
	ds_load_u16_d16 v105, v0 offset:1824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v100, v0 offset:672
	ds_load_u16_d16_hi v76, v0 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v101, v0 offset:928
	ds_load_u16_d16_hi v77, v0 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v0 offset:1184
	ds_load_u16_d16_hi v78, v0 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v103, v0 offset:1440
	ds_load_u16_d16_hi v79, v0 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v104, v0 offset:1696
	ds_load_u16_d16_hi v80, v0 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v105, v0 offset:1952
	ds_load_u16_d16_hi v81, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[90:97], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[82:89], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[98:105], v[66:73], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[74:81], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_9
.LBB0_10:                               ; %._crit_edge82
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s44, v157
	s_mul_i32 s4, s44, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s44, v159
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v159
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v159
	v_or_b32_e32 v18, 48, v159
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s44, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 62, v158
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v159, 2
	v_add_lshl_u32 v23, v21, v162, 2
	v_add_lshl_u32 v24, v21, v163, 2
	v_add_lshl_u32 v25, v21, v166, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_add_lshl_u32 v26, v21, v164, 2
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_clause 0x2
	buffer_store_b32 v57, v22, s[20:23], 0 offen
	buffer_store_b32 v58, v23, s[20:23], 0 offen
	buffer_store_b32 v59, v24, s[20:23], 0 offen
	v_add_lshl_u32 v22, v21, v161, 2
	v_add_lshl_u32 v23, v21, v160, 2
	v_add_lshl_u32 v24, v21, v165, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s44, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_add_lshl_u32 v19, v21, v19, 2
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v20, v21, v20, 2
	s_clause 0x4
	buffer_store_b32 v60, v22, s[20:23], 0 offen
	buffer_store_b32 v61, v23, s[20:23], 0 offen
	buffer_store_b32 v62, v24, s[20:23], 0 offen
	buffer_store_b32 v63, v25, s[20:23], 0 offen
	buffer_store_b32 v64, v26, s[20:23], 0 offen
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
	buffer_store_b32 v49, v20, s[20:23], 0 offen
	buffer_store_b32 v50, v22, s[20:23], 0 offen
	buffer_store_b32 v51, v23, s[20:23], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v52, v24, s[20:23], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v53, v20, s[20:23], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s44, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v20, s[20:23], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v22, s[20:23], 0 offen
	buffer_store_b32 v56, v23, s[20:23], 0 offen
	buffer_store_b32 v9, v19, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v0
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x98, v0
	v_add_nc_u32_e32 v22, 0xa0, v0
	v_add_nc_u32_e32 v23, 0xa8, v0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v19, s[20:23], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v12, v10, s[20:23], 0 offen
	buffer_store_b32 v13, v19, s[20:23], 0 offen
	buffer_store_b32 v14, v20, s[20:23], 0 offen
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
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v16, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v11, s[20:23], 0 offen
	buffer_store_b32 v2, v12, s[20:23], 0 offen
	buffer_store_b32 v3, v13, s[20:23], 0 offen
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
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v3, s[20:23], 0 offen
	buffer_store_b32 v7, v0, s[20:23], 0 offen
	buffer_store_b32 v8, v9, s[20:23], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp68:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 239
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 239
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15048
; TotalNumSgprs: 50
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 239
; Occupancy: 6
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x97 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x71 DW_TAG_subprogram
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
	.byte	6                               ; Abbrev [6] 0x5b:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp49                         ; DW_AT_low_pc
	.long	.Ltmp51-.Ltmp49                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp49                         ; DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x85:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x92:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
