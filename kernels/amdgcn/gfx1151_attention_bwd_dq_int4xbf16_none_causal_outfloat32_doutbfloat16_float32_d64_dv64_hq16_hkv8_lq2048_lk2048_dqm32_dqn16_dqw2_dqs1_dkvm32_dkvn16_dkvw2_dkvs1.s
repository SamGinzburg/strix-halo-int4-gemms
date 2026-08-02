	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[30:31], s[0:1], 0x78
.Ltmp0:
	.loc	1 139 44 prologue_end           ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v38, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v67, 1, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s12, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v66, 32, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v38
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s12, v67
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s13, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v66
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s12, s13
	s_mov_b32 s19, 0x31027000
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s33, v67
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v5, 3, v0
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v40, 7, v0
	s_load_b32 s5, s[0:1], 0xa0
	v_mov_b16_e32 v59.l, 0
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s30, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s12, v5
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v5, s31, v5
	s_mul_i32 s4, s31, s33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v63.l, v59.l
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v65, 15, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s17, s21, 0xffff
	s_mov_b32 s16, s20
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v84, v0, 4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v13, s31, 4, v5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v83, v2, v65
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s30, v3, v[1:2]
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v62.l, v59.l
	v_mov_b16_e32 v61.l, v59.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v39, s12, v83
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v1, s33, v83
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x80
	s_load_b64 s[28:29], s[0:1], 0x58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.l, v59.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v39
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v6, 1, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v7
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v7, s31, 3, v5
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v2, s[16:19], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s17, s27, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_mov_b32 s16, s26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v76, 7, v65
	v_mov_b16_e32 v73.l, v59.l
	v_mov_b16_e32 v64.l, v59.l
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v58, v6, s[16:19], 0 offen
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v6, 3, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s17, s37, 0xffff
	s_mov_b32 s16, s36
	s_load_b64 s[36:37], s[0:1], 0x20
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v104, s5, v39
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s15, s31, v6
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[21:22], null, s31, 24, v[5:6]
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v71.l, v59.l
	v_mov_b16_e32 v106.l, v59.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s15
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v86, v7, v6
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v107.l, v59.l
	v_mov_b16_e32 v80.l, v59.l
	v_mov_b16_e32 v82.l, v59.l
	v_mov_b16_e32 v108.l, v59.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v33, s4, v86
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v109.l, v59.l
	v_mov_b16_e32 v110.l, v59.l
	v_mov_b16_e32 v111.l, v59.l
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v87, 2, v0
	v_or_b32_e32 v94, 2, v84
	v_or_b32_e32 v93, 4, v84
	v_or_b32_e32 v92, 6, v84
	v_or_b32_e32 v91, 8, v84
	v_or_b32_e32 v89, 10, v84
	v_or_b32_e32 v90, 12, v84
	v_or_b32_e32 v88, 14, v84
	s_mov_b64 s[44:45], s[42:43]
	s_mov_b32 s20, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v58
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v8, s4, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v23, 4, v8
	v_add_nc_u32_e32 v41, v8, v13
	v_add_nc_u32_e32 v50, v8, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v8, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v21, v23, v21, 2
	v_add_lshl_u32 v7, v23, v7, 2
	v_add_lshl_u32 v25, v23, v13, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v14, 0x80000000, v8 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	v_dual_cndmask_b32 v34, 0x80000000, v21 :: v_dual_add_nc_u32 v85, v5, v6
	v_add_lshl_u32 v5, v23, v5, 2
	v_cndmask_b32_e32 v17, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[13:16], v14, s[16:19], 0 offen
	buffer_load_b128 v[17:20], v17, s[16:19], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s4, v85
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v6, 2, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v29, 1, v22
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	s_add_i32 s4, s3, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[5:8], v6, s[16:19], 0 offen
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	v_lshlrev_b32_e32 v24, 2, v41
	v_lshlrev_b32_e32 v26, 2, v50
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v42, 0x80000000, v29, vcc_lo
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s6, s4, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s4, s4, 10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v24 :: v_dual_cndmask_b32 v30, 0x80000000, v26
	s_clause 0x3
	buffer_load_b128 v[21:24], v23, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v25, s[16:19], 0 offen
	buffer_load_b128 v[29:32], v30, s[16:19], 0 offen
	buffer_load_b128 v[34:37], v34, s[16:19], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s17, s39, 0xffff
	s_mov_b32 s16, s38
	v_lshlrev_b32_e32 v69, 4, v40
	s_clause 0x1
	buffer_load_b128 v[42:45], v42, s[16:19], 0 offen
	buffer_load_b128 v[46:49], v33, s[16:19], 0 offen
	v_lshlrev_b32_e32 v33, 1, v41
	v_lshlrev_b32_e32 v41, 1, v50
	v_lshlrev_b32_e32 v40, 6, v66
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s6
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s4, s4, 0xffffc000
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s6, s3, 0x10007
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v40, v76, v40, v69
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s6
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s6, s34, 0x3fb8aa3b
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[50:53], v33, s[16:19], 0 offen
	v_cndmask_b32_e32 v33, 0x80000000, v41, vcc_lo
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v114, v40, 32, 0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s3, s3, 10
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v116, v40, 64, 0
	buffer_load_b128 v[54:57], v33, s[16:19], 0 offen
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s21, s3, 0xfffff800
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s3, s12, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v118, 0x60, v40, 0
	v_xad_u32 v113, v40, 16, 0
	v_xad_u32 v115, v40, 48, 0
	v_xad_u32 v117, 0x50, v40, 0
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s3, s3, 32
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s21, s21, s4
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s7, s3, 0x800
	v_or_b32_e32 v95, s21, v87
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s7, s7, 15
	v_or_b32_e32 v96, s21, v84
	.loc	1 190 34 is_stmt 0              ; attention_backward.py:190:34
	s_ashr_i32 s8, s7, 31
	v_or_b32_e32 v97, s21, v94
	s_lshr_b32 s8, s8, 28
	v_or_b32_e32 v98, s21, v93
	s_add_i32 s7, s7, s8
	v_or_b32_e32 v99, s21, v92
	v_or_b32_e32 v100, s21, v91
	v_or_b32_e32 v101, s21, v89
	v_or_b32_e32 v102, s21, v90
	v_or_b32_e32 v103, s21, v88
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s35, s7, -16
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_gt_i32 s3, 0
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s3, 1
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v62.h, v43.l
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v121, 0xffff0000, v49
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v33, 1, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v61.h, v44.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v60, 16, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v119, 0xffff0000, v47
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v41, 56, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v75, v33, 30, v84
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v120, 0xffff0000, v48
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v60
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.h, v47.l
	v_mov_b16_e32 v59.h, v45.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v75, 2, v75
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v64.h, v49.l
	v_mov_b16_e32 v73.h, v46.l
	v_mov_b16_e32 v63.h, v42.l
	v_mov_b16_e32 v71.h, v48.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v76, 4, v75
	ds_bpermute_b32 v78, v75, v2
	ds_bpermute_b32 v81, v75, v3
	ds_bpermute_b32 v77, v75, v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v107.h, v50.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v2, v76, v2
	ds_bpermute_b32 v3, v76, v3
	ds_bpermute_b32 v1, v76, v1
	ds_bpermute_b32 v60, v76, v4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v106.h, v51.l
	v_mov_b16_e32 v80.h, v53.l
	v_mov_b16_e32 v82.h, v52.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v108.h, v57.l
	v_mov_b16_e32 v109.h, v56.l
	v_mov_b16_e32 v110.h, v55.l
	v_mov_b16_e32 v111.h, v54.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v76, v2, v78, s5
	v_cndmask_b32_e64 v78, v78, v2, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v2, 0xffff0000, v43
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v79, v3, v81, s5
	v_cndmask_b32_e64 v81, v81, v3, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v2, v8, v2 :: v_dual_and_b32 v3, 0xffff0000, v44
	v_dual_mul_f32 v8, v16, v119 :: v_dual_lshlrev_b32 v41, 1, v41
	v_mul_f32_e32 v3, v10, v3
	v_mul_f32_e32 v10, v18, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v2, v7, v62
	v_fmac_f32_e32 v8, v15, v72
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v38, v38, v41, 0
	ds_store_b128 v38, v[42:45]
	ds_store_b128 v38, v[46:49] offset:1024
	v_and_b32_e32 v44, 0xffff0000, v52
	v_and_b32_e32 v49, 0xffff0000, v57
	v_and_b32_e32 v43, 0xffff0000, v51
	v_and_b32_e32 v47, 0xffff0000, v55
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v3, v9, v61 :: v_dual_mul_f32 v18, v26, v44
.Ltmp4:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v58, v75, v4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v4, 0xffff0000, v45
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v75, v1, v77, s5
	v_cndmask_b32_e64 v77, v77, v1, s5
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v10, v17, v71
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v4, v12, v4 :: v_dual_and_b32 v71, 24, v67
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v45, 0xffff0000, v53
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v12, v20, v121
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v48, 0xffff0000, v56
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v18, v25, v82
	v_dual_fmac_f32 v4, v11, v59 :: v_dual_and_b32 v1, 0xffff0000, v42
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v20, v28, v45
	v_mul_f32_e32 v28, v37, v49
	v_mul_f32_e32 v16, v24, v43
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v105, s6, v39
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v24, v32, v47 :: v_dual_and_b32 v39, 0xffff0000, v46
	v_dual_mul_f32 v1, v6, v1 :: v_dual_and_b32 v42, 0xffff0000, v50
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v12, v19, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v6, v14, v39
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v16, v23, v106 :: v_dual_fmac_f32 v1, v5, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v14, v22, v42
	v_mul_f32_e32 v26, v35, v48
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v6, v13, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v20, v27, v80 :: v_dual_add_f32 v1, v1, v2
	v_add_f32_e32 v2, v3, v4
	v_add_f32_e32 v4, v10, v12
	v_dual_add_f32 v3, v6, v8 :: v_dual_fmac_f32 v14, v21, v107
	v_fmac_f32_e32 v24, v31, v110
	v_fmac_f32_e32 v26, v34, v109
	v_fmac_f32_e32 v28, v36, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v10, v3, v4
	v_add_f32_e32 v5, v14, v16
	v_add_f32_e32 v6, v18, v20
	v_dual_add_f32 v9, v1, v2 :: v_dual_and_b32 v68, 3, v0
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v14, v10
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v26, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v11, v5, v6 :: v_dual_lshlrev_b32 v70, 3, v0
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v13, v9 :: v_dual_lshlrev_b32 v74, 3, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v15, v11 :: v_dual_add_nc_u32 v112, 0, v40
.Ltmp17:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_store_b128 v38, v[50:53] offset:2048
	ds_store_b128 v38, v[54:57] offset:3072
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v10, v14
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v40, 0x70, v40, 0
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v34, v9, v13 :: v_dual_mov_b32 v39, v35
.Ltmp24:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v11, v15
.Ltmp26:
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s30, v74
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v38, v34
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v80, v60, v58, s5
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v36
.Ltmp30:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v82, v58, v60, s5
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v35, v39 :: v_dual_and_b32 v46, 0xffff0000, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v34, v38 :: v_dual_mov_b32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v22, v30, v46
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v36, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v46, v42
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v22, v29, v111
.Ltmp39:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[25:28], v118
	ds_load_b128 v[29:32], v40
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v48, v44
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v22, v24
.Ltmp42:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[17:20], v116
	ds_load_b128 v[21:24], v117
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v12, v7, v8
.Ltmp45:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[1:4], v112
	ds_load_b128 v[5:8], v113
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v12, v16
.Ltmp48:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[9:12], v114
	ds_load_b128 v[13:16], v115
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v45, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v37, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v49, v45
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v52, v105 :: v_dual_and_b32 v33, 24, v33
	v_xor_b32_e32 v35, v70, v71
	v_dual_mov_b32 v53, v105 :: v_dual_mov_b32 v34, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v51, v65, 5, v33
	v_dual_mov_b32 v54, v105 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v55, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v36, 8, v51
	v_xor_b32_e32 v37, 16, v51
	v_xor_b32_e32 v38, 24, v51
	s_and_b32 s17, s23, 0xffff
	s_mov_b32 s16, s22
	v_add_nc_u32_e32 v56, 0, v36
	v_add_nc_u32_e32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	s_and_b32 s49, s37, 0xffff
	s_mov_b32 s48, s36
	s_mov_b32 s26, 0x76543210
	s_mov_b32 s50, s18
	s_mov_b32 s51, s19
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	v_dual_mov_b32 v116, v34 :: v_dual_add_nc_u32 v35, s20, v95
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v40, v99, s20, 1
	v_add_lshl_u32 v39, v98, s20, 1
	v_add_lshl_u32 v38, v97, s20, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[35:36], null, v35, s30, v[74:75]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v37, v96, s20, 1
	v_add_lshl_u32 v61, v102, s20, 1
	v_add_lshl_u32 v62, v103, s20, 1
	v_add_lshl_u32 v59, v100, s20, 1
	v_add_lshl_u32 v60, v101, s20, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v123, 0, v51
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v118, s20, v92
	v_or_b32_e32 v117, s20, v93
	v_or_b32_e32 v119, s20, v91
	v_or_b32_e32 v120, s20, v89
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[35:36], v35, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v121, s20, v90
	v_or_b32_e32 v122, s20, v88
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v118, v104
	v_cmp_le_i32_e64 s3, v117, v104
	v_cmp_le_i32_e64 s10, v120, v104
	v_cmp_le_i32_e64 s9, v121, v104
	v_cmp_le_i32_e64 s8, v122, v104
	v_cmp_le_i32_e64 s11, v119, v104
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	s_and_b32 s9, s2, s9
	s_and_b32 s8, s2, s8
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	.loc	1 198 28 is_stmt 1              ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v63, v40, s[48:51], 0 offen
	buffer_load_u16 v64, v39, s[48:51], 0 offen
	buffer_load_u16 v72, v38, s[48:51], 0 offen
	buffer_load_u16 v73, v37, s[48:51], 0 offen
	buffer_load_u16 v62, v62, s[48:51], 0 offen
	buffer_load_u16 v61, v61, s[48:51], 0 offen
	buffer_load_u16 v114, v60, s[48:51], 0 offen
	buffer_load_u16 v115, v59, s[48:51], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v59, s20, v84
	v_or_b32_e32 v60, s20, v94
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v113, v40
	v_dual_mov_b32 v109, v36 :: v_dual_mov_b32 v108, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v111, v38 :: v_dual_mov_b32 v110, v37
	v_dual_mov_b32 v112, v39 :: v_dual_mov_b32 v107, v34
	v_mov_b32_e32 v106, v33
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s6, v60, v104
	v_cmp_le_i32_e64 s7, v59, v104
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v123
	ds_load_b64 v[36:37], v56
	ds_load_b64 v[38:39], v57
	ds_load_b64 v[59:60], v58
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s20, s20, 16
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s20, s35
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[34:35], v[75:76], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[36:37], v[79:80], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[38:39], v[77:78], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[59:60], v[81:82], v[106:113] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v34, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v107
	v_cvt_f32_i32_e32 v36, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v109
	v_cvt_f32_i32_e32 v38, v110
	v_cvt_f32_i32_e32 v39, v111
	v_cvt_f32_i32_e32 v40, v112
	v_cvt_f32_i32_e32 v59, v113
	v_dual_mul_f32 v35, v52, v35 :: v_dual_mul_f32 v34, v105, v34
	v_dual_mul_f32 v37, v54, v37 :: v_dual_mul_f32 v36, v53, v36
	v_mul_f32_e32 v39, v52, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v59, v54, v59 :: v_dual_mul_f32 v40, v53, v40
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v63
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v72
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v72, 16, v73
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v38, v105, v38
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v37, v37, v60 :: v_dual_lshlrev_b32 v62, 16, v62
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v34, v34, v72 :: v_dual_lshlrev_b32 v73, 16, v114
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v35, v35, v64 :: v_dual_lshlrev_b32 v106, 16, v115
	v_dual_mul_f32 v36, v36, v63 :: v_dual_mul_f32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, v39, v73 :: v_dual_mul_f32 v38, v38, v106
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v37, 0xff800000, v37, vcc_lo
	v_cndmask_b32_e64 v35, 0xff800000, v35, s6
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v40, v40, v61
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v36, 0xff800000, v36, s3
	v_cndmask_b32_e64 v60, 0xff800000, v34, s7
	v_cndmask_b32_e64 v59, 0xff800000, v59, s8
	v_cndmask_b32_e64 v39, 0xff800000, v39, s10
	v_cndmask_b32_e64 v38, 0xff800000, v38, s11
	v_cndmask_b32_e64 v40, 0xff800000, v40, s9
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v60, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v61, v37, v38, v39
	v_max_f32_e32 v62, v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v34, v61, v62
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v61, v34, s26, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v116, v34, v61
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v59, v59, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v37, v37
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v60, v60, v34
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v59, v59
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v39, v39, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v59, 0, v59, s8
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v116
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v38, v38, v34 :: v_dual_add_f32 v35, v60, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v39, 0, v39, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s11
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v36, v36, v34
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s3
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp57:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v40, v40, v34 :: v_dual_add_f32 v37, v38, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp59:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s9
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v36, v37, v38
	v_dual_mov_b32 v38, v50 :: v_dual_add_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v39, v116, v34 :: v_dual_add_f32 v50, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v50, v38, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v34, 0xff800000
	v_mov_b32_e32 v50, 0
.LBB0_4:                                ; %Flow141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v50
	s_load_b32 s48, s[0:1], 0x74
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v109, v43, v47 :: v_dual_and_b32 v36, 31, v0
.Ltmp64:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v50
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v50, v35
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v108, v42, v46 :: v_dual_add_f32 v111, v45, v49
.Ltmp66:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v110, v44, v48
	s_mov_b32 s42, 0x7ffffffe
.Ltmp68:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	v_lshrrev_b32_e32 v106, 4, v0
	s_mov_b32 s49, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v33, v35, v33 :: v_dual_mov_b32 v40, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v35, v65, 2, 0
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v38, v40 :: v_dual_add_nc_u32 v73, 0, v41
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v66, 1, v35
	v_dual_mov_b32 v39, v40 :: v_dual_and_b32 v72, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v107, 0, v33, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	v_mov_b32_e32 v37, v40
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v42, 1, v72
	v_mov_b32_e32 v35, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s12, v36
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v34, s13, v36
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v42, 0, v69, v42
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, v34, s12, 2
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	s_and_b32 vcc_lo, vcc_lo, s0
	v_dual_mov_b32 v36, v40 :: v_dual_cndmask_b32 v57, 0x80000000, v33
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v41, v57, s[40:43], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[108:111]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v58, v42
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
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
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s14
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v58, v57, s[44:47], 0 offen
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[108:111]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph45
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v34, 12, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v33, 4, v67
	v_lshrrev_b32_e32 v35, 2, v66
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v42, 9, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v36, 1, v34
	v_lshl_or_b32 v43, v72, 6, v69
	v_xor_b32_e32 v38, v70, v71
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s37, s37, 0xffff
	v_lshl_or_b32 v108, v65, 5, v36
	v_dual_mov_b32 v36, 0x7632 :: v_dual_add_nc_u32 v33, 0, v33
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s40, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v39, 16, v108
	v_cndmask_b32_e64 v36, 0x3276, v36, s5
	v_add3_u32 v33, v33, v35, v69
	v_mov_b32_e32 v35, 0x5410
	v_xor_b32_e32 v40, 24, v108
	s_mov_b32 s41, s23
	v_lshl_or_b32 v36, v36, 8, v36
	ds_load_b32 v109, v33
	v_cndmask_b32_e64 v35, 0x1054, v35, s5
	v_xor_b32_e32 v33, 8, v108
	v_mov_b32_e32 v49, 0
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	v_lshl_or_b32 v35, v35, 8, v35
	v_add_nc_u32_e32 v114, 0, v33
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	s_mov_b32 s22, 0x76543210
	v_and_b32_e32 v35, 0x540054, v35
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v35, 4, v35
	v_and_b32_e32 v111, 0x5040504, v35
	v_lshlrev_b32_e32 v35, 5, v0
	v_lshl_add_u32 v0, v65, 1, 0
	v_mov_b32_e32 v65, 0
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v37, 4, v68
	v_lshlrev_b32_e32 v34, 5, v34
	v_lshlrev_b32_e32 v41, 1, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v36, 0x760076, v36
	v_mov_b32_e32 v59, v65
	v_mov_b32_e32 v60, v65
	v_or3_b32 v110, v34, v42, v37
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s48, v37
	v_lshl_add_u32 v37, v66, 2, 0
	v_lshl_or_b32 v36, v36, 4, v36
	v_mov_b32_e32 v62, v65
	v_xor_b32_e32 v34, v43, v41
	v_xor_b32_e32 v41, 16, v110
	v_xor_b32_e32 v42, 32, v110
	v_xor_b32_e32 v43, 48, v110
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v112, 0x7060706, v36
	v_dual_mov_b32 v54, v65 :: v_dual_add_nc_u32 v113, 0, v38
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v115, 0, v39
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v116, 0, v40
	v_add_nc_u32_e32 v117, v37, v34
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v118, 0, v41
	v_add_nc_u32_e32 v119, 0, v42
	v_mov_b32_e32 v42, v65
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v120, 0, v43
	v_mov_b32_e32 v58, v65
	v_mov_b32_e32 v64, v65
	v_mov_b32_e32 v50, v65
	v_dual_mov_b32 v52, v65 :: v_dual_add_nc_u32 v121, 0, v35
	v_dual_mov_b32 v44, v65 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v46, v65
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_mov_b32_e32 v48, v65
	v_mov_b32_e32 v34, v65
	v_mov_b32_e32 v35, v65
	v_mov_b32_e32 v36, v65
	v_mov_b32_e32 v37, v65
	v_mov_b32_e32 v38, v65
	v_mov_b32_e32 v39, v65
	v_mov_b32_e32 v40, v65
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s0, s49, s21
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v131, s49, v84
	v_or_b32_e32 v132, s49, v94
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v147, s0, v87
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s1, s0, s31
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v145, s49, v90
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s13, v131, v104
	v_cmp_le_i32_e64 s12, v132, v104
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[131:132], null, v147, s30, v[74:75]
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v149, s1, v86, 1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s9, v145, v104
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v148, s1, v85, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v141, s49, v93
	v_or_b32_e32 v142, s49, v92
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v145, 0x80000000, v149, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v131, 0x80000000, v131, s4
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v143, s49, v91
	v_or_b32_e32 v144, s49, v89
	v_or_b32_e32 v146, s49, v88
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v132, 0x80000000, v148, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[149:150], v131, s[40:43], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v122, v95, s49, 1
	v_add_lshl_u32 v123, v96, s49, 1
	v_add_lshl_u32 v124, v97, s49, 1
	v_add_lshl_u32 v126, v99, s49, 1
	v_add_lshl_u32 v127, v100, s49, 1
	v_add_lshl_u32 v125, v98, s49, 1
	v_add_lshl_u32 v128, v101, s49, 1
	v_add_lshl_u32 v129, v102, s49, 1
	v_add_lshl_u32 v130, v103, s49, 1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s11, v141, v104
	v_cmp_le_i32_e64 s6, v142, v104
	v_cmp_le_i32_e64 s7, v143, v104
	v_cmp_le_i32_e64 s8, v144, v104
	v_cmp_le_i32_e64 s10, v146, v104
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v73, 0, v108
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v157, 0, v110
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s10, s2, s10
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s49, s49, 16
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v113, v[149:150]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[141:144], v132, s[24:27], 0 offen
	buffer_load_b128 v[145:148], v145, s[24:27], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v131, v122, s[36:39], 0 offen
	buffer_load_u16 v158, v123, s[36:39], 0 offen
	buffer_load_u16 v159, v124, s[36:39], 0 offen
	buffer_load_u16 v160, v125, s[36:39], 0 offen
	buffer_load_u16 v161, v126, s[36:39], 0 offen
	buffer_load_u16 v132, v127, s[36:39], 0 offen
	buffer_load_u16 v127, v128, s[36:39], 0 offen
	buffer_load_u16 v124, v129, s[36:39], 0 offen
	buffer_load_u16 v126, v130, s[36:39], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[128:129], v73
	ds_load_b64 v[151:152], v114
	ds_load_b64 v[153:154], v115
	ds_load_b64 v[155:156], v116
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v130, 15, v149
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v140, v72 :: v_dual_mov_b32 v139, v71
	v_dual_mov_b32 v138, v70 :: v_dual_mov_b32 v137, v69
	v_dual_mov_b32 v136, v68 :: v_dual_mov_b32 v135, v67
	v_dual_mov_b32 v134, v66 :: v_dual_mov_b32 v133, v65
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v122.l, v149.l, 15
	v_and_b16 v122.h, v149.h, 15
	v_and_b16 v123.l, v150.l, 15
	v_and_b16 v123.h, v150.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v125, 8, v150
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v122.l
	v_cmp_lt_u16_e64 s1, 7, v122.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v122, 24, v150
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v123.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v122.h, 4, v149.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v123.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v125.h, 4, v150.l
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v117, v[141:144]
	s_waitcnt vmcnt(9)
	ds_store_b128 v117, v[145:148] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[145:148], v118
	ds_load_b128 v[141:144], v157
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v124, 16, v124
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[141:148], v[1:8], v[133:140]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[145:148], v120
	ds_load_b128 v[141:144], v119
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[141:148], v[9:16], v[133:140]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[141:144], v157 offset:64
	ds_load_b128 v[145:148], v118 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[141:148], v[17:24], v[133:140]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[141:144], v119 offset:64
	ds_load_b128 v[145:148], v120 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[133:140], v[141:148], v[25:32], v[133:140]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[141:148], v[128:129], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[128:129], 24, v[149:150]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v136, v109
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[141:148], v[151:152], v[79:80], v[141:148] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v136, v149, 0, 8
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v133, v109
	v_sub_f32_e32 v69, v137, v109
	v_sub_f32_e32 v66, v139, v109
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[141:148], v[153:154], v[77:78], v[141:148] neg_lo:[1,1,0]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v133, v149, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v137, 8, v149
	v_alignbit_b32 v139, v150, v149, 24
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v138, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v138.l, v149.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v152, v149, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v153, v149, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v149, v128, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v129.l, 4, v128.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v123.l, v128.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v128.l, v136.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v123.h, v137.l, 15
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v72, v134, v109
	v_dual_sub_f32 v71, v135, v109 :: v_dual_and_b32 v134, 15, v150
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s16, 0, v128.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v128, -16, v130
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v135, v150, 16, 4
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v67, v140, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v140, v150, 0, 8
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v154, v150, 8, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v136, v130, v128, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v123.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v128, -16, v133
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v123.h, v125.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v135
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s14, 7, v123.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[141:148], v[155:156], v[81:82], v[141:148] neg_lo:[1,1,0]
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v133, v133, v128, s1
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v128, -16, v134
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v123.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v123.h, v122.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v156, v150, 24, 4
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_mov_b16_e64 v151.l, v150.h
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v128, v134, v128, s3
	v_cndmask_b32_e64 v134, v135, v130, s5
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v123.h
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v130.l, v140.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v123, -16, v152
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v155, v150, 20, 4
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v130.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v130, v152, v123, s0
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v123, -16, v154
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v135, v154, v123, s1
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v123, -16, v156
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v147, v147
	v_mul_f32_e32 v145, v105, v145
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v140, v156, v123, s3
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v138, 0, 8
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v132, v145, v132, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v145, v105, v146
	v_mul_f32_e32 v146, v105, v147
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s17, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v151, 0, 8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v148, v105, v148
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s18, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v137, 0, 8
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v132
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v126, v148, v126, -v107
	v_fma_f32 v146, v146, v124, -v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v125, 0, 8
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v122, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v123.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v123, 15, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v126, 0, v126, s10
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v138, -16, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v138, v123, v138, s14
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v123.l, v149.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s14, 0, v123.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v123, -16, v153
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v139, v153, v123, s17
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v123, -16, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v149, v155, v123, s18
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v105, v141
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v141, 16, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v141, v123, v141, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v123, v105, v142 :: v_dual_lshlrev_b32 v142, 16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v142, v123, v142, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v105, v143
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v143, 16, v160
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v143, v123, v143, -v107
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v123, v105, v144 :: v_dual_lshlrev_b32 v144, 16, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v144, v123, v144, -v107
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v122.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v123.h, 0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v122.h, 4, v137.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v124, -16, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v137.h, v123.h
	v_mov_b16_e64 v148.h, v123.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v124, v123, v124, s16
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v147, v124
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v124, 16, v131
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v139, v139, v124
	v_mul_f32_e32 v130, v130, v124
	v_mul_f32_e32 v136, v136, v124
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v145, v145, v127, -v107
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v127.h, v123.h
	v_cndmask_b32_e32 v139, 0, v139, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v131, v147, v124 :: v_dual_cndmask_b32 v130, 0, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v136, 0, v136, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v133, v133, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v139.h
	v_dual_cndmask_b32 v131, 0, v131 :: v_dual_mul_f32 v138, v138, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v137.l, v136.h
	v_dual_cndmask_b32 v150, 0, v133 :: v_dual_and_b32 v127, 1, v127
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v128, v128, v124
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v131.h
	v_cmp_o_f32_e64 s16, v131, v131
	v_and_b32_e32 v133, 1, v137
	v_cmp_o_f32_e64 s17, v136, v136
	v_cmp_o_f32_e64 s20, v130, v130
	v_and_b32_e32 v147, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v122.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v133, v136, v133, 0x7fff
	v_add3_u32 v136, v139, v127, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v149, v149, v124 :: v_dual_cndmask_b32 v138, 0, v138
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v131, v131, v147, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v127.l, 0x7fff, v133.h, s17
	v_cmp_o_f32_e64 s18, v139, v139
	v_cmp_o_f32_e64 s17, v150, v150
	v_mov_b16_e64 v147.h, v123.h
	v_cndmask_b16 v127.h, 0x7fff, v131.h, s16
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v123
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s16, s2, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v129.h, 0x7fff, v136.h, s18
	v_mov_b16_e64 v139.h, v123.h
	v_cmp_o_f32_e64 s9, v138, v138
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v131, v123, v131, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v130.h
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s3, s2, s13
	s_and_b32 s13, s2, s8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v122.h, v123.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v133, 1, v123
	v_mov_b16_e64 v123.l, v150.h
	v_add3_u32 v130, v130, v133, 0x7fff
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v136, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v129.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v141.h, v123.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v133, 0, v133, s3
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s3, s2, s12
	s_and_b32 s12, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v132, 0, v132, s12
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v133, v73
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v142
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v133, 0, v133, s3
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e32 v149, 0, v149, vcc_lo
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s3, s2, s11
	s_and_b32 s11, s2, s6
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s49, s35
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v72, v133, v72
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v143
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v148.l, v149.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v126, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v126, v150, v136, 0x7fff
	v_cmp_o_f32_e64 s19, v149, v149
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v72, s34, v72
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v143.h, v123.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v129.l, 0x7fff, v126.h, s17
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v133, 0, v133, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v137, 1, v148
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v136, v72, 16, 1
	v_cmp_o_f32_e64 s12, v72, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v142, v133, v71
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v134
	v_cvt_f32_i32_e32 v134, v135
	v_cvt_f32_i32_e32 v135, v140
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v140, v144
	v_exp_f32_e32 v144, v145
	v_exp_f32_e32 v145, v146
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v146, 0, v128, vcc_lo
	v_add3_u32 v137, v149, v137, 0x7fff
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v71.l, 4, v125.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v72, v72, v136, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v134, v134, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v146, v146
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v128, 0, v140, s11
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v140, 0, v145, s16
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v133, v133, v124 :: v_dual_cndmask_b32 v134, 0, v134
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v128, v68
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v128, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v66, v140, v66 :: v_dual_mul_f32 v135, v135, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v148, 0, v133, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v133, 0, v144, s13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v131, v128, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v128.l, 0x7fff, v130.h, s20
	v_cndmask_b32_e32 v135, 0, v135, vcc_lo
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v130, -16, v123
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v69, v132, v69 :: v_dual_mul_f32 v70, v133, v70
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v73, s34, v73 :: v_dual_mul_f32 v132, s34, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v126, v123, v130, s14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v131, 0, v131 :: v_dual_mul_f32 v68, s34, v68
	v_mov_b16_e64 v123.l, v138.h
	v_cndmask_b16 v133.h, 0x7fff, v137.h, s19
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v69, s34, v69 :: v_dual_mul_f32 v66, s34, v66
	v_dual_mul_f32 v70, s34, v70 :: v_dual_mul_f32 v67, s34, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v126, v126, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v147.l, v131.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v130, v73, 16, 1
	v_bfe_u32 v137, v132, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v140, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v125.h, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v125, v68, 16, 1
	v_cmp_o_f32_e64 s11, v73, v73
	v_cmp_o_f32_e64 s13, v132, v132
	v_cmp_o_f32_e64 s14, v68, v68
	v_add3_u32 v73, v73, v130, 0x7fff
	v_bfe_u32 v130, v69, 16, 1
	v_bfe_u32 v136, v70, 16, 1
	v_add3_u32 v132, v132, v137, 0x7fff
	v_bfe_u32 v137, v66, 16, 1
	v_add3_u32 v68, v68, v125, 0x7fff
	v_bfe_u32 v125, v67, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v142, 1, v147
	v_cmp_o_f32_e64 s10, v131, v131
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s16, v69, v69
	v_cmp_o_f32_e64 s17, v70, v70
	v_cmp_o_f32_e64 s18, v66, v66
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v69, v69, v130, 0x7fff
	v_add3_u32 v70, v70, v136, 0x7fff
	v_add3_u32 v66, v66, v137, 0x7fff
	v_add3_u32 v67, v67, v125, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v131, v142, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v123
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s11
	v_cndmask_b16 v73.l, 0x7fff, v132.h, s13
	v_cndmask_b16 v73.h, 0x7fff, v68.h, s14
	v_cndmask_b16 v132.l, 0x7fff, v69.h, s16
	v_cndmask_b16 v132.h, 0x7fff, v70.h, s17
	v_cndmask_b16 v136.l, 0x7fff, v66.h, s18
	v_cndmask_b16 v136.h, 0x7fff, v67.h, s19
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v128.h, 0x7fff, v125.h, s10
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v68, v123, v131, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v146.h
	v_cndmask_b32_e32 v125, 0, v126, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v67, v72, s22, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v73, s22, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v126, v132, s22, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v131, v136, s22, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v137, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v71.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v139.l, v125.h
	v_add3_u32 v130, v138, v140, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v66, v67, v72, v111
	v_perm_b32 v67, v67, v72, v112
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v68
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v69, v73, v111
	v_perm_b32 v69, v69, v73, v112
	v_perm_b32 v70, v126, v132, v111
	v_perm_b32 v71, v126, v132, v112
	v_perm_b32 v72, v131, v136, v111
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v126, -16, v123
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v73, v131, v136, v112
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v136, 1, v139
	v_cmp_o_f32_e64 s5, v125, v125
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v131, v138, v124
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v126, v123, v126, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v130.l, 0x7fff, v130.h, s9
	v_add3_u32 v125, v125, v136, 0x7fff
	v_add3_u32 v132, v146, v137, 0x7fff
	v_mov_b16_e64 v123.l, v134.h
	v_cndmask_b32_e32 v137, 0, v131, vcc_lo
	v_cmp_o_f32_e64 s7, v134, v134
	v_cndmask_b16 v130.h, 0x7fff, v125.h, s5
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v131.l, 0x7fff, v132.h, s8
	v_mov_b16_e64 v141.l, v137.h
	v_cmp_o_f32_e64 s6, v148, v148
	ds_store_b128 v121, v[127:130]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v125, v125, v124 :: v_dual_and_b32 v132, 1, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v148.h
	v_and_b32_e32 v126, 1, v141
	v_cmp_o_f32_e64 s1, v137, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v125, 0, v125, vcc_lo
	v_add3_u32 v132, v134, v132, 0x7fff
	v_and_b32_e32 v136, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v123.l, 4, v122.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v126, v137, v126, 0x7fff
	v_mov_b16_e32 v122.l, v125.h
	v_cndmask_b16 v132.l, 0x7fff, v132.h, s7
	v_cmp_o_f32_e64 s3, v135, v135
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v127, -16, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v131.h, 0x7fff, v126.h, s1
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v128, v148, v136, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v126, v123, v127, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v135.h
	v_cmp_o_f32_e64 s0, v125, v125
	v_add3_u32 v122, v125, v122, 0x7fff
	v_cndmask_b16 v133.l, 0x7fff, v128.h, s6
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v132.h, 0x7fff, v122.h, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v124, v126, v124 :: v_dual_and_b32 v123, 1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v124, 0, v124, vcc_lo
	v_add3_u32 v123, v135, v123, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v143.l, v124.h
	v_cmp_o_f32_e64 s0, v124, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v134.l, 0x7fff, v123.h, s3
	v_and_b32_e32 v122, 1, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v122, v124, v122, 0x7fff
	v_cndmask_b16 v134.h, 0x7fff, v122.h, s0
	ds_store_b128 v121, v[131:134] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v122, v0
	ds_load_u16_d16 v125, v0 offset:768
	ds_load_u16_d16 v126, v0 offset:1024
	ds_load_u16_d16 v127, v0 offset:1280
	ds_load_u16_d16 v128, v0 offset:1536
	ds_load_u16_d16 v129, v0 offset:1792
	ds_load_u16_d16 v124, v0 offset:512
	ds_load_u16_d16 v123, v0 offset:256
	ds_load_u16_d16 v131, v0 offset:608
	ds_load_u16_d16 v130, v0 offset:352
	ds_load_u16_d16 v139, v0 offset:576
	ds_load_u16_d16 v140, v0 offset:832
	ds_load_u16_d16 v141, v0 offset:1088
	ds_load_u16_d16 v142, v0 offset:1344
	ds_load_u16_d16 v143, v0 offset:1600
	ds_load_u16_d16 v144, v0 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v122, v0 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v125, v0 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v126, v0 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v127, v0 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v128, v0 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v129, v0 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v124, v0 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v123, v0 offset:384
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[122:129], v[66:73], v[57:64]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v146, v0 offset:288
	ds_load_u16_d16 v145, v0 offset:32
	ds_load_u16_d16 v137, v0 offset:64
	ds_load_u16_d16 v138, v0 offset:320
	ds_load_u16_d16 v129, v0 offset:96
	ds_load_u16_d16 v147, v0 offset:544
	ds_load_u16_d16 v132, v0 offset:864
	ds_load_u16_d16 v133, v0 offset:1120
	ds_load_u16_d16 v134, v0 offset:1376
	ds_load_u16_d16 v135, v0 offset:1632
	ds_load_u16_d16 v148, v0 offset:800
	ds_load_u16_d16 v136, v0 offset:1888
	ds_load_u16_d16 v149, v0 offset:1056
	ds_load_u16_d16 v150, v0 offset:1312
	ds_load_u16_d16 v151, v0 offset:1568
	ds_load_u16_d16 v152, v0 offset:1824
	ds_load_u16_d16_hi v130, v0 offset:480
	ds_load_u16_d16_hi v139, v0 offset:704
	ds_load_u16_d16_hi v140, v0 offset:960
	ds_load_u16_d16_hi v141, v0 offset:1216
	ds_load_u16_d16_hi v142, v0 offset:1472
	ds_load_u16_d16_hi v143, v0 offset:1728
	ds_load_u16_d16_hi v144, v0 offset:1984
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v145, v0 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v137, v0 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v129, v0 offset:224
	ds_load_u16_d16_hi v146, v0 offset:416
	ds_load_u16_d16_hi v138, v0 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v147, v0 offset:672
	ds_load_u16_d16_hi v131, v0 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v0 offset:928
	ds_load_u16_d16_hi v132, v0 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v149, v0 offset:1184
	ds_load_u16_d16_hi v133, v0 offset:1248
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v150, v0 offset:1440
	ds_load_u16_d16_hi v134, v0 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v151, v0 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v152, v0 offset:1952
	ds_load_u16_d16_hi v135, v0 offset:1760
	ds_load_u16_d16_hi v136, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[137:144], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[145:152], v[66:73], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[129:136], v[66:73], v[33:40]
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge46
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s48, v83
	s_mul_i32 s4, s48, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s48, v84
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v84
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v84
	v_or_b32_e32 v1, 62, v106
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s48, v3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v84
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v84, 2
	v_add_lshl_u32 v7, v5, v94, 2
	v_add_lshl_u32 v8, v5, v93, 2
	v_add_lshl_u32 v9, v5, v90, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_add_lshl_u32 v10, v5, v88, 2
	s_clause 0x2
	buffer_store_b32 v57, v6, s[28:31], 0 offen
	buffer_store_b32 v58, v7, s[28:31], 0 offen
	buffer_store_b32 v59, v8, s[28:31], 0 offen
	v_add_lshl_u32 v6, v5, v92, 2
	v_add_lshl_u32 v7, v5, v91, 2
	v_add_lshl_u32 v8, v5, v89, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s48, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v60, v6, s[28:31], 0 offen
	buffer_store_b32 v61, v7, s[28:31], 0 offen
	buffer_store_b32 v62, v8, s[28:31], 0 offen
	buffer_store_b32 v63, v9, s[28:31], 0 offen
	buffer_store_b32 v64, v10, s[28:31], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v9, 0x60, v0
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v49, v4, s[28:31], 0 offen
	buffer_store_b32 v50, v6, s[28:31], 0 offen
	buffer_store_b32 v51, v7, s[28:31], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v9, vcc_lo
	v_add_nc_u32_e32 v6, 0x68, v0
	buffer_store_b32 v52, v8, s[28:31], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v53, v4, s[28:31], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_add_lshl_u32 v1, v5, v1, 2
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v4, s[28:31], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v6, s[28:31], 0 offen
	buffer_store_b32 v56, v7, s[28:31], 0 offen
	buffer_store_b32 v41, v3, s[28:31], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_store_b32 v42, v4, s[28:31], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s48, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v43, v3, s[28:31], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v44, v4, s[28:31], 0 offen
	buffer_store_b32 v45, v6, s[28:31], 0 offen
	buffer_store_b32 v46, v7, s[28:31], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x4
	buffer_store_b32 v47, v3, s[28:31], 0 offen
	buffer_store_b32 v48, v4, s[28:31], 0 offen
	buffer_store_b32 v33, v2, s[28:31], 0 offen
	buffer_store_b32 v34, v6, s[28:31], 0 offen
	buffer_store_b32 v35, v7, s[28:31], 0 offen
	v_add_nc_u32_e32 v2, 0xd8, v0
	v_add_nc_u32_e32 v3, 0xe0, v0
	v_add_nc_u32_e32 v4, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v36, v2, s[28:31], 0 offen
	buffer_store_b32 v37, v3, s[28:31], 0 offen
	buffer_store_b32 v38, v4, s[28:31], 0 offen
	buffer_store_b32 v39, v0, s[28:31], 0 offen
	buffer_store_b32 v40, v1, s[28:31], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 162
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 162
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9004
; TotalNumSgprs: 54
; NumVgprs: 162
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 162
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
	.quad	.Ltmp53                         ; DW_AT_low_pc
	.long	.Ltmp55-.Ltmp53                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp53                         ; DW_AT_low_pc
	.long	.Ltmp54-.Ltmp53                 ; DW_AT_high_pc
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     162
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
