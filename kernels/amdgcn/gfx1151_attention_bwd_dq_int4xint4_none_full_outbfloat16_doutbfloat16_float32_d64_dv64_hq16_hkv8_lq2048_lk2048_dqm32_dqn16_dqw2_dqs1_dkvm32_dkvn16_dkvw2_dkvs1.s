	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b128 s[40:43], s[0:1], 0x20
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v74, 32, v0
	v_and_b32_e32 v73, 15, v0
	v_lshrrev_b32_e32 v7, 1, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s5, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v74
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s6, s3, 11
	s_clause 0x2
	s_load_b64 s[24:25], s[0:1], 0x58
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b256 s[8:15], s[0:1], 0x38
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s26, s5, s6
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s5, v7
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_or_b32_e32 v166, v1, v73
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v1, 16, v8
	.loc	1 135 17 is_stmt 1              ; attention_backward.py:135:17
	v_or_b32_e32 v5, s26, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v9, 7, v0
	s_mov_b32 s39, 0x31027000
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[1:2], null, s29, v5, v[1:2]
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s5, v3
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v2, s26, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v145, 3, v9
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_mov_b32 s36, s16
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s5, v166
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v5, 1, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[146:147], null, s30, v3, v[145:146]
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, 0x800, v4
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v6
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s2, s30, v145
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s7, s30, 3
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e32 v10, 0x80000000, v5, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[5:6], null, s30, s26, v[146:147]
	s_lshl_b32 s16, s30, 4
	s_mul_i32 s17, s30, 24
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v6, v10, s[36:39], 0 offen
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s4, s2
	v_mov_b32_e32 v81, 0xff800000
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s9, 0xffff
	v_lshlrev_b32_e32 v10, 1, v5
	v_add_lshl_u32 v11, v5, s7, 1
	v_add_lshl_u32 v12, v5, s16, 1
	v_add_lshl_u32 v5, v5, s17, 1
	s_mov_b32 s36, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x3
	buffer_load_b128 v[69:72], v10, s[36:39], 0 offen
	buffer_load_b128 v[61:64], v11, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v12, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v5, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_clause 0x3
	buffer_load_b128 v[65:68], v10, s[36:39], 0 offen
	buffer_load_b128 v[57:60], v11, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v12, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v5, s[36:39], 0 offen
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v167, v0, 4, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v5, 56, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v77, 4, v9
	v_lshlrev_b32_e32 v9, 6, v74
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s7, s3, 31
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v13, v10, 30, v167
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v79, 1, v5
	v_lshlrev_b32_e32 v5, 7, v73
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s7, 28
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v11, 16, v0
	v_lshlrev_b32_e32 v13, 2, v13
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v5, v5, v9, v77
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	v_lshlrev_b32_e32 v76, 3, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v9, 4, v13
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	v_and_b32_e32 v7, 24, v7
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s3, s1, 0x10007
	v_lshlrev_b32_e32 v78, 5, v73
	s_add_i32 s1, s1, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s3, 0, v11
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s0, s0, 4
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s1, s1
	v_xor_b32_e32 v7, v76, v7
	s_ashr_i32 s1, s1, 1
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v12, 2, v0
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s7, s0, s1
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s1, s31, 0x3fb8aa3b
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v14, v5, 16, 0
	v_xad_u32 v15, v5, 32, 0
	v_xad_u32 v16, v5, 48, 0
	v_xad_u32 v17, v5, 64, 0
	v_xad_u32 v21, 0x50, v5, 0
	v_xad_u32 v25, 0x60, v5, 0
	v_xad_u32 v29, 0x70, v5, 0
	v_add_nc_u32_e32 v83, 0, v7
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s11, s7, 11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v75, 3, v0
	v_or_b32_e32 v176, s11, v12
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v174, 2, v167
	v_or_b32_e32 v173, 4, v167
	v_or_b32_e32 v172, 6, v167
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v147, 3, v75
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v171, 8, v167
	v_or_b32_e32 v170, 10, v167
	v_or_b32_e32 v169, 12, v167
	v_or_b32_e32 v168, 14, v167
	v_lshrrev_b32_e32 v175, 4, v0
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s0, s29, v147
	v_or_b32_e32 v178, s11, v167
	v_or_b32_e32 v179, s11, v174
	v_or_b32_e32 v180, s11, v173
	v_or_b32_e32 v181, s11, v172
	v_or_b32_e32 v182, s11, v171
	v_or_b32_e32 v183, s11, v170
	v_or_b32_e32 v184, s11, v169
	v_or_b32_e32 v185, s11, v168
	s_mov_b32 s4, 0
	s_mov_b32 s10, 0x76543210
	s_mov_b64 s[8:9], s[14:15]
	s_mov_b64 s[44:45], s[42:43]
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(9)
	ds_bpermute_b32 v33, v13, v1
	ds_bpermute_b32 v34, v9, v1
	ds_bpermute_b32 v35, v13, v2
	ds_bpermute_b32 v36, v9, v2
	ds_bpermute_b32 v37, v13, v3
	ds_bpermute_b32 v38, v9, v3
	ds_bpermute_b32 v39, v13, v4
	ds_bpermute_b32 v40, v9, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v1, 16, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v177, s1, v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v8, v8, v79, 0
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[57:60] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[49:52] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[41:44] offset:3072
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v148, v34, v33, s3
	v_cndmask_b32_e64 v150, v33, v34, s3
	v_mov_b32_e32 v33, 0
	v_and_or_b32 v82, v10, 24, v78
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v10, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v149, v36, v35, s3
	v_xor_b32_e32 v5, 8, v82
	v_xor_b32_e32 v7, 16, v82
	v_xor_b32_e32 v18, 24, v82
	v_cndmask_b32_e64 v151, v35, v36, s3
	v_cndmask_b32_e64 v152, v38, v37, s3
	v_add_nc_u32_e32 v84, 0, v5
	v_add_nc_u32_e32 v85, 0, v7
	v_add_nc_u32_e32 v86, 0, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[1:4], v10
	ds_load_b128 v[5:8], v14
	ds_load_b128 v[9:12], v15
	ds_load_b128 v[13:16], v16
	ds_load_b128 v[17:20], v17
	ds_load_b128 v[21:24], v21
	ds_load_b128 v[25:28], v25
	ds_load_b128 v[29:32], v29
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v154, v37, v38, s3
	v_cndmask_b32_e64 v153, v40, v39, s3
	v_cndmask_b32_e64 v155, v39, v40, s3
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v34, s4, v176
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v36, s4, v178, 1
	v_add_lshl_u32 v37, s4, v179, 1
	v_add_lshl_u32 v38, s4, v180, 1
	v_add_lshl_u32 v39, s4, v181, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[34:35], null, v34, s29, v[147:148]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v40, s4, v182, 1
	v_add_lshl_u32 v87, s4, v183, 1
	v_add_lshl_u32 v88, s4, v184, 1
	v_add_lshl_u32 v89, s4, v185, 1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v95, 0, v82
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	buffer_load_b64 v[34:35], v34, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v83, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v97, v36, s[40:43], 0 offen
	buffer_load_u16 v98, v37, s[40:43], 0 offen
	buffer_load_u16 v99, v38, s[40:43], 0 offen
	buffer_load_u16 v100, v39, s[40:43], 0 offen
	buffer_load_u16 v101, v40, s[40:43], 0 offen
	buffer_load_u16 v102, v87, s[40:43], 0 offen
	buffer_load_u16 v103, v88, s[40:43], 0 offen
	buffer_load_u16 v104, v89, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_dual_mov_b32 v105, v81 :: v_dual_mov_b32 v94, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v91, v37 :: v_dual_mov_b32 v90, v36
	v_dual_mov_b32 v93, v39 :: v_dual_mov_b32 v92, v38
	v_dual_mov_b32 v89, v35 :: v_dual_mov_b32 v88, v34
	v_mov_b32_e32 v87, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v95
	ds_load_b64 v[36:37], v84
	ds_load_b64 v[38:39], v85
	ds_load_b64 v[95:96], v86
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v105
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[34:35], v[148:149], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[36:37], v[152:153], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[38:39], v[150:151], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[154:155], v[87:94] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v35, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v87
	v_cvt_f32_i32_e32 v37, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v91
	v_cvt_f32_i32_e32 v36, v89
	v_mul_f32_e32 v35, v177, v35
	v_cvt_f32_i32_e32 v39, v92
	v_cvt_f32_i32_e32 v40, v93
	v_cvt_f32_i32_e32 v81, v94
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v34, v177, v34 :: v_dual_lshlrev_b32 v87, 16, v97
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v88, 16, v98
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v89, 16, v99
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v90, 16, v100
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v91, 16, v101
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v102
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v93, 16, v103
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v37, v177, v37 :: v_dual_mul_f32 v34, v34, v87
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v94, 16, v104
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v38, v177, v38 :: v_dual_mul_f32 v35, v35, v88
	v_mul_f32_e32 v36, v177, v36
	v_mul_f32_e32 v81, v177, v81
	v_mul_f32_e32 v37, v37, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, v177, v40 :: v_dual_cndmask_b32 v35, 0xff800000, v35
	v_dual_mul_f32 v39, v177, v39 :: v_dual_mul_f32 v36, v36, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v38, v38, v91 :: v_dual_mul_f32 v81, v81, v94
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v37, 0xff800000, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v39, v39, v92 :: v_dual_cndmask_b32 v34, 0xff800000, v34
	v_mul_f32_e32 v40, v40, v93
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v36, 0xff800000, v36, vcc_lo
	v_dual_cndmask_b32 v38, 0xff800000, v38 :: v_dual_cndmask_b32 v39, 0xff800000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v87, 0xff800000, v81 :: v_dual_cndmask_b32 v40, 0xff800000, v40
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v81, v34, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v88, v37, v38, v39
	v_max_f32_e32 v89, v40, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v81, v81, v88, v89
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v88, v81, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v81, v105, v81, v88
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v40, v81
	v_sub_f32_e32 v87, v87, v81
	v_sub_f32_e32 v39, v39, v81
	v_sub_f32_e32 v34, v34, v81
	v_sub_f32_e32 v36, v36, v81
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v87, v87
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v81
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v38, v38
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v81
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v37, v37, v81 :: v_dual_add_f32 v34, v34, v35
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v36, v37 :: v_dual_add_f32 v36, v38, v39
	v_add_f32_e32 v37, v40, v87
	v_dual_add_f32 v34, v34, v35 :: v_dual_add_f32 v35, v36, v37
.Ltmp5:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v36, v105, v81 :: v_dual_mov_b32 v37, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp7:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v34, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v35, 0, v35, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s4, 16
	s_cmpk_lt_u32 s4, 0x7f0
	s_mov_b32 s4, s1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v80, v34, v36
.Ltmp12:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v80, v37, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b16_e64 v186.h, 0
	.loc	1 166 23 is_stmt 1              ; attention_backward.py:166:23
	v_mov_b16_e32 v33.h, v72.l
	v_mov_b16_e32 v36.h, v71.l
	v_mov_b16_e32 v37.h, v70.l
	v_mov_b16_e32 v38.h, v69.l
	v_mov_b16_e64 v33.l, v186.h
	v_mov_b16_e64 v36.l, v186.h
	v_and_b32_e32 v40, 0xffff0000, v70
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v82.h, v66.l
	v_and_b32_e32 v84, 0xffff0000, v65
	v_and_b32_e32 v66, 0xffff0000, v66
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v39, 0xffff0000, v69
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v85.h, v59.l
	v_mov_b16_e32 v86.h, v58.l
	v_and_b32_e32 v59, 0xffff0000, v59
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v70, 0xffff0000, v72
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v72.l, v186.h
	v_mov_b16_e32 v72.h, v67.l
	v_and_b32_e32 v58, 0xffff0000, v58
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v69, 0xffff0000, v71
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v71.l, v186.h
	v_mov_b16_e32 v71.h, v68.l
	v_and_b32_e32 v88, 0xffff0000, v57
	v_and_b32_e32 v67, 0xffff0000, v67
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v34, 31, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v86.l, v186.h
	v_mov_b16_e32 v89.h, v51.l
	v_and_b32_e32 v51, 0xffff0000, v51
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v67, v69, v67
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v69.h, v62.l
	v_and_b32_e32 v62, 0xffff0000, v62
	v_mov_b16_e64 v69.l, v186.h
	v_mov_b16_e64 v37.l, v186.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v67, v36, v72
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v38.l, v186.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v58, v62, v58
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.h, v55.l
	v_and_b32_e32 v55, 0xffff0000, v55
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v82.l, v186.h
	v_mov_b16_e64 v83.l, v186.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v58, v69, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v51, v55, v51 :: v_dual_and_b32 v68, 0xffff0000, v68
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v83.h, v65.l
	v_mov_b16_e64 v90.l, v186.h
	v_mov_b16_e32 v90.h, v50.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v65, v70, v68 :: v_dual_mul_f32 v40, v40, v66
	v_mul_f32_e32 v39, v39, v84
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v66.h, v64.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v84.h, v60.l
	v_and_b32_e32 v60, 0xffff0000, v60
	v_mov_b16_e32 v93.h, v43.l
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v64, 0xffff0000, v64
	v_mov_b16_e32 v68.h, v63.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v87.h, v57.l
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v39, v38, v83 :: v_dual_and_b32 v92, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v57, v64, v60
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v64.h, v53.l
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v40, v37, v82 :: v_dual_and_b32 v53, 0xffff0000, v53
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v63, 0xffff0000, v63
	v_mov_b16_e64 v66.l, v186.h
	v_mov_b16_e64 v68.l, v186.h
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v84.l, v186.h
	v_mov_b16_e64 v85.l, v186.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v59, v63, v59
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v70.h, v61.l
	v_mov_b16_e32 v63.h, v54.l
	v_and_b32_e32 v54, 0xffff0000, v54
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v57, v66, v84 :: v_dual_and_b32 v50, 0xffff0000, v50
	v_fmac_f32_e32 v59, v68, v85
.Ltmp22:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v61, 0xffff0000, v61
	v_mov_b16_e32 v55.h, v46.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v54, v50
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v46, 0xffff0000, v46
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v94.h, v42.l
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v65, v33, v71 :: v_dual_and_b32 v42, 0xffff0000, v42
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v60, v61, v88
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v61.h, v56.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v88.h, v52.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v67, v65 :: v_dual_and_b32 v52, 0xffff0000, v52
	v_add_f32_e32 v36, v39, v40
	v_dual_add_f32 v39, v59, v57 :: v_dual_and_b32 v56, 0xffff0000, v56
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v33, v46, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v70.l, v186.h
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v87.l, v186.h
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v61.l, v186.h
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v88.l, v186.h
	v_mov_b16_e32 v91.h, v49.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v49, v56, v52
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v62.l, v186.h
	v_mov_b16_e64 v63.l, v186.h
	v_mov_b16_e64 v64.l, v186.h
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v89.l, v186.h
	v_mov_b16_e64 v91.l, v186.h
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v56.h, v45.l
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v60, v70, v87 :: v_dual_and_b32 v45, 0xffff0000, v45
	v_fmac_f32_e32 v49, v61, v88
.Ltmp28:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v53, v92
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v53.h, v48.l
	v_mov_b16_e32 v54.h, v47.l
	v_mov_b16_e64 v55.l, v186.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v60, v58 :: v_dual_and_b32 v47, 0xffff0000, v47
	v_dual_fmac_f32 v51, v62, v89 :: v_dual_and_b32 v48, 0xffff0000, v48
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v92.h, v44.l
	v_mov_b16_e64 v94.l, v186.h
	v_and_b32_e32 v44, 0xffff0000, v44
	v_mov_b16_e32 v95.h, v41.l
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v52, v64, v91 :: v_dual_and_b32 v41, 0xffff0000, v41
	v_fmac_f32_e32 v50, v63, v90
.Ltmp32:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v53.l, v186.h
	v_mov_b16_e64 v54.l, v186.h
	v_mov_b16_e64 v56.l, v186.h
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v92.l, v186.h
	v_mov_b16_e64 v93.l, v186.h
	v_mov_b16_e64 v95.l, v186.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v43, v47, v43 :: v_dual_add_f32 v36, v36, v37
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v33, v55, v94 :: v_dual_mul_f32 v40, v45, v41
	v_dual_add_f32 v37, v38, v39 :: v_dual_mul_f32 v44, v48, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v38, v52, v50 :: v_dual_fmac_f32 v43, v54, v93
	v_add_f32_e32 v39, v51, v49
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v36
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v56, v95
.Ltmp36:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v80
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v35, s5, v34
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v39 :: v_dual_mov_b32 v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v44, v53, v92 :: v_dual_add_f32 v33, v40, v33
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v42, 0, 0x42000000, s1
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v43, v44
.Ltmp42:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v43, 0, 32, s1
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v41
.Ltmp44:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v35
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v39
	v_add_f32_e32 v33, v33, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v41, v38 :: v_dual_mov_b32 v44, v36
.Ltmp47:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v39, v80, v43
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s4, 0, v80
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v39, v39
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v41 :: v_dual_mov_b32 v41, v37
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_mov_b32 s14, 0x7ffffffe
.Ltmp52:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v44
.Ltmp55:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s11, s15
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v44, 12, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v41
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v35, v36 :: v_dual_mov_b32 v40, v33
	v_mov_b32_e32 v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v188, v44, 1, v78
	s_mov_b32 s33, 0
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s19, s7, 10
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s27, s7, 7
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v40 :: v_dual_add_f32 v38, v38, v43
.Ltmp60:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v39, v39, v42
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v42, v73, 2, 0
	s_and_b32 s45, s45, 0xffff
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v33
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v43, v38
	s_mov_b32 s46, s14
	s_mov_b32 s47, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v49, 0 :: v_dual_add_f32 v40, v33, v40
.Ltmp62:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v39, v81, v39
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v34, 2, 0
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v37
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_mov_b32 s34, 0x76543210
.Ltmp64:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v187, 0, v39, s4
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v39, v74, 1, v42
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v42, v40
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s4, 0, v74
	v_mov_b32_e32 v57, 0
	ds_store_b32 v39, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v33
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v36, v35
.Ltmp68:
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v36, s6, v34
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v34, v37, v41 :: v_dual_add_f32 v35, v38, v43
.Ltmp71:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v38, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v37, v36, s5, 2
	s_and_b32 s1, s4, s1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v40, v42
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v42, 0, v79
.Ltmp73:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v40, 1, v38
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v43, 8, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v67, v41 :: v_dual_lshlrev_b32 v46, 9, v75
	v_mov_b32_e32 v66, v41
	v_dual_mov_b32 v69, v41 :: v_dual_lshlrev_b32 v44, 5, v44
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v39, v37, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v39, 0, v77, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v39
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v40, 4, v75
	v_dual_mov_b32 v68, v41 :: v_dual_lshlrev_b32 v45, 1, v38
	v_mov_b32_e32 v70, v41
	v_lshl_or_b32 v38, v38, 6, v77
	v_mov_b32_e32 v72, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v71, v41
	v_mov_b32_e32 v59, v41
	v_xor_b32_e32 v38, v38, v45
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v39, v37, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[33:36]
	v_mov_b32_e32 v42, 0x7632
	v_lshrrev_b32_e32 v37, 1, v43
	v_lshrrev_b32_e32 v39, 2, v74
	v_and_b32_e32 v43, 48, v0
	v_bfe_i32 v35, v0, 3, 1
	v_cndmask_b32_e64 v42, 0x3276, v42, s3
	v_add_nc_u32_e32 v37, 0, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v35, 0x420, v35
	v_lshl_or_b32 v42, v42, 8, v42
	v_add3_u32 v33, v37, v39, v77
	v_mov_b32_e32 v39, 0x5410
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s28, v40
	v_or3_b32 v190, v44, v46, v40
	v_lshl_or_b32 v40, v43, 3, v77
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v189, v33
	v_cndmask_b32_e64 v39, 0x1054, v39, s3
	v_lshrrev_b32_e32 v34, 1, v43
	v_and_b32_e32 v42, 0x760076, v42
	v_xor_b32_e32 v191, v40, v35
	v_xor_b32_e32 v36, 16, v188
	v_lshl_or_b32 v39, v39, 8, v39
	v_xor_b32_e32 v33, v76, v34
	v_xor_b32_e32 v34, 8, v188
	v_xor_b32_e32 v37, 24, v188
	v_lshl_add_u32 v43, v74, 2, 0
	v_and_b32_e32 v39, 0x540054, v39
	v_xor_b32_e32 v44, 16, v190
	v_xor_b32_e32 v40, 32, v190
	v_xor_b32_e32 v45, 0x210, v191
	v_add_nc_u32_e32 v194, 0, v33
	v_lshl_or_b32 v35, v39, 4, v39
	v_lshl_or_b32 v39, v42, 4, v42
	v_xor_b32_e32 v42, 48, v190
	v_add_nc_u32_e32 v195, 0, v34
	v_add_nc_u32_e32 v196, 0, v36
	v_and_b32_e32 v192, 0x5040504, v35
	v_lshlrev_b32_e32 v35, 5, v0
	v_and_b32_e32 v193, 0x7060706, v39
	v_lshl_add_u32 v0, v73, 1, 0
	v_add_nc_u32_e32 v197, 0, v37
	v_add_nc_u32_e32 v198, v43, v38
	v_add_nc_u32_e32 v199, 0, v44
	v_add_nc_u32_e32 v200, 0, v40
	v_dual_mov_b32 v54, v41 :: v_dual_add_nc_u32 v201, 0, v42
	v_add_nc_u32_e32 v202, 0, v45
	v_dual_mov_b32 v56, v41 :: v_dual_add_nc_u32 v203, 0, v35
	v_mov_b32_e32 v55, v41
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v45, s33, v176
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s3, s33, 1
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s4, s33, 4
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s3, s3, s19
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s4, s4, s27
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[42:43], null, s3, s30, v[146:147]
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[43:44], null, v45, s29, v[147:148]
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s4, s4, s30
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v77, 1, v45
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v44, s4, v145, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v48, 0, v188
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v46, 0x80000000, v42, s2
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v73, s33, v178, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v42, 0x80000000, v43, s0
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v74, s33, v179, 1
	v_add_lshl_u32 v75, s33, v180, 1
	v_add_lshl_u32 v76, s33, v181, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[156:157], v42, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v78, s33, v182, 1
	v_add_lshl_u32 v79, s33, v183, 1
	v_add_lshl_u32 v80, s33, v184, 1
	v_add_lshl_u32 v81, s33, v185, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_add_nc_u32_e32 v137, 0, v191
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v194, v[156:157]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[42:45], v44, s[44:47], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[46:47], v46, s[20:23], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v77, v77, s[40:43], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[158:159], v48
	ds_load_b64 v[160:161], v195
	ds_load_b64 v[162:163], v196
	ds_load_b64 v[164:165], v197
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x7
	buffer_load_u16 v211, v73, s[40:43], 0 offen
	buffer_load_u16 v210, v74, s[40:43], 0 offen
	buffer_load_u16 v209, v75, s[40:43], 0 offen
	buffer_load_u16 v208, v76, s[40:43], 0 offen
	buffer_load_u16 v207, v78, s[40:43], 0 offen
	buffer_load_u16 v206, v79, s[40:43], 0 offen
	buffer_load_u16 v205, v80, s[40:43], 0 offen
	buffer_load_u16 v204, v81, s[40:43], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v85, 15, v157
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v99, 8, v156
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v87, v157, 16, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v198, v[42:45]
	ds_store_b128 v198, v[42:45] offset:256
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(9)
	v_and_b16 v42.l, v46.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v44, v46, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v84, 8, v46
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v43, 15, v46
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[82:83], 24, v[46:47]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v42.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v42.l, v46.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v48, -16, v44
	v_or_b32_e32 v45, -16, v43
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v212, 16, v77
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v42.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v42.l, v84.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v43, v43, v45, s3
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_barrier
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v86, -16, v85
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v44, v44, v48, s4
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v48, v46, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v42.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v42, v47, v46, 24
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v78, v43
	v_cvt_f32_i32_e32 v80, v44
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v48
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v88, -16, v87
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v45, 15, v42
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v42.l, v82.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v104, v46, 20, 4
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v48, v48, v73, s4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v138, 24, v47
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v45
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v42.l
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v121, -16, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v79, v48
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v48, 0, v190
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v139, 8, v47
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v42, v45, v73, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v81, v42
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[73:76], v48
	ds_load_b128 v[109:112], v48 offset:64
	ds_load_b128 v[42:45], v199
	ds_load_b128 v[105:108], v199 offset:64
	ds_load_b128 v[117:120], v200
	ds_load_b128 v[93:96], v200 offset:64
	ds_load_b128 v[113:116], v201
	ds_load_b128 v[89:92], v201 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v137, v[78:81]
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v78.l, 4, v156.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v80, v156, 16, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v78.l, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v156.h, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v83, -16, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v98, -16, v186
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v157.l, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v234, 16, v115
	v_lshlrev_b32_e32 v236, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v83, v80, v83, s3
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v78.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v78.l, v157.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v85, v85, v86, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v78.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_lshrrev_b64 v[78:79], 24, v[156:157]
	v_bfe_i32 v79, v156, 0, 8
	v_lshrrev_b32_e32 v86, 8, v157
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v83, v83, v212
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v87, v87, v88, s5
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v88, 24, v157
	v_bfe_i32 v97, v78, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s6, 0, v79.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v79, v156, 8, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v78.h, v99.l, 15
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v81.l, 4, v78.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v78.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v228, 0, v83, s1
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v100, -16, v79
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v78.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v78.h, v86.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v100, v79, v100, s7
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v79, v157, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.h, v88.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v80, -16, v79
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v101, v79, v80, s3
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_bfe_u32 v79, v157, 24, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v78.h, 4, v84.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v80, -16, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v102, v79, v80, s3
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_alignbit_b32 v79, v157, v156, 24
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v78.l, 4, v82.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v79, 15, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v80, -16, v79
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v103, v79, v80, s3
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v79, v84, 0, 8
	v_bfe_i32 v80, v82, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v82.l, v78.h, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v82.h, v186.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v79.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v79.l, v46.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v84, -16, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v79, v79, 0, 8
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v79.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v79, v104, v121, s4
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v104.l, v78.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v78.l, v80.l
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v104.h, v186.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v78.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v78, v186, v98, s6
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v80, -16, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v80, v104, v80, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v78, v212
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v78, v82, v84, s3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v232, 0, v77, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v99.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v186.l, v232.h
	v_and_b32_e32 v233, 1, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v77.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v99, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v82, -16, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v100
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v227, v186, v82, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v212
	v_cvt_f32_i32_e32 v82, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v229, 0, v77, s1
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v77.l, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v82, v82, v212
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v186.l, v229.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v103
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v217, 0, v82, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v230, 1, v186
	v_mov_b16_e64 v186.l, v228.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v231, 1, v186
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v81.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v223, 0, v77, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v157.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v186
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v221, v186, v81, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v186.l, v223.h
	v_and_b32_e32 v224, 1, v186
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v77.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v157, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v186
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v219, v186, v81, s3
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v225, 0, v77, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v86.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v186.l, v225.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v226, 1, v186
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v186.l, v77.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v86, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v186
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v216, v186, v81, s3
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v220, 0, v77, s1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v88, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v186.l, v220.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v102
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v222, 1, v186
	v_mov_b16_e64 v186.l, v217.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v77, v77, v212 :: v_dual_and_b32 v218, 1, v186
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v186.l, 4, v88.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v214, 0, v77, s1
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v77.l, 4, v46.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v46, v46, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v81, -16, v186
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v213, v186, v81, s3
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v186.l, v214.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v46.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v81, v47, 24, 4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v215, 1, v186
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v186.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v82, -16, v81
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v77, -16, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v46, v186, v77, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v77, v46
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v46.l, v47.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v202, v[77:80]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v46.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v79, 15, v47
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v46.l, v47.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v77, v47, 16, 4
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v80, -16, v79
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v46.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v46.l, v138.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v78, -16, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v79, v79, v80, s4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v46.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v80, v47, 8, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v46.l, v139.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v81, v81, v82, s5
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v82, -16, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v46.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v46, v80, v82, s4
	v_cndmask_b32_e64 v82, v77, v78, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v77, v79
	v_cvt_f32_i32_e32 v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v78, v46
	v_cvt_f32_i32_e32 v79, v82
	ds_load_b128 v[81:84], v48
	ds_load_b128 v[125:128], v48 offset:64
	ds_load_b128 v[85:88], v199
	ds_load_b128 v[121:124], v199 offset:64
	ds_load_b128 v[133:136], v200
	ds_load_b128 v[101:104], v200 offset:64
	ds_load_b128 v[129:132], v201
	ds_load_b128 v[97:100], v201 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v46.l, 4, v47.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v137, v[77:80]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v77, v47, 0, 8
	v_mov_b16_e32 v78.l, v47.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v79.h, v186.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v79.l, v46.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v47, v47, 20, 4
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v46.l, v77.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v235, 0xffff0000, v115
	v_and_b32_e32 v237, 0xffff0000, v116
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v77, -16, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v46.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v46, v78, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v78, -16, v47
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v77, v79, v77, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v46.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v46, v138, 0, 8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v47, v47, v78, s3
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v78.h, v186.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_lshrrev_b16 v78.l, 4, v138.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v46.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v46.l, 4, v139.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v79, -16, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v78, v78, v79, s3
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v79.l, v46.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v79.h, v186.h
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v46, v139, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v80, -16, v79
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v46.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v46, v79, v80, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v79, v47
	v_cvt_f32_i32_e32 v80, v78
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v47, 0xffff0000, v73
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v78, v46
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v46, 16, v73
	v_lshlrev_b32_e32 v73, 16, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v47, v82, v47 :: v_dual_and_b32 v82, 0xffff0000, v76
	ds_store_b128 v202, v[77:80]
	v_dual_mul_f32 v46, v81, v46 :: v_dual_mul_f32 v77, v83, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v80, 0xffff0000, v75
	v_and_b32_e32 v73, 0xffff0000, v74
	v_lshlrev_b32_e32 v79, 16, v75
	v_lshlrev_b32_e32 v81, 16, v76
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v78, v84, v73
	ds_load_b128 v[73:76], v48
	ds_load_b128 v[137:140], v48 offset:64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v83, 0xffff0000, v44
	v_lshlrev_b32_e32 v84, 16, v45
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v46, v46
	v_cmp_o_f32_e64 s4, v47, v47
	v_cmp_o_f32_e64 s5, v77, v77
	v_cmp_o_f32_e64 s6, v78, v78
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v48, v73, v79 :: v_dual_mul_f32 v73, v74, v80
	v_dual_mul_f32 v74, v75, v81 :: v_dual_mul_f32 v75, v76, v82
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v76, 16, v42
	v_lshlrev_b32_e32 v82, 16, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v48, v48
	v_cmp_o_f32_e64 s8, v73, v73
	v_cmp_o_f32_e64 s9, v74, v74
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v76, v85, v76 :: v_dual_and_b32 v85, 0xffff0000, v45
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v42, 0xffff0000, v42
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v79, v86, v42 :: v_dual_lshlrev_b32 v42, 16, v43
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s12, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v80, v87, v42
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v42, 0xffff0000, v43
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v80, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v81, v88, v42
	ds_load_b128 v[42:45], v199
	ds_load_b128 v[141:144], v199 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v81, v81
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v42, v42, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v82, v46, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v43, v43, v83 :: v_dual_mul_f32 v44, v44, v84
	v_mul_f32_e32 v45, v45, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v42, v42
	v_add3_u32 v46, v46, v82, 0x7fff
	v_bfe_u32 v82, v47, 16, 1
	v_cmp_o_f32_e64 s16, v43, v43
	v_cmp_o_f32_e64 s17, v44, v44
	v_cmp_o_f32_e64 s18, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v47, v82, 0x7fff
	v_bfe_u32 v82, v77, 16, 1
	v_add3_u32 v77, v77, v82, 0x7fff
	v_bfe_u32 v82, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v78, v82, 0x7fff
	v_bfe_u32 v82, v48, 16, 1
	v_add3_u32 v48, v48, v82, 0x7fff
	v_bfe_u32 v82, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v48.h, s7
	v_add3_u32 v73, v73, v82, 0x7fff
	v_bfe_u32 v82, v74, 16, 1
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_mov_b32_e32 v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v83.h, 0x7fff, v73.h, s8
	v_add3_u32 v74, v74, v82, 0x7fff
	v_bfe_u32 v82, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v74.h, s9
	v_add3_u32 v75, v75, v82, 0x7fff
	v_bfe_u32 v82, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.h, 0x7fff, v75.h, s10
	v_add3_u32 v76, v76, v82, 0x7fff
	v_bfe_u32 v82, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v76.h, s11
	v_add3_u32 v79, v79, v82, 0x7fff
	v_bfe_u32 v82, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v79.h, s12
	v_add3_u32 v80, v80, v82, 0x7fff
	v_bfe_u32 v82, v81, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v86, v81, v82, 0x7fff
	v_bfe_u32 v81, v42, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v77.h, s5
	v_cndmask_b16 v82.h, 0x7fff, v78.h, s6
	v_cndmask_b16 v86.l, 0x7fff, v80.h, s13
	v_cndmask_b16 v86.h, 0x7fff, v86.h, s14
	v_add3_u32 v42, v42, v81, 0x7fff
	v_bfe_u32 v81, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v42.h, s15
	v_add3_u32 v43, v43, v81, 0x7fff
	v_bfe_u32 v81, v44, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v87.h, 0x7fff, v43.h, s16
	v_add3_u32 v44, v44, v81, 0x7fff
	v_bfe_u32 v81, v45, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v88.l, 0x7fff, v44.h, s17
	v_add3_u32 v45, v45, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v46.h, s3
	v_cndmask_b16 v81.h, 0x7fff, v47.h, s4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v46, v41
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v88.h, 0x7fff, v45.h, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v47, v41
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v80, v48
	v_mov_b32_e32 v78, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v76, v44 :: v_dual_mov_b32 v77, v45
	v_mov_b32_e32 v79, v47
	v_dual_mov_b32 v75, v43 :: v_dual_mov_b32 v74, v42
	v_mov_b32_e32 v73, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[1:8], v[73:80]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v81, 16, v117
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v133, v133, v81
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v81, 0xffff0000, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v133, v133
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v117, v134, v81
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v81, 16, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v117, v117
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v134, v135, v81 :: v_dual_and_b32 v81, 0xffff0000, v118
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v135, 16, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v134, v134
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v118, v136, v81
	ds_load_b128 v[81:84], v200
	ds_load_b128 v[85:88], v200 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v136, 16, v120
	v_and_b32_e32 v120, 0xffff0000, v120
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v135, v81, v135
	v_dual_mul_f32 v136, v83, v136 :: v_dual_lshlrev_b32 v81, 16, v113
	v_mul_f32_e32 v120, v84, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v135, v135
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v129, v129, v81
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v81, 0xffff0000, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v136, v136
	v_cmp_o_f32_e64 s10, v120, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s11, v129, v129
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v130, v130, v81 :: v_dual_lshlrev_b32 v81, 16, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v130, v130
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v131, v131, v81
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v81, 0xffff0000, v114
	v_and_b32_e32 v119, 0xffff0000, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v131, v131
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v132, v132, v81 :: v_dual_mul_f32 v119, v82, v119
	ds_load_b128 v[113:116], v201
	ds_load_b128 v[81:84], v201 offset:64
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v132, v132
	v_cmp_o_f32_e64 s8, v119, v119
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v113, v113, v234
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v234, v133, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v114, v114, v235 :: v_dual_mul_f32 v115, v115, v236
	v_mul_f32_e32 v116, v116, v237
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v113, v113
	v_add3_u32 v133, v133, v234, 0x7fff
	v_bfe_u32 v234, v117, 16, 1
	v_cmp_o_f32_e64 s16, v114, v114
	v_cmp_o_f32_e64 s17, v115, v115
	v_cmp_o_f32_e64 s18, v116, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v117, v117, v234, 0x7fff
	v_bfe_u32 v234, v134, 16, 1
	v_add3_u32 v134, v134, v234, 0x7fff
	v_bfe_u32 v234, v118, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v118, v118, v234, 0x7fff
	v_bfe_u32 v234, v135, 16, 1
	v_add3_u32 v135, v135, v234, 0x7fff
	v_bfe_u32 v234, v119, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v119, v119, v234, 0x7fff
	v_bfe_u32 v234, v136, 16, 1
	v_add3_u32 v136, v136, v234, 0x7fff
	v_bfe_u32 v234, v120, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v120, v120, v234, 0x7fff
	v_bfe_u32 v234, v129, 16, 1
	v_add3_u32 v129, v129, v234, 0x7fff
	v_bfe_u32 v234, v130, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v117.l, 0x7fff, v129.h, s11
	v_add3_u32 v130, v130, v234, 0x7fff
	v_bfe_u32 v234, v131, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v131, v131, v234, 0x7fff
	v_bfe_u32 v234, v132, 16, 1
	v_cndmask_b16 v118.l, 0x7fff, v131.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v132, v132, v234, 0x7fff
	v_bfe_u32 v234, v113, 16, 1
	v_add3_u32 v234, v113, v234, 0x7fff
	v_bfe_u32 v113, v114, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v119.l, 0x7fff, v234.h, s15
	v_add3_u32 v235, v114, v113, 0x7fff
	v_bfe_u32 v113, v115, 16, 1
	v_cndmask_b16 v114.l, 0x7fff, v134.h, s5
	v_cndmask_b16 v114.h, 0x7fff, v118.h, s6
	v_cndmask_b16 v118.h, 0x7fff, v132.h, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v236, v115, v113, 0x7fff
	v_bfe_u32 v113, v116, 16, 1
	v_cndmask_b16 v115.l, 0x7fff, v135.h, s7
	v_cndmask_b16 v115.h, 0x7fff, v119.h, s8
	v_cndmask_b16 v119.h, 0x7fff, v235.h, s16
	v_cndmask_b16 v120.l, 0x7fff, v236.h, s17
	v_add3_u32 v237, v116, v113, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v133.h, s3
	v_cndmask_b16 v113.h, 0x7fff, v117.h, s4
	v_cndmask_b16 v116.l, 0x7fff, v136.h, s9
	v_cndmask_b16 v116.h, 0x7fff, v120.h, s10
	v_cndmask_b16 v117.h, 0x7fff, v130.h, s12
	v_cndmask_b16 v120.h, 0x7fff, v237.h, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[9:16], v[73:80]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v113, 16, v109
	v_and_b32_e32 v109, 0xffff0000, v109
	v_lshlrev_b32_e32 v117, 16, v105
	v_lshlrev_b32_e32 v114, 16, v110
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v113, v125, v113 :: v_dual_lshlrev_b32 v118, 16, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v109, v126, v109 :: v_dual_and_b32 v106, 0xffff0000, v106
	v_dual_mul_f32 v117, v121, v117 :: v_dual_mul_f32 v114, v127, v114
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v121, v113, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v110, 0xffff0000, v110
	v_lshlrev_b32_e32 v120, 16, v108
	v_and_b32_e32 v108, 0xffff0000, v108
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v113, v113
	v_add3_u32 v113, v113, v121, 0x7fff
	v_bfe_u32 v121, v109, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v110, v128, v110 :: v_dual_lshlrev_b32 v115, 16, v111
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v109, v109
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v111, 0xffff0000, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v109, v109, v121, 0x7fff
	v_bfe_u32 v121, v114, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v115, v137, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v114, v114
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v111, v138, v111 :: v_dual_lshlrev_b32 v116, 16, v112
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v114, v114, v121, 0x7fff
	v_bfe_u32 v121, v110, 16, 1
	v_cmp_o_f32_e64 s6, v110, v110
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v112, 0xffff0000, v112
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v116, v139, v116
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v115, v115
	v_add3_u32 v110, v110, v121, 0x7fff
	v_bfe_u32 v121, v115, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v112, v140, v112
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v111, v111
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v105, 0xffff0000, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v116, v116
	v_add3_u32 v115, v115, v121, 0x7fff
	v_bfe_u32 v121, v111, 16, 1
	v_cmp_o_f32_e64 s10, v112, v112
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v105, v122, v105 :: v_dual_mul_f32 v118, v123, v118
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v117, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v111, v111, v121, 0x7fff
	v_bfe_u32 v121, v116, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v106, v124, v106 :: v_dual_lshlrev_b32 v119, 16, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v105, v105
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v107, 0xffff0000, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v116, v116, v121, 0x7fff
	v_bfe_u32 v121, v112, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v119, v141, v119
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v118, v118
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v107, v142, v107 :: v_dual_mul_f32 v120, v143, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v112, v112, v121, 0x7fff
	v_bfe_u32 v121, v117, 16, 1
	v_cmp_o_f32_e64 s15, v119, v119
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v108, v144, v108
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v120, v120
	v_cmp_o_f32_e64 s14, v106, v106
	v_add3_u32 v117, v117, v121, 0x7fff
	v_bfe_u32 v121, v105, 16, 1
	v_cmp_o_f32_e64 s16, v107, v107
	v_cmp_o_f32_e64 s18, v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v109.l, 0x7fff, v117.h, s11
	v_add3_u32 v121, v105, v121, 0x7fff
	v_bfe_u32 v105, v118, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v118, v118, v105, 0x7fff
	v_bfe_u32 v105, v106, 16, 1
	v_cndmask_b16 v110.l, 0x7fff, v118.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v122, v106, v105, 0x7fff
	v_bfe_u32 v105, v119, 16, 1
	v_cndmask_b16 v106.l, 0x7fff, v114.h, s5
	v_cndmask_b16 v106.h, 0x7fff, v110.h, s6
	v_cndmask_b16 v110.h, 0x7fff, v122.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v119, v119, v105, 0x7fff
	v_bfe_u32 v105, v107, 16, 1
	v_cndmask_b16 v111.l, 0x7fff, v119.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v123, v107, v105, 0x7fff
	v_bfe_u32 v105, v120, 16, 1
	v_cndmask_b16 v107.l, 0x7fff, v115.h, s7
	v_cndmask_b16 v107.h, 0x7fff, v111.h, s8
	v_cndmask_b16 v111.h, 0x7fff, v123.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v120, v120, v105, 0x7fff
	v_bfe_u32 v105, v108, 16, 1
	v_cndmask_b16 v112.l, 0x7fff, v120.h, s17
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v124, v108, v105, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v113.h, s3
	v_cndmask_b16 v105.h, 0x7fff, v109.h, s4
	v_cndmask_b16 v108.l, 0x7fff, v116.h, s9
	v_cndmask_b16 v108.h, 0x7fff, v112.h, s10
	v_cndmask_b16 v109.h, 0x7fff, v121.h, s12
	v_cndmask_b16 v112.h, 0x7fff, v124.h, s18
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[113:120], v[158:159], v[148:149], v[41:48] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v43.l, v156.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v44, 15, v156
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v42.l, v156.l, 15
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[17:24], v[73:80]
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v105, v156, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v45.l, v157.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v107, -16, v44
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v42.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v42, v43, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v43, -16, v105
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v106, v157, 20, 4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v232, v232
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v44, v44, v107, s3
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v42.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v42, v45, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v45, -16, v106
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[113:120], v[160:161], v[152:153], v[113:120] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v43, v105, v43, s3
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v42.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v105.h, v186.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[113:120], v[162:163], v[150:151], v[113:120] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v44, v44, v212
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v42, v106, v45, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v45.h, v186.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[113:120], v[164:165], v[154:155], v[113:120] neg_lo:[1,1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v44, 0, v44, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v43, v43, v212
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v112, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v45.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v43, 0, v43, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v42, v42, v212
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s3, v44, v44
	v_mov_b16_e64 v114.h, v186.h
	v_and_b32_e32 v45, 1, v45
	v_mov_b16_e32 v105.l, v43.h
	v_cndmask_b32_e64 v42, 0, v42, s1
	v_cmp_o_f32_e64 s5, v43, v43
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v111, v115
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v44, v44, v45, 0x7fff
	v_and_b32_e32 v105, 1, v105
	v_cmp_o_f32_e64 s6, v42, v42
	v_add3_u32 v45, v232, v233, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v115, v213
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v110, v116
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v43, v43, v105, 0x7fff
	v_mov_b16_e64 v105.h, v186.h
	v_mov_b16_e32 v105.l, v42.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v115, v115, v212
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v48, v118
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v107.h, 0x7fff, v43.h, s5
	v_add3_u32 v43, v229, v230, 0x7fff
	v_and_b32_e32 v105, 1, v105
	v_cmp_o_f32_e64 s5, v217, v217
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v46, v120
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v109, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v42, v42, v105, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v44.h, s3
	v_cmp_o_f32_e64 s3, v229, v229
	v_cndmask_b16 v105.h, 0x7fff, v45.h, s4
	v_cmp_o_f32_e64 s4, v228, v228
	v_add3_u32 v44, v228, v231, 0x7fff
	v_mov_b16_e64 v45.h, v186.h
	v_cndmask_b16 v106.l, 0x7fff, v43.h, s3
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v43, v227
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v48, v177, v48
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v107.l, 0x7fff, v44.h, s4
	v_mov_b16_e64 v44.h, v186.h
	v_cmp_o_f32_e64 s4, v223, v223
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v43, v43, v212 :: v_dual_mul_f32 v46, v177, v46
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v47, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v43, 0, v43, s1
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v47, v177, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s3, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v43, v43, v44, 0x7fff
	v_add3_u32 v44, v223, v224, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.h, 0x7fff, v43.h, s3
	v_cndmask_b16 v108.l, 0x7fff, v44.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v44, v221
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s3, v225, v225
	v_add3_u32 v43, v225, v226, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v44, v44, v212
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s3
	v_cmp_o_f32_e64 s3, v220, v220
	v_add3_u32 v43, v220, v222, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v44, 0, v44, s1
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v45.l, v44.h
	v_cmp_o_f32_e64 s4, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v44, v45, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v42.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v108.h, 0x7fff, v45.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v45, v219
	v_mul_f32_e32 v45, v45, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v45, 0, v45, s1
	v_mov_b16_e32 v114.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v45, v45
	v_and_b32_e32 v114, 1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v45, v45, v114, 0x7fff
	v_add3_u32 v114, v217, v218, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v45, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v44.l, 0x7fff, v114.h, s5
	v_mov_b16_e64 v114.h, v186.h
	v_cmp_o_f32_e64 s4, v214, v214
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v45, v45, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v45, 0, v45, s1
	v_mov_b16_e32 v114.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v45, v45
	v_and_b32_e32 v114, 1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v45, v45, v114, 0x7fff
	v_add3_u32 v114, v214, v215, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v45.l, 0x7fff, v114.h, s4
	v_cndmask_b32_e64 v114, 0, v115, s1
	v_mov_b16_e64 v115.h, v186.h
	v_mov_b16_e32 v115.l, v114.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v114, v114
	v_and_b32_e32 v115, 1, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v114, v114, v115, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v114.h, s3
	ds_store_b128 v203, v[105:108]
	ds_store_b128 v203, v[42:45] offset:16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v43, 0xffff0000, v93
	v_lshlrev_b32_e32 v42, 16, v93
	v_lshlrev_b32_e32 v44, 16, v94
	v_and_b32_e32 v45, 0xffff0000, v94
	v_lshlrev_b32_e32 v93, 16, v95
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v43, v102, v43
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v94, 0xffff0000, v95
	v_lshlrev_b32_e32 v95, 16, v96
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v45, v104, v45 :: v_dual_and_b32 v96, 0xffff0000, v96
	v_mul_f32_e32 v85, v85, v93
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v93, 16, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v87, v87, v95 :: v_dual_mul_f32 v88, v88, v96
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v95, 16, v91
	v_and_b32_e32 v91, 0xffff0000, v91
	v_lshlrev_b32_e32 v96, 16, v92
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v93, v97, v93 :: v_dual_and_b32 v92, 0xffff0000, v92
	v_mul_f32_e32 v81, v81, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v82, v82, v91 :: v_dual_mul_f32 v91, v177, v113
	v_mul_f32_e32 v84, v84, v92
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v92, 16, v211
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v95, 16, v210
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v83, v83, v96 :: v_dual_lshlrev_b32 v96, 16, v209
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v89, 0xffff0000, v89
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v91, v91, v92, -v187
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v92, v177, v112
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v42, v101, v42 :: v_dual_lshlrev_b32 v97, 16, v208
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v89, v98, v89 :: v_dual_lshlrev_b32 v98, 16, v207
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v92, v92, v95, -v187
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v95, v177, v111 :: v_dual_mul_f32 v44, v103, v44
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v42, v42
	v_cmp_o_f32_e64 s4, v43, v43
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v86, v86, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v95, v95, v96, -v187
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v96, v177, v110
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v44, v44
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s7, v85, v85
	v_cmp_o_f32_e64 s8, v86, v86
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v96, v96, v97, -v187
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v97, v177, v109 :: v_dual_lshlrev_b32 v94, 16, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v88, v88
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v90, 0xffff0000, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v93, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v97, v97, v98, -v187
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v98, 16, v206
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v87, v87
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v94, v99, v94
	v_mul_f32_e32 v90, v100, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v82, v82
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v48, v48, v98, -v187
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v98, 16, v205
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v94, v94
	v_cmp_o_f32_e64 s14, v90, v90
	v_cmp_o_f32_e64 s15, v81, v81
	v_cmp_o_f32_e64 s17, v83, v83
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v47, v47, v98, -v187
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v98, 16, v204
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v89, v89
	v_cmp_o_f32_e64 s18, v84, v84
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v47, v47
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v46, v46, v98, -v187
	.loc	1 382 30 is_stmt 1              ; attention_backward.py:382:30
	v_bfe_u32 v98, v42, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v46, v46
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v42, v42, v98, 0x7fff
	v_bfe_u32 v98, v43, 16, 1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v48, 0, v48 :: v_dual_cndmask_b32 v47, 0, v47
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v43, v43, v98, 0x7fff
	v_bfe_u32 v98, v44, 16, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v46, 0, v46, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v44, v44, v98, 0x7fff
	v_bfe_u32 v98, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v45, v98, 0x7fff
	v_bfe_u32 v98, v85, 16, 1
	v_add3_u32 v85, v85, v98, 0x7fff
	v_bfe_u32 v98, v86, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v86, v86, v98, 0x7fff
	v_bfe_u32 v98, v87, 16, 1
	v_add3_u32 v87, v87, v98, 0x7fff
	v_bfe_u32 v98, v88, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v88, v88, v98, 0x7fff
	v_bfe_u32 v98, v93, 16, 1
	v_add3_u32 v93, v93, v98, 0x7fff
	v_bfe_u32 v98, v89, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v93.h, s11
	v_add3_u32 v89, v89, v98, 0x7fff
	v_bfe_u32 v98, v94, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v94, v94, v98, 0x7fff
	v_bfe_u32 v98, v90, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v94.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v90, v90, v98, 0x7fff
	v_bfe_u32 v98, v81, 16, 1
	v_add3_u32 v98, v81, v98, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v98.h, s15
	v_add3_u32 v99, v82, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v44.h, s5
	v_cndmask_b16 v82.h, 0x7fff, v45.h, s6
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v44, v95
	v_exp_f32_e32 v45, v96
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v100, v83, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s7
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s8
	v_cndmask_b16 v85.h, 0x7fff, v89.h, s12
	v_cndmask_b16 v86.h, 0x7fff, v90.h, s14
	v_add3_u32 v101, v84, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v42.h, s3
	v_cndmask_b16 v81.h, 0x7fff, v43.h, s4
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s9
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s10
	v_cndmask_b16 v87.h, 0x7fff, v99.h, s16
	v_cndmask_b16 v88.l, 0x7fff, v100.h, s17
	v_cndmask_b16 v88.h, 0x7fff, v101.h, s18
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v42, v91
	v_exp_f32_e32 v43, v92
	v_exp_f32_e32 v89, v97
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[25:32], v[73:80]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v82, v75, v189
	v_sub_f32_e32 v78, v78, v189
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v42, 0, v42 :: v_dual_sub_f32 v73, v73, v189
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v81, v74, v189
	v_sub_f32_e32 v76, v76, v189
	v_sub_f32_e32 v79, v79, v189
	v_sub_f32_e32 v80, v80, v189
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v44, v44, v82 :: v_dual_cndmask_b32 v43, 0, v43
	v_dual_mul_f32 v48, v48, v78 :: v_dual_cndmask_b32 v45, 0, v45
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v77, v77, v189
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v42, v42, v73 :: v_dual_mul_f32 v47, v47, v79
	v_dual_mul_f32 v46, v46, v80 :: v_dual_cndmask_b32 v89, 0, v89
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v44, s31, v44 :: v_dual_mul_f32 v43, v43, v81
	v_mul_f32_e32 v48, s31, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v45, v45, v76 :: v_dual_mul_f32 v42, s31, v42
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v47, s31, v47
	v_dual_mul_f32 v43, s31, v43 :: v_dual_mul_f32 v46, s31, v46
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v89, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v45, s31, v45
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v75, v0 offset:608
	ds_load_u16_d16 v74, v0 offset:352
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v76, v42, 16, 1
	v_bfe_u32 v77, v43, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s31, v73
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v79, v45, 16, 1
	v_bfe_u32 v82, v47, 16, 1
	v_bfe_u32 v83, v46, 16, 1
	v_cmp_o_f32_e64 s3, v42, v42
	v_cmp_o_f32_e64 s4, v43, v43
	v_cmp_o_f32_e64 s6, v45, v45
	v_bfe_u32 v80, v73, 16, 1
	v_cmp_o_f32_e64 s9, v47, v47
	v_cmp_o_f32_e64 s10, v46, v46
	v_add3_u32 v42, v42, v76, 0x7fff
	v_add3_u32 v43, v43, v77, 0x7fff
	v_add3_u32 v45, v45, v79, 0x7fff
	v_add3_u32 v47, v47, v82, 0x7fff
	v_add3_u32 v46, v46, v83, 0x7fff
	v_bfe_u32 v78, v44, 16, 1
	v_cmp_o_f32_e64 s7, v73, v73
	v_add3_u32 v73, v73, v80, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s3
	v_cndmask_b16 v42.h, 0x7fff, v43.h, s4
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s6
	v_cndmask_b16 v45.l, 0x7fff, v47.h, s9
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s10
	v_cmp_o_f32_e64 s5, v44, v44
	v_add3_u32 v44, v44, v78, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v73.h, s7
	v_bfe_u32 v81, v48, 16, 1
	v_permlanex16_b32 v73, v45, s34, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s8, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s5
	v_permlanex16_b32 v46, v42, s34, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v48, v48, v81, 0x7fff
	v_perm_b32 v87, v73, v45, v192
	v_perm_b32 v88, v73, v45, v193
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	ds_load_u16_d16 v103, v0 offset:768
	ds_load_u16_d16 v100, v0
	ds_load_u16_d16 v91, v0 offset:576
	ds_load_u16_d16 v92, v0 offset:832
	ds_load_u16_d16 v104, v0 offset:1024
	ds_load_u16_d16 v93, v0 offset:1088
	ds_load_u16_d16 v105, v0 offset:1280
	ds_load_u16_d16 v94, v0 offset:1344
	ds_load_u16_d16 v106, v0 offset:1536
	ds_load_u16_d16 v95, v0 offset:1600
	ds_load_u16_d16 v107, v0 offset:1792
	ds_load_u16_d16 v102, v0 offset:512
	ds_load_u16_d16 v101, v0 offset:256
	ds_load_u16_d16 v96, v0 offset:1856
	ds_load_u16_d16 v98, v0 offset:288
	ds_load_u16_d16 v97, v0 offset:32
	ds_load_u16_d16 v89, v0 offset:64
	ds_load_u16_d16 v90, v0 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v74, v0 offset:480
	ds_load_u16_d16 v73, v0 offset:96
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v47, v43, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v48.h, s8
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v100, v0 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v91, v0 offset:704
	ds_load_u16_d16_hi v103, v0 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v92, v0 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v104, v0 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v93, v0 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v105, v0 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v94, v0 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v106, v0 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v95, v0 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v107, v0 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v102, v0 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v101, v0 offset:384
	ds_load_u16_d16 v99, v0 offset:544
	ds_load_u16_d16 v76, v0 offset:864
	ds_load_u16_d16 v77, v0 offset:1120
	ds_load_u16_d16 v78, v0 offset:1376
	ds_load_u16_d16 v79, v0 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v96, v0 offset:1984
	ds_load_u16_d16 v80, v0 offset:1888
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v97, v0 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v89, v0 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v73, v0 offset:224
	ds_load_u16_d16_hi v98, v0 offset:416
	ds_load_u16_d16_hi v90, v0 offset:448
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v48, v44, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v81, v46, v42, v192
	v_perm_b32 v82, v46, v42, v193
	v_perm_b32 v83, v47, v43, v192
	v_perm_b32 v84, v47, v43, v193
	v_perm_b32 v85, v48, v44, v192
	v_perm_b32 v86, v48, v44, v193
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s3, s33, 16
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s3
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[100:107], v[81:88], v[65:72]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v100, v0 offset:800
	ds_load_u16_d16 v101, v0 offset:1056
	ds_load_u16_d16 v102, v0 offset:1312
	ds_load_u16_d16 v103, v0 offset:1568
	ds_load_u16_d16 v104, v0 offset:1824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v99, v0 offset:672
	ds_load_u16_d16_hi v75, v0 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v100, v0 offset:928
	ds_load_u16_d16_hi v76, v0 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v0 offset:1184
	ds_load_u16_d16_hi v77, v0 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v102, v0 offset:1440
	ds_load_u16_d16_hi v78, v0 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v103, v0 offset:1696
	ds_load_u16_d16_hi v79, v0 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v104, v0 offset:1952
	ds_load_u16_d16_hi v80, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[49:56], v[89:96], v[81:88], v[49:56]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[97:104], v[81:88], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[73:80], v[81:88], v[33:40]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s28, v166
	s_mul_i32 s4, s28, s26
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s28, v167
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v1, 62, v175
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v167
	v_or_b32_e32 v3, 32, v167
	v_or_b32_e32 v2, 48, v167
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v167, 2
	v_add_lshl_u32 v7, v5, v174, 2
	v_add_lshl_u32 v8, v5, v173, 2
	v_add_lshl_u32 v1, v5, v1, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v167
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_add_lshl_u32 v9, v5, v169, 2
	v_add_lshl_u32 v10, v5, v168, 2
	s_clause 0x2
	buffer_store_b32 v65, v6, s[24:27], 0 offen
	buffer_store_b32 v66, v7, s[24:27], 0 offen
	buffer_store_b32 v67, v8, s[24:27], 0 offen
	v_add_lshl_u32 v6, v5, v172, 2
	v_add_lshl_u32 v7, v5, v171, 2
	v_add_lshl_u32 v8, v5, v170, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s28, v4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v68, v6, s[24:27], 0 offen
	buffer_store_b32 v69, v7, s[24:27], 0 offen
	buffer_store_b32 v70, v8, s[24:27], 0 offen
	buffer_store_b32 v71, v9, s[24:27], 0 offen
	buffer_store_b32 v72, v10, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v9, 0x60, v0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_clause 0x2
	buffer_store_b32 v57, v4, s[24:27], 0 offen
	buffer_store_b32 v58, v6, s[24:27], 0 offen
	buffer_store_b32 v59, v7, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v9, s0
	v_add_nc_u32_e32 v6, 0x68, v0
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s2, s28, v3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v60, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v61, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v62, v4, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_clause 0x2
	buffer_store_b32 v63, v6, s[24:27], 0 offen
	buffer_store_b32 v64, v7, s[24:27], 0 offen
	buffer_store_b32 v49, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b32 v50, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s28, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v51, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v52, v4, s[24:27], 0 offen
	buffer_store_b32 v53, v6, s[24:27], 0 offen
	buffer_store_b32 v54, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x4
	buffer_store_b32 v55, v3, s[24:27], 0 offen
	buffer_store_b32 v56, v4, s[24:27], 0 offen
	buffer_store_b32 v33, v2, s[24:27], 0 offen
	buffer_store_b32 v34, v6, s[24:27], 0 offen
	buffer_store_b32 v35, v7, s[24:27], 0 offen
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
	buffer_store_b32 v36, v2, s[24:27], 0 offen
	buffer_store_b32 v37, v3, s[24:27], 0 offen
	buffer_store_b32 v38, v4, s[24:27], 0 offen
	buffer_store_b32 v39, v0, s[24:27], 0 offen
	buffer_store_b32 v40, v1, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 238
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 238
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13340
; TotalNumSgprs: 50
; NumVgprs: 238
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 238
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	4                               ; Abbrev [4] 0x41:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x78:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x86:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x92:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
.Ldebug_ranges3:
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     238
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
