	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[82:83], s[0:1], 0x78
	s_load_b128 s[24:27], s[0:1], 0x20
.Ltmp0:
	.loc	1 168 40 prologue_end           ; attention_backward.py:168:40
	v_and_b32_e32 v32, 7, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v129, v0, 4, 1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v66, 32, v0
	v_and_b32_e32 v65, 15, v0
	v_lshrrev_b32_e32 v33, 1, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v91, 2, v129
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v117, 3, v32
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v66
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s21, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s22, s3, 11
	v_mov_b32_e32 v146, v91
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s88, s21, s22
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x38
	s_load_b256 s[72:79], s[0:1], 0x0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s21, v33
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_or_b32_e32 v113, v1, v65
	.loc	1 135 17 is_stmt 1              ; attention_backward.py:135:17
	v_or_b32_e32 v5, s88, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s21, v3
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[6:7], null, s83, v3, v[117:118]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v30, 4, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v29, s21, v113
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v92, 4, v129
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_mov_b32_e32 v143, v6
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v30
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s6, s83, v117
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s4, s83, 3
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x98
	s_load_b32 s5, s[0:1], 0xa0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s82, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[1:2], null, s82, v5, v[1:2]
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v2, s88, v113
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s29, s73, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v29
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_mov_b32 s28, s72
	v_dual_mov_b32 v116, v92 :: v_dual_lshlrev_b32 v5, 1, v2
	v_cndmask_b32_e32 v3, 0x80000000, v1, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s83, s88, v[6:7]
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v2, 0x80000000, v5, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[25:28], v3, s[28:31], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s29, s79, 0xffff
	s_mov_b32 s28, s78
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v1
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v40, v2, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s29, s65, 0xffff
	s_mov_b32 s28, s64
	s_clause 0x1
	s_load_b32 s89, s[0:1], 0x80
	s_load_b64 s[80:81], s[0:1], 0x58
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v3, v1, s4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s4, s83, 4
	v_mov_b16_e32 v31.l, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v4, v1, s4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s4, s83, 24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v1, v1, s4, 1
	buffer_load_b128 v[36:39], v2, s[28:31], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[42:45], v3, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[21:24], v4, s[28:31], 0 offen
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v50.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[17:20], v1, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s29, s67, 0xffff
	s_mov_b32 s28, s66
	s_clause 0x3
	buffer_load_b128 v[13:16], v2, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v3, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v4, s[28:31], 0 offen
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v82, v34, 30, v129
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s7, s4, 0xfff0
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s11, s89, 0x3fb8aa3b
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v48.l, v31.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s7, s3, 0x10007
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v49.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v52.l, v31.l
	v_mov_b16_e32 v53.l, v31.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s7
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s4, 4
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v69.l, v31.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s3, s3, 1
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v73.l, v31.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s23, s4, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v77.l, v31.l
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s10, s23, 11
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v81.l, v31.l
	v_or_b32_e32 v121, s10, v91
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v63.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v71.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v47.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v51.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v74.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v78.l, v31.l
	v_or_b32_e32 v128, s10, v92
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v46, 2, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v54.l, v31.l
	v_mov_b16_e32 v55.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v58.l, v31.l
	v_mov_b16_e32 v59.l, v31.l
	v_or_b32_e32 v119, s10, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v64.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v76.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v80.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v57.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v61.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v70.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v79.l, v31.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v56.l, v31.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v60.l, v31.l
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s5, s21
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s3, s21, s8
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s7, 32
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s3, s3, s5
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v134, 6, v129
	v_or_b32_e32 v133, 8, v129
	v_or_b32_e32 v126, 10, v129
	v_or_b32_e32 v137, 12, v129
	v_or_b32_e32 v152, 14, v129
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s3, s3, 0
	v_or_b32_e32 v120, s10, v129
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s90, s3, 0x7ffffff0
	v_or_b32_e32 v135, s10, v134
	v_or_b32_e32 v136, s10, v133
	v_or_b32_e32 v127, s10, v126
	v_or_b32_e32 v118, s10, v137
	v_or_b32_e32 v139, s10, v152
	s_mov_b64 s[36:37], s[70:71]
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v31.h, v39.l
	v_mov_b16_e32 v48.h, v37.l
	v_mov_b16_e32 v49.h, v36.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v57.h, v42.l
	v_mov_b16_e32 v47.h, v38.l
	v_mov_b16_e32 v54.h, v45.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v69.h, v21.l
	v_mov_b16_e32 v63.h, v23.l
	v_mov_b16_e32 v55.h, v44.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v77.h, v17.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v50.h, v16.l
	v_mov_b16_e32 v52.h, v14.l
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v108, 0xffff0000, v8
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v140, s5, v29
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v29, 16, v40
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v68, 4, v32
	v_mov_b16_e32 v53.h, v13.l
	v_and_b32_e32 v99, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v149, s11, v29 :: v_dual_lshlrev_b32 v32, 6, v66
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v29, 0xffff0000, v42
	v_and_b32_e32 v42, 0xffff0000, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v103, 0xffff0000, v11
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v82, 2, v82
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v106, 0xffff0000, v6
	v_lshlrev_b32_e32 v83, 7, v65
	v_mov_b16_e32 v73.h, v5.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v96, 0xffff0000, v19
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v91, v82, v26
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v42, v42, v106
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v32, v83, v32, v68
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v83, 4, v82
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v81.h, v1.l
	v_and_b32_e32 v98, 0xffff0000, v14
	v_and_b32_e32 v111, 0xffff0000, v3
	v_mov_b16_e32 v71.h, v7.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v93, v83, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v26, 0xffff0000, v37
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v41, 56, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v37, 0xffff0000, v44
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v94, v83, v27
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v74.h, v20.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v26, v26, v98
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v51.h, v15.l
	v_mov_b16_e32 v78.h, v4.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v97, 0xffff0000, v20
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v37, v37, v103 :: v_dual_and_b32 v112, 0xffff0000, v4
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v92, v82, v27
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v27, 0xffff0000, v38
	v_and_b32_e32 v38, 0xffff0000, v45
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v26, v48, v52
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v104, 0xffff0000, v12
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v46, v82, v25
	ds_bpermute_b32 v40, v83, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v58.h, v12.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v25, 0xffff0000, v36
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v30, v30, v41, 0
	ds_store_b128 v30, v[13:16]
	ds_store_b128 v30, v[9:12] offset:1024
	ds_store_b128 v30, v[5:8] offset:2048
	ds_store_b128 v30, v[1:4] offset:3072
	v_mov_b16_e32 v59.h, v11.l
	v_and_b32_e32 v30, 0xffff0000, v13
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v56.h, v43.l
	v_mov_b16_e32 v64.h, v22.l
	v_mov_b16_e32 v76.h, v18.l
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v37, v55, v59 :: v_dual_add_nc_u32 v84, 0, v32
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v25, v25, v30 :: v_dual_mul_f32 v30, v38, v104
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.h, v6.l
	v_mov_b16_e32 v80.h, v2.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v45, 0xffff0000, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v30, v54, v58 :: v_dual_and_b32 v109, 0xffff0000, v1
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v36, 0xffff0000, v43
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v42, v64, v72 :: v_dual_and_b32 v43, 0xffff0000, v23
.Ltmp8:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v61.h, v9.l
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v30
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v107, 0xffff0000, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v67, 3, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v110, 0xffff0000, v2
	v_xad_u32 v85, v32, 16, 0
	v_xad_u32 v86, v32, 32, 0
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v43, v107
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v87, v32, 48, 0
	v_xad_u32 v88, v32, 64, 0
	v_xad_u32 v89, 0x50, v32, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.h, v24.l
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v38, v63, v71 :: v_dual_and_b32 v101, 0xffff0000, v9
.Ltmp12:
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v138, 3, v67
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.h, v19.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v70.h, v8.l
	v_mov_b16_e32 v79.h, v3.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v29, v29, v101 :: v_dual_and_b32 v44, 0xffff0000, v24
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v102, 0xffff0000, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v29, v57, v61
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v43, v44, v108
	v_dual_mul_f32 v44, v97, v112 :: v_dual_mul_f32 v27, v27, v99
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v25, v49, v53 :: v_dual_and_b32 v100, 0xffff0000, v16
.Ltmp16:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v82, v82, v28
	ds_bpermute_b32 v83, v83, v28
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v27, v47, v51
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v95, 0xffff0000, v18
	.loc	1 242 43                        ; attention_backward.py:242:43
	v_add_nc_u32_e32 v141, s9, v140
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[173:176], v84
	ds_load_b128 v[177:180], v85
	ds_load_b128 v[13:16], v86
	ds_load_b128 v[17:20], v87
	ds_load_b128 v[154:157], v88
	ds_load_b128 v[158:161], v89
	v_mov_b16_e32 v60.h, v10.l
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v25, v26
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v84, v95, v110 :: v_dual_and_b32 v105, 0xffff0000, v5
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v43, v62, v70 :: v_dual_and_b32 v28, 0xffff0000, v39
	v_fmac_f32_e32 v44, v74, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v84, v76, v80 :: v_dual_mul_f32 v45, v45, v109
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v36, v36, v102 :: v_dual_and_b32 v35, 16, v0
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v43 :: v_dual_and_b32 v39, 0xffff0000, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v77, v81
.Ltmp24:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s7, s9
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v36, v56, v60 :: v_dual_mul_f32 v39, v39, v105
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v28, v28, v100
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s7, s7, 0x800
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s5, 0x800
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v29, v36
	v_fmac_f32_e32 v39, v69, v73
.Ltmp28:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v85, v96, v111 :: v_dual_fmac_f32 v28, v31, v50
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s7, 15
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_add_f32 v39, v39, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v75, v79 :: v_dual_add_f32 v42, v45, v84
.Ltmp30:
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v27, v28
	v_add_f32_e32 v37, v39, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v43, v85, v44
.Ltmp32:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s7, s3, 31
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s10, s5, 31
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s7, s7, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s10, s10, 28
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v42, v43
	v_add_f32_e32 v44, v47, v48
.Ltmp34:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s7
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s5, s5, s10
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v43, v38
.Ltmp36:
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v90, 0x60, v32, 0
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s91, s5, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v35
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v36
	v_mov_b32_e32 v35, v44
.Ltmp38:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v32, 0x70, v32, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v29, v40, v46, s5
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v43
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v122, v46, v40, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[21:24], v90
	ds_load_b128 v[25:28], v32
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s82, v138
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v39
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v42, v37
.Ltmp44:
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v147, s8, v140
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v30, v93, v91, s5
	v_cndmask_b32_e64 v123, v91, v93, s5
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v36
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v124, v94, v92, s5
	v_cndmask_b32_e64 v130, v92, v94, s5
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v125, v83, v82, s5
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v42
	v_add_f32_e32 v35, v44, v35
.Ltmp49:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v131, v82, v83, s5
	v_lshlrev_b32_e32 v69, 3, v0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s90, s91
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v37
.Ltmp51:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s33, -1, 0
	s_cmp_ge_i32 s90, s91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v35
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v35, v39
	v_dual_add_f32 v44, v37, v44 :: v_dual_mov_b32 v45, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v43, v36, v40 :: v_dual_mov_b32 v46, v42
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v38, v45
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v49, v45
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v53, v149 :: v_dual_and_b32 v34, 24, v34
	v_dual_mov_b32 v52, v149 :: v_dual_and_b32 v33, 24, v33
	v_mov_b32_e32 v54, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v51, v65, 5, v34
	v_mov_b32_e32 v142, v116
	v_xor_b32_e32 v35, v69, v33
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v36, 8, v51
	v_xor_b32_e32 v37, 16, v51
	v_xor_b32_e32 v38, 24, v51
	v_add_nc_u32_e32 v55, 0, v35
	s_and_b32 s29, s75, 0xffff
	v_add_nc_u32_e32 v56, 0, v36
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	s_mov_b32 s28, s74
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s35, s90
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v82, v34 :: v_dual_add_nc_u32 v35, s35, v119
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v40, v135, s35, 1
	v_add_lshl_u32 v39, v128, s35, 1
	v_add_lshl_u32 v38, v121, s35, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[35:36], null, v35, s82, v[138:139]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v37, v120, s35, 1
	v_add_lshl_u32 v61, v118, s35, 1
	v_add_lshl_u32 v62, v139, s35, 1
	v_add_lshl_u32 v59, v136, s35, 1
	v_add_lshl_u32 v60, v127, s35, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v89, 0, v51
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v90, v140, v141
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v83, s35, v142
	v_or_b32_e32 v84, s35, v134
	v_or_b32_e32 v85, s35, v133
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[35:36], v35, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v86, s35, v126
	v_or_b32_e32 v87, s35, v137
	v_or_b32_e32 v88, s35, v152
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v84, v147
	v_cmp_ge_i32_e64 s3, v83, v147
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s9, v90, v84
	v_cmp_ge_i32_e64 s10, v90, v83
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v88, v147
	v_cmp_ge_i32_e64 s14, v87, v147
	v_cmp_ge_i32_e64 s15, v86, v147
	v_cmp_ge_i32_e64 s16, v85, v147
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s17, v90, v88
	v_cmp_ge_i32_e64 s18, v90, v87
	v_cmp_ge_i32_e64 s19, v90, v86
	v_cmp_ge_i32_e64 s20, v90, v85
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s38, s9, vcc_lo
	s_and_b32 s3, s10, s3
	s_and_b32 s9, s17, s13
	s_and_b32 s10, s18, s14
	s_and_b32 vcc_lo, s2, s3
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v63, v40, s[40:43], 0 offen
	buffer_load_u16 v64, v39, s[40:43], 0 offen
	buffer_load_u16 v78, v38, s[40:43], 0 offen
	buffer_load_u16 v79, v37, s[40:43], 0 offen
	buffer_load_u16 v62, v62, s[40:43], 0 offen
	buffer_load_u16 v61, v61, s[40:43], 0 offen
	buffer_load_u16 v80, v60, s[40:43], 0 offen
	buffer_load_u16 v81, v59, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v59, s35, v129
	v_or_b32_e32 v60, s35, v146
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v77, v40
	v_dual_mov_b32 v73, v36 :: v_dual_mov_b32 v72, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v75, v38 :: v_dual_mov_b32 v74, v37
	v_dual_mov_b32 v76, v39 :: v_dual_mov_b32 v71, v34
	v_mov_b32_e32 v70, v33
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v60, v147
	v_cmp_ge_i32_e64 s8, v59, v147
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s11, v90, v60
	v_cmp_ge_i32_e64 s12, v90, v59
	.loc	1 198 28 is_stmt 1              ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v89
	ds_load_b64 v[36:37], v56
	ds_load_b64 v[38:39], v57
	ds_load_b64 v[59:60], v58
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s35, s35, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s7, s11, s7
	s_and_b32 s8, s12, s8
	s_and_b32 s11, s19, s15
	s_and_b32 s12, s20, s16
	s_and_b32 s3, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s38
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s35, s91
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[34:35], v[29:30], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[36:37], v[124:125], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[38:39], v[122:123], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[59:60], v[130:131], v[70:77] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v34, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v71
	v_cvt_f32_i32_e32 v37, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v72
	v_cvt_f32_i32_e32 v38, v74
	v_cvt_f32_i32_e32 v39, v75
	v_cvt_f32_i32_e32 v40, v76
	v_cvt_f32_i32_e32 v59, v77
	v_mul_f32_e32 v37, v54, v37
	v_dual_mul_f32 v35, v52, v35 :: v_dual_mul_f32 v34, v149, v34
	v_dual_mul_f32 v36, v53, v36 :: v_dual_mul_f32 v39, v52, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v59, v54, v59 :: v_dual_mul_f32 v40, v53, v40
	v_mul_f32_e32 v38, v149, v38
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v63
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v78
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v70, 16, v79
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v71, 16, v80
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v37, v37, v60 :: v_dual_lshlrev_b32 v72, 16, v81
	v_dual_mul_f32 v35, v35, v64 :: v_dual_mul_f32 v34, v34, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v39, v71
	v_dual_mul_f32 v36, v36, v63 :: v_dual_mul_f32 v59, v59, v62
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v37, 0xff800000, v37, s12
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v40, v40, v61
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v35, 0xff800000, v35, s3
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v38, v38, v72
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v60, 0xff800000, v34, s7
	v_cndmask_b32_e64 v59, 0xff800000, v59, s8
	v_cndmask_b32_e64 v39, 0xff800000, v39, s10
	v_cndmask_b32_e32 v36, 0xff800000, v36, vcc_lo
	v_cndmask_b32_e64 v38, 0xff800000, v38, s11
	v_cndmask_b32_e64 v40, 0xff800000, v40, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v60, v35, v36
	v_max3_f32 v61, v37, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v40, v59
	v_max3_f32 v34, v34, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v61, v34, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v82, v34, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v36, v36, v34
	v_sub_f32_e32 v59, v59, v34
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v59, v59
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s3
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cndmask_b32_e64 v39, 0, v39, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v59, 0, v59, s8
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp62:
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_dual_sub_f32 v60, v60, v34 :: v_dual_add_f32 v37, v38, v39
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v82, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s7
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v60, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v40, v40, v34 :: v_dual_add_f32 v35, v35, v36
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s9
.Ltmp65:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v36, v37, v38
.Ltmp66:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	v_dual_mov_b32 v38, v50 :: v_dual_add_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_dual_cndmask_b32 v37, 0, v37 :: v_dual_add_f32 v50, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v50, v38, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v34, 0xff800000
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v142, v116
.LBB0_4:                                ; %Flow143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v50
	s_load_b32 s92, s[0:1], 0x74
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v71, v42, v46 :: v_dual_and_b32 v36, 31, v0
.Ltmp70:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v37, v65, 2, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v50
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v50, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v72, v43, v47 :: v_dual_add_f32 v73, v44, v48
.Ltmp72:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s69, s69, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
	v_mov_b32_e32 v40, 0
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s70
	s_mov_b32 s39, s71
	v_lshrrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v33, v35, v33 :: v_dual_and_b32 v70, 24, v0
	v_dual_mov_b32 v38, v40 :: v_dual_add_nc_u32 v75, 0, v41
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v74, v45, v49 :: v_dual_mov_b32 v39, v40
.Ltmp74:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v33, v34, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v66, 1, v37
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v48, v40
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v151, 0, v33, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v42, 1, v70
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s21, v36
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v34, s22, v36
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v42, 0, v68, v42
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, v34, s21, 2
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	s_and_b32 vcc_lo, vcc_lo, s0
	v_dual_mov_b32 v36, v40 :: v_dual_cndmask_b32 v57, 0x80000000, v33
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v41, v57, s[68:71], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[71:74]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v58, v42
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v58, v57, s[36:39], 0 offen
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[71:74]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.5:                                ; %.lr.ph143
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v42, 0x7632 :: v_dual_and_b32 v33, 8, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v39, 2, v66
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v34, 4, v67
	v_and_b32_e32 v35, 12, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v33, 1, v33
	v_and_b32_e32 v36, 48, v0
	v_cndmask_b32_e64 v42, 0x3276, v42, s5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:60
	scratch_store_b32 off, v113, off offset:56
	v_lshlrev_b32_e32 v37, 1, v35
	v_add_nc_u32_e32 v33, 0, v33
	v_bfe_i32 v38, v0, 3, 1
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v44, v70, 6, v68
	v_lshl_or_b32 v1, v65, 5, v37
	v_add3_u32 v33, v33, v39, v68
	s_and_b32 s75, s75, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s93, s23, 10
	v_xor_b32_e32 v39, 8, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v153, v33
	v_mov_b32_e32 v33, 0x5410
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s92, v34
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_xor_b32_e32 v41, 24, v1
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s94, s23, 7
	v_cndmask_b32_e64 v33, 0x1054, v33, s5
	s_and_b32 s77, s77, 0xffff
	s_and_b32 s85, s27, 0xffff
	s_mov_b32 s68, s74
	s_mov_b32 s69, s75
	v_lshl_or_b32 v33, v33, 8, v33
	s_mov_b32 s72, s24
	s_mov_b32 s73, s25
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	v_and_b32_e32 v33, 0x540054, v33
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	s_mov_b32 s84, s26
	s_mov_b32 s86, s70
	v_lshl_or_b32 v33, v33, 4, v33
	s_mov_b32 s87, s71
	s_mov_b32 s95, 0x76543210
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off
	scratch_store_b128 off, v[25:28], off offset:16
	v_mov_b32_e32 v57, 0
	v_and_b32_e32 v145, 0x5040504, v33
	v_lshlrev_b32_e32 v33, 5, v0
	v_lshl_add_u32 v0, v65, 1, 0
	v_mov_b32_e32 v65, 0
	v_lshrrev_b32_e32 v40, 1, v36
	v_lshlrev_b32_e32 v45, 9, v67
	v_lshlrev_b32_e32 v35, 5, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v62, v65 :: v_dual_lshlrev_b32 v43, 1, v70
	v_xor_b32_e32 v37, v69, v40
	v_xor_b32_e32 v40, 16, v1
	v_mov_b32_e32 v64, v65
	v_mov_b32_e32 v50, v65
	v_or3_b32 v1, v35, v45, v34
	v_and_b32_e32 v34, 0x420, v38
	v_lshl_or_b32 v35, v36, 3, v68
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v36, 0x760076, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v42, 16, v1
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, v35, v34
	v_lshl_or_b32 v34, v36, 4, v36
	v_xor_b32_e32 v35, 32, v1
	v_xor_b32_e32 v36, 48, v1
	v_add_nc_u32_e32 v1, 0, v37
	v_xor_b32_e32 v43, v44, v43
	v_xor_b32_e32 v44, 0x210, v3
	v_add_nc_u32_e32 v163, 0, v42
	v_mov_b32_e32 v42, v65
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v39
	v_lshl_add_u32 v38, v66, 2, 0
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v166, 0, v44
	v_mov_b32_e32 v44, v65
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v46, v65 :: v_dual_add_nc_u32 v1, 0, v40
	v_mov_b32_e32 v144, v3
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v148, 0x7060706, v34
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v48, v65 :: v_dual_add_nc_u32 v1, 0, v41
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v162, v38, v43
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v164, 0, v35
	v_add_nc_u32_e32 v165, 0, v36
	v_mov_b32_e32 v36, v65
	v_mov_b32_e32 v58, v65
	v_mov_b32_e32 v60, v65
	v_mov_b32_e32 v52, v65
	v_mov_b32_e32 v53, v65
	v_mov_b32_e32 v54, v65
	v_mov_b32_e32 v55, v65
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v167, 0, v33
	v_dual_mov_b32 v38, v65 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v40, v65
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, v65
	v_mov_b32_e32 v35, v65
	v_mov_b32_e32 v37, v65
	v_mov_b32_e32 v39, v65
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v73, s90, v119
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s0, s90, 1
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_min_i32_e32 v75, v140, v141
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s0, s0, s93
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v98, s90, v152
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[94:95], null, s0, s83, v[143:144]
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[95:96], null, v73, s82, v[138:139]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s17, v75, v98
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v98, v147
	.loc	1 376 24 is_stmt 1              ; attention_backward.py:376:24
	s_lshr_b32 s1, s90, 4
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v97, s90, v137
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v100, 0x80000000, v94, s6
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s1, s1, s94
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v94, 0x80000000, v95, s4
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s19, s1, s83
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v69, v65 :: v_dual_lshlrev_b32 v102, 1, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v96, s19, v117, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[98:99], v94, s[68:71], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v82, v120, s90, 1
	v_add_lshl_u32 v83, v121, s90, 1
	v_add_lshl_u32 v84, v128, s90, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v96, 0x80000000, v96, s6
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v85, v135, s90, 1
	v_add_lshl_u32 v86, v136, s90, 1
	v_add_lshl_u32 v87, v127, s90, 1
	v_add_lshl_u32 v88, v118, s90, 1
	v_add_lshl_u32 v89, v139, s90, 1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v97, v147
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s16, v75, v97
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v74, s90, v129
	v_or_b32_e32 v76, s90, v146
	v_dual_mov_b32 v28, v20 :: v_dual_mov_b32 v27, v19
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s0, v74, v147
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v75, v74
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v23, v15
	v_dual_mov_b32 v22, v14 :: v_dual_mov_b32 v21, v13
	v_dual_mov_b32 v13, v173 :: v_dual_mov_b32 v14, v174
	v_dual_mov_b32 v15, v175 :: v_dual_mov_b32 v16, v176
	v_dual_mov_b32 v17, v177 :: v_dual_mov_b32 v18, v178
	v_dual_mov_b32 v19, v179 :: v_dual_mov_b32 v20, v180
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v76, v147
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v75, v76
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 s20, s1, s0
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v92.h, 0
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v77, s90, v142
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v91, 0, v144
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s5, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v112.h, v92.h
	v_mov_b16_e32 v113.h, v92.h
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s7, v77, v147
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s8, v75, v77
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_dual_mov_b32 v71, v65 :: v_dual_mov_b32 v10, v119
	v_dual_mov_b32 v72, v65 :: v_dual_mov_b32 v31, v120
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s22, s8, s7
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v78, s90, v134
	v_or_b32_e32 v79, s90, v133
	v_or_b32_e32 v80, s90, v126
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v172.h, v92.h
	v_mov_b16_e64 v173.h, v92.h
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v78, v147
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s10, v75, v78
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v79, v147
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s12, v75, v79
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v80, v147
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s14, v75, v80
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 s21, s10, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v183.h, v92.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s12, s12, s11
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v116.h, v92.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s10, s14, s13
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v174.h, v92.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v189.h, v92.h
	v_mov_b16_e64 v184.h, v92.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s16, s15
	s_and_b32 s9, s17, s18
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v114.h, v92.h
	v_mov_b16_e64 v193.h, v92.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v115.h, v92.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v93.h, v92.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s9, s2, s9
	v_dual_mov_b32 v12, v127 :: v_dual_mov_b32 v127, v134
	s_and_b32 s8, s2, s8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s90, s90, 16
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v67, v65
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v80, v72 :: v_dual_mov_b32 v79, v71
	v_mov_b32_e32 v134, v127
	v_dual_mov_b32 v78, v70 :: v_dual_mov_b32 v77, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v76, v68 :: v_dual_mov_b32 v75, v67
	v_dual_mov_b32 v74, v66 :: v_dual_mov_b32 v73, v65
	v_dual_mov_b32 v119, v128 :: v_dual_mov_b32 v32, v118
	v_mov_b32_e32 v120, v135
	v_dual_mov_b32 v132, v126 :: v_dual_mov_b32 v9, v117
	v_mov_b32_e32 v126, v136
	v_mov_b32_e32 v127, v12
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v81, 0, v1
	.loc	1 393 17                        ; attention_backward.py:393:17
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v110, 8, v98
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v111, v98, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v168, 8, v99
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v169, v99, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v204, 24, v99
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v170, v99, 24, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v171, v99, v98, 24
	v_bfe_i32 v175, v99, 0, 8
	v_mov_b16_e32 v113.l, v99.h
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v178, v99, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v112.l, v98.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v181, -16, v169
	v_or_b32_e32 v182, -16, v170
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v171, 15, v171
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v177, v98, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v186, v112, 0, 8
	v_bfe_i32 v188, v113, 0, 8
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v176, 15, v98
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v194, -16, v178
	v_or_b32_e32 v187, -16, v177
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_mov_b16_e64 v93.l, v175.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v175, v204, 0, 8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v113.l, v175.l
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v90, 0, v1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v1, v[98:99]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[94:97], v96, s[84:87], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[100:101], v100, s[76:79], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v190, v102, s[72:75], 0 offen
	buffer_load_u16 v191, v82, s[72:75], 0 offen
	buffer_load_u16 v192, v83, s[72:75], 0 offen
	buffer_load_u16 v198, v84, s[72:75], 0 offen
	buffer_load_u16 v199, v85, s[72:75], 0 offen
	buffer_load_u16 v200, v86, s[72:75], 0 offen
	buffer_load_u16 v201, v87, s[72:75], 0 offen
	buffer_load_u16 v202, v88, s[72:75], 0 offen
	buffer_load_u16 v203, v89, s[72:75], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[102:103], v81
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v86, v98, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[84:85], 24, v[98:99]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v87, 15, v99
	v_bfe_u32 v88, v99, 16, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v82.l, v99.h, 15
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v85, v98, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v89.l, 4, v99.l
	v_lshrrev_b16 v82.h, 4, v98.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v83.l, v98.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v82.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v82.l, v168.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v89.h, 4, v110.l
	v_and_b16 v92.l, v82.h, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v82.h, v204.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v179, -16, v87
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v83.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v83.l, v84.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v180, -16, v88
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v195, v84, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v98.l, 4, v168.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v168, v168, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v88, v88, v180, s3
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v114.l, v195.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v112.l, v168.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v207, v88
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(9)
	v_and_b32_e32 v219, 15, v101
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v218, 16, v190
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v190, v101, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v220, 24, v101
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v221, v101, 24, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v222, 8, v101
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v223, v101, 8, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v224, v101, 0, 8
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[104:105], v1
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v81.l, v98.h, 15
	v_and_b16 v81.h, v99.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v99, -16, v86
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v98.h, 4, v84.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v84, -16, v92
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v81.l
	v_cmp_lt_u16_e64 s1, 7, v81.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v81.h, v110.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v81.l, v85.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v85, -16, v111
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v86, v86, v99, s0
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v110, v110, 0, 8
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v81.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v81.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v87, v87, v179, s1
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v179, -16, v171
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e32 v99.l, v110.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v85, v111, v85, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v82.l
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v81.l, v186.l
	v_mov_b16_e64 v82.l, v188.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v205, v86
	v_cvt_f32_i32_e32 v206, v87
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v110, v169, v181, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v82.h
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v169, v92, v84, s7
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v212, v85
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v92.l, v101.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v213, v110
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v111, v170, v182, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v83.l
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_bfe_u32 v225, v101, 20, 4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v212, v212, v218
	v_mul_f32_e32 v205, v205, v218
	v_cvt_f32_i32_e32 v214, v111
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v170, v171, v179, s0
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v81.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v206, v206, v218
	v_mul_f32_e32 v213, v213, v218
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v231, -16, v219
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v207, v207, v218
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v110, v177, v187, s0
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v82.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[102:103], v[29:30], v[65:72] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v102, v169
	v_cvt_f32_i32_e32 v103, v170
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v111, v178, v194, s0
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[104:105], v[124:125], v[81:88] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v216, v110
	v_mul_f32_e32 v102, v102, v218
	v_mul_f32_e32 v103, v103, v218
	v_cvt_f32_i32_e32 v217, v111
	v_dual_mul_f32 v214, v214, v218 :: v_dual_cndmask_b32 v207, 0, v207
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v234, v220, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v173.l, 4, v220.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v217, v217, v218
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v235, -16, v225
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v232, -16, v221
	v_or_b32_e32 v233, -16, v223
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s7, s2, s10
	s_and_b32 s10, s2, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[106:107], v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[106:107], v[122:123], v[81:88] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[108:109], v1
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v162, v[94:97]
	ds_store_b128 v162, v[94:97] offset:256
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v94, 15, v100
	v_bfe_u32 v95, v100, 16, 4
	v_bfe_u32 v96, v100, 8, 4
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v97, v100, 20, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v226, -16, v95
	v_or_b32_e32 v227, -16, v96
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v230, -16, v97
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[81:88], v[108:109], v[130:131], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v68, v83
	v_cvt_f32_i32_e32 v72, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v81
	v_cvt_f32_i32_e32 v67, v82
	v_cvt_f32_i32_e32 v71, v86
	v_mul_f32_e32 v87, v149, v68
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v185, -16, v176
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v81, v88
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[82:83], 24, v[100:101]
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v70, v85
	v_mul_f32_e32 v86, v149, v67
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v168, v176, v185, s5
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v105, v149, v71
	v_mul_f32_e32 v107, v149, v81
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v81, 8, v100
	v_alignbit_b32 v85, v101, v100, 24
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v215, v168
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v83.l, v100.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v71.h, v101.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v69, v84
	v_mul_f32_e32 v84, v149, v66
	v_mul_f32_e32 v104, v149, v70
	v_mul_f32_e32 v106, v149, v72
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v70.l, v100.l, 15
	v_and_b16 v70.h, v100.h, 15
	v_and_b16 v71.l, v101.h, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.h, 4, v101.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v101, 16, v191
	v_lshlrev_b32_e32 v191, 16, v192
	v_lshlrev_b32_e32 v192, 16, v198
	v_lshlrev_b32_e32 v198, 16, v199
	v_lshlrev_b32_e32 v199, 16, v200
	v_lshlrev_b32_e32 v200, 16, v201
	v_lshlrev_b32_e32 v201, 16, v202
	v_lshlrev_b32_e32 v202, 16, v203
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v228, 15, v85
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v229, v81, 0, 8
	v_bfe_i32 v83, v83, 0, 8
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v71.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v215, v215, v218
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v81.h, v82.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v203, -16, v94
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v70.l
	v_cmp_lt_u16_e64 s1, 7, v70.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v70.l, v81.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v70.h, 4, v81.l
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v81.l, v224.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v224, v92, 0, 8
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v101, v84, v101, -v151
	v_fma_f32 v191, v86, v191, -v151
	v_fma_f32 v104, v104, v199, -v151
	v_fma_f32 v105, v105, v200, -v151
	v_fma_f32 v107, v107, v202, -v151
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v199, -16, v228
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v84.l, v229.l
	v_mov_b16_e32 v86.l, v83.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v202, 0, v205, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v216, v216, v218 :: v_dual_cndmask_b32 v215, 0, v215
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v205, 0, v206 :: v_dual_cndmask_b32 v206, 0, v213
	v_dual_cndmask_b32 v200, 0, v102 :: v_dual_cndmask_b32 v217, 0, v217
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v102, v219, v231, s5
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s5, s2, s12
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s12, 7, v81.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v88, v149, v69
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v71.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v71.l, v220.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v172.l, v72.h, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v220, v222, 0, 8
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v94, v94, v203, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v70.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e64 v70.l, v224.l
	v_cmp_gt_i16_e64 s13, 0, v84.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v84, v228, v199, s12
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s12, 0, v86.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v100.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v100, v100, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.h, 4, v222.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v88, v88, v198, -v151
	v_fma_f32 v106, v106, v201, -v151
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v198, v82, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v82.l, 4, v82.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v95, v95, v226, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v203, 0, v103, vcc_lo
	v_cndmask_b32_e32 v201, 0, v212, vcc_lo
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v192, v87, v192, -v151
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v96, v96, v227, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v71.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s11, 0, v81.l
	v_mov_b16_e64 v71.l, v234.l
	v_mov_b16_e64 v87.l, v220.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v86, v97, v230, s12
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s12, 0, v70.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v183.l, v215.h
	v_cndmask_b32_e32 v212, 0, v214, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v214, -16, v172
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[66:69], v90
	ds_load_b128 v[108:111], v90 offset:64
	ds_load_b128 v[168:171], v163
	ds_load_b128 v[175:178], v163 offset:64
	ds_load_b128 v[179:182], v164
	ds_load_b128 v[194:197], v164 offset:64
	ds_load_b128 v[185:188], v165
	ds_load_b128 v[208:211], v165 offset:64
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v85.l, v100.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v100, -16, v190
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v71.h, v222.l, 15
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v173
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v174.l, v72.h, 15
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v242, v88
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v116.l, v82.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v88.l, v198.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v83, v95
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v92.l, v200.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v95, v172, v214, s11
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s11, 0, v87.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v87, v225, v235, s12
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s12, 0, v71.l
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v103, v190, v100, s3
	v_cndmask_b32_e64 v190, v221, v232, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v71.h
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v82, v96
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v96, -16, v174
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v71, v173, v219, s12
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v189.l, v217.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v97, -16, v116
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s24, 0, v88.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_and_b32_e32 v88, 1, v92
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v92.l, v89.h, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v115.l, v70.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v216, 0, v216, vcc_lo
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v245, v106
	v_exp_f32_e32 v246, v107
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v81, v94
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v70, v86
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v86, v174, v96, s11
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v106, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v87, 1, v183
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v107, v71
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v71, 1, v189
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt lgkmcnt(7)
	v_lshlrev_b32_e32 v172, 16, v66
	v_and_b32_e32 v173, 0xffff0000, v66
	v_lshlrev_b32_e32 v174, 16, v67
	v_and_b32_e32 v183, 0xffff0000, v67
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v66, v116, v97, s24
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v67, -16, v92
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s11, 0, v99.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v184.l, v216.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v91, v[81:84]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v83, v217, v71, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v66
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v66, v92, v67, s11
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v92.l, v201.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v243, v104
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s12, v215, v215
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v104, v95
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v248, 0xffff0000, v68
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v67, 1, v92
	v_mov_b16_e64 v92.l, v202.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v95, 1, v184
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v184, 16, v68
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v68, v215, v87, 0x7fff
	v_cmp_o_f32_e64 s14, v200, v200
	v_add3_u32 v81, v200, v88, 0x7fff
	v_cmp_o_f32_e64 s16, v201, v201
	v_add3_u32 v67, v201, v67, 0x7fff
	v_cndmask_b16 v189.l, 0x7fff, v68.h, s12
	v_and_b32_e32 v68, 1, v92
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v92.l, v98.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v189.h, 0x7fff, v81.h, s14
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v66, v66, v218
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s11, 0, v114.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v100, v102
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v92
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v190
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s17, v202, v202
	v_add3_u32 v68, v202, v68, 0x7fff
	v_cndmask_b16 v190.l, 0x7fff, v67.h, s16
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v67, v92, v81, s11
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v92.l, v203.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v247, v191
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v216, v216
	v_add3_u32 v82, v216, v95, 0x7fff
	v_mov_b16_e32 v114.l, v66.h
	v_cndmask_b16 v191.l, 0x7fff, v68.h, s17
	v_and_b32_e32 v68, 1, v92
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v92.l, v89.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v191.h, 0x7fff, v82.h, s15
	v_and_b32_e32 v81, 1, v114
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s12, 0, v93.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v82, -16, v92
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v66, v66
	v_add3_u32 v66, v66, v81, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v67, v67, v218
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s18, v203, v203
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v81, v92, v82, s12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v92.l, v205.h
	v_add3_u32 v68, v203, v68, 0x7fff
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cndmask_b16 v190.h, 0x7fff, v66.h, s11
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v241, v192
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v66, 1, v92
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v92.l, v98.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v192.l, 0x7fff, v68.h, s18
	v_mov_b16_e64 v193.l, v67.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v81
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s12, 0, v112.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v92
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v213, v223, v233, s0
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s2, s20
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s20, v205, v205
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v251, 16, v168
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v82, 1, v193
	v_add3_u32 v66, v205, v66, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v81, v92, v81, s12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v92.l, v206.h
	v_cmp_o_f32_e64 s11, v67, v67
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v218
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v67, v67, v82, 0x7fff
	v_cndmask_b16 v198.l, 0x7fff, v66.h, s20
	v_and_b32_e32 v66, 1, v92
	v_mov_b16_e64 v92.l, v207.h
	v_cmp_o_f32_e64 s19, v217, v217
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
	v_cndmask_b16 v192.h, 0x7fff, v67.h, s11
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v81
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v81, 1, v92
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v92.l, 4, v204.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s2, s21
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s21, v206, v206
	v_cndmask_b16 v200.h, 0x7fff, v83.h, s19
	v_mov_b16_e32 v112.l, v68.h
	v_add3_u32 v66, v206, v66, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v67, v67, v218
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v83, -16, v92
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s12, 0, v113.l
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v249, 16, v69
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v199.l, 0x7fff, v66.h, s21
	v_cndmask_b32_e32 v66, 0, v67, vcc_lo
	v_cmp_o_f32_e64 s11, v68, v68
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v67, v92, v83, s12
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v83, 16, v179
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v82, 1, v112
	v_mov_b16_e64 v92.l, v212.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s2, s22
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s22, v207, v207
	v_add3_u32 v81, v207, v81, 0x7fff
	v_add3_u32 v68, v68, v82, 0x7fff
	v_mov_b16_e32 v113.l, v66.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v94, -16, v115
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v200.l, 0x7fff, v81.h, s22
	v_cndmask_b16 v198.h, 0x7fff, v68.h, s11
	v_and_b32_e32 v68, 1, v92
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v92.l, v72.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v67, v67, v218 :: v_dual_and_b32 v72, 1, v113
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s12, 0, v85.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s23, v212, v212
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v81, -16, v92
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v94, v115, v94, s13
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v66, v66
	v_add3_u32 v66, v66, v72, 0x7fff
	v_add3_u32 v68, v212, v68, 0x7fff
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v72, v92, v81, s12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v81, 0, v67, vcc_lo
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v240, v101
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v101, v213
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v250, 0xffff0000, v69
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v94
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v201.l, 0x7fff, v68.h, s23
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v72
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v93.l, v81.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v244, v105
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v105, v86
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v199.h, 0x7fff, v66.h, s11
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v166, v[68:71]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[202:205], v90
	ds_load_b128 v[212:215], v90 offset:64
	ds_load_b128 v[216:219], v163
	ds_load_b128 v[96:99], v163 offset:64
	ds_load_b128 v[220:223], v164
	ds_load_b128 v[84:87], v164 offset:64
	ds_load_b128 v[224:227], v165
	ds_load_b128 v[66:69], v165 offset:64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v252, 16, v169
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v91, v[100:103]
	ds_store_b128 v166, v[104:107]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[228:231], v90
	ds_load_b128 v[104:107], v90 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v70, 1, v93
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[88:91], v163
	ds_load_b128 v[92:95], v163 offset:64
	ds_load_b128 v[232:235], v164
	ds_load_b128 v[113:116], v164 offset:64
	ds_load_b128 v[236:239], v165
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v81, v81
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[100:103], v165 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v70, v81, v70, 0x7fff
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v3, 0xffff0000, v108
	v_and_b32_e32 v7, 0xffff0000, v110
	v_and_b32_e32 v168, 0xffff0000, v168
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v201.h, 0x7fff, v70.h, s11
	ds_store_b128 v167, v[189:192]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v3, v213, v3 :: v_dual_lshlrev_b32 v190, 16, v181
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v112, 0xffff0000, v179
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v167, v[198:201] offset:16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v198, 0xffff0000, v181
	v_lshlrev_b32_e32 v200, 16, v196
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v199, v232, v190 :: v_dual_lshlrev_b32 v8, 16, v111
	v_dual_mul_f32 v189, v221, v112 :: v_dual_and_b32 v70, 0xffff0000, v169
	v_dual_mul_f32 v192, v228, v184 :: v_dual_lshlrev_b32 v71, 16, v170
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v81, 16, v171
	v_lshlrev_b32_e32 v169, 16, v180
	v_lshlrev_b32_e32 v253, 16, v182
	v_and_b32_e32 v72, 0xffff0000, v170
	v_lshlrev_b32_e32 v255, 16, v185
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v191, v202, v172
	v_mul_f32_e32 v179, v204, v174
	v_dual_mul_f32 v174, v231, v250 :: v_dual_and_b32 v5, 0xffff0000, v109
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v118, 0xffff0000, v186
	v_lshlrev_b32_e32 v231, 16, v195
	v_lshlrev_b32_e32 v4, 16, v109
	v_lshlrev_b32_e32 v109, 16, v175
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v7, v105, v7 :: v_dual_lshlrev_b32 v202, 16, v197
	v_dual_mul_f32 v198, v233, v198 :: v_dual_and_b32 v1, 0xffff0000, v188
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v128, 16, v186
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v186, v229, v248
	v_mul_f32_e32 v113, v113, v200
	v_dual_mul_f32 v8, v106, v8 :: v_dual_lshlrev_b32 v229, 16, v194
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v6, 16, v110
	v_and_b32_e32 v110, 0xffff0000, v175
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v175, v219, v70
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v219, 16, v178
	v_and_b32_e32 v150, 0xffff0000, v185
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v185, v203, v173
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v135, 16, v187
	v_lshlrev_b32_e32 v117, 16, v188
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v5, v215, v5 :: v_dual_and_b32 v170, 0xffff0000, v180
	v_mul_f32_e32 v180, v230, v249
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v230, 0xffff0000, v194
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v194, v88, v71
	v_dual_mul_f32 v215, v94, v219 :: v_dual_mul_f32 v184, v225, v150
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v136, 0xffff0000, v187
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v187, v217, v168
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v217, 16, v177
	v_lshlrev_b32_e32 v2, 16, v108
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v115, v115, v202 :: v_dual_and_b32 v108, 0xffff0000, v111
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v203, 0xffff0000, v197
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v197, v234, v253 :: v_dual_mul_f32 v188, v89, v72
	v_dual_mul_f32 v89, v227, v118 :: v_dual_and_b32 v82, 0xffff0000, v171
	v_mul_f32_e32 v173, v205, v183
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v111, 16, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v193, v216, v251
	v_mul_f32_e32 v181, v218, v252
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v204, 16, v208
	v_and_b32_e32 v205, 0xffff0000, v208
	v_lshlrev_b32_e32 v206, 16, v209
	v_and_b32_e32 v207, 0xffff0000, v209
	v_and_b32_e32 v216, 0xffff0000, v176
	v_lshlrev_b32_e32 v208, 16, v210
	v_and_b32_e32 v209, 0xffff0000, v210
	v_lshlrev_b32_e32 v210, 16, v211
	v_and_b32_e32 v211, 0xffff0000, v211
	v_and_b32_e32 v218, 0xffff0000, v177
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v177, v223, v170
	v_mul_f32_e32 v176, v91, v82
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v200, v191, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v117, v238, v117 :: v_dual_and_b32 v254, 0xffff0000, v182
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v228, 0xffff0000, v178
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v182, v90, v81
	v_dual_mul_f32 v183, v222, v169 :: v_dual_mul_f32 v118, v236, v135
	v_dual_mul_f32 v1, v239, v1 :: v_dual_mul_f32 v178, v226, v128
	v_dual_mul_f32 v135, v96, v109 :: v_dual_mul_f32 v128, v237, v136
	v_mul_f32_e32 v213, v92, v217
	v_mul_f32_e32 v217, v84, v229
	v_dual_mul_f32 v6, v104, v6 :: v_dual_and_b32 v201, 0xffff0000, v196
	v_mul_f32_e32 v104, v107, v108
	v_mul_f32_e32 v116, v116, v203
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s27, v191, v191
	v_bfe_u32 v203, v173, 16, 1
	v_add3_u32 v191, v191, v200, 0x7fff
	v_bfe_u32 v200, v176, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v150, v98, v111
	v_dual_mul_f32 v66, v66, v204 :: v_dual_mul_f32 v69, v69, v207
	v_mul_f32_e32 v103, v103, v211
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s30, v173, v173
	v_bfe_u32 v204, v192, 16, 1
	v_bfe_u32 v207, v174, 16, 1
	v_bfe_u32 v211, v175, 16, 1
	v_cmp_o_f32_e64 s43, v176, v176
	v_add3_u32 v203, v173, v203, 0x7fff
	v_bfe_u32 v173, v183, 16, 1
	v_add3_u32 v200, v176, v200, 0x7fff
	v_bfe_u32 v176, v117, 16, 1
	v_bfe_u32 v222, v188, 16, 1
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v172, 0, v246, s9
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v2, v212, v2 :: v_dual_mul_f32 v219, v86, v231
	v_mul_f32_e32 v4, v214, v4
	v_dual_mul_f32 v214, v93, v218 :: v_dual_mul_f32 v67, v67, v205
	v_mul_f32_e32 v136, v97, v110
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s31, v192, v192
	v_cmp_o_f32_e64 s35, v174, v174
	v_cmp_o_f32_e64 s39, v175, v175
	v_cmp_o_f32_e64 s46, v183, v183
	v_add3_u32 v192, v192, v204, 0x7fff
	v_bfe_u32 v204, v177, 16, 1
	v_add3_u32 v207, v174, v207, 0x7fff
	v_bfe_u32 v174, v197, 16, 1
	v_add3_u32 v211, v175, v211, 0x7fff
	v_bfe_u32 v175, v178, 16, 1
	v_cmp_o_f32_e64 s9, v117, v117
	v_add3_u32 v183, v183, v173, 0x7fff
	v_bfe_u32 v173, v3, 16, 1
	v_add3_u32 v117, v117, v176, 0x7fff
	v_cmp_o_f32_e64 s41, v188, v188
	v_add3_u32 v188, v188, v222, 0x7fff
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v72, 0, v241, s1
	v_cndmask_b32_e64 v168, 0, v242, s3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v190, v224, v255
	v_mul_f32_e32 v212, v99, v216
	v_mul_f32_e32 v114, v114, v201
	v_mul_f32_e32 v68, v68, v206
	v_dual_mul_f32 v100, v100, v208 :: v_dual_mul_f32 v101, v101, v209
	v_mul_f32_e32 v102, v102, v210
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v201, v185, 16, 1
	v_bfe_u32 v202, v179, 16, 1
	v_bfe_u32 v205, v186, 16, 1
	v_bfe_u32 v206, v180, 16, 1
	v_bfe_u32 v208, v193, 16, 1
	v_bfe_u32 v209, v187, 16, 1
	v_bfe_u32 v210, v181, 16, 1
	v_bfe_u32 v221, v194, 16, 1
	v_bfe_u32 v223, v182, 16, 1
	v_cmp_o_f32_e64 s47, v177, v177
	v_cmp_o_f32_e64 s50, v197, v197
	v_cmp_o_f32_e64 s3, v178, v178
	v_cmp_o_f32_e64 s12, v3, v3
	v_add3_u32 v204, v177, v204, 0x7fff
	v_bfe_u32 v177, v4, 16, 1
	v_add3_u32 v197, v197, v174, 0x7fff
	v_bfe_u32 v174, v7, 16, 1
	v_add3_u32 v224, v178, v175, 0x7fff
	v_bfe_u32 v175, v136, 16, 1
	v_bfe_u32 v178, v150, 16, 1
	v_bfe_u32 v176, v214, 16, 1
	v_add3_u32 v3, v3, v173, 0x7fff
	v_bfe_u32 v173, v217, 16, 1
	v_cndmask_b16 v188.l, 0x7fff, v117.h, s9
	v_mov_b32_e32 v117, v9
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v218, v85, v230
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s28, v185, v185
	v_cmp_o_f32_e64 s29, v179, v179
	v_cmp_o_f32_e64 s33, v186, v186
	v_cmp_o_f32_e64 s34, v180, v180
	v_cmp_o_f32_e64 s36, v193, v193
	v_cmp_o_f32_e64 s37, v187, v187
	v_cmp_o_f32_e64 s38, v181, v181
	v_cmp_o_f32_e64 s40, v194, v194
	v_cmp_o_f32_e64 s42, v182, v182
	v_add3_u32 v185, v185, v201, 0x7fff
	v_add3_u32 v179, v179, v202, 0x7fff
	v_add3_u32 v186, v186, v205, 0x7fff
	v_add3_u32 v180, v180, v206, 0x7fff
	v_add3_u32 v193, v193, v208, 0x7fff
	v_add3_u32 v187, v187, v209, 0x7fff
	v_add3_u32 v181, v181, v210, 0x7fff
	v_add3_u32 v194, v194, v221, 0x7fff
	v_add3_u32 v182, v182, v223, 0x7fff
	v_cmp_o_f32_e64 s13, v4, v4
	v_cmp_o_f32_e64 s16, v7, v7
	v_cmp_o_f32_e64 s20, v136, v136
	v_cmp_o_f32_e64 s21, v150, v150
	v_cmp_o_f32_e64 s24, v214, v214
	v_cmp_o_f32_e64 s52, v217, v217
	v_add3_u32 v4, v4, v177, 0x7fff
	v_bfe_u32 v177, v218, 16, 1
	v_add3_u32 v7, v7, v174, 0x7fff
	v_bfe_u32 v174, v113, 16, 1
	v_add3_u32 v136, v136, v175, 0x7fff
	v_bfe_u32 v175, v66, 16, 1
	v_add3_u32 v150, v150, v178, 0x7fff
	v_bfe_u32 v178, v67, 16, 1
	v_add3_u32 v214, v214, v176, 0x7fff
	v_bfe_u32 v176, v100, 16, 1
	v_add3_u32 v217, v217, v173, 0x7fff
	v_bfe_u32 v173, v103, 16, 1
	v_cmp_o_f32_e64 s53, v218, v218
	v_cmp_o_f32_e64 s56, v113, v113
	v_cmp_o_f32_e64 s60, v66, v66
	v_cmp_o_f32_e64 s61, v67, v67
	v_cmp_o_f32_e64 s64, v100, v100
	v_cmp_o_f32_e64 s67, v103, v103
	v_add3_u32 v218, v218, v177, 0x7fff
	v_add3_u32 v113, v113, v174, 0x7fff
	v_add3_u32 v66, v66, v175, 0x7fff
	v_add3_u32 v67, v67, v178, 0x7fff
	v_add3_u32 v100, v100, v176, 0x7fff
	v_add3_u32 v103, v103, v173, 0x7fff
	v_cndmask_b16 v173.l, 0x7fff, v191.h, s27
	v_cndmask_b16 v173.h, 0x7fff, v185.h, s28
	v_cndmask_b16 v174.l, 0x7fff, v179.h, s29
	v_cndmask_b16 v174.h, 0x7fff, v203.h, s30
	v_cndmask_b16 v175.l, 0x7fff, v192.h, s31
	v_cndmask_b16 v175.h, 0x7fff, v186.h, s33
	v_cndmask_b16 v176.l, 0x7fff, v180.h, s34
	v_cndmask_b16 v176.h, 0x7fff, v207.h, s35
	v_cndmask_b16 v177.l, 0x7fff, v193.h, s36
	v_cndmask_b16 v177.h, 0x7fff, v187.h, s37
	v_cndmask_b16 v178.l, 0x7fff, v181.h, s38
	v_cndmask_b16 v178.h, 0x7fff, v211.h, s39
	v_cndmask_b16 v179.l, 0x7fff, v194.h, s40
	v_cndmask_b16 v179.h, 0x7fff, v188.h, s41
	v_cndmask_b16 v180.l, 0x7fff, v182.h, s42
	v_cndmask_b16 v180.h, 0x7fff, v200.h, s43
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v216, v95, v228
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v82, 0xffff0000, v195
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[173:180], v[13:20], v[73:80]
	v_dual_mov_b32 v180, v20 :: v_dual_mov_b32 v179, v19
	v_dual_mov_b32 v178, v18 :: v_dual_mov_b32 v177, v17
	v_dual_mov_b32 v176, v16 :: v_dual_mov_b32 v175, v15
	v_dual_mov_b32 v174, v14 :: v_dual_mov_b32 v173, v13
	v_dual_mov_b32 v13, v21 :: v_dual_mov_b32 v14, v22
	v_dual_mov_b32 v15, v23 :: v_dual_mov_b32 v16, v24
	v_dual_mov_b32 v17, v25 :: v_dual_mov_b32 v18, v26
	v_dual_mov_b32 v19, v27 :: v_dual_mov_b32 v20, v28
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[21:24], off, off
	scratch_load_b128 v[25:28], off, off offset:16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v195, v220, v83
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v210, v184, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v196, v235, v254
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v202, v189, 16, 1
	v_cmp_o_f32_e64 s1, v184, v184
	v_bfe_u32 v201, v195, 16, 1
	v_add3_u32 v210, v184, v210, 0x7fff
	v_bfe_u32 v184, v135, 16, 1
	v_cmp_o_f32_e64 s44, v195, v195
	v_cmp_o_f32_e64 s45, v189, v189
	v_bfe_u32 v205, v199, 16, 1
	v_bfe_u32 v206, v198, 16, 1
	v_bfe_u32 v208, v196, 16, 1
	v_bfe_u32 v209, v190, 16, 1
	v_bfe_u32 v221, v89, 16, 1
	v_bfe_u32 v222, v118, 16, 1
	v_bfe_u32 v223, v128, 16, 1
	v_add3_u32 v195, v195, v201, 0x7fff
	v_bfe_u32 v201, v1, 16, 1
	v_add3_u32 v189, v189, v202, 0x7fff
	v_bfe_u32 v202, v2, 16, 1
	v_cmp_o_f32_e64 s19, v135, v135
	v_add3_u32 v135, v135, v184, 0x7fff
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v240, s0
	v_cndmask_b32_e64 v71, 0, v247, s10
	v_cndmask_b32_e64 v169, 0, v243, s5
	v_cndmask_b32_e64 v170, 0, v244, s7
	v_cndmask_b32_e64 v171, 0, v245, s8
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s48, v199, v199
	v_cmp_o_f32_e64 s49, v198, v198
	v_cmp_o_f32_e64 s51, v196, v196
	v_cmp_o_f32_e64 s0, v190, v190
	v_cmp_o_f32_e64 s5, v89, v89
	v_cmp_o_f32_e64 s7, v118, v118
	v_cmp_o_f32_e64 s8, v128, v128
	v_cmp_o_f32_e64 s10, v1, v1
	v_cmp_o_f32_e64 s11, v2, v2
	v_add3_u32 v199, v199, v205, 0x7fff
	v_bfe_u32 v205, v5, 16, 1
	v_add3_u32 v198, v198, v206, 0x7fff
	v_bfe_u32 v206, v6, 16, 1
	v_add3_u32 v196, v196, v208, 0x7fff
	v_bfe_u32 v208, v8, 16, 1
	v_add3_u32 v190, v190, v209, 0x7fff
	v_bfe_u32 v209, v104, 16, 1
	v_add3_u32 v89, v89, v221, 0x7fff
	v_add3_u32 v118, v118, v222, 0x7fff
	v_bfe_u32 v221, v212, 16, 1
	v_add3_u32 v128, v128, v223, 0x7fff
	v_bfe_u32 v222, v213, 16, 1
	v_add3_u32 v1, v1, v201, 0x7fff
	v_bfe_u32 v201, v215, 16, 1
	v_add3_u32 v2, v2, v202, 0x7fff
	v_bfe_u32 v202, v216, 16, 1
	v_bfe_u32 v184, v116, 16, 1
	v_cndmask_b16 v193.l, 0x7fff, v135.h, s19
	v_dual_mov_b32 v135, v120 :: v_dual_mul_f32 v220, v87, v82
	v_cmp_o_f32_e64 s14, v5, v5
	v_cmp_o_f32_e64 s15, v6, v6
	v_cmp_o_f32_e64 s17, v8, v8
	v_cmp_o_f32_e64 s18, v104, v104
	v_cmp_o_f32_e64 s22, v212, v212
	v_cmp_o_f32_e64 s23, v213, v213
	v_cmp_o_f32_e64 s25, v215, v215
	v_cmp_o_f32_e64 s26, v216, v216
	v_add3_u32 v5, v5, v205, 0x7fff
	v_bfe_u32 v205, v219, 16, 1
	v_add3_u32 v6, v6, v206, 0x7fff
	v_add3_u32 v8, v8, v208, 0x7fff
	v_bfe_u32 v208, v114, 16, 1
	v_add3_u32 v104, v104, v209, 0x7fff
	v_bfe_u32 v209, v115, 16, 1
	v_cmp_o_f32_e64 s59, v116, v116
	v_add3_u32 v212, v212, v221, 0x7fff
	v_bfe_u32 v221, v68, 16, 1
	v_add3_u32 v213, v213, v222, 0x7fff
	v_bfe_u32 v222, v69, 16, 1
	v_add3_u32 v201, v215, v201, 0x7fff
	v_bfe_u32 v215, v101, 16, 1
	v_add3_u32 v202, v216, v202, 0x7fff
	v_bfe_u32 v216, v102, 16, 1
	v_add3_u32 v116, v116, v184, 0x7fff
	v_cndmask_b16 v181.l, 0x7fff, v195.h, s44
	v_cndmask_b16 v181.h, 0x7fff, v189.h, s45
	v_cndmask_b16 v182.l, 0x7fff, v183.h, s46
	v_cndmask_b16 v182.h, 0x7fff, v204.h, s47
	v_cndmask_b16 v183.l, 0x7fff, v199.h, s48
	v_cndmask_b16 v183.h, 0x7fff, v198.h, s49
	v_cndmask_b16 v184.l, 0x7fff, v197.h, s50
	v_cndmask_b16 v184.h, 0x7fff, v196.h, s51
	v_cndmask_b16 v185.l, 0x7fff, v190.h, s0
	v_cndmask_b16 v185.h, 0x7fff, v210.h, s1
	v_cndmask_b16 v186.l, 0x7fff, v224.h, s3
	v_cndmask_b16 v186.h, 0x7fff, v89.h, s5
	v_cndmask_b16 v187.l, 0x7fff, v118.h, s7
	v_cndmask_b16 v187.h, 0x7fff, v128.h, s8
	v_mov_b32_e32 v128, v119
	v_cndmask_b16 v188.h, 0x7fff, v1.h, s10
	v_mov_b32_e32 v119, v10
	v_bfe_u32 v206, v220, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v91, v0 offset:608
	ds_load_u16_d16 v90, v0 offset:352
	ds_load_u16_d16 v83, v0 offset:512
	ds_load_u16_d16 v107, v0 offset:576
	ds_load_u16_d16 v82, v0 offset:256
	ds_load_u16_d16 v97, v0 offset:32
	ds_load_u16_d16 v105, v0 offset:64
	ds_load_u16_d16 v106, v0 offset:320
	ds_load_u16_d16 v84, v0 offset:768
	ds_load_u16_d16 v108, v0 offset:832
	ds_load_u16_d16 v99, v0 offset:544
	ds_load_u16_d16 v85, v0 offset:1024
	ds_load_u16_d16 v109, v0 offset:1088
	ds_load_u16_d16 v92, v0 offset:864
	ds_load_u16_d16 v86, v0 offset:1280
	ds_load_u16_d16 v110, v0 offset:1344
	ds_load_u16_d16 v93, v0 offset:1120
	ds_load_u16_d16 v87, v0 offset:1536
	ds_load_u16_d16 v111, v0 offset:1600
	ds_load_u16_d16 v94, v0 offset:1376
	ds_load_u16_d16 v88, v0 offset:1792
	ds_load_u16_d16 v112, v0 offset:1856
	ds_load_u16_d16 v95, v0 offset:1632
	ds_load_u16_d16 v96, v0 offset:1888
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s54, v219, v219
	v_cmp_o_f32_e64 s55, v220, v220
	v_cmp_o_f32_e64 s57, v114, v114
	v_cmp_o_f32_e64 s58, v115, v115
	v_cmp_o_f32_e64 s62, v68, v68
	v_cmp_o_f32_e64 s63, v69, v69
	v_cmp_o_f32_e64 s65, v101, v101
	v_cmp_o_f32_e64 s66, v102, v102
	v_add3_u32 v205, v219, v205, 0x7fff
	v_add3_u32 v206, v220, v206, 0x7fff
	v_add3_u32 v114, v114, v208, 0x7fff
	v_add3_u32 v115, v115, v209, 0x7fff
	v_add3_u32 v68, v68, v221, 0x7fff
	v_add3_u32 v69, v69, v222, 0x7fff
	v_add3_u32 v101, v101, v215, 0x7fff
	v_add3_u32 v102, v102, v216, 0x7fff
	v_cndmask_b16 v189.l, 0x7fff, v2.h, s11
	v_cndmask_b16 v189.h, 0x7fff, v3.h, s12
	v_cndmask_b16 v190.l, 0x7fff, v4.h, s13
	v_cndmask_b16 v190.h, 0x7fff, v5.h, s14
	v_cndmask_b16 v191.l, 0x7fff, v6.h, s15
	v_cndmask_b16 v191.h, 0x7fff, v7.h, s16
	v_cndmask_b16 v192.l, 0x7fff, v8.h, s17
	v_cndmask_b16 v192.h, 0x7fff, v104.h, s18
	v_cndmask_b16 v193.h, 0x7fff, v136.h, s20
	v_cndmask_b16 v194.l, 0x7fff, v150.h, s21
	v_cndmask_b16 v194.h, 0x7fff, v212.h, s22
	v_cndmask_b16 v195.l, 0x7fff, v213.h, s23
	v_cndmask_b16 v195.h, 0x7fff, v214.h, s24
	v_cndmask_b16 v196.l, 0x7fff, v201.h, s25
	v_cndmask_b16 v196.h, 0x7fff, v202.h, s26
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[181:188], v[13:20], v[73:80]
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v197.l, 0x7fff, v217.h, s52
	v_cndmask_b16 v197.h, 0x7fff, v218.h, s53
	v_cndmask_b16 v198.l, 0x7fff, v205.h, s54
	v_cndmask_b16 v198.h, 0x7fff, v206.h, s55
	v_cndmask_b16 v199.l, 0x7fff, v113.h, s56
	v_cndmask_b16 v199.h, 0x7fff, v114.h, s57
	v_cndmask_b16 v200.l, 0x7fff, v115.h, s58
	v_cndmask_b16 v200.h, 0x7fff, v116.h, s59
	v_cndmask_b16 v201.l, 0x7fff, v66.h, s60
	v_cndmask_b16 v201.h, 0x7fff, v67.h, s61
	v_cndmask_b16 v202.l, 0x7fff, v68.h, s62
	v_cndmask_b16 v202.h, 0x7fff, v69.h, s63
	v_cndmask_b16 v203.l, 0x7fff, v100.h, s64
	v_cndmask_b16 v203.h, 0x7fff, v101.h, s65
	v_cndmask_b16 v204.l, 0x7fff, v102.h, s66
	v_cndmask_b16 v204.h, 0x7fff, v103.h, s67
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[189:196], v[154:161], v[73:80]
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v90, v0 offset:480
	ds_load_u16_d16 v89, v0 offset:96
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v107, v0 offset:704
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v84, v0 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v108, v0 offset:960
	ds_load_u16_d16 v100, v0 offset:800
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v85, v0 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v109, v0 offset:1216
	ds_load_u16_d16 v101, v0 offset:1056
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v86, v0 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v110, v0 offset:1472
	ds_load_u16_d16 v102, v0 offset:1312
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v87, v0 offset:1664
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v111, v0 offset:1728
	ds_load_u16_d16 v103, v0 offset:1568
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v88, v0 offset:1920
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v112, v0 offset:1984
	ds_load_u16_d16 v104, v0 offset:1824
	ds_load_u16_d16 v81, v0
	ds_load_u16_d16 v98, v0 offset:288
	ds_load_u16_d16_hi v83, v0 offset:640
	ds_load_u16_d16_hi v82, v0 offset:384
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v81, v0 offset:128
	ds_load_u16_d16_hi v97, v0 offset:160
	ds_load_u16_d16_hi v105, v0 offset:192
	ds_load_u16_d16_hi v89, v0 offset:224
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v98, v0 offset:416
	ds_load_u16_d16_hi v106, v0 offset:448
	ds_load_u16_d16_hi v99, v0 offset:672
	ds_load_u16_d16_hi v91, v0 offset:736
	ds_load_u16_d16_hi v100, v0 offset:928
	ds_load_u16_d16_hi v92, v0 offset:992
	ds_load_u16_d16_hi v101, v0 offset:1184
	ds_load_u16_d16_hi v93, v0 offset:1248
	ds_load_u16_d16_hi v102, v0 offset:1440
	ds_load_u16_d16_hi v94, v0 offset:1504
	ds_load_u16_d16_hi v103, v0 offset:1696
	ds_load_u16_d16_hi v95, v0 offset:1760
	ds_load_u16_d16_hi v104, v0 offset:1952
	ds_load_u16_d16_hi v96, v0 offset:2016
	v_mov_b32_e32 v120, v31
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s90, s91
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[197:204], v[21:28], v[73:80]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v1, v73, v153
	v_sub_f32_e32 v2, v74, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v3, v75, v153
	v_sub_f32_e32 v4, v76, v153
	v_sub_f32_e32 v5, v77, v153
	v_sub_f32_e32 v6, v78, v153
	v_sub_f32_e32 v7, v79, v153
	v_sub_f32_e32 v8, v80, v153
	v_dual_mov_b32 v118, v32 :: v_dual_mul_f32 v1, v70, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v136, v126 :: v_dual_mul_f32 v7, v171, v7
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v2, v71, v2 :: v_dual_mul_f32 v3, v72, v3
	v_dual_mul_f32 v4, v168, v4 :: v_dual_mul_f32 v5, v169, v5
	v_mul_f32_e32 v6, v170, v6
	v_mul_f32_e32 v8, v172, v8
	v_dual_mov_b32 v126, v132 :: v_dual_mul_f32 v1, s89, v1
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v2, s89, v2 :: v_dual_mul_f32 v3, s89, v3
	v_dual_mul_f32 v4, s89, v4 :: v_dual_mul_f32 v5, s89, v5
	v_dual_mul_f32 v6, s89, v6 :: v_dual_mul_f32 v7, s89, v7
	v_mul_f32_e32 v8, s89, v8
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v66, v1, 16, 1
	v_bfe_u32 v67, v2, 16, 1
	v_bfe_u32 v68, v3, 16, 1
	v_bfe_u32 v69, v4, 16, 1
	v_bfe_u32 v70, v5, 16, 1
	v_bfe_u32 v71, v6, 16, 1
	v_bfe_u32 v72, v7, 16, 1
	v_bfe_u32 v73, v8, 16, 1
	v_cmp_o_f32_e64 s0, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s5, v4, v4
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_add3_u32 v1, v1, v66, 0x7fff
	v_add3_u32 v2, v2, v67, 0x7fff
	v_add3_u32 v3, v3, v68, 0x7fff
	v_add3_u32 v4, v4, v69, 0x7fff
	v_add3_u32 v5, v5, v70, 0x7fff
	v_add3_u32 v6, v6, v71, 0x7fff
	v_add3_u32 v7, v7, v72, 0x7fff
	v_add3_u32 v8, v8, v73, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.l, 0x7fff, v7.h, s9
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s10
	v_permlanex16_b32 v5, v1, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v3, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v8, v4, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v5, v1, v145
	v_perm_b32 v67, v5, v1, v148
	v_perm_b32 v68, v6, v2, v145
	v_perm_b32 v69, v6, v2, v148
	v_perm_b32 v70, v7, v3, v145
	v_perm_b32 v71, v7, v3, v148
	v_perm_b32 v72, v8, v4, v145
	v_perm_b32 v73, v8, v4, v148
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[81:88], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[97:104], v[66:73], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[105:112], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[89:96], v[66:73], v[33:40]
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:56
	scratch_load_b32 v1, off, off offset:60
.LBB0_8:                                ; %._crit_edge144
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s92, v113
	s_mul_i32 s4, s92, s88
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s92, v129
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v129
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v129
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, 62, v1
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s92, v3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v129
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v129, 2
	v_add_lshl_u32 v7, v5, v146, 2
	v_add_lshl_u32 v8, v5, v142, 2
	v_add_lshl_u32 v9, v5, v137, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_add_lshl_u32 v10, v5, v152, 2
	s_clause 0x2
	buffer_store_b32 v57, v6, s[80:83], 0 offen
	buffer_store_b32 v58, v7, s[80:83], 0 offen
	buffer_store_b32 v59, v8, s[80:83], 0 offen
	v_add_lshl_u32 v6, v5, v134, 2
	v_add_lshl_u32 v7, v5, v133, 2
	v_add_lshl_u32 v8, v5, v126, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s92, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v60, v6, s[80:83], 0 offen
	buffer_store_b32 v61, v7, s[80:83], 0 offen
	buffer_store_b32 v62, v8, s[80:83], 0 offen
	buffer_store_b32 v63, v9, s[80:83], 0 offen
	buffer_store_b32 v64, v10, s[80:83], 0 offen
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
	buffer_store_b32 v49, v4, s[80:83], 0 offen
	buffer_store_b32 v50, v6, s[80:83], 0 offen
	buffer_store_b32 v51, v7, s[80:83], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v9, vcc_lo
	v_add_nc_u32_e32 v6, 0x68, v0
	buffer_store_b32 v52, v8, s[80:83], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v53, v4, s[80:83], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_add_lshl_u32 v1, v5, v1, 2
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v4, s[80:83], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v6, s[80:83], 0 offen
	buffer_store_b32 v56, v7, s[80:83], 0 offen
	buffer_store_b32 v41, v3, s[80:83], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_store_b32 v42, v4, s[80:83], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s92, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v43, v3, s[80:83], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v44, v4, s[80:83], 0 offen
	buffer_store_b32 v45, v6, s[80:83], 0 offen
	buffer_store_b32 v46, v7, s[80:83], 0 offen
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
	buffer_store_b32 v47, v3, s[80:83], 0 offen
	buffer_store_b32 v48, v4, s[80:83], 0 offen
	buffer_store_b32 v33, v2, s[80:83], 0 offen
	buffer_store_b32 v34, v6, s[80:83], 0 offen
	buffer_store_b32 v35, v7, s[80:83], 0 offen
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
	buffer_store_b32 v36, v2, s[80:83], 0 offen
	buffer_store_b32 v37, v3, s[80:83], 0 offen
	buffer_store_b32 v38, v4, s[80:83], 0 offen
	buffer_store_b32 v39, v0, s[80:83], 0 offen
	buffer_store_b32 v40, v1, s[80:83], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 68
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
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 68
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13908
; TotalNumSgprs: 98
; NumVgprs: 256
; ScratchSize: 68
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 98
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 68
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 16
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
