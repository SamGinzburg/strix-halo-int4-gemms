	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x78
	s_load_b128 s[16:19], s[0:1], 0x18
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v110, 32, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s30, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s31, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v73, 15, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s30, s31
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v83, 1, v110
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s33, v2
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s30, v2
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v86, 4, v0
	v_or_b32_e32 v85, v83, v73
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v41, 2, v73
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s26, v3, v[1:2]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s26, v1
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v3, s33, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s30, v85
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
	v_or_b32_e32 v4, s30, v86
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s34, s27, 3
	s_lshl_b32 s12, s27, 2
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[42:45], v2, s[4:7], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v3, s27, v86
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s4, s16
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v7, v2, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s27, s33
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s27, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s13, s27, 12
	v_add3_u32 v2, s5, v41, v3
	s_lshl_b32 s16, s27, 4
	s_mul_i32 s17, s27, 20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_mov_b32 s4, s8
	v_lshlrev_b32_e32 v3, 2, v2
	v_add_lshl_u32 v5, v2, s34, 2
	v_add_lshl_u32 v4, v2, s12, 2
	v_add_lshl_u32 v6, v2, s13, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s12, s27, 24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v8, v2, s16, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s8, s27, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v9, v2, s17, 2
	v_add_lshl_u32 v10, v2, s12, 2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v2, v2, s8, 2
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_and_b32 s5, s9, 0xffff
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	s_clause 0x1
	buffer_load_b128 v[46:49], v3, s[4:7], 0 offen
	buffer_load_b128 v[50:53], v4, s[4:7], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x5
	buffer_load_b128 v[54:57], v5, s[4:7], 0 offen
	buffer_load_b128 v[62:65], v6, s[4:7], 0 offen
	buffer_load_b128 v[66:69], v8, s[4:7], 0 offen
	buffer_load_b128 v[75:78], v9, s[4:7], 0 offen
	buffer_load_b128 v[79:82], v10, s[4:7], 0 offen
	buffer_load_b128 v[96:99], v2, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_clause 0x7
	buffer_load_b128 v[37:40], v3, s[4:7], 0 offen
	buffer_load_b128 v[33:36], v4, s[4:7], 0 offen
	buffer_load_b128 v[29:32], v5, s[4:7], 0 offen
	buffer_load_b128 v[25:28], v6, s[4:7], 0 offen
	buffer_load_b128 v[21:24], v8, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v10, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v2, s[4:7], 0 offen
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v87, v0, 4, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v3, 16, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v111, 3, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v4, v2, 30, v87
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x80
	s_load_b32 s6, s[0:1], 0xa0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s7, s4, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s8, s4, 10
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s4, 0, v3
	v_lshlrev_b32_e32 v3, 2, v4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s7
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s7, s8, 0xffffc000
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s8, s3, 0x10007
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v88, 2, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s8
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v94, 2, v87
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v95, 4, v87
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s3, s3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v93, 6, v87
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s3, s3, 10
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v91, 8, v87
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s44, s3, 0xfffff800
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v92, 10, v87
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s44, s44, s7
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s30, s6
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v89, 12, v87
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s8, s8, 32
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v90, 14, v87
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s9, s8, 0x800
	s_mov_b32 s5, 0
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s9, s9, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 34 is_stmt 0              ; attention_backward.py:190:34
	s_ashr_i32 s10, s9, 31
	s_lshr_b32 s3, s10, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s9, s3
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_gt_i32 s8, 0
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s8, s35, 0x3fb8aa3b
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s12, -1, 0
	s_and_b32 vcc_lo, exec_lo, s12
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v58, v76, v18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v5, 4, v3
	ds_bpermute_b32 v59, v3, v42
	ds_bpermute_b32 v8, v3, v43
	ds_bpermute_b32 v4, v3, v44
	ds_bpermute_b32 v3, v3, v45
	ds_bpermute_b32 v61, v5, v42
	ds_bpermute_b32 v60, v5, v43
	ds_bpermute_b32 v6, v5, v44
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v42, v47, v38 :: v_dual_mul_f32 v43, v49, v40
	v_mul_f32_e32 v44, v51, v34
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v74, 3, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v42, v46, v37 :: v_dual_lshlrev_b32 v7, 16, v7
	v_fmac_f32_e32 v43, v48, v39
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v51, v63, v26
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v5, v5, v45
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v45, v53, v36 :: v_dual_fmac_f32 v44, v50, v33
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_mul_f32 v49, v57, v32
	v_dual_fmac_f32 v58, v75, v17 :: v_dual_mul_f32 v57, v69, v24
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v99, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v50, v42 :: v_dual_mul_f32 v47, v55, v30
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v45, v52, v35
.Ltmp7:
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s3, s26, v74
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v70, v98, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v54, v29
	v_dual_add_f32 v43, v44, v45 :: v_dual_add_f32 v42, v42, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v56, v31 :: v_dual_mov_b32 v50, v42
.Ltmp11:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v53, v65, v28 :: v_dual_add_f32 v44, v47, v49
	v_mul_f32_e32 v65, v80, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v57, v68, v23
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v52, v44 :: v_dual_fmac_f32 v65, v79, v13
.Ltmp15:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v55, v67, v22
	v_mul_f32_e32 v67, v82, v16
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v42, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v67, v81, v15 :: v_dual_add_f32 v44, v44, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v48, v65, v67 :: v_dual_fmac_f32 v55, v66, v21
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v52, v44 :: v_dual_mul_f32 v63, v78, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v69, v97, v10 :: v_dual_mov_b32 v56, v48
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v55, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v54, v46
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v51, v62, v25 :: v_dual_add_f32 v48, v48, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v54, v54 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v63, v77, v19 :: v_dual_mov_b32 v56, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v46, v46, v54 :: v_dual_fmac_f32 v53, v64, v27
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v54, v46 :: v_dual_add_f32 v45, v51, v53
	v_mov_b32_e32 v51, v43
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v53, v45
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v53, v53 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v45, v45, v53
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v53, v45
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v69, v96, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v50, v43, v51
	v_add_f32_e32 v47, v58, v63
	v_add_f32_e32 v51, v44, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v43, v42 :: v_dual_add_f32 v52, v45, v53
	v_mov_b32_e32 v44, v50
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v46, v54
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v45, v51 :: v_dual_mov_b32 v46, v52
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v69, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v50, v44 :: v_dual_mov_b32 v57, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v47, v47, v55
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v52, v46
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v52, v44
	v_mov_b32_dpp v57, v57 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v55, v47
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v42, v43
	v_add_f32_e32 v45, v51, v45
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v57
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v51, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v57, v49 :: v_dual_add_f32 v54, v47, v55
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v55, v48, v56
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v53
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v54
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v56, v49, v57 :: v_dual_mov_b32 v49, v55
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v53, v47
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v53, v45
	v_mov_b32_e32 v57, v56
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v54, v48
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v54, v46
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v55, v49
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, v47
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v50, v56, v57
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v56, v48 :: v_dual_mov_b32 v57, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v58, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_lshlrev_b32_e32 v84, 3, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr84
.LBB0_3:                                ; %Flow143
	s_clause 0x2
	s_load_b64 s[24:25], s[0:1], 0x58
	s_load_b128 s[20:23], s[0:1], 0x48
	s_load_b64 s[28:29], s[0:1], 0x10
	v_dual_mul_f32 v97, s8, v7 :: v_dual_and_b32 v42, 48, v0
	v_add_nc_u32_e32 v96, s6, v1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v75, v61, v59, s4
	v_cndmask_b32_e64 v77, v59, v61, s4
	v_cndmask_b32_e64 v76, v60, v8, s4
	v_cndmask_b32_e64 v78, v8, v60, s4
	v_cndmask_b32_e64 v79, v6, v4, s4
	v_cndmask_b32_e64 v81, v4, v6, s4
	v_cndmask_b32_e64 v80, v5, v3, s4
	v_cndmask_b32_e64 v82, v3, v5, s4
	v_or_b32_e32 v98, s44, v88
	v_or_b32_e32 v99, s44, v87
	v_or_b32_e32 v100, s44, v94
	v_or_b32_e32 v101, s44, v95
	v_or_b32_e32 v102, s44, v93
	v_or_b32_e32 v103, s44, v91
	v_or_b32_e32 v104, s44, v92
	v_or_b32_e32 v105, s44, v89
	v_or_b32_e32 v106, s44, v90
	v_lshrrev_b32_e32 v108, 1, v42
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_and_b32 s45, s7, -16
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mov_b32 v60, v97 :: v_dual_and_b32 v1, 24, v2
	v_dual_mov_b32 v61, v97 :: v_dual_lshlrev_b32 v84, 3, v0
	v_dual_mov_b32 v62, v97 :: v_dual_mov_b32 v107, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v2, v73, 5, v1
	v_xor_b32_e32 v1, v84, v108
	v_mov_b32_e32 v59, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v5, 24, v2
	v_add_nc_u32_e32 v63, 0, v1
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v64, 0, v2
	v_add_nc_u32_e32 v65, 0, v3
	v_add_nc_u32_e32 v66, 0, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v67, 0, v5
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_and_b32 s41, s19, 0xffff
	s_mov_b32 s40, s18
	s_mov_b32 s13, 0
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s16, 0x76543210
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v68, s13, v98
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v109, v102, s13, 1
	v_add_lshl_u32 v72, v101, s13, 1
	v_add_lshl_u32 v71, v100, s13, 1
	v_add_lshl_u32 v70, v99, s13, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[68:69], null, v68, s26, v[74:75]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v115, v106, s13, 1
	v_add_lshl_u32 v112, v103, s13, 1
	v_add_lshl_u32 v113, v104, s13, 1
	v_add_lshl_u32 v114, v105, s13, 1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	buffer_load_b64 v[68:69], v68, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v63, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v109, v109, s[40:43], 0 offen
	buffer_load_u16 v72, v72, s[40:43], 0 offen
	buffer_load_u16 v124, v71, s[40:43], 0 offen
	buffer_load_u16 v125, v70, s[40:43], 0 offen
	buffer_load_u16 v126, v115, s[40:43], 0 offen
	buffer_load_u16 v127, v114, s[40:43], 0 offen
	buffer_load_u16 v128, v113, s[40:43], 0 offen
	buffer_load_u16 v129, v112, s[40:43], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v68, s13, v87
	v_or_b32_e32 v69, s13, v94
	v_or_b32_e32 v70, s13, v95
	v_or_b32_e32 v71, s13, v93
	v_or_b32_e32 v112, s13, v92
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s7, v68, v96
	v_cmp_le_i32_e64 s6, v69, v96
	v_cmp_le_i32_e64 s5, v70, v96
	v_cmp_le_i32_e32 vcc_lo, v71, v96
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[68:69], v64
	ds_load_b64 v[70:71], v65
	ds_load_b64 v[120:121], v66
	ds_load_b64 v[122:123], v67
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v113, s13, v89
	v_or_b32_e32 v114, s13, v90
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s10, v112, v96
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s6, s2, s6
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s9, v113, v96
	v_cmp_le_i32_e64 s8, v114, v96
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	s_and_b32 s10, s2, s10
	s_and_b32 s9, s2, s9
	s_and_b32 s8, s2, s8
	.loc	1 204 29 is_stmt 1              ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[68:69], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[70:71], v[79:80], v[112:119] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[77:78], v[112:119] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[81:82], v[112:119] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v68, v112
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v69, v113
	v_mov_b32_e32 v130, v107
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v107, s13, v91
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v70, v114
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v71, v115
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s11, v107, v96
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v112, v117
	v_dual_mul_f32 v69, v60, v69 :: v_dual_mul_f32 v68, v97, v68
	v_dual_mul_f32 v114, v62, v114 :: v_dual_mul_f32 v113, v61, v113
	v_dual_mul_f32 v71, v62, v71 :: v_dual_mul_f32 v70, v61, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_dual_mul_f32 v112, v60, v112 :: v_dual_mul_f32 v107, v97, v107
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s11, s2, s11
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s13, s13, 16
	s_cmp_lt_i32 s13, s45
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v117, 16, v126
	v_lshlrev_b32_e32 v115, 16, v124
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v71, v71, v109 :: v_dual_lshlrev_b32 v118, 16, v127
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v119, 16, v128
	v_lshlrev_b32_e32 v116, 16, v125
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v109, v113, v118 :: v_dual_lshlrev_b32 v120, 16, v129
	v_mul_f32_e32 v69, v69, v115
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v71, 0xff800000, v71, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v109, 0xff800000, v109, s9
	v_cndmask_b32_e64 v69, 0xff800000, v69, s6
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v70, v70, v72
	v_dual_mul_f32 v72, v107, v120 :: v_dual_mul_f32 v107, v112, v119
	v_mul_f32_e32 v68, v68, v116
	v_mul_f32_e32 v112, v114, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v70, 0xff800000, v70, s5
	v_cndmask_b32_e64 v72, 0xff800000, v72, s11
	v_cndmask_b32_e64 v113, 0xff800000, v107, s10
	v_cndmask_b32_e64 v68, 0xff800000, v68, s7
	v_cndmask_b32_e64 v112, 0xff800000, v112, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v114, v71, v72, v113
	v_max3_f32 v107, v68, v69, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v115, v109, v112
	v_max3_f32 v107, v107, v114, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v114, v107, s16, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v107, v130, v107, v114
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v68, v68, v107
	v_sub_f32_e32 v69, v69, v107
	v_sub_f32_e32 v113, v113, v107
	v_sub_f32_e32 v70, v70, v107
	v_sub_f32_e32 v112, v112, v107
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v112, v112
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v68, 0, v68, s7
	v_cndmask_b32_e64 v69, 0, v69, s6
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v71, v71, v107
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v113, 0, v113, s10
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v109, v109, v107
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v70, 0, v70, s5
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp62:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v112, 0, v112, s8
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v109, v109
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v109, 0, v109, s9
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_sub_f32_e32 v72, v72, v107
.Ltmp63:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v71, v109, v112
.Ltmp64:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp66:
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v72, v113
	v_add_f32_e32 v69, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v71, v59 :: v_dual_add_f32 v68, v68, v69
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v69, v68, s16, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v72, v130, v107 :: v_dual_add_f32 v59, v68, v69
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v70, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v59, v71, v70
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v107, 0xff800000
	v_mov_b32_e32 v59, 0
.LBB0_7:                                ; %Flow144
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v59
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v46, v54 :: v_dual_and_b32 v3, 31, v0
	s_load_b32 s46, s[0:1], 0x74
.Ltmp71:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v109, v111, 5, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 32, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v59
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v4, s30, v3
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v2, v59, v2
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v43, v51 :: v_dual_and_b32 v112, 7, v0
.Ltmp73:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v2, v2
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v66, v44, v52 :: v_dual_add_f32 v67, v45, v53
.Ltmp75:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v114, v42, 1, 0
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v47, v55 :: v_dual_add_f32 v70, v48, v56
	v_dual_add_f32 v71, v49, v57 :: v_dual_add_f32 v72, v50, v58
.Ltmp77:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v1, v2, v1 :: v_dual_mov_b32 v8, 0
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s36, s20
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.h, 0
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v107, v1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.l, v38.h
	v_mov_b16_e32 v4.l, v37.h
	v_mov_b16_e32 v5.l, v39.h
	v_mov_b16_e32 v4.h, v7.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e32 v107, 0, v1, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v3, 2, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v110
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v3, s31, v3
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_mov_b16_e32 v5.h, v7.h
	v_cmp_o_f32_e64 s5, v37, v37
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s0
	v_add_lshl_u32 v3, v3, s30, 2
	v_add_nc_u32_e32 v2, 0, v41
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s0, v39, v39
	v_mov_b16_e32 v41.l, v33.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_lshl_add_u32 v2, v110, 1, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_mov_b16_e32 v41.h, v7.h
	v_add3_u32 v5, v39, v5, 0x7fff
	v_lshlrev_b32_e32 v113, 4, v112
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v2, 28, v0
	s_mov_b32 s47, 0
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v45, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v43, v8 :: v_dual_add_nc_u32 v2, v109, v2
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v58, v8
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[36:39], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v114, v[65:68]
	ds_store_b128 v114, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v6, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v7
	v_mov_b16_e32 v7.l, v40.h
	v_and_b32_e32 v2, 1, v4
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
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
	v_mov_b32_e32 v41, v8
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
	v_xor_b32_e32 v11, v84, v42
	v_add3_u32 v16, v9, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v9.h, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_add_nc_u32_e32 v7, 0, v11
	v_lshlrev_b32_e32 v12, 7, v73
	v_lshlrev_b32_e32 v15, 6, v110
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v7, v[1:2], v[5:6] offset1:2
	v_xad_u32 v11, 0x240, v11, 0
	v_or3_b32 v1, v12, v15, v113
	v_cndmask_b16 v9.l, 0x7fff, v16.h, s0
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
	ds_load_b128 v[49:52], v4
	ds_load_b128 v[53:56], v1
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
	v_mov_b32_e32 v42, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s12
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v114, v[65:68]
	ds_store_b128 v114, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.8:                                ; %.lr.ph14
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v2, 12, v0
	v_xor_b32_e32 v6, v84, v108
	v_mov_b32_e32 v65, 0
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v1, 3, v112
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v4, 3, v0
	v_cndmask_b32_e64 v7, 0x1054, v7, s4
	v_add_nc_u32_e32 v112, 0, v6
	v_dual_mov_b32 v62, v65 :: v_dual_lshlrev_b32 v5, 1, v2
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v8, v109, v83, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_mov_b32_e32 v60, v65
	v_lshl_or_b32 v108, v73, 5, v5
	v_mov_b32_e32 v5, 0x7632
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[83:84], null, s27, v4, v[1:2]
	v_lshlrev_b32_e32 v4, 9, v111
	v_dual_mov_b32 v58, v65 :: v_dual_lshlrev_b32 v3, 4, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x3276, v5, s4
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v109, v8
	v_dual_mov_b32 v64, v65 :: v_dual_and_b32 v11, 24, v0
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	v_lshl_or_b32 v5, v5, 8, v5
	v_dual_mov_b32 v44, v65 :: v_dual_and_b32 v7, 0x540054, v7
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s46, v3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s0, s27, v1
	v_dual_mov_b32 v42, v65 :: v_dual_lshlrev_b32 v1, 1, v11
	v_lshl_or_b32 v11, v11, 6, v113
	v_dual_mov_b32 v46, v65 :: v_dual_and_b32 v5, 0x760076, v5
	v_or3_b32 v84, v2, v4, v3
	v_lshl_or_b32 v3, v7, 4, v7
	v_xor_b32_e32 v8, 8, v108
	v_xor_b32_e32 v9, 16, v108
	v_xor_b32_e32 v10, 24, v108
	v_xor_b32_e32 v1, v11, v1
	v_lshl_add_u32 v2, v110, 2, 0
	v_lshl_or_b32 v4, v5, 4, v5
	v_xor_b32_e32 v5, 16, v84
	v_xor_b32_e32 v7, 32, v84
	v_xor_b32_e32 v11, 48, v84
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v110, 0x5040504, v3
	v_lshlrev_b32_e32 v3, 5, v0
	v_dual_mov_b32 v48, v65 :: v_dual_and_b32 v111, 0x7060706, v4
	v_lshl_add_u32 v0, v73, 1, 0
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v113, 0, v8
	v_dual_mov_b32 v61, v65 :: v_dual_add_nc_u32 v114, 0, v9
	v_dual_mov_b32 v14, v65 :: v_dual_add_nc_u32 v115, 0, v10
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v116, v2, v1
	v_dual_mov_b32 v16, v65 :: v_dual_add_nc_u32 v117, 0, v5
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v118, 0, v7
	v_dual_mov_b32 v2, v65 :: v_dual_add_nc_u32 v119, 0, v11
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v4, v65
	v_mov_b32_e32 v10, v65
	v_dual_mov_b32 v11, v65 :: v_dual_add_nc_u32 v120, 0, v3
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	s_and_b32 s37, s15, 0xffff
	s_and_b32 s41, s19, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s14
	s_mov_b32 s40, s18
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_mov_b32 s21, 0x76543210
.LBB0_9:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s1, s47, s44
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v140, s47, v87
	v_or_b32_e32 v141, s47, v94
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v148, s1, v88
	v_mad_u64_u32 v[130:131], null, s1, s27, v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s13, v140, v96
	v_cmp_le_i32_e64 s12, v141, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[140:141], null, v148, s26, v[74:75]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v68, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v142, s47, v95
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v131, 1, v130
	v_add_lshl_u32 v130, v130, s34, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v143, s47, v93
	v_or_b32_e32 v144, s47, v91
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v140, 0x80000000, v140, s3
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v145, s47, v92
	v_or_b32_e32 v146, s47, v89
	v_or_b32_e32 v147, s47, v90
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[148:149], v140, s[36:39], 0 offen
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v121, v98, s47, 1
	v_add_lshl_u32 v122, v99, s47, 1
	v_add_lshl_u32 v123, v100, s47, 1
	v_add_lshl_u32 v125, v102, s47, 1
	v_add_lshl_u32 v126, v103, s47, 1
	v_add_lshl_u32 v124, v101, s47, 1
	v_add_lshl_u32 v127, v104, s47, 1
	v_add_lshl_u32 v128, v105, s47, 1
	v_add_lshl_u32 v129, v106, s47, 1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s11, v142, v96
	v_cmp_le_i32_e64 s6, v143, v96
	v_cmp_le_i32_e64 s7, v144, v96
	v_cmp_le_i32_e64 s8, v145, v96
	v_cmp_le_i32_e64 s9, v146, v96
	v_cmp_le_i32_e64 s10, v147, v96
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v73, 0, v108
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v156, 0, v84
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s2, s13
	s_and_b32 s12, s2, s12
	s_and_b32 s11, s2, s11
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s47, s47, 16
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v112, v[148:149]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[140:143], v131, s[28:31], 0 offen
	buffer_load_b128 v[144:147], v130, s[28:31], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v130, v121, s[40:43], 0 offen
	buffer_load_u16 v157, v122, s[40:43], 0 offen
	buffer_load_u16 v158, v123, s[40:43], 0 offen
	buffer_load_u16 v159, v124, s[40:43], 0 offen
	buffer_load_u16 v160, v125, s[40:43], 0 offen
	buffer_load_u16 v131, v126, s[40:43], 0 offen
	buffer_load_u16 v126, v127, s[40:43], 0 offen
	buffer_load_u16 v123, v128, s[40:43], 0 offen
	buffer_load_u16 v125, v129, s[40:43], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[127:128], v73
	ds_load_b64 v[150:151], v113
	ds_load_b64 v[152:153], v114
	ds_load_b64 v[154:155], v115
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v129, 15, v148
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v139, v72 :: v_dual_mov_b32 v138, v71
	v_dual_mov_b32 v137, v70 :: v_dual_mov_b32 v136, v69
	v_dual_mov_b32 v135, v68 :: v_dual_mov_b32 v134, v67
	v_dual_mov_b32 v133, v66 :: v_dual_mov_b32 v132, v65
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v121.l, v148.l, 15
	v_and_b16 v121.h, v148.h, 15
	v_and_b16 v122.l, v149.l, 15
	v_and_b16 v122.h, v149.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v124, 8, v149
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v121.l
	v_cmp_lt_u16_e64 s4, 7, v121.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v121, 24, v149
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v122.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v121.h, 4, v148.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s14, 7, v122.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v124.h, 4, v149.l
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v116, v[140:143]
	s_waitcnt vmcnt(9)
	ds_store_b128 v116, v[144:147] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[144:147], v117
	ds_load_b128 v[140:143], v156
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[132:139], v[140:147], v[17:24], v[132:139]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[144:147], v119
	ds_load_b128 v[140:143], v118
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[132:139], v[140:147], v[25:32], v[132:139]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[140:143], v156 offset:64
	ds_load_b128 v[144:147], v117 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[132:139], v[140:147], v[33:40], v[132:139]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[140:143], v118 offset:64
	ds_load_b128 v[144:147], v119 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[132:139], v[140:147], v[49:56], v[132:139]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v132, v109
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[140:147], v[127:128], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[127:128], 24, v[148:149]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v135, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v135, v148, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[140:147], v[150:151], v[79:80], v[140:147] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v137, v109
	v_sub_f32_e32 v66, v138, v109
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v132, v148, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v137.l, v148.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[140:147], v[152:153], v[77:78], v[140:147] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v138, v149, v148, 24
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v151, v148, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v152, v148, 20, 4
	.loc	1 305 30 is_stmt 0              ; attention_backward.py:305:30
	v_lshrrev_b16 v128.l, 4, v127.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[140:147], v[154:155], v[81:82], v[140:147] neg_lo:[1,1,0]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v122.l, v127.l, 15
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v72, v133, v109
	v_sub_f32_e32 v71, v134, v109
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v134, v149, 16, 4
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v69, v136, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v136, 8, v148
	v_bfe_i32 v148, v127, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v127.l, v135.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v133, 15, v149
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v122.h, v136.l, 15
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s16, 0, v127.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v127, -16, v129
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v67, v139, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v149, 0, 8
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v153, v149, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s17, 7, v122.l
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v135, v129, v127, s1
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v122.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v127, -16, v132
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v122.h, v124.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v134
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v155, v149, 24, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v150.l, v149.h
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v132, v132, v127, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v127, -16, v133
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v122.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v122.h, v121.l, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v154, v149, 20, 4
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v127, v133, v127, s5
	v_cndmask_b32_e64 v133, v134, v129, s14
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s14, 7, v122.h
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v129.l, v139.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v151
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v129.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v129, v151, v122, s1
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v153
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v144, v97, v144
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v134, v153, v122, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v155
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v131, v144, v131, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v144, v97, v145
	v_mul_f32_e32 v145, v97, v146
	v_dual_mul_f32 v147, v97, v147 :: v_dual_lshlrev_b32 v126, 16, v126
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v139, v155, v122, s14
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v122, v137, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v131, v131
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v145, v145, v123, -v107
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s18, 0, v122.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v122, v150, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s19, 0, v122.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v122, v136, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s15, 0, v122.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v122, v124, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v122.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v122, v121, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v122.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v122, 15, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v137, -16, v122
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v137, v122, v137, s17
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v122.l, v148.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s14, 0, v122.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v122, -16, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v138, v152, v122, s18
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v122, -16, v154
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v148, v154, v122, s19
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v122, v97, v140
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v140, 16, v157
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v148, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v140, v122, v140, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v122, v97, v141 :: v_dual_lshlrev_b32 v141, 16, v158
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v141, v122, v141, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v122, v97, v142
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v142, 16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v142, v122, v142, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v122, v97, v143 :: v_dual_lshlrev_b32 v143, 16, v160
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v143, v122, v143, -v107
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v121.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v122.h, 0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v121.h, 4, v136.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v123, -16, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v136.h, v122.h
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v123, v122, v123, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v146, v123
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v123, 16, v130
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v144, v144, v126, -v107
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v126.h, v122.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v130, v146, v123
	v_mul_f32_e32 v137, v137, v123
	v_mul_f32_e32 v135, v135, v123
	v_mul_f32_e32 v132, v132, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v129, v129, v123 :: v_dual_cndmask_b32 v130, 0, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v137, 0, v137 :: v_dual_mul_f32 v138, v138, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v149, 0, v132, vcc_lo
	v_cndmask_b32_e32 v135, 0, v135, vcc_lo
	v_mov_b16_e64 v122.l, v130.h
	v_cmp_o_f32_e64 s16, v130, v130
	v_dual_cndmask_b32 v138, 0, v138 :: v_dual_cndmask_b32 v129, 0, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v136.l, v135.h
	v_and_b32_e32 v146, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v121.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v126.l, v138.h
	v_cmp_o_f32_e64 s17, v135, v135
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v127, v127, v123 :: v_dual_and_b32 v132, 1, v136
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v130, v130, v146, 0x7fff
	v_and_b32_e32 v126, 1, v126
	v_cmp_o_f32_e64 s20, v129, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v132, v135, v132, 0x7fff
	v_cmp_o_f32_e64 s18, v138, v138
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v125, v147, v125, -v107
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v135, v138, v126, 0x7fff
	v_cndmask_b16 v126.h, 0x7fff, v130.h, s16
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v130, -16, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v126.l, 0x7fff, v132.h, s17
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v125, v125
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v128.h, 0x7fff, v135.h, s18
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s16, s2, s10
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v130, v122, v130, s15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v129.h
	v_mov_b16_e64 v147.h, v122.h
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s15, s2, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s17, v149, v149
	v_mov_b16_e64 v146.h, v122.h
	v_and_b32_e32 v132, 1, v122
	v_mov_b16_e64 v122.l, v149.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v148, v148, v123
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v125, 0, v125, s16
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v138.h, v122.h
	v_add3_u32 v129, v129, v132, 0x7fff
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v140
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v135, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v128.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v140.h, v122.h
	v_cmp_o_f32_e64 s10, v137, v137
	v_mov_b16_e32 v121.h, v122.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v125, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v149, v135, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v132, 0, v132, s13
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v148, 0, v148, vcc_lo
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s13, s2, s8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v128.l, 0x7fff, v125.h, s17
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s35, v67
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v132, v73
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v141
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v147.l, v148.h
	v_cmp_o_f32_e64 s19, v148, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s35, v73
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v132, 0, v132, s12
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s12, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v131, 0, v131, s12
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s12, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v72, v132, v72
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v142.h, v122.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v131, v69
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s35, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v132, 0, v132, s11
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s11, s2, s6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s16, v69, v69
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s47, s45
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v141, v132, v71
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v132, v133
	v_cvt_f32_i32_e32 v133, v134
	v_cvt_f32_i32_e32 v134, v139
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v139, v143
	v_exp_f32_e32 v143, v144
	v_exp_f32_e32 v144, v145
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v145, 0, v127, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v132, v132, v123
	v_mul_f32_e32 v133, v133, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v136, 1, v147
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v134, v134, v123 :: v_dual_mul_f32 v131, s35, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v147, 0, v132, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v127, 0, v139, s11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v132, 0, v143, s13
	v_cndmask_b32_e64 v139, 0, v144, s15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v133, 0, v133, vcc_lo
	v_add3_u32 v136, v148, v136, 0x7fff
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v127, v68
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v127, v130
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v132, v70
	v_mul_f32_e32 v66, v139, v66
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v71.l, 4, v124.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v132.h, 0x7fff, v136.h, s19
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v130, v127, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v127.l, 0x7fff, v129.h, s20
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v129, -16, v122
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v66, s35, v66
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v136, v131, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e32 v130, 0, v130, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s19, v67, v67
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v125, v122, v129, s14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v137.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v72, s35, v72
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v146.l, v130.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s35, v68
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v129, v73, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_and_b32_e32 v139, 1, v122
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v135, v72, 16, 1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v124.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v141, 1, v146
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v124, v68, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v70, s35, v70
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s13, v72, v72
	v_cmp_o_f32_e64 s14, v131, v131
	v_cmp_o_f32_e64 s15, v68, v68
	v_add3_u32 v73, v73, v129, 0x7fff
	v_bfe_u32 v129, v69, 16, 1
	v_add3_u32 v72, v72, v135, 0x7fff
	v_add3_u32 v131, v131, v136, 0x7fff
	v_bfe_u32 v136, v66, 16, 1
	v_add3_u32 v68, v68, v124, 0x7fff
	v_bfe_u32 v124, v67, 16, 1
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v123
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v135, v70, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v130, v130
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s17, v70, v70
	v_cmp_o_f32_e64 s18, v66, v66
	v_add3_u32 v69, v69, v129, 0x7fff
	v_add3_u32 v70, v70, v135, 0x7fff
	v_add3_u32 v66, v66, v136, 0x7fff
	v_add3_u32 v67, v67, v124, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v124, v130, v141, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v130, -16, v122
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s12
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s13
	v_cndmask_b16 v73.l, 0x7fff, v131.h, s14
	v_cndmask_b16 v73.h, 0x7fff, v68.h, s15
	v_cndmask_b16 v131.l, 0x7fff, v69.h, s16
	v_cndmask_b16 v131.h, 0x7fff, v70.h, s17
	v_cndmask_b16 v135.l, 0x7fff, v66.h, s18
	v_cndmask_b16 v135.h, 0x7fff, v67.h, s19
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v127.h, 0x7fff, v124.h, s11
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v68, v122, v130, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v145.h
	v_cndmask_b32_e32 v124, 0, v125, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v67, v72, s21, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v73, s21, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v125, v131, s21, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v130, v135, s21, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v136, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v71.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v138.l, v124.h
	v_add3_u32 v129, v137, v139, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v66, v67, v72, v110
	v_perm_b32 v67, v67, v72, v111
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v137, v68
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v69, v73, v110
	v_perm_b32 v69, v69, v73, v111
	v_perm_b32 v70, v125, v131, v110
	v_perm_b32 v71, v125, v131, v111
	v_perm_b32 v72, v130, v135, v110
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v125, -16, v122
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v73, v130, v135, v111
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v135, 1, v138
	v_cmp_o_f32_e64 s9, v145, v145
	v_cmp_o_f32_e64 s5, v124, v124
	v_add3_u32 v131, v145, v136, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v125, v122, v125, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v133.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v130, v137, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v124, v124, v135, 0x7fff
	v_cndmask_b16 v129.l, 0x7fff, v129.h, s10
	v_cndmask_b32_e32 v134, 0, v134, vcc_lo
	v_cmp_o_f32_e64 s8, v133, v133
	v_cndmask_b32_e32 v136, 0, v130, vcc_lo
	v_cndmask_b16 v130.l, 0x7fff, v131.h, s9
	v_and_b32_e32 v131, 1, v122
	v_mov_b16_e64 v122.l, v147.h
	v_cndmask_b16 v129.h, 0x7fff, v124.h, s5
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v124, v125
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v147, v147
	v_add3_u32 v131, v133, v131, 0x7fff
	v_and_b32_e32 v135, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v122.l, 4, v121.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v124, v124, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v120, v[126:129]
	v_cndmask_b16 v131.l, 0x7fff, v131.h, s8
	v_cmp_o_f32_e64 s6, v134, v134
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v126, -16, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v124, 0, v124, vcc_lo
	v_add3_u32 v127, v147, v135, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v121.l, v124.h
	v_cndmask_b16 v132.l, 0x7fff, v127.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v121, 1, v121
	v_mov_b16_e64 v140.l, v136.h
	v_cmp_o_f32_e64 s4, v136, v136
	v_and_b32_e32 v125, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v125, v136, v125, 0x7fff
	v_cndmask_b16 v130.h, 0x7fff, v125.h, s4
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v125, v122, v126, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v134.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v125
	v_dual_mul_f32 v123, v125, v123 :: v_dual_and_b32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v122, v134, v122, 0x7fff
	v_cndmask_b32_e32 v123, 0, v123, vcc_lo
	v_cmp_o_f32_e64 s1, v124, v124
	v_add3_u32 v121, v124, v121, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v133.l, 0x7fff, v122.h, s6
	v_mov_b16_e64 v142.l, v123.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v131.h, 0x7fff, v121.h, s1
	v_cmp_o_f32_e64 s1, v123, v123
	v_and_b32_e32 v121, 1, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v121, v123, v121, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v121.h, s1
	ds_store_b128 v120, v[130:133] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v121, v0
	ds_load_u16_d16 v124, v0 offset:768
	ds_load_u16_d16 v125, v0 offset:1024
	ds_load_u16_d16 v126, v0 offset:1280
	ds_load_u16_d16 v127, v0 offset:1536
	ds_load_u16_d16 v128, v0 offset:1792
	ds_load_u16_d16 v123, v0 offset:512
	ds_load_u16_d16 v122, v0 offset:256
	ds_load_u16_d16 v130, v0 offset:608
	ds_load_u16_d16 v129, v0 offset:352
	ds_load_u16_d16 v138, v0 offset:576
	ds_load_u16_d16 v139, v0 offset:832
	ds_load_u16_d16 v140, v0 offset:1088
	ds_load_u16_d16 v141, v0 offset:1344
	ds_load_u16_d16 v142, v0 offset:1600
	ds_load_u16_d16 v143, v0 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v121, v0 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v124, v0 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v125, v0 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v126, v0 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v127, v0 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v128, v0 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v123, v0 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v122, v0 offset:384
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[121:128], v[66:73], v[57:64]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v145, v0 offset:288
	ds_load_u16_d16 v144, v0 offset:32
	ds_load_u16_d16 v136, v0 offset:64
	ds_load_u16_d16 v137, v0 offset:320
	ds_load_u16_d16 v128, v0 offset:96
	ds_load_u16_d16 v146, v0 offset:544
	ds_load_u16_d16 v131, v0 offset:864
	ds_load_u16_d16 v132, v0 offset:1120
	ds_load_u16_d16 v133, v0 offset:1376
	ds_load_u16_d16 v134, v0 offset:1632
	ds_load_u16_d16 v147, v0 offset:800
	ds_load_u16_d16 v135, v0 offset:1888
	ds_load_u16_d16 v148, v0 offset:1056
	ds_load_u16_d16 v149, v0 offset:1312
	ds_load_u16_d16 v150, v0 offset:1568
	ds_load_u16_d16 v151, v0 offset:1824
	ds_load_u16_d16_hi v129, v0 offset:480
	ds_load_u16_d16_hi v138, v0 offset:704
	ds_load_u16_d16_hi v139, v0 offset:960
	ds_load_u16_d16_hi v140, v0 offset:1216
	ds_load_u16_d16_hi v141, v0 offset:1472
	ds_load_u16_d16_hi v142, v0 offset:1728
	ds_load_u16_d16_hi v143, v0 offset:1984
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v144, v0 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v136, v0 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v128, v0 offset:224
	ds_load_u16_d16_hi v145, v0 offset:416
	ds_load_u16_d16_hi v137, v0 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v146, v0 offset:672
	ds_load_u16_d16_hi v130, v0 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v147, v0 offset:928
	ds_load_u16_d16_hi v131, v0 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v0 offset:1184
	ds_load_u16_d16_hi v132, v0 offset:1248
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v149, v0 offset:1440
	ds_load_u16_d16_hi v133, v0 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v150, v0 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v151, v0 offset:1952
	ds_load_u16_d16_hi v134, v0 offset:1760
	ds_load_u16_d16_hi v135, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[136:143], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[144:151], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[128:135], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_9
.LBB0_10:                               ; %._crit_edge15
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s46, v85
	s_mul_i32 s4, s46, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s46, v87
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v87
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v87
	v_or_b32_e32 v18, 48, v87
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s46, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 62, v86
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v87, 2
	v_add_lshl_u32 v23, v21, v94, 2
	v_add_lshl_u32 v24, v21, v95, 2
	v_add_lshl_u32 v25, v21, v89, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_add_lshl_u32 v26, v21, v90, 2
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_clause 0x2
	buffer_store_b32 v57, v22, s[24:27], 0 offen
	buffer_store_b32 v58, v23, s[24:27], 0 offen
	buffer_store_b32 v59, v24, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v93, 2
	v_add_lshl_u32 v23, v21, v91, 2
	v_add_lshl_u32 v24, v21, v92, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s46, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_add_lshl_u32 v19, v21, v19, 2
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v20, v21, v20, 2
	s_clause 0x4
	buffer_store_b32 v60, v22, s[24:27], 0 offen
	buffer_store_b32 v61, v23, s[24:27], 0 offen
	buffer_store_b32 v62, v24, s[24:27], 0 offen
	buffer_store_b32 v63, v25, s[24:27], 0 offen
	buffer_store_b32 v64, v26, s[24:27], 0 offen
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
	buffer_store_b32 v41, v20, s[24:27], 0 offen
	buffer_store_b32 v42, v22, s[24:27], 0 offen
	buffer_store_b32 v43, v23, s[24:27], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v44, v24, s[24:27], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v45, v20, s[24:27], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s46, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v46, v20, s[24:27], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v47, v22, s[24:27], 0 offen
	buffer_store_b32 v48, v23, s[24:27], 0 offen
	buffer_store_b32 v9, v19, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v0
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x98, v0
	v_add_nc_u32_e32 v22, 0xa0, v0
	v_add_nc_u32_e32 v23, 0xa8, v0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v19, s[24:27], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	buffer_store_b32 v11, v9, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v12, v10, s[24:27], 0 offen
	buffer_store_b32 v13, v19, s[24:27], 0 offen
	buffer_store_b32 v14, v20, s[24:27], 0 offen
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
	buffer_store_b32 v15, v9, s[24:27], 0 offen
	buffer_store_b32 v16, v10, s[24:27], 0 offen
	buffer_store_b32 v1, v11, s[24:27], 0 offen
	buffer_store_b32 v2, v12, s[24:27], 0 offen
	buffer_store_b32 v3, v13, s[24:27], 0 offen
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
	buffer_store_b32 v4, v1, s[24:27], 0 offen
	buffer_store_b32 v5, v2, s[24:27], 0 offen
	buffer_store_b32 v6, v3, s[24:27], 0 offen
	buffer_store_b32 v7, v0, s[24:27], 0 offen
	buffer_store_b32 v8, v9, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp78:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 161
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 161
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10344
; TotalNumSgprs: 50
; NumVgprs: 161
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 161
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
	.quad	.Ltmp58                         ; DW_AT_low_pc
	.long	.Ltmp60-.Ltmp58                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp58                         ; DW_AT_low_pc
	.long	.Ltmp59-.Ltmp58                 ; DW_AT_high_pc
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     161
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
